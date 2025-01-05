#ifndef WAREVISOR_LIB
#define WAREVISOR_LIB

#pragma run_pass Obfstr()
__attribute__((noinline, section("._obf_str"))) static const char* _obf_str(const char* x) {

    return x;

}

#define OBFUSCATE(x) (_obf_str(x))

#endif