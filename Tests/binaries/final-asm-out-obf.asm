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
	mov	edx, dword ptr [rcx]
	shr	edx, 8
	and	edx, 255
	add	edx, 1048576
	add	edx, 931563912
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	add	ecx, 19771773
	mov	r8d, ecx
	imul	r8d, edx
	add	edx, ecx
	mov	ecx, edx
                                        # kill: def $cl killed $ecx
	mov	r9d, r8d
	shr	r9d, cl
	sub	edx, r8d
	mov	ecx, r9d
	imul	ecx, edx
	or	edx, r9d
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	add	edx, 1193046
	mov	ecx, edx
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
	add	edx, 585795882
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	mov	r8d, 2437021883
                                        # kill: def $cl killed $ecx
	shl	r8d, cl
	xor	edx, r8d
	xor	edx, -1
	mov	ecx, edx
	xor	ecx, -1
	xor	edx, -1
	xor	ecx, edx
	add	ecx, 1193046
	mov	ecx, ecx
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
	mov	dword ptr [rbp - 72], 300
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, 6525457751900296980
	add	rcx, rax
	movabs	rax, -3299414270133141545
	or	rcx, rax
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	eax, eax
	movabs	rdx, 2571792975541324576
	add	rax, rdx
	movabs	rdx, -6391512435329018109
	add	rax, rdx
	mov	edx, 2147352576
	mov	edx, dword ptr [rdx]
	shr	edx, 8
	and	edx, 255
	mov	edx, edx
	movabs	r8, -6969396409496038530
	add	rdx, r8
	movabs	r8, -4442059363203823428
	sub	r8, rdx
	mov	rdx, rax
	xor	rdx, -1
	xor	r8, rax
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r9, r8
	shr	r9, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	or	rdx, r8
	mov	r8, rdx
	xor	r8, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	xor	rdx, rax
	mov	rax, r8
	sub	rax, rdx
	mov	r10, r9
	add	r10, rdx
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, r9
	shl	r8, cl
	sub	r10, rax
	add	rax, r9
	mov	rdx, r10
	xor	rdx, -1
	mov	r9, r8
	imul	r9, r10
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	r10, r8
	xor	r10, r9
	mov	rax, r9
	or	rax, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	mov	rcx, rax
	xor	rcx, -1
	mov	rdx, r10
	or	rdx, r9
	add	rax, r10
	mov	r9, rcx
	imul	r9, rax
	or	rax, rcx
	or	rdx, rcx
	mov	r8, rdx
	xor	r8, r9
	xor	rax, rdx
	imul	r8, rax
	xor	rax, -1
	mov	rdx, rax
	xor	rdx, r8
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shl	r9, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rcx, r9
	xor	rcx, r8
	or	rdx, r9
	imul	r9, r8
	mov	rax, rcx
	add	rax, r9
	xor	rdx, rcx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r8, rax
	shr	r8, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shl	r9, cl
	add	rax, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r8
	shr	rdx, cl
	mov	rcx, r9
	xor	rcx, r8
	imul	r8, r9
	mov	rax, rcx
	add	rax, r8
	mov	r9, rcx
	xor	r9, rdx
	or	rcx, r8
	mov	rdx, r9
	imul	rdx, rcx
	or	rcx, r9
	xor	rax, r9
	mov	r8, rax
	imul	r8, rcx
	mov	r9, rax
	xor	r9, rdx
	imul	rax, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r9
	shr	rdx, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	xor	rax, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, rdx
	shl	r8, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rcx, r9
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rcx, r8
	xor	rcx, rdx
	mov	r9, rax
	xor	r9, r8
	or	rdx, rax
	mov	rax, rdx
	or	rax, r9
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	r9, rdx
	xor	r9, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r8, rdx
	shl	r8, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rdx, rax
	or	rdx, r8
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r8, r9
	shl	r8, cl
	imul	r9, rax
	xor	r9, r8
	mov	rax, r8
	xor	rax, rdx
	or	r8, rdx
	mov	rcx, rax
	xor	rcx, r9
	sub	rax, r8
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	xor	rax, -1
	movabs	rcx, -8030878517578014345
	xor	rax, rcx
	mov	qword ptr [rbp - 21], rax
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 28492
	or	ax, 22299
	mov	ecx, 2147352576
	mov	r8d, dword ptr [rcx]
	shr	r8d, 8
	and	r8d, 255
	add	r8d, 20632
	add	r8w, 41375
	mov	ecx, 2147352576
	mov	r9d, dword ptr [rcx]
	shr	r9d, 8
	and	r9d, 255
	add	r9d, 33642
	or	r9w, 6778
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, r9w
	shr	dx, cl
	sub	r9w, r8w
	or	ax, r8w
	mov	cx, dx
	or	cx, r9w
	mov	r8w, ax
	add	r8w, r9w
	sub	dx, ax
	mov	r9w, r8w
	sub	r9w, cx
	xor	dx, -1
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	mov	ax, r9w
	xor	ax, dx
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	dx, r9w
	shr	dx, cl
	add	r8w, r9w
	mov	r9w, ax
	imul	r9w, r8w
	mov	cx, ax
	add	cx, dx
	sub	ax, dx
	mov	dx, r9w
	imul	dx, ax
                                        # kill: def $cl killed $cx
	mov	r8w, r9w
	shr	r8w, cl
	add	ax, r9w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, dx
	shl	r9w, cl
	xor	ax, r8w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, r9w
	shr	dx, cl
	add	r8w, ax
	mov	cx, r9w
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	r9w, ax
	imul	r9w, dx
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	r10w, ax
	shr	r10w, cl
	imul	ax, dx
	mov	r8w, r9w
	or	r8w, ax
	sub	r9w, r10w
	mov	cx, r8w
	or	cx, r9w
	mov	ax, r9w
	add	ax, r8w
	add	r8w, r9w
                                        # kill: def $cl killed $cx
	mov	dx, r8w
	shr	dx, cl
	mov	cx, r8w
	or	cx, ax
	sub	r8w, ax
	mov	ax, dx
	add	ax, cx
	mov	r9w, cx
	xor	r9w, dx
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	add	r8w, ax
	mov	dx, ax
	or	dx, r9w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	r9w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	ax, r8w
	shr	ax, cl
	add	r8w, r9w
	mov	cx, ax
	xor	cx, -1
	sub	ax, r8w
	mov	dx, cx
	or	dx, ax
	mov	r8w, ax
	xor	r8w, -1
	or	ax, cx
	mov	r9w, dx
	sub	r9w, r8w
	add	dx, ax
	add	r8w, ax
	mov	ax, dx
	sub	ax, r9w
	mov	cx, dx
	imul	cx, r8w
	add	r9w, dx
	mov	dx, cx
	sub	dx, r9w
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	r8w, ax
	imul	r8w, dx
	mov	r9w, ax
	xor	r9w, dx
	add	dx, ax
	mov	cx, dx
	xor	cx, -1
	sub	r9w, r8w
	imul	dx, r8w
	mov	r8w, dx
	xor	r8w, -1
	imul	dx, cx
	sub	cx, r9w
	mov	r9w, cx
	xor	r9w, -1
                                        # kill: def $cl killed $cx
	mov	ax, dx
	shr	ax, cl
	xor	dx, r8w
	mov	cx, dx
	add	cx, ax
	mov	r8w, ax
	imul	r8w, r9w
	or	ax, dx
	mov	dx, ax
	add	dx, cx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	ax, r8w
	shl	ax, cl
	xor	r8w, -1
	mov	cx, r8w
	or	cx, dx
	sub	ax, r8w
	mov	dx, cx
	or	dx, ax
	add	ax, cx
	or	dx, ax
	xor	dx, -115
	mov	word ptr [rbp - 13], dx
	lea	rax, [rbp - 21]
	mov	qword ptr [rbp - 64], rax
	mov	dword ptr [rbp - 56], 90000
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	edx, eax
	movabs	rax, -4161527967163122953
	add	rdx, rax
	movabs	rax, 7535518699687320737
	or	rdx, rax
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	eax, eax
	movabs	rcx, -5211628221425713868
	add	rax, rcx
	movabs	rcx, 103856356604844149
	xor	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	r8d, ecx
	movabs	rcx, -7072901490733840424
	add	r8, rcx
	movabs	rcx, 5245700055373814915
	imul	r8, rcx
	mov	r10, rdx
	xor	r10, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	or	rax, rdx
	mov	r9, r10
	or	r9, r8
	imul	rax, r10
	mov	rdx, r9
	xor	rdx, -1
	mov	rcx, r9
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	xor	r9, -1
	mov	r8, rdx
	add	r8, r9
	imul	r9, rdx
	xor	rax, rdx
	mov	rcx, r9
                                        # kill: def $cl killed $rcx
	mov	rdx, r8
	shr	rdx, cl
	sub	rax, r9
	xor	r9, r8
	mov	r8, r9
	xor	r8, rdx
	imul	rax, r9
	or	rdx, r9
	mov	r9, rdx
	xor	r9, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	or	r8, rax
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shl	rax, cl
	add	r8, rdx
	mov	rcx, r9
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	xor	rdx, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rax, r8
	sub	rax, rdx
	sub	r8, rdx
	xor	rdx, -1
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	mov	r8, rax
	shl	r8, cl
	mov	r9, rdx
	xor	r9, rax
	xor	rdx, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rax, r9
	shr	rax, cl
	add	rdx, r8
	xor	r9, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r8, r9
	shr	r8, cl
	xor	rax, r9
	sub	r9, rdx
	or	rax, r8
	mov	rdx, r8
	add	rdx, r9
	add	r8, r9
	mov	r9, rdx
	or	r9, rax
	mov	rcx, r8
	or	rcx, rdx
	add	r8, rax
	mov	rdx, r8
	add	rdx, rcx
	mov	rax, rcx
	sub	rax, r8
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	mov	r8, rdx
	xor	r8, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	xor	rax, r9
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r9, rdx
	shl	r9, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r10, rdx
	shr	r10, cl
	imul	rdx, r8
	mov	r8, r9
	or	r8, rdx
	or	r10, r9
	mov	rax, r8
	sub	rax, r10
	sub	r8, r10
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	r9, r8
	shl	r9, cl
	sub	rax, r8
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, r9
	shr	rdx, cl
	sub	rax, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	r9, rax
	shr	r9, cl
	add	rax, rdx
	mov	rcx, rax
	xor	rcx, -1
	mov	r8, rax
	xor	r8, -1
	add	r9, rax
	mov	rax, r9
	sub	rax, rcx
	mov	rdx, r8
	imul	rdx, rcx
	sub	r9, r8
	mov	r8, rax
	imul	r8, r9
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	r9, cl
	sub	rax, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, r9
	shl	rax, cl
	mov	rcx, r8
                                        # kill: def $cl killed $rcx
	shl	r9, cl
	add	rax, r9
	xor	rax, -1
	movabs	rcx, -8093928912543965560
	xor	rax, rcx
	mov	qword ptr [rbp - 11], rax
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 61361
	or	ax, 9340
	mov	ecx, 2147352576
	mov	edx, dword ptr [rcx]
	shr	edx, 8
	and	edx, 255
	add	edx, 6141
	add	dx, 1529
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 14143
	add	cx, 26647
	imul	cx, dx
	sub	dx, ax
	mov	r8w, dx
	or	r8w, cx
	mov	r9w, dx
	add	r9w, cx
	xor	dx, cx
	mov	ax, dx
	sub	ax, r9w
	or	r8w, dx
	xor	dx, -1
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r9w, r8w
	shr	r9w, cl
	mov	r10w, r8w
	sub	r10w, ax
	sub	r8w, dx
	mov	ax, r9w
	sub	ax, r8w
	xor	r9w, r10w
	imul	r10w, r8w
	mov	cx, ax
	xor	cx, r10w
	mov	dx, r10w
	sub	dx, r9w
	imul	r10w, ax
	mov	r9w, r10w
	sub	r9w, cx
	xor	r10w, -1
	xor	dx, -1
	mov	cx, dx
	add	cx, r10w
	imul	r9w, dx
	or	dx, r10w
	mov	ax, dx
	sub	ax, r9w
	add	cx, r9w
	or	r9w, dx
	mov	r8w, ax
	xor	r8w, cx
	or	r9w, cx
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	dx, r8w
	add	dx, ax
	sub	r8w, ax
	xor	ax, r9w
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	r9w, dx
	shl	r9w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	shr	dx, cl
	add	dx, r9w
	add	ax, r9w
	mov	r8w, dx
	sub	r8w, ax
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	ax, dx
	shr	ax, cl
	xor	dx, -1
	mov	r9w, dx
	sub	r9w, ax
	mov	ax, dx
	sub	ax, r8w
	add	r8w, dx
	or	r9w, ax
	mov	dx, r8w
	xor	dx, ax
	sub	r8w, ax
	mov	ax, r9w
	imul	ax, r8w
	mov	cx, r8w
                                        # kill: def $cl killed $cx
	mov	r8w, dx
	shl	r8w, cl
	sub	r9w, dx
	mov	r10w, ax
	add	r10w, r9w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	r9w, cl
	add	r8w, ax
	mov	dx, r10w
	xor	dx, r8w
	mov	cx, r8w
	add	cx, r10w
	xor	r9w, r8w
	mov	ax, cx
	add	ax, r9w
	xor	r9w, cx
	xor	dx, cx
	xor	r9w, -1
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r8w, dx
	shl	r8w, cl
	sub	dx, ax
	mov	ax, dx
	xor	ax, r8w
	or	r9w, r8w
	xor	dx, -1
	or	ax, dx
	mov	cx, r9w
	sub	cx, dx
	or	dx, r9w
	mov	r8w, cx
	xor	r8w, -1
	mov	r9w, cx
	sub	r9w, ax
	or	dx, cx
	mov	ax, dx
	or	ax, r8w
	imul	dx, r8w
	add	r8w, r9w
	mov	cx, r8w
	xor	cx, dx
	add	ax, r8w
	mov	dx, ax
	xor	dx, cx
	xor	ax, cx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	dx, cl
	xor	ax, -1
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	dx, cl
	xor	dx, 26478
	mov	word ptr [rbp - 3], dx
	mov	eax, 2147352576
	mov	r9d, dword ptr [rax]
	shr	r9d, 8
	and	r9d, 255
	add	r9d, 74
	xor	r9b, 64
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 21
	mov	dl, 110
                                        # kill: def $cl killed $cl killed $ecx
	shl	dl, cl
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 175
	mov	cl, 229
                                        # kill: def $al killed $al killed $eax
	mul	cl
	mov	cl, al
	mov	r8b, r9b
	shr	r8b, cl
	mov	cl, dl
	shl	al, cl
	add	dl, r9b
	mov	cl, al
	mov	r9b, dl
	shl	r9b, cl
	mov	r10b, r8b
	xor	r10b, al
	sub	r8b, dl
	mov	al, r8b
	mul	r9b
	mov	cl, al
	mov	al, r9b
	mul	r10b
	add	r10b, r8b
	mov	r9b, r10b
	xor	r9b, -1
	mov	dl, cl
	or	dl, r10b
	sub	cl, al
	mov	r8b, r9b
	xor	r8b, -1
	add	dl, cl
	sub	cl, r9b
	mov	al, dl
	mul	cl
	mov	r9b, dl
	add	r9b, cl
	or	r8b, dl
	mov	r10b, al
	add	r10b, r9b
	mov	cl, al
	mov	dl, r8b
	shr	dl, cl
	mov	cl, al
	shr	r8b, cl
	mov	r9b, r10b
	or	r9b, r8b
	mov	cl, dl
	mov	al, r8b
	shr	al, cl
	sub	r8b, r10b
	mov	r10b, al
	xor	r10b, r9b
	sub	al, r8b
	sub	r8b, r9b
	mov	dl, al
	or	dl, r8b
	mov	r9b, al
	sub	r9b, r8b
	mov	cl, al
	shl	r10b, cl
	mov	r11b, dl
	or	r11b, r9b
	mov	cl, r10b
	add	cl, r9b
	add	dl, r10b
	mov	al, dl
	mul	cl
	mov	cl, dl
	xor	cl, -1
	sub	r11b, dl
	or	al, cl
	mov	r8b, r11b
	sub	r8b, cl
	shr	r11b, cl
	mov	dl, r8b
	xor	dl, al
	or	r11b, r8b
	mov	cl, dl
	mov	r8b, r11b
	shl	r8b, cl
	add	dl, r11b
	mov	al, r8b
	mul	dl
	mov	cl, r8b
	mov	r9b, dl
	shl	r9b, cl
	mov	cl, dl
	shr	r8b, cl
	sub	r8b, al
	mul	r9b
	mov	dl, al
	xor	r9b, -1
	mov	cl, dl
	sub	cl, r9b
	mov	al, dl
	mul	r8b
	mov	r8b, al
	mov	al, dl
	mul	r9b
	shr	r8b, cl
	sub	cl, al
	mov	al, r8b
	shl	al, cl
	mov	r9b, cl
	or	r9b, r8b
	add	r8b, cl
	mov	cl, al
	mov	dl, r8b
	shl	dl, cl
	xor	r8b, r9b
	xor	r9b, al
	xor	dl, -1
	mov	cl, r8b
	shl	r9b, cl
	mov	cl, r9b
	mov	al, dl
	shl	al, cl
	mov	cl, r9b
	shl	dl, cl
	mov	r8b, al
	xor	r8b, -1
	mov	r10b, dl
	add	r10b, al
	xor	dl, -1
	mov	r9b, r8b
	sub	r9b, r10b
	mov	cl, dl
	shl	r10b, cl
	xor	dl, r8b
	mov	cl, dl
	mov	al, r9b
	shr	al, cl
	xor	r9b, r10b
	or	dl, r10b
	mov	r8b, r9b
	or	r8b, dl
	mul	dl
	mov	cl, dl
	shl	r9b, cl
	add	al, r8b
	mov	cl, r8b
	shr	r9b, cl
	or	r9b, al
	xor	r9b, -1
	mov	byte ptr [rbp - 1], r9b
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
	mov	r8d, 2652494037
                                        # kill: def $cl killed $ecx
	shl	r8d, cl
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	add	ecx, 1901240620
	mov	r9d, ecx
	or	r9d, r8d
	imul	r8d, ecx
	mov	ecx, r9d
	imul	ecx, r8d
	add	r9d, r8d
	mov	r8d, r9d
	or	r8d, ecx
	or	ecx, r9d
	add	r8d, ecx
	add	r8d, 24261720
	mov	ecx, r8d
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

