	.text
	.file	"main.cpp"
	.globl	_Z11str_printerv                # -- Begin function _Z11str_printerv
	.p2align	4, 0x90
	.type	_Z11str_printerv,@function
_Z11str_printerv:                       # @_Z11str_printerv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str, %rdi
	addq	$1193046, %rdi                  # imm = 0x123456
	movl	$2147352576, %eax               # imm = 0x7FFE0000
	movl	(%rax), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	addl	$1048576, %ecx                  # imm = 0x100000
	movl	$2038429848, %eax               # imm = 0x797FF898
                                        # kill: def $cl killed $ecx
	shrl	%cl, %eax
	movl	$2147352576, %ecx               # imm = 0x7FFE0000
	movl	(%rcx), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	addl	$16777215, %ecx                 # imm = 0xFFFFFF
	imull	$2150183587, %ecx, %edx         # imm = 0x802932A3
	movl	%eax, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %esi
	shrl	%cl, %esi
	movl	%edx, %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%esi, %edx
	subl	%eax, %edx
	subl	%esi, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	addl	%edx, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	addl	$1193046, %eax                  # imm = 0x123456
	movl	%eax, %eax
	subq	%rax, %rdi
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.L.str.1, %rdi
	addq	$1193046, %rdi                  # imm = 0x123456
	movl	$2147352576, %eax               # imm = 0x7FFE0000
	movl	(%rax), %eax
	shrl	$8, %eax
	andl	$255, %eax
	addl	$1048576, %eax                  # imm = 0x100000
	addl	$1081877306, %eax               # imm = 0x407C233A
	movl	$2147352576, %ecx               # imm = 0x7FFE0000
	movl	(%rcx), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	addl	$16777215, %ecx                 # imm = 0xFFFFFF
	imull	$3980705895, %ecx, %edx         # imm = 0xED44C067
	movl	%eax, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %esi
	shll	%cl, %esi
	imull	%edx, %eax
	movl	%eax, %ecx
	xorl	%esi, %ecx
	xorl	%esi, %eax
	movl	%ecx, %edx
	addl	%eax, %edx
	xorl	%ecx, %eax
	movl	%eax, %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	addl	$-1803711230, %edx              # imm = 0x947D8D02
	movl	%edx, %eax
	subq	%rax, %rdi
	callq	_ZL8_obf_strPKc
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z11str_printerv, .Lfunc_end0-_Z11str_printerv
	.cfi_endproc
                                        # -- End function
	.section	._obf_str,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _ZL8_obf_strPKc
	.type	_ZL8_obf_strPKc,@function
_ZL8_obf_strPKc:                        # @_ZL8_obf_strPKc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZL8_obf_strPKc, .Lfunc_end1-_ZL8_obf_strPKc
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$300, -48(%rbp)                 # imm = 0x12C
	movabsq	$.L.str.2, %rdi
	addq	$1193046, %rdi                  # imm = 0x123456
	movl	$2147352576, %eax               # imm = 0x7FFE0000
	movl	(%rax), %eax
	shrl	$8, %eax
	andl	$255, %eax
	addl	$1048576, %eax                  # imm = 0x100000
	orl	$3678045592, %eax               # imm = 0xDB3A8598
	movl	$2147352576, %ecx               # imm = 0x7FFE0000
	movl	(%rcx), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	addl	$16777215, %ecx                 # imm = 0xFFFFFF
	movl	$1547541074, %edx               # imm = 0x5C3D9A52
                                        # kill: def $cl killed $ecx
	shrl	%cl, %edx
	movl	%eax, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %esi
	shrl	%cl, %esi
	imull	%eax, %edx
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	shrl	%cl, %edx
	xorl	$-1, %esi
	movl	%edx, %ecx
                                        # kill: def $cl killed $ecx
	movl	%esi, %eax
	shll	%cl, %eax
	subl	%esi, %edx
	subl	%edx, %eax
	addl	$1193048, %eax                  # imm = 0x123458
	movl	%eax, %eax
	subq	%rax, %rdi
	callq	_ZL8_obf_strPKc
	movq	%rax, -40(%rbp)
	movl	$90000, -32(%rbp)               # imm = 0x15F90
	movabsq	$.L.str.3, %rdi
	addq	$1193046, %rdi                  # imm = 0x123456
	movl	$2147352576, %eax               # imm = 0x7FFE0000
	movl	(%rax), %eax
	shrl	$8, %eax
	andl	$255, %eax
	addl	$1048576, %eax                  # imm = 0x100000
	movl	$627912335, %ecx                # imm = 0x256D2E8F
	subl	%eax, %ecx
	movl	$2147352576, %eax               # imm = 0x7FFE0000
	movl	(%rax), %eax
	shrl	$8, %eax
	andl	$255, %eax
	addl	$16777215, %eax                 # imm = 0xFFFFFF
	addl	$1545731258, %eax               # imm = 0x5C21FCBA
	movl	%ecx, %edx
	xorl	$-1, %edx
	xorl	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	%eax, %edx
	movl	%edx, %eax
	xorl	%ecx, %eax
	orl	%edx, %ecx
	imull	%eax, %ecx
	addl	$-1676244366, %ecx              # imm = 0x9C168A72
	movl	%ecx, %eax
	subq	%rax, %rdi
	callq	_ZL8_obf_strPKc
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rsi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8(%rbp), %rsi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf@PLT
	callq	_Z11str_printerv
	movabsq	$.L.str.4, %rdi
	addq	$1193046, %rdi                  # imm = 0x123456
	movl	$2147352576, %ecx               # imm = 0x7FFE0000
	movl	(%rcx), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	addl	$1048576, %ecx                  # imm = 0x100000
	movl	$1252271815, %r8d               # imm = 0x4AA426C7
                                        # kill: def $cl killed $ecx
	shrl	%cl, %r8d
	movl	$2147352576, %ecx               # imm = 0x7FFE0000
	movl	(%rcx), %ecx
	shrl	$8, %ecx
	andl	$255, %ecx
	addl	$16777215, %ecx                 # imm = 0xFFFFFF
	movl	$4217947393, %edx               # imm = 0xFB68C501
	subl	%ecx, %edx
	movl	%edx, %ecx
                                        # kill: def $cl killed $ecx
	movl	%r8d, %esi
	shll	%cl, %esi
	xorl	%r8d, %edx
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %r8d
	shrl	%cl, %r8d
	orl	%esi, %edx
	movl	%r8d, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %esi
	shll	%cl, %esi
	xorl	%r8d, %edx
	subl	%esi, %edx
	addl	$756293760, %edx                # imm = 0x2D142080
	movl	%edx, %ecx
	subq	%rcx, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gonna let str_printer talk!\n"
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"str_printer: hello world!"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"warevisor"
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"warevising"
	.size	.L.str.3, 11

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s\n"
	.size	.L.str.4, 4

	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git e8f3ccd2737c638fafae7c5bf13cd2e913ef0f86)"
	.section	".note.GNU-stack","",@progbits
