a.out: main.o callee.o caller.o
	gcc $^

main.o: main.c
	gcc -c $^

.s.o:
	gcc -masm=intel -c $^
