file(GLOB UX_LIBRARY
    src/*.cpp
    Encoder/*.cpp
    IRManager/*.cpp
    )

add_llvm_pass_plugin(UX-Obfuscator
    ${UX_LIBRARY}
   )