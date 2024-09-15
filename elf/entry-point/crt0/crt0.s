	.text
	.globl	_start
_start:
	leaq	8(%rsp),%rsi	# argv
	movq	0(%rsp),%rcx	# argc
	movq	%rcx,%rax	# environ = &argv[argc+1]
	incq	%rax
	shlq	$3,%rax
	addq	%rsi,%rax
	movq	%rax,Cenviron
	pushq	%rsi
	pushq	%rcx
	call	Cmain
	addq	$16,%rsp
	pushq	%rax
  ret
