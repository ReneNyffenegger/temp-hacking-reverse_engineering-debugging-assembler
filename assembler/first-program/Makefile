all: first.gnu.intel first.gnu.att first.nasm

# Create executables:

first.gnu.intel: first.gnu.intel.o
	ld -m elf_x86_64 $< -o $@

first.gnu.att: first.gnu.att.o
	ld -m elf_x86_64 $< -o $@

first.nasm: first.nasm.o
	ld -m elf_x86_64 $< -o $@

# Create object files: 

first.gnu.intel.o: first.gnu.intel.s Makefile
	gcc -c $< -o $@

first.gnu.att.o: first.gnu.att.s Makefile
	gcc -c $< -o $@

first.nasm.o: first.asm Makefile
	# use -l to create a listing file
	nasm -f elf64 -l first.nasm.lst $< -o $@
