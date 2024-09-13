#.PHONY: gdb.script print-arguments-of-entry-point

.PHONY: x

all: prog
	#objdump -d prog
	objdump -x prog

#all: print-arguments-of-entry-point

# x: prog Makefile gdb.script
#	@gdb --batch --command=gdb.script --args prog one two three


prog: _start.s Makefile
	#gcc _start.s  -nostdlib  -Wl,--no-dynamic-linker  -o prog
	#gcc _start.s  -nostdlib  -Wl,--no-dynamic-linker -Wl,-static  -o prog
	#gcc _start.s  -nostdlib   -Wl,-static             -o prog
	 gcc _start.s  -nostdlib                           -o prog
