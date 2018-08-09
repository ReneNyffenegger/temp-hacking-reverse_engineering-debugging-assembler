all: a.out prog.intel.s

a.out: prog.att.s
	gcc $<

prog.att.s: prog.c Makefile
	gcc -S $< -o $@

prog.intel.s: prog.c Makefile
	gcc -masm=intel -S $< -o $@
