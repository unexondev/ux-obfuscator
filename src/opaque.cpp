#include "include/opaque.hpp"
#include "include/win64_defs.hpp"

using namespace llvm;


namespace opaque {

    std::vector<Instruction*> opaque_by_user_shared_data(
        Module& mod, uint64_t eq_to, unsigned short sz_eq_bits) {

        assert((sz_eq_bits == 8 || sz_eq_bits == 16 || sz_eq_bits == 32 || sz_eq_bits == 64 )
            && "Argument 'sz_eq_bits' must be one of 8/16/32/64.");

        auto& ctx = mod.getContext();

        /*
        (([7FFE0030] >> 8) & 0xFF) = 0
        */

        std::vector<Instruction*> instr_out = {};

        ConstantInt* addr_ushd = ConstantInt::get(
            Type::getInt64Ty(ctx), ADDR_USER_SHARED_DATA
            );

        auto int32_ty = Type::getInt32Ty(ctx);

        Instruction* v_inttoptr = new IntToPtrInst(addr_ushd, int32_ty->getPointerTo());
        instr_out.push_back(v_inttoptr);

        Instruction* v_ushd = new LoadInst(
            int32_ty, v_inttoptr, "", false,
            mod.getDataLayout().getPrefTypeAlign(int32_ty),
            (Instruction*)nullptr
        );
        instr_out.push_back(v_ushd);

        Instruction* v_shr = BinaryOperator::CreateLShr(v_ushd, ConstantInt::get(int32_ty, 8));
        instr_out.push_back(v_shr);

        Instruction* v_and = BinaryOperator::CreateAnd(v_shr, ConstantInt::get(int32_ty, 0xFF));
        instr_out.push_back(v_and);

        switch (sz_eq_bits) {

            case 8:
                {

                    uint8_t _eq_to = static_cast<uint8_t>(eq_to);

                    if (eq_to != 0) {

                        instr_out.push_back(
                            BinaryOperator::CreateAdd(v_and, ConstantInt::get(int32_ty, _eq_to))
                        );

                    }

                    instr_out.push_back(
                        new TruncInst(instr_out[instr_out.size() - 1], Type::getInt8Ty(ctx))
                    );

                    break;

                }
            case 16:
                {

                    uint16_t _eq_to = static_cast<uint16_t>(eq_to);

                    if (eq_to != 0) {

                        instr_out.push_back(
                            BinaryOperator::CreateAdd(v_and, ConstantInt::get(int32_ty, _eq_to))
                        );

                    }

                    instr_out.push_back(
                        new TruncInst(instr_out[instr_out.size() - 1], Type::getInt16Ty(ctx))
                    );

                    break;

                }
            case 32:
                {

                    uint32_t _eq_to = static_cast<uint32_t>(eq_to);

                    if (eq_to != 0) {

                        instr_out.push_back(
                            BinaryOperator::CreateAdd(v_and, ConstantInt::get(int32_ty, _eq_to))
                        );

                    }

                    break;

                }
            case 64:
                {

                    Instruction* v_and_ext = new ZExtInst(v_and, Type::getInt64Ty(ctx));
                    instr_out.push_back(v_and_ext);

                    if (eq_to != 0) {

                        instr_out.push_back(
                            BinaryOperator::CreateAdd(v_and_ext, ConstantInt::get(Type::getInt64Ty(ctx), eq_to))
                        );

                    }

                }

        }

        return instr_out;

    }

}