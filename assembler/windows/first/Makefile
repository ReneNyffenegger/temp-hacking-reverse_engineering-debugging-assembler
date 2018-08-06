AS=as
#AS=gas

all: a.exe
	@gdb --batch --command=commands.gdb .\a.exe


a.exe: first.o
	gcc -nostartfiles first.o

first.o: first.s Makefile
	$(AS) first.s -c -o first.o

