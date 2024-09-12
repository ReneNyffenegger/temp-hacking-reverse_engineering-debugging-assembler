#.PHONY: gdb.script print-arguments-of-entry-point

.PHONY: x

all: x

#all: print-arguments-of-entry-point

x: prog Makefile gdb.script
	@gdb --batch --command=gdb.script --args prog one two three


#gdb-command: gdb.script print_start_address

#print_start_address: a.out
#	@readelf -h $< | grep Entry

# a.out: _start.o
#	@ld -m elf_x86_64 $<
#

#prog: _start.o
#	ld _start.o -o prog

prog: _start.s Makefile
	gcc _start.s  -nostdlib  -Wl,--no-dynamic-linker  -o prog
