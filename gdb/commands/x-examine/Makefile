all: main.nasm x.gdb
	@gdb  --batch --command=x.gdb --args ./main.nasm

main.nasm: main.nasm.o
	@gcc -g $< -o $@

main.nasm.o: main.asm Makefile
	@nasm  -f elf64 -g        -l main.lst $< -o $@
