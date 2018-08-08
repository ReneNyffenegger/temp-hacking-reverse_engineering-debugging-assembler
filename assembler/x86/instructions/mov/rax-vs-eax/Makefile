all: main.gnu.intel main.nasm commands.gdb
	@gdb  --batch --command=commands.gdb --args ./main.gnu.intel

main.gnu.intel: main.gnu.intel.o
	@ld -m elf_x86_64 $< -o $@

main.nasm: main.nasm.o
	@gcc -O0 -g $< -o $@

main.gnu.intel.o: main.gnu.intel.s
	gcc -c $< -o $@

main.nasm.o: main.asm Makefile
	@nasm  -f elf64 -g        -l main.lst $< -o $@
