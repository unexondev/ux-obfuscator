/*
	Actually, it's all started when I remember my childhood.
	Life, or living, didn't have a meaning for me.
	People were doing something as a different kind of masturbating,
	Nobody else had a really major goal in their lives, except soldiers...
	I always wanted to work as a security staff for my country, just like what soldiers do.
	That was the only thing there seems to me, which makes life worth living on it,
	since I wasn't aware of my childhood.
	I remember my childhood, I had lots of goals. Lots of promises...
	Which of them I've reached? Maybe just a few...
	Let's decide to be a kind of soldier or not to be, after completing those childhood promises.
	There's no excuse to not work on it, let's start doing something.
	Your childhood must be your most prior motivation, don't make him disappointed.
	Only person who's experienced exactly same things as you did, is him...
*/

#define GET_INSTRINFO_ENUM // to obtain X86 instruction opcodes
#define GET_INSTRINFO_HEADER // to obtain MCInstrInfo creator functions
#define GET_INSTRINFO_CTOR_DTOR // to obtain MCInstrInfo creator functions
#define GET_INSTRINFO_MC_DESC // to obtain MCInstrDesc templates
#define GET_REGINFO_HEADER // to obtain target-dependent register headers
#define GET_REGINFO_MC_DESC // to obtain target-dependent register descriptors
#define GET_REGINFO_TARGET_DESC // to obtain target-dependent register structures

#include "llvm/IR/Module.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/CodeGen/MachineFunctionPass.h>
#include <llvm/CodeGen/MachinePassManager.h>
#include <llvm/CodeGen/MachineBasicBlock.h>
#include <llvm/CodeGen/MachineInstrBuilder.h>
#include <llvm/CodeGen/TargetSubtargetInfo.h>
#include <llvm/CodeGen/TargetInstrInfo.h>
#include "X86InstrInfo.inc"

#include "include/encoder.h"
#include "include/irmanager.h"
#include "include/obfmath.hpp"
#include "include/opaque.hpp"


using namespace llvm;


namespace {

std::vector<GlobalVariable*> encode_string_literals(Module &mod) {
    
    std::vector<GlobalVariable*> g_strings = {};

    // First get string globals

    auto globals = mod.globals();

    for (GlobalVariable& _g : globals) {

        if (!_g.hasInitializer()) continue; // means global doesn't have an initializer

        Constant* val_init = _g.getInitializer();

        if (isa<ConstantDataArray>(val_init)) {

            auto const_data_arr = cast<ConstantDataArray>(val_init);
            if (!const_data_arr->isString()) continue;

            // Then this value is exactly what we need

            StringRef str_ref_data = const_data_arr->getAsString();

            const char* data = str_ref_data.begin();
            const int sz_data = str_ref_data.size();

            char* str_encoded = new char[sz_data];
            encoder::encode_c_string(data, str_encoded, 0xAF, sz_data);

            Constant* const_encoded = ConstantDataArray::getString(mod.getContext(), StringRef(str_encoded, sz_data), 0);

            _g.setInitializer(const_encoded);
            g_strings.push_back(&_g);
            _g.setConstant(false /* not constant */);

        }

    }

    return g_strings;

}

void obfuscate_string_literals(Module& mod) {

	auto& ctx = mod.getContext();

    std::vector<GlobalVariable*> g_strings = {};

	// Get string globals

	auto globals = mod.globals();

	for (auto& g_var : globals) {

		Constant* init = g_var.getInitializer();

		// Check if global is not a string

		if (!isa<ConstantDataArray>(init)) continue;

		ConstantDataArray* cdarr_init = cast<ConstantDataArray>(init);

		if (!cdarr_init->isString()) continue;

		// Now we are sure that we have a string-like global

		// OP_1: Remove access to the global string on its use with _obf_str function.
		// OP_2: Remove the global string permanently.
		// COND_OP_2: Global string shouldn't conflict with standart uses.
		// For example if there's a _obf_str("hello") and also is a printf("hello")
		// On that circumstance, we can't gremove the global string because it's used on its deobfuscation form as well. 

		/*
		
			%str = call _obf_str... [ Convert this line... ]

			to:

			%str = alloca i8, i8 SZ_CDARR
			
			%str.bt.1 = alloca i32
			store i32 CONST, i32* %str.bt.1
			...
			%str.bt.<n> = alloca i32
			store i32 CONST, i32* %str.bt.<n>

			< chain of math operations hidden with opaque predicating >

		*/

		bool used_non_obf = false;

		for (size_t i = 0; i < g_var.getNumUses(); ++i) {

			Use* g_var_use = &(*g_var.use_begin()) + i;

			User* g_var_user = g_var_use->getUser();

			if (!isa<Instruction>(g_var_user)) {
				
				used_non_obf = true;

				continue;

			}

			Instruction* instr_user = cast<Instruction>(g_var_user);

			if (instr_user->getOpcode() != Instruction::Call) {

				used_non_obf = true;

				continue;

			}

			CallInst* instr_call = cast<CallInst>(instr_user);

			Function* callee = instr_call->getCalledFunction();

			if (callee->getSection() != "._obf_str") {

				used_non_obf = true;
				
				continue;

			}

			StringRef str_init = cdarr_init->getAsString();

			auto obf_itrs = math::obfuscate_string_literal(mod, str_init);

			for (Instruction* instr : obf_itrs) {

				instr->insertBefore(instr_user);

			}

			instr_user->replaceAllUsesWith(*(obf_itrs.end() - 1));

			instr_user->eraseFromParent();

		}

	}
    
}

void obfuscate_references(Module& mod) {

	auto& ctx = mod.getContext();

	IntegerType* ty_i8 = Type::getInt8Ty(ctx);
	IntegerType* ty_i32 = Type::getInt32Ty(ctx);
	IntegerType* ty_i64 = Type::getInt64Ty(ctx);

	auto globs = mod.globals();

	for (auto& glob : globs) {

		for (User::user_iterator g_users = glob.user_begin(); g_users != glob.user_end(); ++g_users) {

			User* g_user = *g_users;

			if (!isa<Instruction>(g_user)) continue;

			Instruction* inst_user = reinterpret_cast<Instruction*>(g_user);

			Instruction* inst_base = GetElementPtrInst::Create(
				ty_i8, &glob,ConstantInt::get(ty_i32, 0x123456),
				"", inst_user);

			std::vector<Instruction*> ins_opq_1 =
				opaque::opaque_by_user_shared_data(mod, 0x100000, 32);

			math::insval_t insv_opq_1 = { std::vector<Value*>(
				ins_opq_1.begin(), ins_opq_1.end()
			), 0x100000 };

			std::vector<Instruction*> ins_opq_2 =
				opaque::opaque_by_user_shared_data(mod, 0xFFFFFF, 32);

			math::insval_t insv_opq_2 = { std::vector<Value*>(
				ins_opq_2.begin(), ins_opq_2.end()
			), 0xFFFFFF };

			math::insval_t insv_eq = math::generate_equation<uint32_t>(
				mod, { insv_opq_1, insv_opq_2 }, 5);
			auto& v_ins_eq = insv_eq.first;

			uint32_t gap = 0x123456 - (uint32_t)insv_eq.second;
			Value* val_gap = ConstantInt::get(ty_i32, gap);

			Instruction* inst_add_gap =
				BinaryOperator::CreateAdd(*(v_ins_eq.end() - 1), val_gap);

			// inst_add_gap == 0x123456

			Instruction* inst_ptr_to_int = new PtrToIntInst(inst_base, ty_i64);

			Instruction* inst_zext_to_i64 = new ZExtInst(inst_add_gap, ty_i64);

			Instruction* inst_sub_gap =
				BinaryOperator::CreateSub(inst_ptr_to_int, inst_zext_to_i64);

			Instruction* inst_ptr_new =
				new IntToPtrInst(inst_sub_gap, ty_i64->getPointerTo());

			std::vector<Instruction*> v_ins_eq_next = {
				inst_add_gap, inst_ptr_to_int, inst_zext_to_i64,
				inst_sub_gap, inst_ptr_new
			};

			v_ins_eq.insert(
				v_ins_eq.end(),
				reinterpret_cast<Instruction**>(&*v_ins_eq_next.begin()),
				reinterpret_cast<Instruction**>(&*v_ins_eq_next.end()));


			for (Value* val_inst_eq : v_ins_eq) {

				Instruction* inst_eq = reinterpret_cast<Instruction*>(val_inst_eq);

				inst_eq->insertBefore(inst_user);

			}

			inst_user->replaceUsesOfWith(&glob, *(v_ins_eq.end() - 1));

		}

	}

}

void create_decode_function(Module& mod, Function* &function_out) {

	// Declare and initialize function prototype

	auto &ctx = mod.getContext();

	auto ty_ptr_str = Type::getInt8Ty(ctx)->getPointerTo();
	auto ty_key = Type::getInt8Ty(ctx);
	auto ty_sz_str = Type::getInt64Ty(ctx);

	std::vector<Type*> ty_args = {
		ty_ptr_str,
		ty_key,
		ty_sz_str
		};


	Function* dec_fn = Function::Create(
		FunctionType::get(Type::getVoidTy(ctx), ty_args, false),
		GlobalValue::LinkageTypes::ExternalLinkage,
		"obf_decode",
		mod
		);

	dec_fn->addFnAttr(Attribute::get(
		ctx,
		Attribute::AlwaysInline
		)); // Always inline this function

	dec_fn->setCallingConv(CallingConv::C);
			

	auto args = dec_fn->arg_begin();

	Value* arg_ptr_str = args++;
	arg_ptr_str->setName("ptr_str");

	Value* arg_key = args++;
	arg_key->setName("key");
	
	Value* arg_sz_str = args++;
	arg_sz_str->setName("sz_str");


	// Start defining function and filling it with instructions

	/*

	entry:

		%i0 = alloca i64

		store i64 0, i64* %i0

		br label %repeat

	repeat:

		%i0tmp = load i64, i64* %i0

		%cond = icmp ugt %szStr, %i0tmp

		br i1 %cond, label %decode, label %end

	decode:

		%arg_ptr_str_int = ptrtoint i8* arg_ptr_str to i64

		%ptr_char_int = add i64 arg_ptr_str_int, %i0tmp

		%ptr_char = inttoptr i64 %ptr_char_int to i8*

		%e_val = load i8, i8* %ptr_char

		%d_val = xor i8 %e_val, i8 %key

		store i8 %d_val, i8* %ptr_char

		%i0tmp2 = add i64 %i0tmp, i64 1

		store i64 %i0tmp2, i64* %i0 

		br label repeat

	end:

		ret

	*/

	BasicBlock* bl_entry = BasicBlock::Create(
		ctx, "entry", dec_fn
		); /* entry block */

	BasicBlock* bl_repeat = BasicBlock::Create(
		ctx, "repeat", dec_fn
		); /* repeat block */

	BasicBlock* bl_decode = BasicBlock::Create(
		ctx, "decode", dec_fn
		); /* decode block */

	BasicBlock* bl_end = BasicBlock::Create(
		ctx, "end", dec_fn
		); /* end block */


	// Create entry block instructions

	IRBuilder<>* builder = new IRBuilder<>(bl_entry);

	auto var_i0 = builder->CreateAlloca(
		Type::getInt64Ty(ctx),
		nullptr /* not an array */,
		"i0"
		); // %i0 = alloca i64

	builder->CreateStore(
		ConstantInt::get(Type::getInt64Ty(ctx), 0),
		var_i0
		); // store i64 0, i64* %i0
			
	builder->CreateBr(bl_repeat); // br label %repeat

	
	// Create repeat block instructions

	builder = new IRBuilder<>(bl_repeat);

	auto var_i0tmp = builder->CreateLoad(
		Type::getInt64Ty(ctx),
		var_i0,
		"i0tmp"
		); // %i0tmp = load i64, i64* %i0

	auto var_cond = builder->CreateICmpUGT(
		arg_sz_str,
		var_i0tmp,
		"cond"
		); // %cond = icmp ugt %szStr, %i0tmp

	builder->CreateCondBr(
		var_cond,
		bl_decode,
		bl_end
		); // br i1 %cond, label %decode, label %end

	
	// Create decode block instructions

	builder = new IRBuilder<>(bl_decode);

	auto var_arg_ptr_str_int = builder->CreatePtrToInt(
		arg_ptr_str,
		Type::getInt64Ty(ctx),
		"arg_ptr_str_int"
		); // %arg_ptr_str_int = ptrtoint i8* arg_ptr_str to i64

	auto var_ptr_char_int = builder->CreateAdd(
		var_arg_ptr_str_int,
		var_i0tmp,
		"ptr_char_int"
		); // %ptr_char_int = add i64 arg_ptr_str_int, %i0tmp

	auto var_ptr_char = builder->CreateIntToPtr(
		var_ptr_char_int,
		Type::getInt8Ty(ctx)->getPointerTo(),
		"ptr_char"
		); // %ptr_char = inttoptr i64 %ptr_char_int to i8*

	auto var_e_val = builder->CreateLoad(
		Type::getInt8Ty(ctx),
		var_ptr_char,
		"e_val"
		); // %e_val = load i8, i8* %ptr_char

	auto var_d_val = builder->CreateXor(
		var_e_val,
		arg_key,
		"d_val"
		); // %d_val = xor i8 %e_val, i8 %key

	builder->CreateStore(
		var_d_val,
		var_ptr_char
		); // store i8 %d_val, i8* %ptr_char

	auto var_i0tmp2 = builder->CreateAdd(
		var_i0tmp,
		ConstantInt::get(Type::getInt64Ty(ctx), 1),
		"i0tmp2"
		); // %i0tmp2 = add i64 %i0tmp, i64 1

	builder->CreateStore(
		var_i0tmp2,
		var_i0
		); // store i64 %i0tmp2, i64* %i0

	builder->CreateBr(bl_repeat); // br label repeat


	// Create end block instructions

	builder = new IRBuilder<>(bl_end);

	builder->CreateRetVoid(); // ret

	function_out = dec_fn;

}

bool runPass(Module &M) {

    auto& ctx = M.getContext();

    // Obfuscate strings

	obfuscate_string_literals(M);

	// Obfuscate references

	obfuscate_references(M);

	return false;

	auto g_strings = encode_string_literals(M);

    // Create decode function

    Function* fn_decode;
    create_decode_function(M, fn_decode);


    // Add calls to decode function for every encoded string

    Function* fn_main = M.getFunction("main");

    BasicBlock* bl_dec_stub = BasicBlock::Create(
        ctx,
        "obf_decode_stub"
        );

    IRBuilder<>* builder = new IRBuilder<>(bl_dec_stub);

    for (GlobalVariable* g_string : g_strings) {

        std::vector<Value*> args = {
            g_string, // arg_ptr_str
            ConstantInt::get(
                Type::getInt8Ty(ctx),
                0xAF,
                false /* not signed */
            ), // arg_key
            ConstantInt::get(
                Type::getInt64Ty(ctx),
                cast<ConstantDataArray>(g_string->getInitializer())->getAsString().size()
            ) // arg_sz_str
            };

        builder->CreateCall(fn_decode, args);

    }

    ir_manager::module::set_function_hook(bl_dec_stub, fn_main); // test

    ir_manager::function::bogus_control_flow(fn_main, 2); // test
    ir_manager::function::bogus_control_flow(fn_decode, 2); // test

    return false;

}


struct IRPass : PassInfoMixin<IRPass> {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
        if (!runPass(M))
            return PreservedAnalyses::all();
        return PreservedAnalyses::none();
    }
};

class MIRPass : public MachineFunctionPass {

public:

	static char ID;

	MIRPass() : MachineFunctionPass(ID) {

		// InitX86MCInstrInfo(&x86_ii); // init x86 instruction set

	}

	bool runOnMachineFunction(MachineFunction &MF) override {

		const TargetInstrInfo* x86_tii = MF.getSubtarget().getInstrInfo();

		MachineRegisterInfo& x86_mri = MF.getRegInfo();

		errs() << "Running on function: " << MF.getName() << "\n";

		for (auto it_bbl = MF.begin(); it_bbl != MF.end(); ++it_bbl) {

			MachineBasicBlock& bbl = *it_bbl;

			for (auto it_inst = bbl.begin(); it_inst != bbl.end(); ++it_inst) {

				MachineInstr& inst = *it_inst;

				if (inst.getOpcode() == X86::MOV64ri) {

					MachineOperand& op_base = inst.getOperand(1);

					if (!op_base.isGlobal()) continue;

					/* getOperand(0) yields the return vreg */
					Register reg_addr = inst.getOperand(0).getReg();

					bool reg_not_used = true;

					auto n_it_inst = it_inst;
					for (++n_it_inst; n_it_inst != bbl.end(); ++n_it_inst) {

						MachineInstr& n_inst = *n_it_inst;

						if (n_inst.modifiesRegister(reg_addr, nullptr)) break;

						if (n_inst.readsRegister(reg_addr, nullptr)) {

							// If pattern matches, then it's not considered a use
							if (n_inst.getOpcode() == X86::ADD64ri32) {

								MachineOperand& op_dest = n_inst.getOperand(1);
								MachineOperand& op_offset = n_inst.getOperand(2);

								if (!op_dest.isReg()
									|| op_dest.getReg() != reg_addr
									|| !op_offset.isImm()) continue;

								int64_t op_offset_i = op_offset.getImm();

								MIMetadata mi_md = MIMetadata(DebugLoc());

								const MCInstrDesc& mc_idesc = x86_tii->get(X86::LEA64r);

								// errs() << "Constraints: " << mc_idesc.operands()[0].Constraints << "\n";

								Register reg_use = n_inst.getOperand(0).getReg();

								// MachineInstr* mi_lea = BuildMI(
									// bbl,
									// it_inst,
									// mi_md,
									// mc_idesc,
									// reg_use)
									// .addGlobalAddress(op_base.getGlobal(), op_offset.getImm());

								// First, remove all operands except the def
								while (n_inst.getNumOperands() > 1) {
									n_inst.removeOperand(1);
								}

								n_inst.setDesc(mc_idesc);

								n_inst.addOperand(MachineOperand::CreateReg(X86::RIP, false)); // base

								n_inst.addOperand(MachineOperand::CreateImm(1)); // scale

								n_inst.addOperand(MachineOperand::CreateReg(X86::NoRegister, false)); // index

								n_inst.addOperand(
									MachineOperand::CreateGA(
										op_base.getGlobal(),
										op_offset_i)); // disp

								n_inst.addOperand(MachineOperand::CreateReg(X86::NoRegister, false)); // seg

								// %def = MOV64rm @.ptr + 0*0 + offset 

								// # 1254a6 <_end+0x121486>

								errs() << n_inst;

								continue;

							} 

							// Otherwise, it's an external use and base instruction can't be deleted (base instr : MOV64ri %addr)
							reg_not_used = false;

						}

					}
				
					if (reg_not_used) {
						/* remove base if reg is not used */

						it_inst = --bbl.erase(&inst);

					}

				} 

			}

		}

		return false;

	}

};


} // namespace

/* New PM Registration */
llvm::PassPluginLibraryInfo getIRPassPluginInfo() {
    
	return {

		LLVM_PLUGIN_API_VERSION,
		"IRPass",
		LLVM_VERSION_STRING,

		[](PassBuilder &PB) {

			PB.registerPipelineParsingCallback(
				[](StringRef Name, ModulePassManager &PM,
					ArrayRef<PassBuilder::PipelineElement>) {
					
					if (Name == "obfstrings") {
						// Run IR pass
						PM.addPass(IRPass());
						return true;
					}
					
					return false;
				
				});

		}

	};

}

// Register IR Pass
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getIRPassPluginInfo();
}

// Register Machine IR Pass
char MIRPass::ID = 0;
static RegisterPass<MIRPass> MIRPASS(
	"wv-mir-pass",
	"WareVisor Machine IR Pass for MIR-level code obfuscation",
	false,
	false);