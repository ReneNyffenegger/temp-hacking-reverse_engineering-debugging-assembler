all: debugee singlestepper

singlestepper: singlestepper.o
	gcc $< -o $@

debugee: debugee.o
	gcc $< -nostdlib -o $@

singlestepper.o: singlestepper.c Makefile
	gcc -c $< -o $@

debugee.o: debugee.s Makefile
	gcc -c $< -o $@
