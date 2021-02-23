	.file	"main_.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Hello, world\0"
	.align 8
.LC1:
	.ascii "%s, the num is %d, the long num is %I64u %I64d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$192, %rsp
	.seh_stackalloc	192
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$42, -12(%rbp)
	movq	$-1, -24(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %r8d
	movq	-8(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rsp)
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rsp)
	movl	%r8d, %r9d
	movq	%rcx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movq	__imp_wsprintfA(%rip), %rax
	call	*%rax
	leaq	-144(%rbp), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	addq	$192, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh, Built by strawberryperl.com project) 8.3.0"
	.def	puts;	.scl	2;	.type	32;	.endef
