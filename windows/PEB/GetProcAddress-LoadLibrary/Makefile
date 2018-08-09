#
#  Use gmake, not dmake!
#
AS=as
#AS=gas

# all: PEB.exe PEB.bin PEB.hex shellcode.exe
all: PEB.exe PEB.bin PEB.hex

# shellcode.exe: shellcode.c
# 	gcc $< -o $@

# create a dump of the .bin file which can be used
# for shellcode.c
PEB.hex: PEB.bin
	objdump -D -b binary -m i386 $< > $@

# Create a .bin file for the shell code
PEB.bin: PEB.o
	objcopy -O binary $< $@

PEB.exe: PEB.o
	ld $< -o $@

PEB.o: PEB.gnu.intel.s Makefile
	$(AS) $< -c -o $@
