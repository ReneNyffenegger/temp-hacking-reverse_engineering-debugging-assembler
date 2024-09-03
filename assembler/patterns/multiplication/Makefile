# a.out: main.intel_.s
#	gcc $<

funcs.s: funcs.c Makefile
	# gcc -fverbose-asm -S -masm=intel $< -o $@
	# gcc -fverbose-asm -S $< -o $@
	gcc  -O2 -S $< -o $@

