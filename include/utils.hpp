#ifndef UTILS_HPP
#define UTILS_HPP

#include <random>
#include <llvm/IR/Type.h>


#define UNUSED(x) ((void)x)


template <typename T>
inline T gen_random_int(T range_start, T range_end) {

    std::random_device dev;
    std::mt19937_64 rng(dev());

    std::uniform_int_distribution<std::mt19937_64::result_type> dist(range_start, range_end);

    return static_cast<T>(dist(rng));

}

template <typename T, size_t _N>
inline std::vector<T> gen_random_int(T range_start, T range_end) {

    std::random_device dev;
    std::mt19937_64 rng(dev());

    std::vector<size_t> nums(range_end - range_start + 1);
    std::iota(nums.begin(), nums.end(), range_start);

    std::shuffle(nums.begin(), nums.end(), rng);

    std::vector<T> out;
    out.insert(out.begin(), nums.begin(), nums.begin() + _N);

    return out;

}

template <typename T>
inline llvm::IntegerType* decide_integer_type(llvm::LLVMContext& ctx) {

    llvm::IntegerType* ty_val = nullptr;
    constexpr size_t sz_type = sizeof(T);
    switch (sz_type) {
        case 8:
            ty_val = llvm::Type::getInt64Ty(ctx);
            break;
        case 4:
            ty_val = llvm::Type::getInt32Ty(ctx);
            break;
        case 2:
            ty_val = llvm::Type::getInt16Ty(ctx);
            break;
        case 1:
            ty_val = llvm::Type::getInt8Ty(ctx);
            break;
    }

    return ty_val;

}


#endif