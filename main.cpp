#include "llvm/IR/Module.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

#include "./include/encoder.h"
#include "./include/irmanager.h"

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

  // Encode strings

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

struct MyPass : PassInfoMixin<MyPass> {
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    if (!runPass(M))
      return PreservedAnalyses::all();
    return PreservedAnalyses::none();
  }
};

} // namespace

/* New PM Registration */
llvm::PassPluginLibraryInfo getMyPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "MyPass", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, llvm::ModulePassManager &PM,
                   ArrayRef<llvm::PassBuilder::PipelineElement>) {
                  if (Name == "mypass") {
                    PM.addPass(MyPass());
                    return true;
                  }
                  return false;
                });
          }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getMyPassPluginInfo();
}