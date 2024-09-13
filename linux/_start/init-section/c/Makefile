all: prog	
	objdump -d --section=.init prog

prog: prog.c Makefile
	gcc prog.c -o prog
