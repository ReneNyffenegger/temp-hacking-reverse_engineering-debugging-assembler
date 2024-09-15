prog: prog.o printstring.o
	gcc prog.o printstring.o -o prog

prog.o: prog.c
	gcc -c prog.c -o prog.o

printstring.s: printstring.c
	../../../assembler/create-assembly-from-c/script/c2as printstring.c

printstring.o: printstring.s
	gcc -c printstring.s -o printstring.o
