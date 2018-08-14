#  https://stackoverflow.com/questions/1647359/is-there-a-way-to-get-gcc-to-output-raw-binary

all: a.out a.bin

# a.bin: main.o foo.o
# 	gcc -Wl,--oformat=binary $^ -o $@

a.out: main.o foo.o
	gcc $^ -o $@

main.o: main.c foo.h
	gcc -c $< -o $@

foo.o: foo.c foo.h
	gcc -c $< -o $@
