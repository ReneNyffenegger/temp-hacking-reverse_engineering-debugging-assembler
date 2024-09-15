prog: prog.o printstring.tq84.o # stringlen.o
	gcc $^ -o $@

prog.o: prog.c
	gcc -c prog.c -o prog.o

#stringlen.o: stringlen.c
#	gcc -c $< -o $@

#printstring.s: printstring.c
#	../../../assembler/create-assembly-from-c/script/c2as  printstring.c

printstring.tq84.o: printstring.tq84.S
	gcc -c $< -o $@

clean:
	#rm -f *.o *.s
	rm -f *.o
