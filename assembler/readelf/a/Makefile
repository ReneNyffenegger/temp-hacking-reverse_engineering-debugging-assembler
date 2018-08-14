all: readelf.a.out

readelf.a.out: a.out
	readelf -a $< > $@

a.out: main.o f.o
	gcc $^

main.o: main.c f.h
	gcc -c $< -o $@
	readelf -a $@

f.o: f.c
	gcc -c $< -o $@
