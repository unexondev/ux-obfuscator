	.text
	.intel_syntax noprefix
	.file	"main.cpp"
	.globl	_Z11str_printerv                # -- Begin function _Z11str_printerv
	.p2align	4, 0x90
	.type	_Z11str_printerv,@function
_Z11str_printerv:                       # @_Z11str_printerv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	lea	rdi, [rip + .L.str+1193046]
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 1048576
	mov	eax, 4063301932
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	mov	edx, 1406385782
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	sub	ecx, eax
	or	eax, edx
	or	ecx, eax
	xor	eax, -1
	or	ecx, eax
	xor	ecx, -1
	add	ecx, 1193046
	mov	eax, ecx
	sub	rdi, rax
	mov	al, 0
	call	printf@PLT
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	edx, eax
	movabs	rax, -1288958184662653062
	add	rdx, rax
	movabs	rax, 3959429083128403742
	or	rdx, rax
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	eax, eax
	movabs	rcx, 5785446154621917108
	add	rax, rcx
	movabs	rcx, -3161205032076032484
	or	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	esi, ecx
	movabs	rcx, -1262470880704717725
	add	rsi, rcx
	movabs	rcx, 6377754600354052782
	or	rsi, rcx
	mov	rcx, rsi
	or	rcx, rax
	mov	rdi, rsi
	imul	rdi, rax
	xor	rdx, rsi
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rsi, rdi
	xor	rsi, -1
	xor	rdi, -1
	mov	rax, rdx
	or	rax, rdi
	add	rsi, rdx
	mov	rdi, rsi
	xor	rdi, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, rsi
	shl	rdx, cl
	sub	rax, rsi
	mov	rsi, rdx
	sub	rsi, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdi, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	sub	rdi, rsi
	xor	rsi, rax
	mov	rcx, rdi
	xor	rcx, -1
	mov	r8, rsi
	sub	r8, rdi
	add	rsi, rdi
	mov	rdx, rcx
	sub	rdx, rsi
	mov	rax, r8
	xor	rax, -1
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, r8
	shr	rax, cl
	xor	rdx, r8
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rsi, rdx
	shl	rsi, cl
	or	rdx, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rdi, rsi
	shr	rdi, cl
	mov	rax, rdx
	sub	rax, rsi
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdi, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, rdi
	shl	rdx, cl
	mov	rcx, rax
	imul	rcx, rdi
	sub	rax, rdi
	mov	rsi, rcx
	or	rsi, rax
	add	rcx, rax
	add	rax, rdx
	mov	r8, rax
	sub	r8, rsi
	mov	rdx, rcx
	add	rdx, rax
	imul	rax, rcx
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rsi, r8
	shr	rsi, cl
	mov	rdi, r8
	xor	rdi, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	mov	rax, rdi
	shr	rax, cl
	mov	rcx, r8
	xor	rcx, rdi
	imul	rdi, r8
	mov	r8, rcx
	or	r8, rdi
	mov	rsi, rax
	xor	rsi, rcx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdi, cl
	mov	rax, r8
	add	rax, rsi
	mov	rcx, rdi
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rcx, rdi
                                        # kill: def $cl killed $rcx
	shl	rsi, cl
	mov	rcx, r8
	add	rcx, rsi
	or	rsi, r8
	sub	r8, rax
	mov	rdx, rsi
	xor	rdx, r8
	imul	rcx, r8
	imul	rsi, r8
	mov	rdi, rsi
	sub	rdi, rcx
	mov	r8, rdx
	imul	r8, rsi
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rax, rdi
	imul	rax, r8
	mov	rsi, rdi
	xor	rsi, rdx
	imul	rdx, rdi
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdi, rsi
	shl	rdi, cl
	imul	rax, rsi
	add	rdx, rsi
	imul	rax, rdi
	or	rdi, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, rdi
	shl	rdx, cl
	add	rax, rdi
	mov	rsi, rax
	sub	rsi, rdx
	imul	rdx, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rsi, cl
	xor	rsi, -1
	movabs	rax, -7956016043689931892
	xor	rsi, rax
	mov	qword ptr [rbp - 26], rsi
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, 7703606700412223361
	add	rcx, rax
	movabs	rax, 3940572955842441772
	sub	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	edx, ecx
	movabs	rcx, 9048023201941383394
	add	rdx, rcx
	movabs	rcx, -4966207109041725527
	or	rdx, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	ecx, ecx
	movabs	rsi, 2536176631521572
	add	rcx, rsi
	movabs	rdi, 1875561959214453977
                                        # kill: def $cl killed $rcx
	shl	rdi, cl
	mov	rsi, rdx
	sub	rsi, rdi
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shl	rax, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rdi, cl
	mov	rcx, rdi
	xor	rcx, rsi
	sub	rdi, rsi
	imul	rax, rsi
	mov	rdx, rcx
	or	rdx, rdi
	mov	rsi, rdi
	imul	rsi, rcx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdi, cl
	mov	r8, rdx
	imul	r8, rdi
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	xor	rdx, -1
	xor	r8, -1
	mov	rax, rdx
	or	rax, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rsi, r8
	shr	rsi, cl
	xor	r8, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rsi, cl
	xor	rax, r8
	xor	rsi, -1
	xor	rax, -1
	mov	rcx, rsi
	or	rcx, rax
	mov	rdx, rax
	or	rdx, rsi
	sub	rax, rsi
	mov	rdi, rax
	or	rdi, rdx
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	xor	rax, -1
	mov	r8, rdi
	imul	r8, rax
	add	rdi, rax
	sub	rax, rdx
	mov	rdx, rax
	xor	rdx, -1
	mov	rsi, r8
	imul	rsi, rax
	add	r8, rdi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rax, r8
	shl	rax, cl
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	imul	r8, rsi
	mov	rsi, rax
	add	rsi, r8
	mov	rdi, rdx
	xor	rdi, -1
	xor	rdx, rax
	mov	rax, rdx
	imul	rax, rdi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rdx, rsi
	shl	rdx, cl
	sub	rsi, rdi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rdi, rsi
	shr	rdi, cl
	mov	r8, rdx
	or	r8, rsi
	imul	rdx, rax
	mov	rax, rdi
	sub	rax, rdx
	mov	r9, rdx
	xor	r9, rdi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	r8, cl
	mov	rsi, r8
	imul	rsi, r9
	mov	rcx, r8
	add	rcx, r9
	imul	rax, r8
	mov	rdi, rsi
	add	rdi, rcx
	sub	rax, rsi
                                        # kill: def $cl killed $rcx
	shr	rsi, cl
	mov	rdx, rax
	or	rdx, rsi
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rsi, cl
	sub	rdi, rax
	mov	rax, rdx
	sub	rax, rdi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rdx, rsi
	shl	rdx, cl
	imul	rdi, rsi
	mov	rcx, rdx
	imul	rcx, rdi
	mov	r8, rax
	xor	r8, rdi
	or	rax, rdx
	xor	r8, -1
	mov	rsi, rcx
	xor	rsi, -1
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	xor	r8, -1
	mov	rdx, rsi
	xor	rdx, -1
	sub	rax, rsi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rdi, r8
	shr	rdi, cl
	mov	rsi, rax
	imul	rsi, rdx
	imul	rax, r8
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	mov	rdx, rax
	shl	rdx, cl
	sub	rax, rsi
	or	rsi, rdi
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shr	rax, cl
	or	rdx, rsi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rsi, rax
	shr	rsi, cl
	sub	rdx, rax
	or	rsi, rdx
	movabs	rax, -7270333715964718335
	xor	rsi, rax
	mov	qword ptr [rbp - 18], rsi
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, 1586285847599493623
	add	rcx, rax
	movabs	rax, 1570876885142199969
	sub	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	ecx, ecx
	movabs	rdx, 5829888363439544276
	add	rcx, rdx
	movabs	rdx, -5040772579249701795
	or	rcx, rdx
	mov	edx, 2147352576
	mov	edx, dword ptr [rdx]
	shr	edx, 8
	and	edx, 255
	mov	esi, edx
	movabs	rdx, 8241507127025442056
	add	rsi, rdx
	movabs	rdx, -2014018483399884541
	imul	rsi, rdx
	mov	rdx, rsi
	xor	rdx, rax
	mov	rax, rcx
	xor	rax, rsi
	add	rcx, rsi
	mov	rsi, rdx
	imul	rsi, rcx
                                        # kill: def $cl killed $rcx
	mov	rdi, rdx
	shr	rdi, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rax, rsi
	xor	rax, -1
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shr	rdi, cl
	xor	rdx, rax
	or	rax, rdi
	mov	rsi, rax
	or	rsi, rdx
	or	rdx, rax
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shr	rax, cl
	mov	rdi, rdx
	sub	rdi, rsi
	xor	rdx, rsi
	mov	rsi, rdx
	imul	rsi, rdi
	xor	rdi, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rcx, rax
	imul	rcx, rsi
	mov	rdx, rdi
	imul	rdx, rax
	xor	rax, rdi
	mov	rdi, rcx
	sub	rdi, rdx
	mov	rsi, rcx
	xor	rsi, -1
	or	rax, rcx
	xor	rdi, rsi
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, rsi
	shr	rdx, cl
	sub	rax, rsi
	mov	rsi, rdx
	add	rsi, rdi
	mov	rdi, rdx
	sub	rdi, rax
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rcx, rdi
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rcx, rsi
	xor	rcx, -1
	imul	rsi, rdi
	mov	rdi, rsi
	or	rdi, rcx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rsi, cl
	mov	r8, rsi
	or	r8, rdi
	mov	rdx, rdi
	or	rdx, rsi
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shl	rdi, cl
	mov	rax, r8
	add	rax, rdx
	add	rdi, rdx
	sub	rdx, r8
	sub	rax, rdx
	add	rdx, rdi
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rsi, rdx
	shl	rsi, cl
	mov	rcx, rax
	or	rcx, rdx
	add	rdx, rax
	mov	rdi, rcx
	sub	rdi, rsi
	mov	r8, rsi
	sub	r8, rcx
	or	rdx, rsi
	sub	r8, rdx
	mov	rax, rdi
	add	rax, rdx
	add	rdx, rdi
	mov	rsi, rax
	or	rsi, rdx
	mov	rcx, rax
	sub	rcx, rdx
	xor	rax, r8
	mov	r8, rax
	add	r8, rcx
	xor	rcx, -1
	imul	rax, rsi
	xor	rax, -1
	mov	rdx, rcx
	or	rdx, r8
                                        # kill: def $cl killed $rcx
	shr	r8, cl
	mov	rdi, rdx
	add	rdi, r8
	mov	rsi, rdx
	imul	rsi, r8
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, rdi
	shr	rax, cl
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shl	rdi, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rdx, rdi
	shr	rdx, cl
	or	rdi, rax
	xor	rax, -1
	mov	rcx, rax
	xor	rcx, rdi
	sub	rax, rdi
	add	rdi, rdx
                                        # kill: def $cl killed $rcx
	mov	rdx, rdi
	shl	rdx, cl
	mov	rsi, rax
	or	rsi, rdi
	xor	rax, -1
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	xor	rsi, -1
	or	rsi, rax
	movabs	rax, 7236284524343095148
	xor	rsi, rax
	mov	qword ptr [rbp - 10], rsi
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 29690
	imul	si, ax, 60871
	mov	eax, 2147352576
	mov	edi, dword ptr [rax]
	shr	edi, 8
	and	edi, 255
	add	edi, 8385
	or	di, 58512
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 34795
	imul	cx, ax, 9417
	mov	ax, cx
	xor	ax, di
                                        # kill: def $cl killed $cx
	mov	dx, si
	shl	dx, cl
	xor	di, si
	xor	di, dx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	si, dx
	shl	si, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	r8w, ax
	imul	r8w, di
	sub	si, di
	imul	di, ax
	mov	ax, r8w
	sub	ax, si
	mov	r9w, si
	xor	r9w, di
	mov	cx, si
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	mov	dx, r9w
	add	dx, ax
	mov	si, r9w
	sub	si, r8w
	sub	r9w, ax
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	ax, r9w
	shr	ax, cl
	or	si, r9w
	or	dx, r9w
	mov	di, si
	xor	di, dx
	mov	cx, si
	xor	cx, ax
	add	dx, si
	mov	ax, cx
	sub	ax, di
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	si, dx
	xor	si, ax
	mov	cx, ax
	xor	cx, -1
	xor	ax, dx
	sub	ax, si
	mov	r8w, cx
	xor	r8w, -1
                                        # kill: def $cl killed $cx
	shl	si, cl
	mov	cx, si
                                        # kill: def $cl killed $cx
	mov	dx, ax
	shl	dx, cl
	mov	di, ax
	sub	di, r8w
	imul	ax, si
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	si, dx
	shl	si, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r8w, di
	shr	r8w, cl
	mov	cx, di
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	dx, si
	sub	dx, r8w
	mov	di, r8w
	sub	di, ax
	sub	r8w, si
	mov	si, di
	xor	si, r8w
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r8w, di
	shl	r8w, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	di, cl
	mov	ax, si
	imul	ax, di
	mov	r9w, si
	sub	r9w, r8w
	add	si, di
	mov	dx, si
	xor	dx, -1
	mov	cx, ax
	sub	cx, r9w
	xor	ax, si
	mov	si, ax
	sub	si, dx
	imul	dx, cx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	ax, si
	shl	ax, cl
	sub	dx, si
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	si, dx
	xor	si, -1
	xor	dx, -1
	sub	ax, dx
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	si, cl
	mov	di, ax
	xor	di, -1
	mov	cx, ax
	imul	cx, si
	sub	ax, si
	mov	dx, cx
	xor	dx, di
	sub	ax, di
                                        # kill: def $cl killed $cx
	shl	di, cl
	mov	si, dx
	imul	si, ax
	add	di, dx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	cx, di
	sub	cx, si
	mov	ax, di
	imul	ax, dx
	imul	dx, di
	mov	si, ax
	xor	si, cx
	xor	cx, ax
	xor	dx, -1
	xor	dx, si
	mov	ax, cx
	xor	ax, si
	or	cx, si
	mov	si, cx
	xor	si, -1
	mov	di, cx
	imul	di, dx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	cx, si
	or	cx, ax
	xor	di, si
	imul	cx, di
	xor	cx, 49
	mov	word ptr [rbp - 2], cx
	lea	rax, [rbp - 26]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
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
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	dword ptr [rbp - 72], 300
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, -5035074395543793745
	add	rcx, rax
	movabs	rax, -6810315824892612104
	sub	rax, rcx
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	esi, ecx
	movabs	rcx, -4770771725940816578
	add	rsi, rcx
	movabs	rcx, -4139818246910699714
	or	rsi, rcx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rsi, cl
	mov	rcx, rax
	xor	rcx, -1
	xor	rax, -1
	imul	rax, rsi
	or	rsi, rcx
	mov	rdx, rax
	add	rdx, rsi
	or	rax, rsi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rsi, rax
	shl	rsi, cl
	mov	rcx, rax
	sub	rcx, rdx
	or	rdx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, rsi
	shl	rax, cl
	mov	rcx, rsi
	xor	rcx, -1
	add	rsi, rdx
	mov	rdx, rax
	imul	rdx, rsi
	xor	rsi, rcx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rdi, rsi
	imul	rdi, rax
	mov	r8, rax
	imul	r8, rsi
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rsi, rdi
	add	rsi, r8
	or	rdi, rdx
	or	rdx, r8
	mov	rcx, rdi
	or	rcx, rdx
	sub	rdx, rdi
	xor	rsi, -1
	mov	rax, rsi
	add	rax, rcx
	xor	rdx, -1
	sub	rcx, rsi
                                        # kill: def $cl killed $rcx
	mov	rdi, rdx
	shr	rdi, cl
	sub	rax, rdx
	mov	rdx, rax
	xor	rdx, -1
	mov	rsi, rax
	xor	rsi, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdi, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	rsi, cl
	mov	rax, rdx
	xor	rax, rdi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	shl	rdi, cl
	mov	rdx, rdi
	or	rdx, rsi
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	mov	rsi, rax
	shr	rsi, cl
	add	rax, rdi
	mov	rcx, rax
	xor	rcx, rsi
	or	rsi, rdx
	add	rdx, rax
	mov	rax, rdx
	xor	rax, -1
	mov	rdi, rcx
	or	rdi, rdx
	or	rcx, rsi
                                        # kill: def $cl killed $rcx
	mov	rdx, rdi
	shl	rdx, cl
	sub	rdi, rax
	mov	rcx, rdi
	sub	rcx, rdx
	mov	rax, rdx
	xor	rax, -1
	sub	rdx, rdi
	add	rdx, rax
	xor	rcx, -1
                                        # kill: def $cl killed $rcx
	mov	rsi, rdx
	shl	rsi, cl
	xor	rdx, -1
	mov	rdi, rdx
	xor	rdi, -1
	mov	rcx, rsi
	imul	rcx, rdx
	xor	rsi, -1
                                        # kill: def $cl killed $rcx
	mov	rax, rsi
	shl	rax, cl
	mov	rdx, rdi
	sub	rdx, rsi
	xor	rdi, rsi
	mov	rcx, rdi
	xor	rcx, -1
	xor	rax, -1
	sub	rdx, rdi
	sub	rdx, rcx
	xor	rax, -1
	mov	rsi, rax
	xor	rsi, -1
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rax, rdx
	sub	rax, rsi
	xor	rdx, -1
	imul	rax, rdx
	xor	rax, -1
	xor	rax, -1
	movabs	rcx, -1192493519093997193
	xor	rax, rcx
	mov	qword ptr [rbp - 21], rax
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 4850
	mov	dx, 18775
                                        # kill: def $cx killed $cx killed $ecx
                                        # kill: def $cl killed $cx
	shr	dx, cl
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 54523
	add	ax, 25102
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 57572
	xor	cx, 39451
	xor	ax, cx
	xor	dx, cx
	xor	cx, -1
	mov	si, dx
	imul	si, ax
	or	dx, cx
	mov	cx, si
	add	cx, dx
	mov	di, dx
	or	di, si
	or	dx, si
	mov	ax, di
	add	ax, dx
	xor	di, cx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	r8w, di
	shr	r8w, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, di
	shl	dx, cl
	xor	di, ax
	mov	si, r8w
	xor	si, di
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	di, cl
	xor	r8w, -1
	mov	dx, di
	add	dx, r8w
	mov	ax, si
	xor	ax, di
	or	si, di
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	di, si
	shl	di, cl
	add	dx, ax
	mov	cx, si
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	si, ax
	imul	si, dx
	or	dx, di
	mov	cx, di
                                        # kill: def $cl killed $cx
	shl	ax, cl
	or	ax, si
	sub	si, dx
	mov	cx, si
                                        # kill: def $cl killed $cx
	mov	dx, ax
	shl	dx, cl
	mov	cx, si
                                        # kill: def $cl killed $cx
	mov	si, ax
	shr	si, cl
	xor	ax, -1
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	si, cl
	add	ax, dx
	mov	dx, si
	or	dx, ax
	sub	si, ax
	xor	ax, -1
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	r8w, dx
	xor	r8w, -1
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	si, cl
	mov	di, ax
	imul	di, r8w
	mov	dx, ax
	add	dx, si
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	r8w, cl
	or	r8w, di
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	ax, di
	shl	ax, cl
	add	dx, di
	mov	si, r8w
	add	si, dx
	mov	di, ax
	add	di, r8w
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	r8w, cl
	mov	ax, si
	xor	ax, -1
	imul	si, di
	xor	di, r8w
	mov	cx, si
                                        # kill: def $cl killed $cx
	mov	r8w, di
	shr	r8w, cl
	xor	di, si
	xor	ax, -1
	mov	cx, ax
	sub	cx, di
	imul	r8w, di
	sub	di, ax
	imul	di, r8w
	xor	r8w, cx
	mov	si, r8w
	or	si, di
	mov	dx, di
	xor	dx, -1
	imul	r8w, di
	mov	ax, dx
	or	ax, r8w
	sub	si, r8w
	or	dx, r8w
	sub	ax, si
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	si, cl
	xor	dx, -1
	mov	di, ax
	or	di, dx
	mov	r8w, dx
	sub	r8w, si
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shr	ax, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	di, cl
	sub	ax, r8w
	mov	dx, ax
	xor	dx, -1
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	di, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	ax, di
	shr	ax, cl
	sub	di, dx
	xor	ax, di
	xor	ax, 114
	mov	word ptr [rbp - 13], ax
	lea	rax, [rbp - 21]
	mov	qword ptr [rbp - 64], rax
	mov	dword ptr [rbp - 56], 90000
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	mov	ecx, eax
	movabs	rax, -7226999883214658383
	add	rcx, rax
	movabs	rax, -8884075458846370432
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	mov	ecx, ecx
	movabs	rdx, -1365208588731618485
	add	rcx, rdx
	movabs	rdx, -8512756389365650169
	xor	rcx, rdx
	mov	rdx, rax
	add	rdx, rcx
	mov	rsi, rcx
	or	rsi, rax
	imul	rcx, rax
	mov	rax, rdx
	add	rax, rsi
	mov	rdi, rdx
	imul	rdi, rsi
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rsi, rdx
	shl	rsi, cl
	imul	rdx, rax
	or	rax, rdi
	mov	rcx, rdx
	imul	rcx, rsi
	xor	rax, rdx
                                        # kill: def $cl killed $rcx
	mov	rdx, rax
	shr	rdx, cl
	xor	rax, -1
	mov	r8, rdx
	xor	r8, rax
	mov	rdi, rax
	xor	rdi, rdx
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rax, rdi
	shl	rax, cl
	mov	rsi, rdi
	xor	rsi, -1
	sub	r8, rdi
	add	r8, rax
	mov	rdi, rsi
	xor	rdi, -1
	sub	rsi, rax
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	mov	rax, r8
	shr	rax, cl
	imul	rdi, rsi
	sub	rsi, r8
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	mov	rdx, rdi
	shl	rdx, cl
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shr	rdi, cl
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rsi, rdi
	shl	rsi, cl
	imul	rax, rdi
	xor	rdx, rdi
	xor	rax, -1
	mov	rcx, rsi
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rsi, rdx
	xor	rsi, rax
	mov	rdi, rax
	or	rdi, rdx
	or	rax, rdx
	mov	rdx, rdi
	imul	rdx, rax
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	shl	rsi, cl
	add	rax, rdi
	add	rdx, rax
	mov	rcx, rsi
	add	rcx, rax
	imul	rsi, rax
	or	rdx, rcx
	mov	rax, rsi
	xor	rax, rcx
	xor	rsi, -1
	add	rsi, rdx
	mov	rcx, rdx
	imul	rcx, rax
	xor	rdx, rax
	mov	rdi, rsi
	or	rdi, rdx
	mov	r8, rsi
	xor	r8, rdx
	sub	rcx, rsi
	imul	rdi, r8
	mov	rax, rcx
	xor	rax, -1
	add	r8, rcx
	mov	rcx, rdi
	add	rcx, rax
	xor	r8, -1
	add	rax, rdi
	mov	rsi, rax
	sub	rsi, r8
	xor	rax, rcx
	mov	rdi, rsi
	imul	rdi, rax
	mov	rdx, rsi
	imul	rdx, rax
	or	rax, rsi
	mov	rcx, rdx
                                        # kill: def $cl killed $rcx
	mov	rsi, rdi
	shl	rsi, cl
	or	rax, rdx
	sub	rdx, rdi
	mov	rcx, rax
                                        # kill: def $cl killed $rcx
	mov	rax, rdx
	shl	rax, cl
	mov	rdi, rsi
	xor	rdi, -1
	imul	rsi, rdx
	mov	rcx, rdi
	sub	rcx, rax
	or	rdi, rsi
	mov	rax, rcx
	imul	rax, rdi
                                        # kill: def $cl killed $rcx
	mov	rdx, rdi
	shl	rdx, cl
	xor	rdi, -1
	sub	rdi, rax
	xor	rdx, -1
	sub	rdx, rdi
	xor	rdx, -1
	movabs	rax, 1624839083321564808
	xor	rdx, rax
	mov	qword ptr [rbp - 11], rdx
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 36840
	mov	di, 7979
                                        # kill: def $cx killed $cx killed $ecx
                                        # kill: def $cl killed $cx
	shr	di, cl
	mov	eax, 2147352576
	mov	eax, dword ptr [rax]
	shr	eax, 8
	and	eax, 255
	add	eax, 40330
	or	ax, 26670
	mov	ecx, 2147352576
	mov	edx, dword ptr [rcx]
	shr	edx, 8
	and	edx, 255
	add	edx, 6515
	xor	dx, 10943
	mov	cx, di
	add	cx, ax
	add	di, ax
	or	dx, ax
	xor	cx, -1
	xor	di, dx
	mov	dx, cx
	add	dx, di
                                        # kill: def $cl killed $cx
	mov	ax, di
	shr	ax, cl
	xor	di, -1
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	r8w, di
	shl	r8w, cl
	mov	si, dx
	sub	si, di
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	dx, cl
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	di, si
	shr	di, cl
	mov	r9w, dx
	or	r9w, r8w
	mov	cx, si
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	ax, di
	imul	ax, dx
	mov	si, dx
	xor	si, di
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	r9w, cl
	mov	dx, r9w
	xor	dx, -1
	xor	r9w, ax
	add	ax, si
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	cx, ax
	sub	cx, r9w
	add	ax, r9w
	sub	ax, dx
                                        # kill: def $cl killed $cx
	shl	dx, cl
	mov	cx, ax
	add	cx, dx
	mov	si, dx
	add	si, ax
	imul	dx, ax
	mov	ax, si
	add	ax, dx
	sub	si, cx
	mov	dx, si
	or	dx, ax
	imul	ax, si
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	si, dx
	shr	si, cl
	add	dx, ax
	mov	di, si
	xor	di, -1
	sub	si, dx
	mov	cx, si
	xor	cx, -1
	sub	di, si
	mov	dx, di
	imul	dx, cx
	mov	ax, cx
	xor	ax, -1
	or	di, cx
	xor	di, -1
	xor	ax, dx
	mov	cx, ax
                                        # kill: def $cl killed $cx
	mov	dx, di
	shr	dx, cl
	xor	ax, di
	mov	cx, dx
                                        # kill: def $cl killed $cx
	mov	si, ax
	shr	si, cl
	mov	di, dx
	or	di, ax
	add	ax, dx
	sub	di, si
	mov	cx, si
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	si, ax
	xor	si, -1
	mov	r8w, ax
	imul	r8w, di
	mov	cx, di
                                        # kill: def $cl killed $cx
	shr	ax, cl
	add	r8w, ax
	mov	cx, si
	xor	cx, -1
	xor	si, ax
	mov	dx, r8w
	xor	dx, si
	mov	di, cx
	add	di, si
	xor	r8w, cx
	mov	si, di
	sub	si, r8w
	mov	ax, di
	xor	ax, r8w
	xor	dx, di
	mov	cx, ax
	add	cx, dx
	sub	ax, si
	or	dx, si
                                        # kill: def $cl killed $cx
	mov	di, dx
	shr	di, cl
	mov	si, ax
	xor	si, dx
	mov	cx, dx
                                        # kill: def $cl killed $cx
	shl	ax, cl
	mov	cx, si
                                        # kill: def $cl killed $cx
	mov	dx, di
	shl	dx, cl
	mov	cx, ax
                                        # kill: def $cl killed $cx
	shr	di, cl
	or	si, ax
	xor	di, -1
	or	si, dx
	sub	si, di
	xor	si, 26478
	mov	word ptr [rbp - 3], si
	mov	eax, 2147352576
	mov	edx, dword ptr [rax]
	shr	edx, 8
	and	edx, 255
	add	edx, 30
	or	dl, 27
	mov	eax, 2147352576
	mov	ecx, dword ptr [rax]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 192
	mov	al, 37
	sub	al, cl
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 211
	mov	sil, 35
	sub	sil, cl
	mov	dil, dl
	sub	dil, sil
	add	dl, al
	mul	sil
	mov	sil, al
	mov	cl, sil
	mov	al, dil
	shr	al, cl
	mov	cl, dil
	shl	dl, cl
	mov	cl, dil
	shr	sil, cl
	mov	cl, dl
	shl	sil, cl
	mov	dil, dl
	sub	dil, al
	mul	dl
	or	dil, al
	mov	dl, al
	or	dl, sil
	sub	sil, al
	mov	cl, sil
	mov	r8b, dil
	shl	r8b, cl
	xor	dil, dl
	mov	cl, sil
	shl	dl, cl
	mov	al, dl
	mul	dil
	mov	cl, al
	mov	al, dl
	mul	r8b
	xor	dl, -1
	mov	sil, dl
	xor	sil, -1
	or	dl, cl
	xor	al, cl
	add	dl, al
	sub	al, sil
	mov	dil, al
	or	dil, dl
	mov	sil, dl
	xor	sil, -1
	xor	dl, al
	mov	al, sil
	mul	dl
	mov	cl, al
	sub	dl, dil
	sub	sil, dil
	mov	al, dl
	mul	sil
	mov	dil, sil
	shr	dil, cl
	sub	sil, dl
	mov	dl, al
	sub	dl, sil
	mov	cl, sil
	shr	dil, cl
	sub	sil, al
	mov	r8b, dl
	xor	r8b, dil
	mov	dil, sil
	xor	dil, -1
	sub	dl, sil
	mov	cl, dil
	xor	cl, dl
	mov	al, dl
	mul	r8b
	or	dl, dil
	mov	sil, dl
	xor	sil, cl
	mul	dl
	mov	dil, al
	sub	cl, dl
	shr	sil, cl
	mov	al, cl
	xor	al, -1
	or	dil, cl
	mov	r8b, dil
	add	r8b, al
	sub	sil, dil
	sub	dil, al
	mov	dl, r8b
	sub	dl, dil
	xor	r8b, -1
	mov	al, sil
	mul	dil
	mov	cl, al
	xor	r8b, cl
	mov	al, cl
	mul	dl
	shr	dl, cl
	mov	cl, r8b
	add	cl, al
	mov	al, r8b
	xor	al, -1
	add	r8b, dl
	mov	sil, al
	sub	sil, cl
	or	cl, r8b
	add	r8b, al
	mov	dl, sil
	xor	dl, -1
	shl	r8b, cl
	mov	al, cl
	mul	sil
	mov	sil, al
	sub	sil, r8b
	mov	dil, r8b
	xor	dil, al
	sub	dl, r8b
	mov	al, sil
	sub	al, dil
	mov	cl, sil
	xor	cl, dil
	or	dl, sil
	sub	cl, dl
	xor	dl, al
	mov	sil, dl
	shl	sil, cl
	shl	dl, cl
	mov	cl, sil
	mov	dil, dl
	shr	dil, cl
	mov	cl, dl
	or	cl, sil
	mov	al, dl
	mul	sil
	mov	dl, al
	mov	sil, dl
	add	sil, dil
	mov	al, cl
	mul	dl
	xor	sil, al
	xor	sil, 0
	mov	byte ptr [rbp - 1], sil
	lea	rax, [rbp - 11]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 64]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 32], rax
	mov	rsi, qword ptr [rbp - 40]
	movabs	rdi, offset .L.str.4
	mov	al, 0
	call	printf@PLT
	mov	rsi, qword ptr [rbp - 32]
	movabs	rdi, offset .L.str.4
	mov	al, 0
	call	printf@PLT
	call	_Z11str_printerv
	lea	rdi, [rip + .L.str.4+1193046]
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 1048576
	mov	edx, 3518158325
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, 2147352576
	mov	ecx, dword ptr [rcx]
	shr	ecx, 8
	and	ecx, 255
	add	ecx, 16777215
	mov	esi, 549236661
	sub	esi, ecx
	mov	ecx, edx
	imul	ecx, esi
	sub	edx, esi
	mov	esi, ecx
	xor	esi, edx
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, esi
                                        # kill: def $cl killed $ecx
	mov	r8d, edx
	shl	r8d, cl
	mov	ecx, edx
                                        # kill: def $cl killed $ecx
	shl	esi, cl
	xor	r8d, esi
	add	r8d, 1852670789
	mov	ecx, r8d
	sub	rdi, rcx
	mov	rsi, rax
	mov	al, 0
	call	printf@PLT
	xor	eax, eax
	add	rsp, 80
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
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

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
