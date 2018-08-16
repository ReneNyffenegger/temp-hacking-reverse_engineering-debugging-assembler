a.out: main.o
	gcc $< -o $@

#
#  -as:
#     -a: creates listing
#         s specifies to include symbols
#
main.o: main.s
	as -als=main.symbols $< -o $@

main.s: main_.s ../../rm-instr.sed
	sed -f ../../rm-instr.sed $< > $@

main_.s: main_.c Makefile
	gcc -masm=intel -S $< -o $@
