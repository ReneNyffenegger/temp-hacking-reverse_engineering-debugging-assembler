AS=as
#AS=gas

all: winexec.gnu.intel.exe winexec.gnu.intel.bin winexec.gnu.intel.hex shellcode.exe

shellcode.exe: shellcode.c
	gcc $< -o $@

# create a dump of the .bin file which can be used
# for shellcode.c
winexec.gnu.intel.hex: winexec.gnu.intel.bin
	objdump -D -b binary -m i386 $< > $@

# Create a .bin file for the shell code
winexec.gnu.intel.bin: winexec.gnu.intel.o
	objcopy -O binary $< $@

winexec.gnu.intel.exe: winexec.gnu.intel.o
	ld $< -o $@

winexec.gnu.intel.o: winexec.gnu.intel.s
	$(AS) $< -c -o $@
