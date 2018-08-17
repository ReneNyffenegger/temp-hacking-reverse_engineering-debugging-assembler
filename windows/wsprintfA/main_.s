	.file	"main_.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Hello, world\0"
LC1:
	.ascii "%s, the num is %d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	addl	$-128, %esp
	call	___main
	movl	$LC0, 124(%esp)
	movl	$42, 120(%esp)
	movl	120(%esp), %eax
	movl	%eax, 12(%esp)
	movl	124(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC1, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	movl	__imp__wsprintfA, %eax
	call	*%eax
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_puts
	leave
	ret
	.ident	"GCC: (i686-posix-sjlj, built by strawberryperl.com project) 4.9.2"
	.def	_puts;	.scl	2;	.type	32;	.endef
