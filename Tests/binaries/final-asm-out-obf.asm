	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"main.cpp"
	.def	_Z11str_printerv;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z11str_printerv                # -- Begin function _Z11str_printerv
	.p2align	4, 0x90
_Z11str_printerv:                       # @_Z11str_printerv
.seh_proc _Z11str_printerv
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	sub	rsp, 32
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	lea	rax, [rip + .L.str]
	add	rax, 1193046
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 1048576
	mov	r9d, 4253911330
	sub	r9d, ecx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	imul	edx, ecx, 1854432346
	mov	ecx, edx
                                        # kill: def $cl killed $ecx
	mov	r8d, r9d
	shl	r8d, cl
	or	edx, r9d
	mov	ecx, r8d
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	xor	r8d, -1
	mov	r9d, edx
	imul	r9d, r8d
	mov	ecx, edx
                                        # kill: def $cl killed $ecx
	shl	r8d, cl
	or	r9d, r8d
	add	r9d, -7221252
	mov	ecx, r9d
	sub	rax, rcx
	mov	rcx, rax
	call	printf
	lea	rax, [rip + .L.str.1]
	add	rax, 1193046
	mov	ecx, 2147352576
	mov	edx, dword ptr [rcx]
	shr	edx, 8
	and	edx, 255
	add	edx, 1048576
	add	edx, 480956998
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	mov	r8d, 2339431396
                                        # kill: def $cl killed $ecx
	shl	r8d, cl
	mov	ecx, r8d
                                        # kill: def $cl killed $ecx
	mov	r9d, edx
	shl	r9d, cl
	mov	ecx, edx
                                        # kill: def $cl killed $ecx
	shr	r8d, cl
	mov	edx, r8d
	sub	edx, r9d
	sub	r9d, r8d
	mov	r8d, edx
	xor	r8d, r9d
	mov	ecx, r9d
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	add	edx, r8d
	add	edx, 784778714
	mov	ecx, edx
	sub	rax, rcx
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
                                        # -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	sub	rsp, 112
	.seh_stackalloc 112
	lea	rbp, [rsp + 112]
	.seh_setframe rbp, 112
	.seh_endprologue
	call	__main
	mov	dword ptr [rbp - 72], 300
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, 3959014977801407588
	add	rcx, rax
	movabs	r8, -3577007853719165764
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, 2108477156553132405
	add	rcx, rax
	movabs	rax, -631500688666148648
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	r9, rax
	xor	r9, r8
	mov	rdx, r8
	xor	rdx, rax
	add	r8, rax
	mov	rax, r9
	xor	rax, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	or	r8, rdx
	mov	r10, rax
	or	r10, r9
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r8
	shr	rdx, cl
	imul	rax, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r8, r10
	shr	r8, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r10, cl
	add	rax, rdx
	xor	r8, -1
	mov	r9, rax
	or	r9, r10
	xor	rax, -1
	xor	rax, r8
	mov	rdx, r8
	imul	rdx, r9
	add	r9, r8
	mov	r8, r9
	sub	r8, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	add	rax, rdx
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r10, rax
	shl	r10, cl
	xor	rax, -1
	or	r8, r9
	mov	rdx, r8
	sub	rdx, r10
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r8, r10
	shr	r8, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r10, cl
	imul	rdx, r10
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r9, r10
	shr	r9, cl
	imul	r8, r10
	mov	rax, r8
	or	rax, rdx
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r8, rdx
	shl	r8, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	xor	r9, -1
	mov	r10, r8
	or	r10, rax
	or	rax, r8
	mov	rdx, r10
	or	rdx, r9
	mov	rcx, r9
                                        # kill: def $cl killed $rcx
	mov	r8, r10
	shr	r8, cl
	or	rax, r10
	mov	r9, r8
	or	r9, rax
	add	rax, r8
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	xor	rax, rdx
	mov	rdx, r9
	add	rdx, rax
	mov	rcx, r9
	sub	rcx, rax
	imul	rax, r9
	or	rdx, rcx
	imul	rax, rcx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r8, rax
	shl	r8, cl
	xor	rax, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r8
	shr	rdx, cl
	mov	rcx, r8
	or	rcx, rax
	or	r8, rax
	mov	r9, rdx
	sub	r9, rcx
	mov	r10, rdx
	xor	r10, r8
	imul	rdx, rcx
	mov	rax, r9
	imul	rax, r10
	mov	rcx, r10
	imul	rcx, rdx
	add	r9, r10
	mov	rdx, r9
	sub	rdx, rax
	or	rax, rcx
	sub	rcx, r9
	mov	r9, rdx
	xor	r9, -1
	imul	rax, rdx
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	r10, rax
	imul	r10, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	sub	r9, rax
	mov	r8, rdx
	xor	r8, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rax, r9
	shl	rax, cl
	or	r10, r9
	mov	rdx, rax
	xor	rdx, -1
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	imul	r8, r10
	or	rax, rdx
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, rdx
	shl	r8, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	movabs	rcx, -1192493519093997193
	xor	rax, rcx
	mov	qword ptr [rbp - 21], rax
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 62108
	mov	ax, 31372
                                        # kill: def $cx killed $cx killed $ecx
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 39983
	or	cx, 28331
	mov	edx, 2147352576
	mov	edx, dword ptr [rdx]
	shr	edx, 8
	and	edx, 255
	add	edx, 41039
	xor	dx, 58560
	mov	r8w, ax
	sub	r8w, cx
                                        # kill: def $cx killed $cx killed $ecx
                                        # kill: def $cl killed $cx
	mov	r9w, ax
	shr	r9w, cl
	xor	ax, dx
	mov	cx, r9w
	imul	cx, ax
	mov	dx, r8w
	imul	dx, r9w
	or	r8w, ax
	mov	ax, cx
	or	ax, dx
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	mov	dx, r8w
	xor	dx, -1
	sub	ax, r8w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r8w, ax
	shl	r8w, cl
	add	ax, dx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, r8w
	shr	dx, cl
	mov	cx, r8w
	or	cx, ax
	xor	ax, r8w
	or	dx, ax
	imul	ax, cx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, dx
	shl	r9w, cl
	xor	dx, ax
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	ax, r9w
	shr	ax, cl
	xor	r9w, dx
	mov	dx, ax
	xor	dx, -1
	mov	r8w, r9w
	imul	r8w, ax
	xor	ax, r9w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r9w, r8w
	shl	r9w, cl
	or	dx, r8w
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	r8w, r9w
	add	r8w, ax
	xor	ax, r9w
	xor	dx, r9w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	dx, cl
	xor	ax, r8w
	mov	cx, ax
	sub	cx, dx
	xor	ax, dx
	mov	dx, ax
	imul	dx, cx
	mov	r8w, ax
	xor	r8w, -1
	or	cx, ax
	mov	ax, cx
	sub	ax, dx
	mov	r9w, r8w
	or	r9w, cx
	imul	cx, r8w
	sub	r9w, cx
	mov	dx, cx
	add	dx, ax
	add	cx, ax
	mov	r10w, dx
	xor	r10w, -1
	or	cx, dx
	xor	r9w, -1
	mov	ax, r10w
	add	ax, cx
	mov	dx, r9w
	sub	dx, r10w
	sub	r10w, r9w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r8w, ax
	shl	r8w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	dx, ax
	shl	dx, cl
	add	ax, r10w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, r8w
	shr	r9w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	dx, cl
	mov	cx, r9w
	sub	cx, dx
	add	r9w, dx
	xor	r8w, -1
	imul	r8w, r9w
	xor	cx, r9w
	mov	dx, r8w
	add	dx, cx
	imul	cx, r8w
	mov	ax, cx
	xor	ax, -1
	mov	r8w, cx
	imul	r8w, dx
	xor	cx, -1
	xor	r8w, ax
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	dx, r8w
	xor	dx, ax
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	ax, r8w
	shr	ax, cl
	sub	dx, r8w
	add	ax, dx
	xor	ax, 114
	mov	word ptr [rbp - 13], ax
	lea	rax, [rbp - 21]
	mov	qword ptr [rbp - 64], rax
	mov	dword ptr [rbp - 56], 90000
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	eax, eax
	movabs	rcx, 8642094451040635907
	add	rax, rcx
	movabs	rcx, -4932778978237615276
	add	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	ecx, ecx
	movabs	rdx, 4213102019378786811
	add	rcx, rdx
	movabs	rdx, -5437585687055331971
	add	rcx, rdx
	mov	edx, 2147352576
	mov	edx, dword ptr [rdx]
	shr	edx, 8
	and	edx, 255
	mov	edx, edx
	movabs	r8, 5834870247354803871
	add	rdx, r8
	movabs	r8, -5000410258946108109
	or	rdx, r8
	mov	r8, rcx
	or	r8, rdx
	mov	r10, rdx
	xor	r10, rax
	sub	rcx, rdx
	xor	r8, rcx
	mov	r11, rcx
	add	r11, r10
	or	r10, rcx
	mov	r9, r10
	xor	r9, -1
	mov	rcx, r10
	or	rcx, r8
	add	r11, r10
	mov	rax, r9
	add	rax, rcx
	mov	rdx, r9
	sub	rdx, r11
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r10, r9
	shr	r10, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r8, r9
	shr	r8, cl
	add	r9, rdx
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rax, r9
	shr	rax, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	r10, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	mov	rcx, r9
	sub	rcx, r10
	mov	rdx, r10
	or	rdx, r9
	imul	rax, r10
	mov	r9, rax
	xor	r9, rcx
	xor	rax, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r9
	shr	rdx, cl
	mov	r8, rax
	xor	r8, r9
	or	rax, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rdx, rax
	shl	rdx, cl
	mov	r9, rax
	or	r9, r8
	or	r8, rax
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r10, rdx
	shl	r10, cl
	mov	rax, rdx
	sub	rax, r9
	or	r8, rdx
	mov	r9, rax
	add	r9, r10
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rdx, rax
	shr	rdx, cl
	sub	rax, r10
	mov	r8, rdx
	xor	r8, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rdx, rax
	shr	rdx, cl
	imul	rax, r9
	sub	r8, rdx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r9, r8
	shr	r9, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r8
	shl	rdx, cl
	sub	rax, r8
	sub	rax, r9
	mov	r8, r9
	add	r8, rdx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	mov	rcx, r8
	or	rcx, rax
	sub	r9, r8
	xor	r8, rax
	mov	rax, r8
	or	rax, rcx
	mov	rdx, r9
	sub	rdx, r8
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	mov	r10, r9
	sub	r10, rax
	or	r9, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rax, rdx
	sub	rax, r9
	mov	r8, rdx
	imul	r8, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r10, cl
	imul	rax, r8
	mov	rdx, r10
	xor	rdx, -1
	sub	r8, r10
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shr	r9, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r9
	shr	rdx, cl
	or	rax, r9
	add	r8, r9
	xor	r8, -1
	imul	rax, rdx
	mov	rdx, r8
	xor	rdx, rax
	sub	r8, rax
	mov	r9, rdx
	xor	r9, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rax, r8
	shl	rax, cl
	or	rdx, r8
	mov	r8, r9
	imul	r8, rax
	imul	r9, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	or	rdx, r8
	add	r9, rdx
	movabs	rax, 6236525101748952712
	xor	r9, rax
	mov	qword ptr [rbp - 11], r9
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 44284
	imul	ax, ax, 41130
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 10217
	imul	r9w, cx, 55565
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 20263
	mov	dx, 35167
                                        # kill: def $cx killed $cx killed $ecx
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	r8w, r9w
	sub	r8w, ax
	xor	r9w, ax
	or	dx, r8w
	add	r8w, r9w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r9w, r8w
	shl	r9w, cl
	mov	r10w, dx
	sub	r10w, r8w
	add	r8w, dx
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	ax, r9w
	shl	ax, cl
	sub	r9w, r10w
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	shl	r10w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, r9w
	shl	dx, cl
	mov	r8w, r9w
	or	r8w, r10w
	add	ax, r9w
	mov	r10w, ax
	xor	r10w, r8w
	xor	r8w, dx
	xor	ax, dx
	sub	r10w, r8w
	add	r8w, ax
	mov	cx, r10w
	imul	cx, r8w
	mov	r9w, r10w
	xor	r9w, -1
	or	r10w, r8w
	mov	dx, r9w
	xor	dx, cx
	mov	r8w, cx
	xor	r8w, r10w
                                        # kill: def $cl killed $cx
	shl	r9w, cl
	mov	ax, dx
	xor	ax, r9w
	imul	r9w, r8w
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	r8w, dx
	sub	r8w, ax
	xor	r9w, ax
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	dx, ax
	imul	dx, r8w
	xor	r9w, r8w
	xor	ax, r8w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r8w, r9w
	shl	r8w, cl
	mov	r10w, ax
	sub	r10w, r9w
	xor	ax, dx
	mov	cx, r8w
	imul	cx, r10w
	mov	dx, r8w
	xor	dx, -1
	or	ax, r8w
	sub	dx, cx
	mov	r9w, ax
	xor	r9w, cx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	r10w, r9w
	xor	r10w, ax
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	ax, dx
	shl	ax, cl
	or	r9w, dx
	mov	dx, ax
	sub	dx, r9w
	or	r9w, r10w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	r10w, cl
	mov	r8w, r9w
	sub	r8w, dx
	sub	r10w, r9w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	r9w, cl
	mov	dx, r9w
	add	dx, r8w
	mov	r11w, r8w
	sub	r11w, r9w
	sub	r8w, r10w
	mov	ax, r8w
	imul	ax, dx
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	r8w, r11w
	shr	r8w, cl
	sub	dx, r11w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	xor	r8w, -1
	mov	dx, r8w
	sub	dx, ax
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, r8w
	shl	r9w, cl
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	cx, ax
	xor	cx, -1
	add	r9w, ax
	sub	ax, dx
	mov	dx, r9w
	sub	dx, cx
	xor	cx, r9w
	xor	r9w, ax
	sub	dx, r9w
	mov	r8w, cx
	xor	r8w, -1
	xor	cx, r9w
	mov	ax, r8w
	add	ax, cx
	mov	r9w, dx
	sub	r9w, r8w
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	r9w, cl
	xor	dx, -1
	or	dx, r9w
	xor	dx, -1
	xor	dx, 26478
	mov	word ptr [rbp - 3], dx
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 254
	mov	al, 141
                                        # kill: def $cl killed $cl killed $ecx
	shr	al, cl
	mov	ecx, 2147352576
	mov	edx, dword ptr [rcx]
	shr	edx, 8
	and	edx, 255
	add	edx, 163
	or	dl, 241
	mov	ecx, 2147352576
	mov	r9d, dword ptr [rcx]
	shr	r9d, 8
	and	r9d, 255
	add	r9d, 229
	or	r9b, 35
	mov	r8b, r9b
	or	r8b, al
	mov	cl, dl
	xor	cl, r9b
	sub	dl, r9b
	mov	r9b, r8b
	shr	r9b, cl
	mov	al, dl
	mul	r8b
	mov	cl, r8b
	shr	dl, cl
	mov	cl, dl
	mov	r10b, r9b
	shl	r10b, cl
	mov	cl, r9b
	mov	r8b, al
	shr	r8b, cl
	xor	dl, al
	mov	r9b, r8b
	or	r9b, r10b
	mov	cl, dl
	shr	r8b, cl
	sub	r10b, dl
	mov	al, r8b
	mul	r9b
	mov	dl, r8b
	sub	dl, r10b
	mov	cl, r10b
	shr	r8b, cl
	mov	cl, dl
	mov	r10b, al
	shl	r10b, cl
	mov	r9b, r8b
	add	r9b, dl
	mov	cl, al
	shr	r8b, cl
	mov	dl, r10b
	or	dl, r9b
	xor	r9b, r8b
	xor	r10b, -1
	mov	cl, r9b
	mov	al, dl
	shl	al, cl
	add	dl, r10b
	add	r9b, r10b
	mov	r8b, al
	sub	r8b, r9b
	mov	r10b, dl
	sub	r10b, r9b
	xor	al, dl
	mov	cl, al
	xor	cl, -1
	xor	r8b, al
	add	al, r10b
	shl	r8b, cl
	xor	al, -1
	mov	r9b, al
	xor	r9b, -1
	mul	r8b
	mov	cl, al
	mov	r8b, cl
	xor	r8b, r9b
	mov	dl, r9b
	add	dl, cl
	add	cl, r9b
	mov	r9b, cl
	or	r9b, dl
	mov	al, dl
	mul	r8b
	xor	dl, cl
	mov	cl, al
	mov	r8b, dl
	shr	r8b, cl
	mov	cl, al
	add	cl, dl
	mul	r9b
	mov	dl, al
	mov	al, r8b
	xor	al, dl
	xor	dl, r8b
	sub	cl, r8b
	mov	r8b, dl
	shl	r8b, cl
	mul	dl
	add	al, r8b
	xor	r8b, -1
	mov	dl, al
	add	dl, r8b
	mov	cl, r8b
	sub	cl, al
	xor	r8b, -1
	mov	r9b, cl
	xor	r9b, -1
	mov	al, cl
	mul	dl
	shl	r8b, cl
	mov	r10b, al
	sub	r10b, r9b
	mov	cl, al
	or	cl, r8b
	mul	r8b
	mov	dl, al
	mov	al, r10b
	or	al, cl
	shl	r10b, cl
	add	dl, cl
	mov	cl, dl
	or	cl, al
	mov	r9b, r10b
	or	r9b, dl
	add	dl, r10b
	mov	r8b, r9b
	shr	r8b, cl
	mov	al, dl
	mul	r9b
	add	dl, r9b
	mov	cl, r8b
	mov	r8b, dl
	shr	r8b, cl
	mov	r9b, dl
	add	r9b, al
	xor	dl, al
	mov	cl, r8b
	mov	r10b, dl
	shl	r10b, cl
	mov	al, dl
	mul	r9b
	mov	r8b, al
	add	dl, r9b
	mov	al, r8b
	mul	dl
	mov	cl, r8b
	xor	cl, r10b
	xor	dl, r8b
	mov	r8b, dl
	shr	r8b, cl
	or	al, dl
	mul	r8b
	xor	al, 0
	mov	byte ptr [rbp - 1], al
	lea	rax, [rbp - 11]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 32], rax
	mov	rdx, qword ptr [rbp - 40]
	lea	rcx, [rip + .L.str.4]
	call	printf
	mov	rdx, qword ptr [rbp - 32]
	lea	rcx, [rip + .L.str.4]
	call	printf
	call	_Z11str_printerv
	lea	rdx, [rip + .L.str.4]
	add	rdx, 1193046
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 1048576
	xor	ecx, 830140590
	mov	r8d, 2147352576
	mov	r8d, dword ptr [r8]
	shr	r8d, 8
	and	r8d, 255
	add	r8d, 16777215
	mov	r9d, 19632525
	sub	r9d, r8d
	mov	r8d, ecx
	xor	r8d, r9d
                                        # kill: def $cl killed $ecx
	shr	r9d, cl
	mov	r10d, r8d
	imul	r10d, r9d
	sub	r8d, r9d
	mov	r9d, r8d
	or	r9d, r10d
	mov	ecx, r8d
                                        # kill: def $cl killed $ecx
	shr	r10d, cl
	mov	ecx, r9d
                                        # kill: def $cl killed $ecx
	shl	r10d, cl
	add	r10d, 1193046
	mov	ecx, r10d
	sub	rdx, rcx
	mov	rcx, rdx
	mov	rdx, rax
	call	printf
	xor	eax, eax
	add	rsp, 112
	pop	rbp
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZL8_obf_strPKc;
	.scl	3;
	.type	32;
	.endef
	.section	._obf_str,"xr"
	.p2align	4, 0x90                         # -- Begin function _ZL8_obf_strPKc
_ZL8_obf_strPKc:                        # @_ZL8_obf_strPKc
.seh_proc _ZL8_obf_strPKc
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	rax
	.seh_stackalloc 8
	mov	rbp, rsp
	.seh_setframe rbp, 0
	.seh_endprologue
	mov	qword ptr [rbp], rcx
	mov	rax, qword ptr [rbp]
	add	rsp, 8
	pop	rbp
	ret
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"Gonna let str_printer talk!\n"

.L.str.1:                               # @.str.1
	.asciz	"str_printer: hello world!"

.L.str.2:                               # @.str.2
	.asciz	"warevisor"

.L.str.3:                               # @.str.3
	.asciz	"warevising"

.L.str.4:                               # @.str.4
	.asciz	"%s\n"

