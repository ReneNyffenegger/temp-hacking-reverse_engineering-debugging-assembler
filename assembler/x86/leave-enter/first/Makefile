all: a.out gdb.script
	@gdb --batch --command=gdb.script  ./a.out > script.out


a.out: prog.s Makefile
	gcc -masm=intel -nostdlib $<
