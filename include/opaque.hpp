#ifndef OPAQUE_HPP
#define OPAQUE_HPP

#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"


namespace opaque {

    /*
    Creates a bunch of instructions which creates an opaque value
    using USER_SHARED_DATA and make the result equal to argument passed by 'eq_to' value.

    mod: LLVM module.
    eq_to: Indicates that what opaque value is going to be equal to after all instructions are executed.
    sz_eq_bits: Size of resulting value in bits (must be one of 8/16/32/64).

    Note that resulting value is located in last instruction value on returned list.
    */
    std::vector<llvm::Instruction*> opaque_by_user_shared_data(
        llvm::Module& mod, uint64_t eq_to, unsigned short sz_eq_bits
        );

}

#endif