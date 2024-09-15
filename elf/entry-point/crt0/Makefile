
prog: crt0.o /home/rene/github/dev/assembly/AMD64-assembly/stdlib-4-linux/temp/writestring.o prog.o # str.o
	ld -nostdlib -no-dynamic-linker $^ -o $@

prog.o: prog.c
	gcc -g -c -o prog.o prog.c

crt0.o: crt0.s
	gcc -g -c -o crt0.o crt0.s

str.o: str.s
	gcc -g -c -o str.o str.s

/home/rene/github/dev/assembly/AMD64-assembly/stdlib-4-linux/temp/writestring.o: /home/rene/github/dev/assembly/AMD64-assembly/stdlib-4-linux/temp/writestring.S
	gcc -g -c $< -o $@

