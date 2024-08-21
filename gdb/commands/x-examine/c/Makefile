.PHONY: run prog.out

all: run prog.out

run: 
	@gdb --batch --command=commands.gdb ./prog.out

prog.out:prog.c
	@gcc -g $< -o $@
