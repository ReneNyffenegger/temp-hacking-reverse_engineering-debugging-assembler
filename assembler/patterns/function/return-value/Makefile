main: main.o func.o
	gcc main.o func.o -o main

main.o: main.c func.s
	gcc -c main.c

func.o: func.s
	gcc -c func.s
