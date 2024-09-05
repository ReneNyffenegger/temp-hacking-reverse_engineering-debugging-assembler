.PHONY: run-prog

run-prog: prog
	@gdb --batch --command=cmd.gdb --args prog one two three

prog: go.c
	@gcc -g go.c -o prog
