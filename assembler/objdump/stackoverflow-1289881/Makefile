test.objdump: a.out
	objdump -d -M intel -S test.o > $@

a.out: test.o
	gcc $<

test.o: test.c Makefile
	gcc -g -c $<
