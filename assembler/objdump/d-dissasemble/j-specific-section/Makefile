a.out: main.o the_num.o
	gcc $^ -o $@
	objdump -d -j .text $@

main.o: main.c
	gcc -c $< -o $@
	objdump -d -j .text $@

the_num.o: the_num.c
	gcc -c $< -o $@
	objdump -d -j .text $@
