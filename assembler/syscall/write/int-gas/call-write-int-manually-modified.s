//	.file	"call-write-int.c"
	.intel_syntax noprefix
	.text
//.globl	_start
  .globl	main
//	.type	main, @function
main: // _start: // main:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	write_int@PLT
	mov	edi, 12
	call	write_int@PLT
	mov	edi, 123
	call	write_int@PLT
	mov	edi, 1234
	call	write_int@PLT
	mov	edi, 12345
	call	write_int@PLT
	mov	edi, 123456
	call	write_int@PLT
	mov	edi, 1234567
	call	write_int@PLT
	mov	edi, 12345678
	call	write_int@PLT
	mov	edi, 123456789
	call	write_int@PLT
	mov	edi, 1234567890
	call	write_int@PLT
	mov	edi, 2147483647
	call	write_int@PLT
	mov	eax, 0
	pop	rbp
	ret
//	.size	main, .-main
//	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
//	.section	.note.GNU-stack,"",@progbits
