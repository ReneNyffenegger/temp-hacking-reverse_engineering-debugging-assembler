a.out: crX.s
	gcc $<

crX.s: crX.c Makefile
	gcc -masm=intel -S $< -o $@
