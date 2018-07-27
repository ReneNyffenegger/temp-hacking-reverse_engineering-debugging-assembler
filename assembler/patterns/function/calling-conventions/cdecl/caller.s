.intel_syntax noprefix
.text
.globl	caller

caller:
	push  rbp
	mov 	rbp, rsp

	sub 	rsp,  16
	mov 	edx,   3
	mov 	esi,   2
	mov 	edi,   1

	call	callee@PLT

	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]

	leave
	ret
