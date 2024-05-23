.PHONY: run-prog run-prog-gdb

run-prog: prog
	./prog

run-prog-gdb: prog-g
	gdb -batch -ex run -ex backtrace --args ./prog-g

prog: prog.c
	gcc $< -o $@

prog-g: prog.c
	gcc -g $< -o $@
