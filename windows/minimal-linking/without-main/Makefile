	#ld $< -LC:\Strawberry\c\i686-w64-mingw32\lib -lkernel32 -o $@

a.out: exit.o Makefile
	gcc -v -nostdlib $< -l kernel32 -o $@

exit.o: exit_.s
	gcc -c $< -o $@

exit_.s: exit_.c
	gcc -S $< -o $@
