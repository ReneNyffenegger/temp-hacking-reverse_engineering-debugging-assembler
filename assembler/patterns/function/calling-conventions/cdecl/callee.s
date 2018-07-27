.intel_syntax noprefix
.text
.globl	callee

callee:
	push	rbp
	mov	  rbp, rsp

	mov	DWORD PTR  -4[rbp], edi
	mov	DWORD PTR  -8[rbp], esi
	mov	DWORD PTR -12[rbp], edx

	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -8[rbp]

	add	edx, eax

	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	pop	rbp
	ret
