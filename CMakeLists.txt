file(GLOB UX_LIBRARY
    Encoder/*.cpp
    IRManager/*.cpp
    )

add_llvm_pass_plugin(myFirstPass
    main.cpp
    ${UX_LIBRARY}
   )