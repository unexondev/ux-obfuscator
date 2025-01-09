## Issues

### Reference removal
After all machine function optimizations are passed through LLC, I see that references are not successfully _removed_. Since the RIP-relative addressing somehow ends up with actual addresses to be referenced.
It's occured by the result of `GetElementPtr` translation into machine code. That translation is performed on FastISel (Fast Instruction Selection) step. Note that it's target independent.
All GEP instructions are translated into `ADD64` MIR-level instruction. Some of them are optimized by some passes; but as far as i see, there's no way to use them.
What I mean by "using them" is to use them to merge `ADD64` instruction and previous `LEA` instruction (`LEA` is required since `ADD` instruction will add an "offset" to a "base") into a single `LEA reg, [base + offset]` instruction, because `[base + offset]` is not the right address; since the offset is going to be substracted by the `[base + offset]` sum (ofc in an opaque form). On the other hand, "base" is our actual address right here (also reference).

### Theory
```c++
/* Representation */

int64_t important_variable = SOME_IMPORTANT_VALUE;

void callee_function_plain() {

    int64_t* reference = &important_variable;

}

void callee_function_obfuscated() {

    int64_t* reference = &important_variable + OFFSET;
    reference -= OPAQUE(OFFSET); // Now it's referenced to the important_variable
    
}
```
_Note that this is a **representation**. All variables are referenced on machine (assembly) level and there's no need to type them like the code piece above. It will remove all references by itself, without a need of "mentioning" them._

Sadly, GEP instruction doesn't end up as `LEA reg, [base + offset]`. Looking for a way to achieve that without the need of preparing a MF pass.  
