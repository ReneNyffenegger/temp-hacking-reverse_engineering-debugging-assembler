.PHONY: run

run: prog
	@gdb --batch --command=commands.gdb ./prog
	
prog: prog.c
	@gcc -g prog.c -o prog
