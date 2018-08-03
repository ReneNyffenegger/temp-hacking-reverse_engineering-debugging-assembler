a.out: main.s
	gcc -masm=intel -O0 $<

main.s: main_.s
	sed -f ../../rm-instr.sed $< > $@

main_.s: main.c
	gcc -O0 -masm=intel -S $< -o $@
