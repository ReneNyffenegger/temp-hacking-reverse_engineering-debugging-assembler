all: main.nasm p.gdb
	@gdb  --batch --command=p.gdb --args ./main.nasm

main.nasm: main.nasm.o
	@gcc -g $< -o $@

main.nasm.o: main.asm Makefile
	@nasm  -f elf64 -g        -l main.lst $< -o $@
	@#@yasm -f elf64 -g dwarf2 -l main.lst $< -o $@
