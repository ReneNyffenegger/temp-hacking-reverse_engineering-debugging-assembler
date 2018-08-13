
a.out: main.intel_.s
	gcc $<

main.intel.clean_.s: main.intel_.s ../../../rm-instr.sed
	sed -f ../../../rm-instr.sed $< > $@

main.intel_.s: main_.c
	gcc -fverbose-asm -S -masm=intel -O0 $< -o $@
