prog: prog.s
	gcc -g  $^ -o $@

prog.s: prog.c Makefile
	gcc -O1 -S -fno-asynchronous-unwind-tables -fomit-frame-pointer -masm=intel $< -o $@
