AS=as
#AS=gas


winexec.gnu.intel.exe: winexec.gnu.intel.o
	ld $< -o $@

winexec.gnu.intel.o: winexec.gnu.intel.s
	$(AS) $< -c -o $@
