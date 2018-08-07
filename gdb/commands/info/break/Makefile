all: a.out
	@#gdb  --batch --command=commands.gdb --args ./main.nasm
	@ gdb  --batch --command=commands.gdb        ./a.out

a.out: prog.c Makefile
	@gcc -g -O0 $<
