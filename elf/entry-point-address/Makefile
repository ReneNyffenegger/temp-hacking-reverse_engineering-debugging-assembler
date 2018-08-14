.PHONY: gdb.script print_start_address

all: gdb-command

gdb-command: gdb.script print_start_address
	@gdb --batch --command=$< ./a.out | grep 'Breakpoint 1,'


print_start_address: a.out
	@readelf -h $< | grep Entry

a.out: _start.o
	@ld -m elf_x86_64 $<

_start.o: _start.s
	@gcc -c $< -o $@
