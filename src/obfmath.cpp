#include "include/obfmath.hpp"
#include "include/opaque.hpp"

#include "include/utils.hpp"


#define MAX_UINT8 0xFF
#define MAX_UINT16 0xFFFF
#define MAX_UINT32 0xFFFFFFFF
#define MAX_UINT64 0xFFFFFFFFFFFFFFFF

using namespace llvm;


namespace math {

	template <typename T>
	insval_t generate_equation(
		Module& mod,
		const std::vector<insval_t>& opaque_vals,
		size_t num_deepness) {

		typedef insval_t(*binop_cb_t)(const insval_t*, const insval_t*);

		struct insval_pack {
			insval_t insval;
			bool used = false;
		};

		auto& ctx = mod.getContext();

		IntegerType* ty_val = decide_integer_type<T>(ctx);

		static std::array<binop_cb_t, 8> binop_cbs = {

			/* NOT, ADD, SUB, MUL, DIV, OR, XOR, SHL, LSHR */

			[](const insval_t* operand_1, const insval_t* operand_2 = nullptr) -> insval_t { // NOT

				UNUSED(operand_2);

				return {
					{ BinaryOperator::CreateNot(*(operand_1->first.end() - 1)) },
					static_cast<T>(~operand_1->second)
				};

			},

			[](const insval_t* operand_1, const insval_t* operand_2) -> insval_t { // ADD

				return {
					{ BinaryOperator::CreateAdd(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) },
					static_cast<T>(operand_1->second + operand_2->second)
				};

			},

			[](const insval_t* operand_1, const insval_t* operand_2) -> insval_t { // SUB

				return {
					{ BinaryOperator::CreateSub(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) },
					static_cast<T>(operand_1->second - operand_2->second)
				};

			},

			[](const insval_t* operand_1, const insval_t* operand_2) -> insval_t { // MUL

				return {
					{ BinaryOperator::CreateMul(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) },
					static_cast<T>(operand_1->second * operand_2->second)
				};

			},

			[](const insval_t* operand_1, const insval_t* operand_2) -> insval_t { // OR

				return {
					{ BinaryOperator::CreateOr(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) },
					static_cast<T>(operand_1->second | operand_2->second)
				};

			},

			[](const insval_t* operand_1, const insval_t* operand_2) -> insval_t { // XOR

				return {
					{ BinaryOperator::CreateXor(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) },
					static_cast<T>(operand_1->second ^ operand_2->second)
				};

			},

			[](const insval_t* operand_1, const insval_t* operand_2) -> insval_t { // SHL

				return {
					{ BinaryOperator::CreateShl(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) },
					static_cast<T>(operand_1->second << operand_2->second)
				};

			},

			[](const insval_t* operand_1, const insval_t* operand_2) -> insval_t { // LSHR

				return {
					{ BinaryOperator::CreateLShr(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) },
					static_cast<T>(operand_1->second >> operand_2->second)
				};

			}

		};

		size_t num_slots = opaque_vals.size();

		// Generate and initialize slots with initial random values
		// Slots are two dimensional, first dimension is for 'deepness (number of iterations)'.
		std::vector<std::vector<insval_pack>> slots(num_deepness, std::vector<insval_pack>(num_slots));

		for (size_t i = 0; i < num_slots; ++i) {

			T rnd_val = gen_random_int<T>(0, -1);

			insval_t rnd_insval = { 
				{ dynamic_cast<Value*>(ConstantInt::get(ty_val, rnd_val)) },
				rnd_val
			};

			const insval_t* opaque_val = &opaque_vals[i];

			insval_t res_operator = binop_cbs[gen_random_int<size_t>(1 /* NOT operator is not accepted */, binop_cbs.size()-1)](
				&rnd_insval,
				opaque_val);

			insval_pack& slot = slots[0][i];
			auto& insts_slot = slot.insval.first;

			// Push opaque value's instructions to instruction list first	
			insts_slot.insert(insts_slot.begin(), opaque_val->first.begin(), opaque_val->first.end());

			// Now push binary operator instruction
			insts_slot.push_back(res_operator.first[0]); // Binary operators consist of single instruction

			// Set the resultant fixed value
			slot.insval.second = static_cast<uint64_t>(res_operator.second);

		}


		for (size_t deepness = 1; deepness < num_deepness; ++deepness) {

			for (size_t i = 0; i < num_slots; ++i) {

				auto i_slots = gen_random_int<size_t, 2>(0, num_slots - 1);

				size_t i_slot_1 = i_slots[0];
				size_t i_slot_2 = i_slots[1];

				insval_pack& slot_1 = slots[deepness - 1][i_slot_1]; // we picked up a slot randomly and we are going to assume it as first operand
				insval_pack& slot_2 = slots[deepness - 1][i_slot_2]; // we also picked up a slot randomly and we are going to assume it as second operand

				insval_t res_operator = binop_cbs[
					gen_random_int<size_t>(0, binop_cbs.size()-1)
				](&slot_1.insval, &slot_2.insval); // we randomly picked up an operator and performed operation on it

				insval_pack& slot = slots[deepness][i];
				auto& insts_slot = slot.insval.first;

				insts_slot.push_back(res_operator.first[0]);

				slot.insval.second = static_cast<uint64_t>(res_operator.second);

				slot_1.used = true;
				slot_2.used = true;

				// On the last deepness, we only need to compute one slot which is going to be returned
				if (deepness == num_deepness - 1) {

					slots[deepness].resize(1);

					slot.used = true;

					break;

				}

			}

		}

		insval_t insval_out;
		auto& insts_out = insval_out.first;
		insval_out.second = slots[num_deepness - 1][0].insval.second;

		for (size_t i = 0; i < num_deepness; ++i) {

			auto& slots_on_depth = slots[i];

			for (size_t j = 0; j < slots_on_depth.size(); ++j) {

				insval_pack& slot = slots_on_depth[j];
				auto& insts_slot = slot.insval.first;

				if (!slot.used) { // clear instructions of slot from memory

					for (auto* inst_slot : slot.insval.first) {

						inst_slot->replaceAllUsesWith(UndefValue::get(inst_slot->getType()));

						inst_slot->deleteValue(); // delete instruction from memory

					}

					continue;

				}

				insts_out.insert(insts_out.end(), insts_slot.begin(), insts_slot.end());

			}

		}

		return insval_out;

	}


	std::vector<Instruction*> obfuscate_string_literal(Module& mod, StringRef str) {

		auto& ctx = mod.getContext();

		std::vector<Instruction*> instr_out = {};

		size_t sz_str = str.size();

		// Define integer types once to avoid multiple initialization

		IntegerType* ty_i8 = Type::getInt8Ty(ctx);
		IntegerType* ty_i16 = Type::getInt16Ty(ctx);
		IntegerType* ty_i32 = Type::getInt32Ty(ctx);
		IntegerType* ty_i64 = Type::getInt64Ty(ctx);

		// Allocate some space for resulting string on stack

		Instruction* addr_str_stack = new AllocaInst(
			ty_i8, 0,
			ConstantInt::get(ty_i8, sz_str),
			mod.getDataLayout().getPrefTypeAlign(ty_i8),
			"", (Instruction*)nullptr
			);
		instr_out.push_back(addr_str_stack);


		const unsigned char* str_begin = str.bytes_begin();

		while (sz_str > 0) {

			if (sz_str >= 8) {

				const uint64_t i64_str = *reinterpret_cast<const uint64_t*>(str_begin);

				uint64_t val_opaque_1 = gen_random_int<uint64_t>(MAX_UINT16, MAX_UINT64);
				uint64_t val_opaque_2 = gen_random_int<uint64_t>(MAX_UINT16, MAX_UINT64);
				uint64_t val_opaque_3 = gen_random_int<uint64_t>(MAX_UINT16, MAX_UINT64);

				// Push the opaque values

				auto itrs_opaque_1 = opaque::opaque_by_user_shared_data(mod, val_opaque_1, 64);
				auto itrs_opaque_2 = opaque::opaque_by_user_shared_data(mod, val_opaque_2, 64);
				auto itrs_opaque_3 = opaque::opaque_by_user_shared_data(mod, val_opaque_3, 64);

				std::vector<Value*> vals_opaque_1(itrs_opaque_1.begin(), itrs_opaque_1.end());
				std::vector<Value*> vals_opaque_2(itrs_opaque_2.begin(), itrs_opaque_2.end());
				std::vector<Value*> vals_opaque_3(itrs_opaque_3.begin(), itrs_opaque_3.end());

				insval_t opaque_1 = { vals_opaque_1, val_opaque_1 };
				insval_t opaque_2 = { vals_opaque_2, val_opaque_2 };
				insval_t opaque_3 = { vals_opaque_3, val_opaque_3 };

				std::vector<insval_t> opaque_vals = { opaque_1, opaque_2, opaque_3 };

				insval_t insval_eq = generate_equation<uint64_t>(mod, opaque_vals, 30);
				auto& insts_eq = insval_eq.first;

				instr_out.insert(
					instr_out.end(),
					reinterpret_cast<Instruction**>(&*insts_eq.begin()),
					reinterpret_cast<Instruction**>(&*insts_eq.end()));

				const uint64_t val_kval = i64_str ^ insval_eq.second;

				Instruction* v_str = BinaryOperator::CreateXor(
					*(instr_out.end() - 1),
					ConstantInt::get(ty_i64, val_kval));

				instr_out.push_back(v_str);

				size_t offset = static_cast<size_t>(str_begin - str.bytes_begin());

				Instruction* v_i_addr_str = new PtrToIntInst(
					addr_str_stack, ty_i64,
					"", (Instruction*)nullptr
				);
				instr_out.push_back(v_i_addr_str);

				Instruction* v_i_addr_str_curr = BinaryOperator::CreateAdd(
					v_i_addr_str,
					ConstantInt::get(ty_i64, offset)
				);
				instr_out.push_back(v_i_addr_str_curr);

				Instruction* v_addr_str_curr = new IntToPtrInst(
					v_i_addr_str_curr,
					ty_i64->getPointerTo()
				);
				instr_out.push_back(v_addr_str_curr);

				instr_out.push_back(new StoreInst(
					v_str, v_addr_str_curr, false,
					mod.getDataLayout().getPrefTypeAlign(ty_i64),
					(Instruction*)nullptr
				));

				str_begin += 8;
				sz_str -= 8;

			}

			else if (sz_str >= 4) {

				const uint32_t i32_str = *reinterpret_cast<const uint32_t*>(str_begin);

				uint32_t val_opaque_1 = gen_random_int<uint32_t>(MAX_UINT16, MAX_UINT32);
				uint32_t val_opaque_2 = gen_random_int<uint32_t>(MAX_UINT16, MAX_UINT32);
				uint32_t val_opaque_3 = gen_random_int<uint32_t>(MAX_UINT16, MAX_UINT32);

				// Push the opaque values

				auto itrs_opaque_1 = opaque::opaque_by_user_shared_data(mod, val_opaque_1, 32);
				auto itrs_opaque_2 = opaque::opaque_by_user_shared_data(mod, val_opaque_2, 32);
				auto itrs_opaque_3 = opaque::opaque_by_user_shared_data(mod, val_opaque_3, 32);

				std::vector<Value*> vals_opaque_1(itrs_opaque_1.begin(), itrs_opaque_1.end());
				std::vector<Value*> vals_opaque_2(itrs_opaque_2.begin(), itrs_opaque_2.end());
				std::vector<Value*> vals_opaque_3(itrs_opaque_3.begin(), itrs_opaque_3.end());

				insval_t opaque_1 = { vals_opaque_1, val_opaque_1 };
				insval_t opaque_2 = { vals_opaque_2, val_opaque_2 };
				insval_t opaque_3 = { vals_opaque_3, val_opaque_3 };

				std::vector<insval_t> opaque_vals = { opaque_1, opaque_2, opaque_3 };

				insval_t insval_eq = generate_equation<uint32_t>(mod, opaque_vals, 30);
				auto& insts_eq = insval_eq.first;

				instr_out.insert(
					instr_out.end(),
					reinterpret_cast<Instruction**>(&*insts_eq.begin()),
					reinterpret_cast<Instruction**>(&*insts_eq.end()));

				const uint32_t val_kval = i32_str ^ static_cast<uint32_t>(insval_eq.second);

				Instruction* v_str = BinaryOperator::CreateXor(
					*(instr_out.end() - 1),
					ConstantInt::get(ty_i32, val_kval));

				instr_out.push_back(v_str);

				size_t offset = static_cast<size_t>(str_begin - str.bytes_begin());

				Instruction* v_i_addr_str = new PtrToIntInst(
					addr_str_stack, ty_i64,
					"", (Instruction*)nullptr
				);
				instr_out.push_back(v_i_addr_str);

				Instruction* v_i_addr_str_curr = BinaryOperator::CreateAdd(
					v_i_addr_str,
					ConstantInt::get(ty_i64, offset)
				);
				instr_out.push_back(v_i_addr_str_curr);

				Instruction* v_addr_str_curr = new IntToPtrInst(
					v_i_addr_str_curr,
					ty_i32->getPointerTo()
				);
				instr_out.push_back(v_addr_str_curr);

				instr_out.push_back(new StoreInst(
					v_str, v_addr_str_curr, false,
					mod.getDataLayout().getPrefTypeAlign(ty_i32),
					(Instruction*)nullptr
				));

				str_begin += 4;
				sz_str -= 4;

			}

			else if (sz_str >= 2) {

				const uint16_t i16_str = *reinterpret_cast<const uint16_t*>(str_begin);

				uint16_t val_opaque_1 = gen_random_int<uint16_t>(MAX_UINT8, MAX_UINT16);
				uint16_t val_opaque_2 = gen_random_int<uint16_t>(MAX_UINT8, MAX_UINT16);
				uint16_t val_opaque_3 = gen_random_int<uint16_t>(MAX_UINT8, MAX_UINT16);

				// Push the opaque values

				auto itrs_opaque_1 = opaque::opaque_by_user_shared_data(mod, val_opaque_1, 16);
				auto itrs_opaque_2 = opaque::opaque_by_user_shared_data(mod, val_opaque_2, 16);
				auto itrs_opaque_3 = opaque::opaque_by_user_shared_data(mod, val_opaque_3, 16);

				std::vector<Value*> vals_opaque_1(itrs_opaque_1.begin(), itrs_opaque_1.end());
				std::vector<Value*> vals_opaque_2(itrs_opaque_2.begin(), itrs_opaque_2.end());
				std::vector<Value*> vals_opaque_3(itrs_opaque_3.begin(), itrs_opaque_3.end());

				insval_t opaque_1 = { vals_opaque_1, val_opaque_1 };
				insval_t opaque_2 = { vals_opaque_2, val_opaque_2 };
				insval_t opaque_3 = { vals_opaque_3, val_opaque_3 };

				std::vector<insval_t> opaque_vals = { opaque_1, opaque_2, opaque_3 };

				insval_t insval_eq = generate_equation<uint16_t>(mod, opaque_vals, 30);
				auto& insts_eq = insval_eq.first;

				instr_out.insert(
					instr_out.end(),
					reinterpret_cast<Instruction**>(&*insts_eq.begin()),
					reinterpret_cast<Instruction**>(&*insts_eq.end()));

				const uint16_t val_kval = i16_str ^ static_cast<uint16_t>(insval_eq.second);

				Instruction* v_str = BinaryOperator::CreateXor(
					*(instr_out.end() - 1),
					ConstantInt::get(ty_i16, val_kval));

				instr_out.push_back(v_str);

				size_t offset = static_cast<size_t>(str_begin - str.bytes_begin());

				Instruction* v_i_addr_str = new PtrToIntInst(
					addr_str_stack, ty_i64,
					"", (Instruction*)nullptr
				);
				instr_out.push_back(v_i_addr_str);

				Instruction* v_i_addr_str_curr = BinaryOperator::CreateAdd(
					v_i_addr_str,
					ConstantInt::get(ty_i64, offset)
				);
				instr_out.push_back(v_i_addr_str_curr);

				Instruction* v_addr_str_curr = new IntToPtrInst(
					v_i_addr_str_curr,
					ty_i16->getPointerTo()
				);
				instr_out.push_back(v_addr_str_curr);

				instr_out.push_back(new StoreInst(
					v_str, v_addr_str_curr, false,
					mod.getDataLayout().getPrefTypeAlign(ty_i16),
					(Instruction*)nullptr
				));

				str_begin += 2;
				sz_str -= 2;

			}

			else {

				const uint8_t i8_str = *reinterpret_cast<const uint8_t*>(str_begin);

				uint8_t val_opaque_1 = gen_random_int<uint8_t>(0, MAX_UINT8);
				uint8_t val_opaque_2 = gen_random_int<uint8_t>(0, MAX_UINT8);
				uint8_t val_opaque_3 = gen_random_int<uint8_t>(0, MAX_UINT8);

				// Push the opaque values

				auto itrs_opaque_1 = opaque::opaque_by_user_shared_data(mod, val_opaque_1, 8);
				auto itrs_opaque_2 = opaque::opaque_by_user_shared_data(mod, val_opaque_2, 8);
				auto itrs_opaque_3 = opaque::opaque_by_user_shared_data(mod, val_opaque_3, 8);

				std::vector<Value*> vals_opaque_1(itrs_opaque_1.begin(), itrs_opaque_1.end());
				std::vector<Value*> vals_opaque_2(itrs_opaque_2.begin(), itrs_opaque_2.end());
				std::vector<Value*> vals_opaque_3(itrs_opaque_3.begin(), itrs_opaque_3.end());

				insval_t opaque_1 = { vals_opaque_1, val_opaque_1 };
				insval_t opaque_2 = { vals_opaque_2, val_opaque_2 };
				insval_t opaque_3 = { vals_opaque_3, val_opaque_3 };

				std::vector<insval_t> opaque_vals = { opaque_1, opaque_2, opaque_3 };

				insval_t insval_eq = generate_equation<uint8_t>(mod, opaque_vals, 30);
				auto& insts_eq = insval_eq.first;

				instr_out.insert(
					instr_out.end(),
					reinterpret_cast<Instruction**>(&*insts_eq.begin()),
					reinterpret_cast<Instruction**>(&*insts_eq.end()));

				const uint8_t val_kval = i8_str ^ static_cast<uint8_t>(insval_eq.second);

				Instruction* v_str = BinaryOperator::CreateXor(
					*(instr_out.end() - 1),
					ConstantInt::get(ty_i8, val_kval));

				instr_out.push_back(v_str);

				size_t offset = static_cast<size_t>(str_begin - str.bytes_begin());

				Instruction* v_i_addr_str = new PtrToIntInst(
					addr_str_stack, ty_i64,
					"", (Instruction*)nullptr
				);
				instr_out.push_back(v_i_addr_str);

				Instruction* v_i_addr_str_curr = BinaryOperator::CreateAdd(
					v_i_addr_str,
					ConstantInt::get(ty_i64, offset)
				);
				instr_out.push_back(v_i_addr_str_curr);

				Instruction* v_addr_str_curr = new IntToPtrInst(
					v_i_addr_str_curr,
					ty_i8->getPointerTo()
				);
				instr_out.push_back(v_addr_str_curr);

				instr_out.push_back(new StoreInst(
					v_str, v_addr_str_curr, false,
					mod.getDataLayout().getPrefTypeAlign(ty_i8),
					(Instruction*)nullptr
				));

				++str_begin;
				--sz_str;

			}

		}

		instr_out.push_back(
			new BitCastInst(addr_str_stack, PointerType::get(ctx, 0))
		);

		return instr_out;

	}

}