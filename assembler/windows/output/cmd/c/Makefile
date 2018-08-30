a.out: prog_.s
	gcc $<

prog_.s: prog_.c Makefile
	gcc -masm=intel -fverbose-asm -S $< -o $@
