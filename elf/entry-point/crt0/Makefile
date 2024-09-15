
prog: prog.o crt0.o str.o
	ld -nostdlib -no-dynamic-linker prog.o crt0.o str.o -o prog

prog.o: prog.c
	gcc -g -c -o prog.o prog.c

crt0.o: crt0.s
	gcc -g -c -o crt0.o crt0.s

str.o: str.s
	gcc -g -c -o str.o str.s
