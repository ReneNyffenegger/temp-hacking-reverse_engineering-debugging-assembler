all: first.gnu.att first.nasm

first.gnu.att: first.gnu.att.o
	ld -m elf_x86_64 $< -o $@

first.nasm: first.nasm.o
	ld -m elf_x86_64 $< -o $@

first.gnu.att.o: first.gnu.att.s Makefile
	gcc -masm=att -c $< -o $@

first.nasm.o: first.asm Makefile
	# use -l to create a listing file
	nasm -f elf64 -l first.nasm.lst $< -o $@
