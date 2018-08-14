exe  : main.o X.o
	gcc  main.o X.o -o exe

X.o   : X.c X.h
	gcc -c X.c      -o X.o

main.o: main.c X.h
	gcc -c main.c   -o main.o

