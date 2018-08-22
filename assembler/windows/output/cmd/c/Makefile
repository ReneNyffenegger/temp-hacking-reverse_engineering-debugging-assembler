a.out: prog_.s
	gcc $<

prog_.s: prog_.c Makefile
	gcc -fverbose-asm -S $< -o $@
