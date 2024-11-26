#ifndef UTILS_HPP
#define UTILS_HPP

#include <random>

#define UNUSED(x) ((void)x)


template <typename T>
inline T gen_random_int(T range_start, T range_end) {

    std::random_device dev;
    std::mt19937_64 rng(dev());

    std::uniform_int_distribution<std::mt19937_64::result_type> dist(range_start, range_end);

    return static_cast<T>(dist(rng));

}


#endif