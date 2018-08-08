all: a.out
	@a.exe

a.out: cpuid.s
	@gcc -masm=intel $<

cpuid.s: cpuid.c  Makefile
	@gcc -masm=intel -S $<
