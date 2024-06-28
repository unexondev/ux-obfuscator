#include "../include/encoder.h"


namespace encoder { 

    void encode_c_string(
        const char* buf_c_str, char* buf_encoded,
        unsigned char const key, size_t const sz_buf_c_str
        ) {

        for (size_t i = 0; i < sz_buf_c_str; i++) {

            buf_encoded[i] = buf_c_str[i] ^ key;

        }

    }

    inline void decode_c_string(const char* buf_c_str, char* buf_decoded, unsigned char const key, size_t const sz_buf_c_str) {
        encode_c_string(buf_c_str, buf_decoded, key, sz_buf_c_str);
    }

}