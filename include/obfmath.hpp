#ifndef OBFMATH_HPP
#define OBFMATH_HPP

#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"


namespace math {

    /* Merge each llvm::Value (may be llvm::Instruction) with its computed value which is known */
    typedef std::pair<std::vector<llvm::Value*>, uint64_t> insval_t;

    /*  */
    template <typename T>
    insval_t generate_equation(
        llvm::Module& mod,
        const std::vector<insval_t>& opaque_vals,
        size_t num_deepness);

    /*
    This function creates a bunch of instructions according to the obfuscation of string
    given by argument 'str' and return them.

    mod: LLVM module.
    str: String initializer to be obfuscated.

    Note that resulting string is located in last instruction value on returned list.
    */
    std::vector<llvm::Instruction*> obfuscate_string_literal(llvm::Module& mod, llvm::StringRef str);

}

#endif