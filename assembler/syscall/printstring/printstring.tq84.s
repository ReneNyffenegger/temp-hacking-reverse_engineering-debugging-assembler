	.file	"printstring.c"
# GNU C17 (Debian 12.2.0-14) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.1-p1, MPC version 1.3.1, isl version isl-0.25-GMP

# warning: MPFR header version 4.1.1-p1 differs from library version 4.2.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=att -mtune=generic -march=x86-64 -O0 -fno-asynchronous-unwind-tables -fomit-frame-pointer
	.text
	.globl	printstring
	.type	printstring, @function
printstring:
	subq	$40, %rsp	#,
	movq	%rdi, 8(%rsp)	# str, str
# printstring.c:11:     for (pos = str; *pos; pos++) {}
	movq	8(%rsp), %rax	# str, tmp84
	movq	%rax, 24(%rsp)	# tmp84, pos
# printstring.c:11:     for (pos = str; *pos; pos++) {}
	jmp	.L2	#
.L3:
# printstring.c:11:     for (pos = str; *pos; pos++) {}
	addq	$1, 24(%rsp)	#, pos
.L2:
# printstring.c:11:     for (pos = str; *pos; pos++) {}
	movq	24(%rsp), %rax	# pos, tmp85
	movzbl	(%rax), %eax	# *pos_3, _1
	testb	%al, %al	# _1
	jne	.L3	#,
# printstring.c:13:     int strlen = pos - str;
	movq	24(%rsp), %rax	# pos, tmp86
	subq	8(%rsp), %rax	# str, _2
# printstring.c:13:     int strlen = pos - str;
	movl	%eax, 20(%rsp)	# _2, strlen
# printstring.c:15:     syscall(SYS_write, STDOUT_FILENO, str, strlen);
	movl	20(%rsp), %edx	# strlen, tmp87
	movq	8(%rsp), %rax	# str, tmp88
	movl	%edx, %ecx	# tmp87,
	movq	%rax, %rdx	# tmp88,
	movl	$1, %esi	#,
	movl	$1, %edi	#,
	movl	$0, %eax	#,
	call	syscall@PLT	#
# printstring.c:16: }
	nop	
	addq	$40, %rsp	#,
	ret	
	.size	printstring, .-printstring
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
