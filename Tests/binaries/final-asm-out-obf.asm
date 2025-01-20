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
	sub	rsp, 64
	.seh_stackalloc 64
	lea	rbp, [rsp + 64]
	.seh_setframe rbp, 64
	.seh_endprologue
	lea	rax, [rip + .L.str]
	add	rax, 1193046
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 1048576
	imul	edx, ecx, 3984644222
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	mov	r8d, 3512864774
                                        # kill: def $cl killed $ecx
	shl	r8d, cl
	mov	ecx, r8d
	imul	ecx, edx
	imul	edx, r8d
	mov	r8d, edx
	or	r8d, ecx
	xor	edx, ecx
	mov	ecx, edx
	imul	ecx, r8d
	add	edx, r8d
	imul	edx, ecx
	add	edx, 1193046
	mov	ecx, edx
	sub	rax, rcx
	mov	rcx, rax
	call	printf
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, 6607870016291804059
	add	rcx, rax
	movabs	rax, 1989243118387872835
	sub	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	ecx, ecx
	movabs	rdx, -3584890062199842076
	add	rcx, rdx
	movabs	r8, 3247702691107958268
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rdx, r8
	xor	rdx, -1
	add	r8, rax
	xor	rax, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, r8
	shr	r9, cl
	imul	r8, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rdx, rax
	xor	rdx, -1
	sub	r9, r8
	xor	rax, -1
	xor	rdx, -1
	add	rax, r9
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r9, rdx
	shr	r9, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	xor	rdx, -1
	mov	r8, rdx
	or	r8, r9
	mov	rcx, r9
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	imul	r9, rax
	mov	rax, r8
	or	rax, rdx
	or	r8, r9
	mov	rcx, r9
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	sub	rdx, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r9, rdx
	shr	r9, cl
	sub	r8, rdx
	mov	rax, r9
	or	rax, r8
	sub	r8, r9
	mov	r9, r8
	or	r9, rax
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r8, rax
	shr	r8, cl
	xor	rax, -1
	mov	rdx, rax
	xor	rdx, r8
	mov	rcx, rax
	imul	rcx, r8
	add	rax, r9
	mov	r8, rdx
	imul	r8, rcx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shr	r9, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rdx, rax
	or	rdx, r9
	sub	rax, r8
	xor	r8, -1
	mov	r9, rdx
	xor	r9, rax
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	xor	rdx, r8
	mov	r8, rdx
	or	r8, r9
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rax, r8
	add	rax, rdx
	sub	rdx, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r8, rax
	shr	r8, cl
	mov	rcx, rax
	xor	rcx, rdx
	or	rax, rdx
	mov	r9, rcx
	imul	r9, r8
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rcx, rax
	imul	rcx, r9
	add	r9, rax
	mov	rax, rcx
	add	rax, r9
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r10, r9
	shl	r10, cl
	mov	rdx, rax
	sub	rdx, r9
	imul	rax, r9
	mov	r8, rax
	add	r8, r10
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	r9, r8
	add	r9, rdx
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shr	rax, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rcx, rax
	sub	rcx, r8
	mov	rdx, r9
	sub	rdx, r8
	add	rax, r9
	mov	r8, rax
	xor	r8, rcx
	xor	rax, -1
	add	rdx, rcx
	mov	r9, rax
	xor	r9, r8
	mov	rcx, rax
	or	rcx, rdx
	xor	rax, rdx
	or	r9, rcx
	xor	rax, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	movabs	rax, -7956016043689931892
	xor	r9, rax
	mov	qword ptr [rbp - 26], r9
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, -3839250753194139507
	add	rcx, rax
	movabs	rax, 5262334155435938502
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	edx, ecx
	movabs	rcx, -2786066528538475506
	add	rdx, rcx
	movabs	rcx, -6914162340842475582
	xor	rdx, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	ecx, ecx
	movabs	r8, 9141901671883109322
	add	rcx, r8
	movabs	r8, 7185728663751831686
	xor	rcx, r8
	mov	r8, rax
	add	r8, rdx
	or	rax, rcx
	add	rdx, rcx
	mov	rcx, rdx
	xor	rcx, -1
	mov	r9, rax
	or	r9, rdx
	or	r8, rax
	mov	r10, r8
	imul	r10, r9
	mov	r11, r8
	add	r11, r9
	or	rcx, r8
	mov	rax, r11
	xor	rax, -1
	mov	rdx, r11
	add	rdx, r10
                                        # kill: def $cl killed $rcx
	shl	r11, cl
	mov	r8, r11
	add	r8, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shr	rax, cl
	or	rdx, r11
	mov	r9, rax
	xor	r9, -1
	mov	r10, rdx
	sub	r10, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	imul	r10, r8
	mov	rax, r8
	add	rax, r9
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	mov	rcx, r10
	or	rcx, rax
	mov	rdx, r10
	imul	rdx, r9
	xor	r10, rax
	add	r10, rcx
	or	rdx, rcx
	xor	rcx, -1
	mov	rax, rdx
	or	rax, rcx
	mov	r9, rcx
	imul	r9, rdx
                                        # kill: def $cl killed $rcx
	shr	r10, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	or	rax, r10
	mov	r8, r9
	add	r8, rax
	mov	rdx, rax
	add	rdx, r9
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	add	r9, rdx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rax, r8
	sub	rax, r9
	imul	r9, r8
	mov	rcx, rax
	xor	rcx, -1
	mov	rdx, rax
	xor	rdx, -1
	xor	r9, rax
	mov	r8, rdx
	xor	r8, rcx
	mov	r10, rcx
	or	r10, rdx
	add	r9, rcx
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rdx, r9
	shr	rdx, cl
	mov	rax, r9
	xor	rax, r8
	imul	r9, r10
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, rdx
	shl	r8, cl
	xor	rax, -1
	add	rdx, r9
	xor	rdx, r8
	sub	r8, rax
	xor	rax, -1
	xor	rax, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	xor	rdx, -1
	imul	rax, r8
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	r8, rax
	xor	r8, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shl	r9, cl
	or	rax, rdx
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rdx, r9
	shl	rdx, cl
	mov	rcx, r9
	xor	rcx, rax
	or	r8, r9
	mov	r9, r8
	xor	r9, -1
                                        # kill: def $cl killed $rcx
	mov	rax, r8
	shl	rax, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	xor	rdx, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, r9
	shr	r8, cl
	sub	rax, r9
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	add	rdx, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rdx, rax
	shr	rdx, cl
	xor	rax, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	xor	rax, -1
	movabs	rcx, -1412608420481964684
	xor	rax, rcx
	mov	qword ptr [rbp - 18], rax
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, -7148059725910420608
	add	rcx, rax
	movabs	rax, -8683244575073280178
	or	rcx, rax
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	r8d, eax
	movabs	rax, 1244980582329829786
	add	r8, rax
	movabs	rax, 6483140857148821400
	xor	r8, rax
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	eax, eax
	movabs	rdx, -8190515476989150261
	add	rax, rdx
	movabs	r9, 3232377974712179288
	sub	r9, rax
	mov	rdx, r9
	imul	rdx, r8
	mov	rax, r8
	sub	rax, r9
	add	r8, rcx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, r8
	shl	r9, cl
	or	rax, rdx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	or	rax, r8
	xor	r9, r8
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r9
	shl	rdx, cl
	add	r9, rax
	xor	rax, -1
	mov	r8, rax
	imul	r8, rdx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	xor	rax, -1
	mov	rcx, rax
	xor	rcx, -1
	mov	r10, rax
	add	r10, r8
	or	r9, rax
	mov	rax, r10
	xor	rax, -1
	mov	rdx, r10
	imul	rdx, rcx
	add	r10, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	r9, rdx
	sub	r9, r10
	sub	r10, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r11, r9
	shl	r11, cl
	mov	r8, r9
	sub	r8, r10
	xor	r9, r10
	mov	rcx, r9
	xor	rcx, r8
	xor	r11, r8
	add	r8, r9
	mov	rax, r11
	or	rax, r8
	imul	r8, rcx
	or	r11, rcx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r8
	shl	rdx, cl
	mov	r9, rax
	sub	r9, r11
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	mov	r10, rdx
	sub	r10, r8
	mov	rax, rdx
	imul	rax, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	mov	r9, rax
	imul	r9, r10
	mov	rdx, rax
	imul	rdx, r10
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rax, r8
	shr	rax, cl
	mov	rdx, r9
	or	rdx, r8
	imul	r9, r8
	xor	rax, -1
	or	rdx, r9
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, rdx
	shr	r8, cl
	mov	r9, rdx
	xor	r9, -1
	sub	rax, rdx
	mov	rdx, r9
	xor	rdx, r8
	or	rax, r9
	add	r9, r8
	mov	r10, r9
	sub	r10, rdx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	or	rdx, rax
	mov	r8, r9
	sub	r8, r10
	mov	r10, rdx
	imul	r10, r9
	xor	rdx, -1
	mov	rax, rdx
	sub	rax, r10
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	xor	rdx, r10
	sub	r8, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shl	r9, cl
	or	rax, rdx
	mov	rcx, r8
	or	rcx, rax
	xor	rax, r8
	xor	r8, r9
	mov	rdx, rcx
	or	rdx, rax
	xor	rax, rcx
	imul	rcx, r8
	mov	r8, rdx
	add	r8, rax
	add	rax, rcx
	or	rdx, rcx
	mov	r9, rdx
	xor	r9, r8
	xor	rdx, -1
	xor	rax, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r8, r9
	shl	r8, cl
	mov	rcx, rax
	or	rcx, r9
	sub	rax, rdx
	sub	r8, rcx
	xor	rax, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	movabs	rax, 7236284524343095148
	xor	r8, rax
	mov	qword ptr [rbp - 10], r8
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 52450
	imul	r8w, ax, 10994
	mov	eax, 2147352576
	mov	edx, dword ptr [rax]
	shr	edx, 8
	and	edx, 255
	add	edx, 7265
	xor	dx, 33518
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 32358
	add	ax, 46092
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	mov	r9w, dx
	imul	r9w, ax
	imul	dx, ax
	mov	ax, dx
	or	ax, r9w
	or	r9w, r8w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	xor	ax, -1
	mov	cx, r9w
	imul	cx, r8w
	sub	r9w, r8w
	mov	dx, cx
	sub	dx, ax
	xor	ax, -1
	sub	cx, r9w
	or	ax, dx
                                        # kill: def $cl killed $cx
	shr	dx, cl
	mov	r8w, dx
	xor	r8w, ax
	mov	cx, dx
	imul	cx, ax
	or	ax, dx
	mov	r10w, r8w
	imul	r10w, ax
	mov	dx, ax
	xor	dx, r8w
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r9w, ax
	shr	r9w, cl
	mov	r8w, dx
	xor	r8w, r10w
	imul	ax, dx
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	dx, r9w
	shl	dx, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r10w, r8w
	shl	r10w, cl
	add	r9w, r8w
	mov	cx, r9w
	xor	cx, dx
	mov	ax, r9w
	sub	ax, dx
	imul	r9w, r10w
	sub	r9w, cx
	mov	dx, ax
	sub	dx, cx
	xor	ax, -1
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	r9w, cl
	xor	ax, -1
	xor	dx, -1
	mov	r10w, ax
	xor	r10w, -1
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	ax, dx
	shl	ax, cl
	imul	dx, r9w
	mov	r8w, dx
	imul	r8w, ax
	mov	cx, r10w
	xor	cx, dx
	imul	ax, r10w
	mov	dx, r8w
	sub	dx, ax
	xor	ax, -1
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, r8w
	shr	r9w, cl
	xor	r8w, dx
	add	ax, dx
	mov	dx, r8w
	xor	dx, -1
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	r9w, cl
	or	ax, r8w
	mov	cx, ax
	or	cx, r9w
	imul	r9w, dx
	sub	dx, ax
	mov	r8w, r9w
	sub	r8w, dx
	mov	ax, dx
	add	ax, r9w
	or	dx, cx
	or	dx, ax
	sub	r8w, ax
	mov	r9w, r8w
	sub	r9w, dx
	mov	cx, r8w
	xor	cx, dx
	xor	r8w, -1
	mov	ax, r9w
	xor	ax, cx
	mov	dx, r8w
	sub	dx, cx
	or	r9w, r8w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	dx, cl
	xor	ax, r9w
	mov	cx, dx
	xor	cx, ax
	add	ax, dx
	mov	dx, cx
	imul	dx, ax
	imul	ax, cx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r8w, dx
	shl	r8w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	r9w, ax
	or	r9w, r8w
	mov	dx, r8w
	add	dx, ax
	sub	r8w, ax
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	shr	dx, cl
	xor	r8w, r9w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	xor	r8w, 33
	mov	word ptr [rbp - 2], r8w
	lea	rax, [rbp - 26]
	add	rsp, 64
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
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.text
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
	movabs	rax, 4301250715357807179
	add	rcx, rax
	movabs	r8, 6597419133114160879
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	eax, eax
	movabs	rcx, -5401555618185310808
	add	rax, rcx
	movabs	rcx, 3931091994120062661
	imul	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	ecx, ecx
	movabs	rdx, -3725718841275263683
	add	rcx, rdx
	movabs	rdx, -7868861332125761690
	or	rcx, rdx
	mov	rdx, rcx
	xor	rdx, rax
	imul	r8, rcx
	mov	rax, r8
	add	rax, rdx
	xor	r8, rdx
	mov	rdx, r8
	add	rdx, rax
	mov	rcx, r8
	xor	rcx, rax
	imul	rax, r8
	mov	r8, rdx
	or	r8, rax
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shl	r9, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	xor	rax, -1
	imul	r8, r9
	mov	rdx, rax
	add	rdx, r8
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rax, rdx
	sub	rax, r8
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r8, rdx
	shr	r8, cl
	xor	rdx, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rcx, r8
	xor	rcx, rdx
	imul	r8, rdx
	mov	rdx, r8
	imul	rdx, rax
	xor	rcx, -1
	add	rax, r8
	mov	r8, rax
	imul	r8, rcx
	add	rax, rcx
	add	rdx, rcx
	mov	r9, r8
	imul	r9, rax
	mov	rax, r8
	or	rax, rdx
	xor	rdx, r8
	mov	rcx, rax
	xor	rcx, r9
	add	rax, rdx
	xor	rdx, -1
	mov	r8, rcx
	add	r8, rax
	or	rax, rcx
	or	rcx, rdx
	mov	r9, rax
	or	r9, rcx
                                        # kill: def $cl killed $rcx
	mov	rdx, r8
	shr	rdx, cl
	sub	rax, r8
	mov	r8, rax
	or	r8, rdx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	imul	rdx, r9
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	r9, r8
	add	r9, rdx
	xor	r8, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r9
	shr	rdx, cl
	sub	r9, r8
	xor	rax, r8
	mov	r8, rdx
	sub	r8, r9
	or	r9, rax
	xor	rdx, rax
	mov	r10, r9
	imul	r10, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rax, r9
	shl	rax, cl
	imul	r9, r8
	mov	r8, r9
	imul	r8, r10
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	mov	rdx, r8
	xor	rdx, -1
	sub	r8, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rax, r8
	shl	rax, cl
	xor	r8, -1
	xor	rdx, -1
	mov	r9, rdx
	sub	r9, rax
	mov	rax, rdx
	xor	rax, r8
	or	r8, rdx
	mov	r10, r9
	imul	r10, r8
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	or	rax, r8
	mov	rcx, rax
	or	rcx, r9
	mov	rdx, rax
	xor	rdx, -1
	add	rax, r10
	mov	r8, rdx
	or	r8, rcx
	imul	rdx, rcx
	sub	rax, rcx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, r8
	shl	r9, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	or	rdx, rax
	xor	r8, rdx
	sub	rdx, r9
	add	rdx, r8
	movabs	rax, 8030878517760778615
	xor	rdx, rax
	mov	qword ptr [rbp - 21], rdx
	mov	eax, 2147352576
	mov	r8d, dword ptr [rax]
	shr	r8d, 8
	and	r8d, 255
	add	r8d, 27727
	or	r8w, 12264
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 19601
	xor	cx, 24418
	imul	r8w, cx
	xor	cx, -1
	mov	r9w, cx
	xor	r9w, -1
	mov	ax, cx
	add	ax, r8w
                                        # kill: def $cx killed $cx killed $ecx
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	mov	r10w, ax
	sub	r10w, r9w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, r8w
	shl	dx, cl
	imul	r9w, r8w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	r10w, cl
	mov	ax, dx
	imul	ax, r9w
	sub	r9w, dx
	xor	r10w, -1
	mov	dx, r9w
	or	dx, ax
	sub	ax, r9w
	mov	r8w, ax
	sub	r8w, dx
	add	dx, r10w
	sub	ax, r10w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, r8w
	shl	r9w, cl
	imul	r8w, ax
	imul	ax, dx
	mov	dx, r9w
	xor	dx, r8w
	or	ax, r9w
	mov	cx, dx
	add	cx, ax
	imul	dx, ax
	mov	r8w, cx
	xor	r8w, dx
	add	dx, cx
	mov	cx, r8w
	add	cx, dx
	mov	ax, dx
	xor	ax, r8w
	xor	r8w, dx
                                        # kill: def $cl killed $cx
	mov	dx, ax
	shl	dx, cl
	add	r8w, ax
	mov	ax, r8w
	imul	ax, dx
	sub	r8w, dx
	mov	cx, ax
	xor	cx, r8w
	xor	r8w, -1
	xor	ax, -1
	mov	dx, r8w
	add	dx, cx
	mov	r10w, ax
	or	r10w, r8w
	xor	ax, cx
	sub	ax, r10w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r9w, r10w
	shl	r9w, cl
	imul	dx, r10w
	or	r9w, ax
	mov	r8w, dx
	xor	r8w, -1
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	dx, cl
	mov	r10w, r8w
	xor	r10w, -1
	mov	ax, r9w
	add	ax, dx
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	shl	r9w, cl
	mov	r8w, r10w
	xor	r8w, -1
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	r9w, cl
	imul	ax, r10w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	ax, r9w
	shl	ax, cl
	mov	cx, r8w
	xor	cx, r9w
	xor	r8w, -1
	mov	dx, r8w
	add	dx, ax
	mov	ax, cx
	imul	ax, r8w
	add	r8w, cx
	xor	r8w, ax
	xor	dx, -1
	mov	ax, r8w
	xor	ax, -1
	mov	cx, r8w
	xor	cx, -1
	add	r8w, dx
	mov	dx, cx
	imul	dx, r8w
	xor	ax, r8w
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	r9w, ax
	xor	r9w, r8w
	sub	r8w, ax
	mov	r10w, r8w
	xor	r10w, dx
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	ax, r9w
	shr	ax, cl
	or	r8w, r9w
	mov	r9w, r8w
	imul	r9w, ax
	mov	cx, r10w
	add	cx, r8w
	sub	ax, r10w
	mov	dx, ax
	or	dx, cx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	r9w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	r9w, cl
	xor	r9w, 114
	mov	word ptr [rbp - 13], r9w
	lea	rax, [rbp - 21]
	mov	qword ptr [rbp - 64], rax
	mov	dword ptr [rbp - 56], 90000
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	eax, eax
	movabs	rcx, 569506267795969050
	add	rax, rcx
	movabs	rcx, -6721089043960457534
	imul	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	edx, ecx
	movabs	rcx, -2691975893715720134
	add	rdx, rcx
	movabs	rcx, 9055538531896245800
	xor	rdx, rcx
	mov	r9, rdx
	xor	r9, rax
	or	rdx, rax
	mov	rcx, r9
	xor	rcx, -1
	mov	rax, rdx
	xor	rax, r9
	xor	r9, rdx
	mov	rdx, rcx
	xor	rdx, -1
                                        # kill: def $cl killed $rcx
	mov	r8, r9
	shl	r8, cl
	or	rax, r9
	mov	r10, rax
	xor	r10, r8
	xor	rax, r8
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	r9, r10
	add	r9, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	sub	r10, rdx
	mov	r8, rax
	or	r8, r10
	imul	r9, r10
	xor	rax, -1
	or	r9, rax
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rdx, rax
	shl	rdx, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, r9
	shl	r8, cl
	sub	rax, r9
	xor	rdx, r9
	mov	r9, rdx
	xor	r9, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	sub	rax, r8
	mov	r8, rdx
	add	r8, rax
	imul	rax, r9
	sub	rdx, r9
	mov	r9, rdx
	add	r9, rax
	imul	r8, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rax, rdx
	or	rax, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	xor	r9, rdx
	imul	rax, r9
	or	r8, r9
	mov	rdx, rax
	xor	rdx, -1
	xor	r8, rax
	mov	r9, rdx
	xor	r9, -1
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shl	rax, cl
	xor	rdx, r8
	mov	r8, r9
	xor	r8, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	imul	rax, r9
	mov	r9, rax
	imul	r9, r8
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, r8
	shr	rax, cl
	sub	rdx, r8
	mov	r8, rax
	imul	r8, r9
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r10, rdx
	shr	r10, cl
	sub	r9, rdx
	mov	rdx, r10
	sub	rdx, r8
	mov	rax, r10
	or	rax, r8
	or	r10, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r8, r10
	shr	r8, cl
	xor	r10, rdx
	xor	rax, -1
	mov	rdx, r8
	sub	rdx, rax
	sub	r10, rax
	sub	rax, r8
	mov	r8, rax
	or	r8, r10
	imul	rdx, r10
	xor	rax, -1
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shr	r9, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	sub	rdx, r8
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, rdx
	shr	r8, cl
	mov	r10, rax
	add	r10, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	mov	rcx, r10
	add	rcx, r9
	or	r10, r8
	mov	rax, r10
	xor	rax, -1
	mov	rdx, rcx
	imul	rdx, r10
                                        # kill: def $cl killed $rcx
	shr	r10, cl
	mov	r8, rax
	or	r8, r10
	mov	r9, rax
	xor	r9, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shl	rax, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	movabs	rax, 7598532953503116444
	xor	r9, rax
	mov	qword ptr [rbp - 11], r9
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 8489
	xor	ax, 5386
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 59879
	mov	r8w, 9050
	sub	r8w, cx
	mov	r9w, ax
	sub	r9w, r8w
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	dx, ax
	shl	dx, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	mov	cx, dx
	or	cx, r9w
	xor	dx, r8w
	mov	ax, dx
	xor	ax, cx
                                        # kill: def $cl killed $cx
	shr	dx, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r8w, dx
	shl	r8w, cl
	mov	ax, dx
	xor	ax, -1
	xor	dx, -1
	mov	r9w, r8w
	xor	r9w, dx
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	dx, ax
	shr	dx, cl
	sub	ax, r9w
	xor	r8w, -1
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	dx, ax
	shl	dx, cl
	add	ax, r8w
	mov	r8w, dx
	xor	r8w, ax
	mov	r9w, ax
	xor	r9w, dx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	cx, dx
	add	cx, r8w
	xor	dx, r9w
	mov	ax, dx
	or	ax, cx
	sub	cx, dx
	xor	ax, -1
	xor	cx, -1
	mov	dx, cx
	add	dx, ax
	mov	r9w, cx
	xor	r9w, ax
	imul	cx, ax
	sub	cx, dx
	sub	dx, r9w
	xor	r9w, -1
	mov	r8w, dx
	xor	r8w, r9w
	mov	ax, r9w
	xor	ax, cx
	imul	r9w, dx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, r9w
	shr	dx, cl
	sub	r9w, r8w
	imul	ax, r8w
	mov	r8w, ax
	xor	r8w, r9w
	sub	r9w, ax
	add	dx, ax
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	r10w, r9w
	shl	r10w, cl
	sub	dx, r8w
	sub	r8w, r9w
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	r9w, r10w
	shr	r9w, cl
	mov	ax, dx
	imul	ax, r10w
	xor	dx, r8w
	mov	cx, r9w
                                        # kill: def $cl killed $cx
	mov	r8w, ax
	shr	r8w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	or	ax, r8w
	mov	r9w, r8w
	xor	r9w, -1
	xor	r8w, -1
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	dx, r9w
	shl	dx, cl
	mov	r10w, ax
	xor	r10w, -1
	add	ax, r9w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r8w, ax
	shl	r8w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	dx, cl
	add	r10w, ax
	mov	r9w, r10w
	imul	r9w, r8w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r8w, r10w
	shl	r8w, cl
	xor	r10w, dx
	mov	ax, r8w
	or	ax, r9w
	mov	r11w, r10w
	sub	r11w, r9w
	sub	r8w, r10w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, r8w
	shr	dx, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, r11w
	shl	r9w, cl
	sub	r8w, r11w
	mov	ax, r9w
	xor	ax, -1
	xor	dx, -1
	imul	r8w, r9w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, r8w
	shl	r9w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	ax, dx
	shr	ax, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	sub	r9w, r8w
	xor	ax, r8w
	imul	r9w, ax
	xor	r9w, 26478
	mov	word ptr [rbp - 3], r9w
	mov	eax, 2147352576
	mov	edx, dword ptr [rax]
	shr	edx, 8
	and	edx, 255
	add	edx, 89
	xor	dl, 52
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 220
	mov	r8b, 222
                                        # kill: def $cl killed $cl killed $ecx
	shr	r8b, cl
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 196
	mov	cl, 192
                                        # kill: def $al killed $al killed $eax
	mul	cl
	mov	cl, al
	mov	r9b, cl
	xor	r9b, -1
	mov	al, r8b
	mul	cl
	shr	dl, cl
	mov	r8b, al
	xor	r8b, r9b
	or	r9b, dl
	mov	cl, al
	shr	dl, cl
	mov	al, dl
	add	al, r9b
	mov	cl, r9b
	shl	r8b, cl
	add	dl, r9b
	mov	cl, dl
	mov	dl, r8b
	shl	dl, cl
	or	r8b, al
	mov	cl, r8b
	sub	cl, dl
	xor	r8b, dl
	mov	dl, r8b
	shl	dl, cl
	or	r8b, cl
	or	r8b, dl
	xor	dl, -1
	mov	r9b, dl
	xor	r9b, -1
	mov	al, r8b
	mul	dl
	mov	cl, r8b
	shl	dl, cl
	mov	cl, dl
	mov	dl, al
	shr	dl, cl
	mov	cl, al
	shr	r9b, cl
	mov	cl, dl
	mov	r8b, r9b
	shr	r8b, cl
	mov	cl, dl
	xor	cl, r9b
	mov	al, r9b
	mul	dl
	mov	dl, al
	xor	r8b, -1
	mov	r9b, dl
	shr	r9b, cl
	xor	dl, -1
	mov	al, dl
	mul	r8b
	mov	r10b, al
	mov	cl, r9b
	shr	dl, cl
	mov	al, r8b
	mul	r9b
	mov	cl, al
	mov	r8b, cl
	xor	r8b, -1
	or	cl, r10b
	or	dl, r10b
	mov	r9b, r8b
	or	r9b, dl
	mov	al, cl
	mul	dl
	xor	r8b, cl
	mov	dl, al
	xor	dl, r9b
	or	r8b, al
	sub	al, r9b
	xor	r8b, al
	mov	cl, dl
	xor	cl, -1
	xor	dl, al
	sub	cl, dl
	mov	r9b, dl
	add	r9b, r8b
	or	dl, r8b
	mov	al, dl
	xor	al, cl
	xor	r9b, cl
	add	cl, dl
	mov	dl, al
	shl	dl, cl
	mov	r8b, r9b
	or	r8b, cl
	mul	r9b
	mov	cl, al
	mov	r9b, cl
	xor	r9b, -1
	mov	r10b, dl
	xor	r10b, r8b
	mov	al, dl
	mul	cl
	mov	r8b, r10b
	or	r8b, r9b
	mov	r11b, al
	xor	r11b, r9b
	sub	al, r10b
	mov	cl, r11b
	add	cl, al
	xor	r11b, al
	sub	r8b, al
	mov	dl, cl
	add	dl, r8b
	mov	r8b, r11b
	shl	r8b, cl
	add	r11b, cl
	mov	r9b, dl
	or	r9b, r11b
	mov	al, dl
	mul	r11b
	or	r8b, dl
	mov	cl, r8b
	mov	dl, r9b
	shl	dl, cl
	mov	cl, r9b
	shl	r8b, cl
	mov	cl, r9b
	shr	al, cl
	mov	cl, al
	mov	al, r8b
	shr	al, cl
	mov	cl, dl
	shl	r8b, cl
	mov	dl, r8b
	or	dl, al
	mov	cl, r8b
	shl	al, cl
	mov	cl, al
	xor	cl, dl
	mul	dl
	sub	cl, al
	xor	cl, 0
	mov	byte ptr [rbp - 1], cl
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
	mov	r9d, dword ptr [rcx]
	shr	r9d, 8
	and	r9d, 255
	add	r9d, 1048576
	add	r9d, 2492686209
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	imul	r8d, ecx, 1189901775
	mov	ecx, r9d
	xor	ecx, r8d
	xor	r8d, r9d
	mov	r9d, r8d
	xor	r9d, -1
                                        # kill: def $cl killed $ecx
	shr	r8d, cl
	mov	ecx, r8d
                                        # kill: def $cl killed $ecx
	mov	r10d, r9d
	shl	r10d, cl
	imul	r9d, r8d
	xor	r9d, r10d
	add	r9d, 482544135
	mov	ecx, r9d
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

