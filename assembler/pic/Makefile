all: code.disassembled code_pic.disassembled
	diff code_pic.s code.s

code.disassembled: code.o
	objdump --disassemble $< > $@

code_pic.disassembled: code_pic.o
	objdump --disassemble $< > $@

code.o: code.s
	gcc -c $< -o $@

code_pic.o: code_pic.s
	gcc -c $< -o $@

code.s: code_.s
	sed -f ../rm-instr.sed $< > $@

code_pic.s: code_pic_.s
	sed -f ../rm-instr.sed $< > $@

code.s: code_.s
	sed -f ../rm-instr.sed $< > $@

code_pic_.s : code.c Makefile
	gcc -fpic    -S $< -o $@

code_.s     : code.c Makefile
	gcc          -S $< -o $@
