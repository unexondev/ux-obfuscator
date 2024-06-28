#ifndef UX_OBF_ENCODER_H
#define UX_OBF_ENCODER_H

#include <stddef.h>


namespace encoder {

    /* Encodes the given buffer (buf_c_str) using XOR with the key passed through 'key' argument. */
    void encode_c_string(
        const char* buf_c_str, char* buf_encoded,
        unsigned char const key, size_t const sz_buf_c_str
        );

    /* Decodes the given buffer (buf_c_str) using XOR with the key passed through 'key' argument. */
    void decode_c_string(
        const char* buf_c_str, char* buf_decoded,
        unsigned char const key, size_t const sz_buf_c_str
        );

}

#endif