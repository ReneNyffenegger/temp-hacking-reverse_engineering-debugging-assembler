prog: prog.o printstring.o stringlen.o
	gcc $^ -o $@

prog.o: prog.c
	gcc -c prog.c -o prog.o

stringlen.o: stringlen.c
	gcc -c $< -o $@

printstring.s: printstring.c
	../../../assembler/create-assembly-from-c/script/c2as printstring.c

printstring.o: printstring.s
	gcc -c printstring.s -o printstring.o
