all: add-global-vars.gnu.intel add-global-vars.gdb
	@gdb  --batch --command=add-global-vars.gdb --args ./add-global-vars.gnu.intel

add-global-vars.gnu.intel: add-global-vars.gnu.intel.o
	ld -m elf_x86_64 $< -o $@

add-global-vars.gnu.intel.o: add-global-vars.gnu.intel.s Makefile
	gcc -c $< -o $@
