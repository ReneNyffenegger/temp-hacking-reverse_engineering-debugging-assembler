.intel_syntax noprefix


#.text
.section	.rodata

.PRINTF_STRING:
	.string	"c = %c\n"

.text
	.globl	main

main:
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 16	#,

#	mov	BYTE PTR -2[rbp], 'q'
#
#	movzx	eax, BYTE PTR -2[rbp]	# tmp93, lowercase

  mov al,  'q'
	and	al, 223 # Turn character in eax (al) to uppercase

#mov	BYTE PTR -1[rbp], al	# uppercase, tmp92

# main_.c:8:   printf("c = %c\n", uppercase);
#movsx	eax, BYTE PTR -1[rbp]	# _1, uppercase

	mov	esi, eax	#, _1
	lea	rdi, .PRINTF_STRING[rip]	#,

#mov	eax, 0
	call	printf@PLT
	mov	eax, 0	# _6,
# main_.c:10: }
	leave	
	ret	
