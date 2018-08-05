all: exit_value.gnu.intel

exit_value.gnu.intel: exit_value.gnu.intel.o
	ld -m elf_x86_64 $< -o $@

exit_value.gnu.intel.o: exit_value.gnu.intel.s Makefile
	gcc -c $< -o $@
