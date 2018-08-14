a.out: main.o the_num.o
	gcc $^ -o $@
	readelf -h $@

main.o: main.c
	gcc -c $< -o $@

the_num.o: the_num.c
	gcc -c $< -o $@
