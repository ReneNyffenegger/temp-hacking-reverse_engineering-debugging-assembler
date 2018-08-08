#
#  vi: ft=gdb
#
set width                  0
set height                 0
set verbose              off
set disassembly-flavor intel

b WinMain
r

# printf "edx = 0x%x\n", $edx
stepi
printf "edx before cpuid: 0x%x\n", $edx
stepi
printf "edx after cpuid:  0x%x\n", $edx

