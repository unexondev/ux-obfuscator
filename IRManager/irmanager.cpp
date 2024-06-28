#include "../include/irmanager.h"
#include "../include/utils.h"

#include <random>


using namespace llvm;


template <typename T>
T generate_random_integer(T min, T max) {

    std::random_device rnd;
    std::mt19937_64 gen(rnd());

    std::uniform_int_distribution<T> dst(min, max);

    return dst(gen);

} 


namespace ir_manager {

    namespace global {

        void get_internals(Module& mod, std::vector<GlobalVariable*>& internals_out) {
            
            auto globals = mod.globals();

            for (GlobalVariable& global : globals) {

                auto lnk_g = global.getLinkage();

                if ((lnk_g != GlobalValue::PrivateLinkage &&
                    lnk_g != GlobalValue::InternalLinkage) ||
                        !global.hasInitializer()) { // Global may have external references

                        continue; // Skip this one

                }

                internals_out.push_back(&global);

            }

        }

    }

    namespace module {

        error_t set_function_hook(BasicBlock* block_detour, Function* function_target) {

            if (!function_target->hasExactDefinition())
                return ERR::FUNCTION_NOT_DEFINED;

            IRBuilder<>* builder = new IRBuilder<>(block_detour);

            BasicBlock& bl_entry = function_target->getEntryBlock();

            builder->CreateBr(&bl_entry);

            block_detour->insertInto(function_target, &bl_entry);

            return ERR::SUCCESS;

        }

    }

    namespace function {

        error_t split_blocks_once(llvm::Function* function_target) {

            // First, split blocks as they'll end up as 2, 3, 4 or 5 instructions

            std::vector<BasicBlock*> vec_bl_fn = {};

            auto it_bl = function_target->begin();
            for (; it_bl != function_target->end(); it_bl++) {

                BasicBlock* bl = cast<BasicBlock>(it_bl);

                vec_bl_fn.push_back(bl);

            }

            vec_bl_fn.erase(std::remove_if(vec_bl_fn.begin(), vec_bl_fn.end(), [](BasicBlock* const& bl) {

                size_t n_ins = 0; // number of instructions in basic block

                auto it_ins = bl->begin();
                for (; it_ins != bl->end(); it_ins++)
                    n_ins++;

                if (n_ins < 3) // single or double instruction blocks are not allowed.
                    return true;

                return false;

            }), vec_bl_fn.end());

            if (!vec_bl_fn.size())
                return ERR::NO_VALID_BLOCK;

            // Split basic blocks now

            for (auto& bl : vec_bl_fn) {

                size_t n_ins = 0;

                auto it_ins = bl->begin();
                for (; it_ins != bl->end(); it_ins++)
                    n_ins++;

                size_t n_spl = 0;
                do {

                    it_ins = bl->begin();

                    size_t split_at = generate_random_integer<size_t>(
                        1,
                        n_ins - 2 /* it can not be the last instruction */
                        );
                    
                    for (size_t i = 0; i < split_at; i++)
                        it_ins++;

                    bl->splitBasicBlock(
                        it_ins,
                        bl->getName() + ".node" + std::to_string(n_spl)
                        );

                    n_ins = split_at;

                    n_spl++;

                } while (n_ins >= 3);

            }

            return ERR::SUCCESS;

        }

        error_t bogus_control_flow(llvm::Function* function_target, unsigned short times_repeat) {

            if (!IN_RANGE(times_repeat, 1, 100)) { // repeat times is out of range
            
                LOG_ERROR("Argument 'times_repeat' is out of range (1-100). Please set a valid value.");

                return ERR::INVALID_ARGUMENT;
            
            }

            StringRef fn_name = function_target->getName();
            
            LOG_OK("Performing the 'bogus control flow' obfuscation on function (" + fn_name + ")...");

            // First, split blocks as they'll end up as 2, 3, 4 or 5 instructions

            std::vector<BasicBlock*> vec_bl_fn = {};

            auto it_bl = function_target->begin();
            for (; it_bl != function_target->end(); it_bl++) {

                BasicBlock* bl = cast<BasicBlock>(it_bl);

                vec_bl_fn.push_back(bl);

            }

            LOG_OK("Total blocks count before splitting on function ("
                + fn_name + "): " + std::to_string(vec_bl_fn.size()) + ".");

            error_t res;
            unsigned short i = 0;
            do {
                res = split_blocks_once(function_target);
                i++;
            } while (res == ERR::SUCCESS && i < times_repeat);

            size_t n_bl_total = 0;

            it_bl = function_target->begin();
            for (; it_bl != function_target->end(); it_bl++)
                n_bl_total++;

            LOG_SUCCESS("Splitting operation is completed on function (" + fn_name + ").");
            LOG_SUCCESS("Total blocks count is reached: " + std::to_string(n_bl_total));

            // Bogus the control flow now

            /*
            Algorithm:

            function:
                
                block_1 -> block_2 -> block_3 -> block_4 -> block_5 -> ... (original)



            */

            return ERR::SUCCESS;

        }

    }

}