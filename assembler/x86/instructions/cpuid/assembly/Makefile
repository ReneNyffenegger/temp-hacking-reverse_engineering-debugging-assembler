AS=as

all: cpuid.exe commands.gdb
	@gdb  --batch --command=commands.gdb --args ./cpuid.exe | findstr /v /c:"in WinMain"


cpuid.exe: cpuid.o
	gcc $<  -o $@

cpuid.o: cpuid.s Makefile
	$(AS) $< -c -o $@
