a.out: main.s
	gcc -masm=intel -nostartfiles $< -o $@

main.s: main_.s
	sed -f ../../../rm-instr.sed $< > $@

# main_.s: main_.c Makefile
# 	gcc -masm=intel -O0 -S $< -o $@
