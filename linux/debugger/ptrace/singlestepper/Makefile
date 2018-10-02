all: debugee singlestepper debugee.objdump

debugee.objdump: debugee
	objdump -d $< > $@

singlestepper: singlestepper.o
	gcc $< -o $@

debugee: debugee.o
	gcc $< -nostdlib -o $@

singlestepper.o: singlestepper.c Makefile
	gcc -Wall -pedantic --std=c99 -c $< -o $@

debugee.o: debugee.s Makefile
	gcc -c $< -o $@
