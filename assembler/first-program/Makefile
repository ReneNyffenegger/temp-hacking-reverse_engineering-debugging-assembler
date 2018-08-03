all: first.gnu.att first.nasm

first.gnu.att: first.gnu.att.o
	ld -m elf_x86_64 $< -o $@

first.nasm: first.nasm.o
	ld -m elf_x86_64 $< -o $@

first.gnu.att.o: first.gnu.att.s Makefile
	gcc -masm=att -c $< -o $@

first.nasm.o: first.asm Makefile
	nasm -f elf64 $< -o $@
