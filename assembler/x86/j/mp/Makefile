all: jmp.gnu.intel commands.gdb
	@gdb  --batch --command=commands.gdb --args ./jmp.gnu.intel

jmp.gnu.intel: jmp.gnu.intel.o
	ld -m elf_x86_64 $< -o $@

jmp.gnu.intel.o: jmp.gnu.intel.s Makefile
	gcc -c $< -o $@
