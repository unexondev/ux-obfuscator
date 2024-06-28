#ifndef IRMANAGER_H
#define IRMANAGER_H

#include <stddef.h>
#include "llvm/IR/Module.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/VectorBuilder.h"


namespace ir_manager {

    // Define error handling types

    typedef unsigned int error_t;
    typedef unsigned char byte_t;

    enum ERR {

        SUCCESS,
        INVALID_ARGUMENT,
        NO_GLOBAL_INITIALIZER,
        FUNCTION_NOT_DEFINED,
        NO_VALID_BLOCK

    };

    // Define other types


    // Define functions for different workspaces

    namespace global {

        /* Gets globals of the module 'mod'. Those globals are choosen to have internal or private linkages,
            because external references can break the decoding algorithm and make the module unable to run */
        void get_internals(llvm::Module& mod, std::vector<llvm::GlobalVariable*>& internals_out);

    }

    namespace module {

        /* Inserts the 'block_detour' basic block to the beginning of the function 'function_target'
            and places a 'br' instruction to the end of detour block which jumps back to the rest of target function */
        error_t set_function_hook(llvm::BasicBlock* block_detour, llvm::Function* function_target);

    }

    namespace function {

        /* Splits the basic blocks inside the given function just one time.
            If no basic blocks are available to split, it returns ERR::NO_VALID_BLOCK */
        error_t split_blocks_once(llvm::Function* function_target);

        /* Bogus the control flow of given function. Attribute 'times_repeat' should be in range 1-100
            due to that it may cause performance issues for binaries with large code sections */
        error_t bogus_control_flow(llvm::Function* function_target, unsigned short times_repeat);

    }

}


#endif