#include "include/obfmath.hpp"
#include "include/opaque.hpp"

#include "include/utils.hpp"

#define MAX_UINT8 0xFF
#define MAX_UINT16 0xFFFF
#define MAX_UINT32 0xFFFFFFFF
#define MAX_UINT64 0xFFFFFFFFFFFFFFFF

using namespace llvm;


namespace math {

	std::vector<Instruction*> generate_equation(
		Module& mod, uint64_t& eq_to_out,
		std::vector<insval_t>& opaque_vals,
		size_t num_iters, size_t num_rnd_slots) {

		typedef insval_t(*binop_cb_t)(insval_t*, insval_t*);
		struct insval_optimized_t {
			insval_t insval;
			bool used;
		};

		auto& ctx = mod.getContext();

		IntegerType* ty_i64 = Type::getInt64Ty(ctx);

		std::vector<binop_cb_t> binop_cbs = {

			/* NOT, ADD, SUB, MUL, DIV, OR, XOR, SHL, LSHR */

			[](insval_t* operand_1, insval_t* operand_2 = nullptr) -> insval_t { // NOT

				UNUSED(operand_2);

				return { { BinaryOperator::CreateNot(*(operand_1->first.end() - 1)) }, ~operand_1->second };

			},

			[](insval_t* operand_1, insval_t* operand_2) -> insval_t { // ADD

				return { { BinaryOperator::CreateAdd(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) }, operand_1->second + operand_2->second };

			},

			[](insval_t* operand_1, insval_t* operand_2) -> insval_t { // SUB

				return { { BinaryOperator::CreateSub(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) }, operand_1->second - operand_2->second };

			},

			[](insval_t* operand_1, insval_t* operand_2) -> insval_t { // MUL

				return { { BinaryOperator::CreateMul(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) }, operand_1->second * operand_2->second };

			},

			[](insval_t* operand_1, insval_t* operand_2) -> insval_t { // DIV

				return { { BinaryOperator::CreateUDiv(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) }, operand_1->second / operand_2->second };

			},

			[](insval_t* operand_1, insval_t* operand_2) -> insval_t { // OR

				return { { BinaryOperator::CreateOr(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) }, operand_1->second | operand_2->second };

			},

			[](insval_t* operand_1, insval_t* operand_2) -> insval_t { // XOR

				return { { BinaryOperator::CreateXor(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) }, operand_1->second ^ operand_2->second };

			},

			[](insval_t* operand_1, insval_t* operand_2) -> insval_t { // SHL

				return { { BinaryOperator::CreateShl(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) }, operand_1->second << operand_2->second };

			},

			[](insval_t* operand_1, insval_t* operand_2) -> insval_t { // LSHR

				return { { BinaryOperator::CreateLShr(*(operand_1->first.end() - 1), *(operand_2->first.end() - 1)) }, operand_1->second >> operand_2->second };

			}

		};


		// Generate and initialize slots with initial random values

		std::vector<insval_optimized_t> slots(num_rnd_slots);

		for (size_t i = 0; i < num_rnd_slots; ++i) {

			uint64_t rnd_val = gen_random_int<uint64_t>(MAX_UINT32, MAX_UINT64);

			insval_t rnd_insval = { 
				{ dynamic_cast<Value*>(ConstantInt::get(ty_i64, rnd_val)) },
				rnd_val
			};

			size_t j = i >= opaque_vals.size() ? (i - opaque_vals.size()) : i;

			insval_t res_operator = binop_cbs[gen_random_int<size_t>(1, binop_cbs.size()-1)](&rnd_insval, &opaque_vals[j]); // NOT operator is not accepted

			rnd_insval.first.insert(rnd_insval.first.begin(), res_operator.first.begin(), res_operator.first.end());
			rnd_insval.second = res_operator.second;

			slots[i] = { rnd_insval, false /* no use, just def */ };

		}

		// Push opaque values to instruction list first, because slot values are dependent to them

		std::vector<Instruction*> instr_out = {};

		for (insval_t& opaque_val : opaque_vals) {

			instr_out.insert(
				instr_out.end(),
				reinterpret_cast<Instruction**>(&*opaque_val.first.begin()),
				reinterpret_cast<Instruction**>(&*opaque_val.first.end()));
			
		}

		for (size_t i = 0; i < num_iters; ++i) {

			insval_optimized_t& slot_1 = slots[gen_random_int<size_t>(0, slots.size()-1)]; // we picked up a slot randomly and we are going to assume it as first operand
			insval_optimized_t& slot_2 = slots[gen_random_int<size_t>(0, slots.size()-1)]; // we also picked up a slot randomly and we are going to assume it as second operand

			insval_t res_operator = binop_cbs[gen_random_int<size_t>(0, binop_cbs.size()-1)](&slot_1.insval, &slot_2.insval); // we randomly picked up an operator and performed operation on it

			slots.push_back({ res_operator, false /* no use, just def */ }); // push the result onto slots, so we might use it as an operand on next iterations

			slot_1.used = true; slot_2.used = true;

		}

		/*
		From now on, we need to push each slot onto instruction list except "unused" slots
		Last slot will not be used - as expected - so we need to skip that
		*/
		for (size_t i = 0; i < slots.size() - 1; ++i) {

			insval_optimized_t& slot = slots[i];

			if (slot.used) instr_out.insert(
				instr_out.end(),
				reinterpret_cast<Instruction**>(&*slot.insval.first.begin()),
				reinterpret_cast<Instruction**>(&*slot.insval.first.end()));

		}

		eq_to_out = (*(slots.end() - 1)).insval.second; // write the computed value as a result of operations

		return instr_out;

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

				/*
				Random definitions:
					This part consists of random values.
					
					defs: RA, RB

					Opaque definitions:
						This part consists of opaque values (which are also random).

						defs: OA, OB, OC

				Key definitions:
					This part consist of key difinition, which is to make equation to be computed to STR[ [n, n+4] ]
					
					def: KVAL

				Equation:

					STR1 = str[ [0,4] ]

					EQ1 = (RA & OA)
					EQ2 = (RB >> OC)
					EQ3 = (EQ1 << EQ2)
					EQ4 = (EQ3 ^ OC)
					EQ5 = (RB ^ OC)
					EQ6 = (EQ5 + OB)
					EQ7 = (EQ4 | EQ6)

					EQ8 = (RA & OA)
					EQ9 = (RB >> OC)
					EQ10 = (EQ1 << EQ2)
					EQ11 = (EQ3 ^ OC)
					EQ12 = (RB ^ OC)
					EQ13 = (EQ5 + OB)
					EQ14 = (EQ4 | EQ6)

					EQ8 = (EQ7 ^ KVAL)

					STR1 = EQ8

				*/

				// Define the random values

				uint64_t _ra = gen_random_int<uint64_t>(0, -1);
				uint64_t _rb = gen_random_int<uint64_t>(0, -1);

				ConstantInt* v_ra = ConstantInt::get(ty_i64, _ra);
				ConstantInt* v_rb = ConstantInt::get(ty_i64, _rb);

				uint64_t _oa = gen_random_int<uint64_t>(0, -1);
				uint64_t _ob = gen_random_int<uint64_t>(0, -1);
				uint64_t _oc = gen_random_int<uint64_t>(0, -1);

				// Push the opaque values

				auto itrs_v_oa = opaque::opaque_by_user_shared_data(mod, _oa, 64);
				instr_out.insert(instr_out.end(), itrs_v_oa.begin(), itrs_v_oa.end());
				Instruction* v_oa = *(instr_out.end() - 1);

				auto itrs_v_ob = opaque::opaque_by_user_shared_data(mod, _ob, 64);
				instr_out.insert(instr_out.end(), itrs_v_ob.begin(), itrs_v_ob.end());
				Instruction* v_ob = *(instr_out.end() - 1);

				auto itrs_v_oc = opaque::opaque_by_user_shared_data(mod, _oc, 64);
				instr_out.insert(instr_out.end(), itrs_v_oc.begin(), itrs_v_oc.end());
				Instruction* v_oc = *(instr_out.end() - 1);

				// ( (((_ra ^ _oa) + _ob) | (((_rb & _oc) << (_ra >> _oa)) ^ _oc)) & (((_rb ^ _oc) + _ob) | (((_ra & _oa) << (_rb >> _oc)) ^ _oc)) ) ^ KVAL

				uint64_t _kval = (((_rb ^ _oc) + _ob) | (((_ra & _oa) << (_rb >> _oc)) ^ _oc)) ^ i64_str;

				ConstantInt* v_kval = ConstantInt::get(ty_i64, _kval);

				Instruction* v_eq1 = BinaryOperator::CreateAnd(v_ra, v_oa);
				Instruction* v_eq2 = BinaryOperator::CreateLShr(v_rb, v_oc);
				Instruction* v_eq3 = BinaryOperator::CreateShl(v_eq1, v_eq2);
				Instruction* v_eq4 = BinaryOperator::CreateXor(v_eq3, v_oc);
				Instruction* v_eq5 = BinaryOperator::CreateXor(v_rb, v_oc);
				Instruction* v_eq6 = BinaryOperator::CreateAdd(v_eq5, v_ob);
				Instruction* v_eq7 = BinaryOperator::CreateOr(v_eq4, v_eq6);
				Instruction* v_str = BinaryOperator::CreateXor(v_eq7, v_kval);

				std::vector<Instruction*> itrs_math = {
					v_eq1, v_eq2, v_eq3, v_eq4,
					v_eq5, v_eq6, v_eq7, v_str
				};

				instr_out.insert(instr_out.end(), itrs_math.begin(), itrs_math.end());

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

				uint32_t _ra = gen_random_int<uint32_t>(0, -1);
				uint32_t _rb = gen_random_int<uint32_t>(0, -1);

				ConstantInt* v_ra = ConstantInt::get(ty_i32, _ra);
				ConstantInt* v_rb = ConstantInt::get(ty_i32, _rb);

				uint32_t _oa = gen_random_int<uint32_t>(0, -1);
				uint32_t _ob = gen_random_int<uint32_t>(0, -1);
				uint32_t _oc = gen_random_int<uint32_t>(0, -1);

				// Push the opaque values

				auto itrs_v_oa = opaque::opaque_by_user_shared_data(mod, _oa, 32);
				instr_out.insert(instr_out.end(), itrs_v_oa.begin(), itrs_v_oa.end());
				Instruction* v_oa = *(instr_out.end() - 1);

				auto itrs_v_ob = opaque::opaque_by_user_shared_data(mod, _ob, 32);
				instr_out.insert(instr_out.end(), itrs_v_ob.begin(), itrs_v_ob.end());
				Instruction* v_ob = *(instr_out.end() - 1);

				auto itrs_v_oc = opaque::opaque_by_user_shared_data(mod, _oc, 32);
				instr_out.insert(instr_out.end(), itrs_v_oc.begin(), itrs_v_oc.end());
				Instruction* v_oc = *(instr_out.end() - 1);

				// ((((_rb ^ _oc) + _ob) | (((_ra & _oa) << (_rb >> _oc)) ^ _oc)) ^ KVAL)

				uint32_t _kval = (((_rb ^ _oc) + _ob) | (((_ra & _oa) << (_rb >> _oc)) ^ _oc)) ^ i32_str;

				ConstantInt* v_kval = ConstantInt::get(ty_i32, _kval);

				Instruction* v_eq1 = BinaryOperator::CreateAnd(v_ra, v_oa);
				Instruction* v_eq2 = BinaryOperator::CreateLShr(v_rb, v_oc);
				Instruction* v_eq3 = BinaryOperator::CreateShl(v_eq1, v_eq2);
				Instruction* v_eq4 = BinaryOperator::CreateXor(v_eq3, v_oc);
				Instruction* v_eq5 = BinaryOperator::CreateXor(v_rb, v_oc);
				Instruction* v_eq6 = BinaryOperator::CreateAdd(v_eq5, v_ob);
				Instruction* v_eq7 = BinaryOperator::CreateOr(v_eq4, v_eq6);
				Instruction* v_str = BinaryOperator::CreateXor(v_eq7, v_kval);

				std::vector<Instruction*> itrs_math = {
					v_eq1, v_eq2, v_eq3, v_eq4,
					v_eq5, v_eq6, v_eq7, v_str
				};

				instr_out.insert(instr_out.end(), itrs_math.begin(), itrs_math.end());

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

				uint16_t _ra = gen_random_int<uint16_t>(0, -1);
				uint16_t _rb = gen_random_int<uint16_t>(0, -1);

				ConstantInt* v_ra = ConstantInt::get(ty_i16, _ra);
				ConstantInt* v_rb = ConstantInt::get(ty_i16, _rb);

				uint16_t _oa = gen_random_int<uint16_t>(0, -1);
				uint16_t _ob = gen_random_int<uint16_t>(0, -1);
				uint16_t _oc = gen_random_int<uint16_t>(0, -1);

				// Push the opaque values

				auto itrs_v_oa = opaque::opaque_by_user_shared_data(mod, _oa, 16);
				instr_out.insert(instr_out.end(), itrs_v_oa.begin(), itrs_v_oa.end());
				Instruction* v_oa = *(instr_out.end() - 1);

				auto itrs_v_ob = opaque::opaque_by_user_shared_data(mod, _ob, 16);
				instr_out.insert(instr_out.end(), itrs_v_ob.begin(), itrs_v_ob.end());
				Instruction* v_ob = *(instr_out.end() - 1);

				auto itrs_v_oc = opaque::opaque_by_user_shared_data(mod, _oc, 16);
				instr_out.insert(instr_out.end(), itrs_v_oc.begin(), itrs_v_oc.end());
				Instruction* v_oc = *(instr_out.end() - 1);

				// ((((_rb ^ _oc) + _ob) | (((_ra & _oa) << (_rb >> _oc)) ^ _oc)) ^ KVAL)

				uint16_t _kval = (((_rb ^ _oc) + _ob) | (((_ra & _oa) << (_rb >> _oc)) ^ _oc)) ^ i16_str;

				ConstantInt* v_kval = ConstantInt::get(ty_i16, _kval);

				Instruction* v_eq1 = BinaryOperator::CreateAnd(v_ra, v_oa);
				Instruction* v_eq2 = BinaryOperator::CreateLShr(v_rb, v_oc);
				Instruction* v_eq3 = BinaryOperator::CreateShl(v_eq1, v_eq2);
				Instruction* v_eq4 = BinaryOperator::CreateXor(v_eq3, v_oc);
				Instruction* v_eq5 = BinaryOperator::CreateXor(v_rb, v_oc);
				Instruction* v_eq6 = BinaryOperator::CreateAdd(v_eq5, v_ob);
				Instruction* v_eq7 = BinaryOperator::CreateOr(v_eq4, v_eq6);
				Instruction* v_str = BinaryOperator::CreateXor(v_eq7, v_kval);

				std::vector<Instruction*> itrs_math = {
					v_eq1, v_eq2, v_eq3, v_eq4,
					v_eq5, v_eq6, v_eq7, v_str
				};

				instr_out.insert(instr_out.end(), itrs_math.begin(), itrs_math.end());

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

				uint8_t _ra = gen_random_int<uint8_t>(0, -1);
				uint8_t _rb = gen_random_int<uint8_t>(0, -1);

				ConstantInt* v_ra = ConstantInt::get(ty_i8, _ra);
				ConstantInt* v_rb = ConstantInt::get(ty_i8, _rb);

				uint8_t _oa = gen_random_int<uint8_t>(0, -1);
				uint8_t _ob = gen_random_int<uint8_t>(0, -1);
				uint8_t _oc = gen_random_int<uint8_t>(0, -1);

				// Push the opaque values

				auto itrs_v_oa = opaque::opaque_by_user_shared_data(mod, _oa, 8);
				instr_out.insert(instr_out.end(), itrs_v_oa.begin(), itrs_v_oa.end());
				Instruction* v_oa = *(instr_out.end() - 1);

				auto itrs_v_ob = opaque::opaque_by_user_shared_data(mod, _ob, 8);
				instr_out.insert(instr_out.end(), itrs_v_ob.begin(), itrs_v_ob.end());
				Instruction* v_ob = *(instr_out.end() - 1);

				auto itrs_v_oc = opaque::opaque_by_user_shared_data(mod, _oc, 8);
				instr_out.insert(instr_out.end(), itrs_v_oc.begin(), itrs_v_oc.end());
				Instruction* v_oc = *(instr_out.end() - 1);

				// ((((_rb ^ _oc) + _ob) | (((_ra & _oa) << (_rb >> _oc)) ^ _oc)) ^ KVAL)

				uint8_t _kval = (((_rb ^ _oc) + _ob) | (((_ra & _oa) << (_rb >> _oc)) ^ _oc)) ^ i8_str;

				ConstantInt* v_kval = ConstantInt::get(ty_i8, _kval);

				Instruction* v_eq1 = BinaryOperator::CreateAnd(v_ra, v_oa);
				Instruction* v_eq2 = BinaryOperator::CreateLShr(v_rb, v_oc);
				Instruction* v_eq3 = BinaryOperator::CreateShl(v_eq1, v_eq2);
				Instruction* v_eq4 = BinaryOperator::CreateXor(v_eq3, v_oc);
				Instruction* v_eq5 = BinaryOperator::CreateXor(v_rb, v_oc);
				Instruction* v_eq6 = BinaryOperator::CreateAdd(v_eq5, v_ob);
				Instruction* v_eq7 = BinaryOperator::CreateOr(v_eq4, v_eq6);
				Instruction* v_str = BinaryOperator::CreateXor(v_eq7, v_kval);

				std::vector<Instruction*> itrs_math = {
					v_eq1, v_eq2, v_eq3, v_eq4,
					v_eq5, v_eq6, v_eq7, v_str
				};

				instr_out.insert(instr_out.end(), itrs_math.begin(), itrs_math.end());

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