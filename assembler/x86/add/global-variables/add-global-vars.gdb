#
#  vi: ft=gdb
#
set width                  0
set height                 0
set verbose              off
set disassembly-flavor intel

b _start
r

# printf "ds = %016lx\n", $ds
info registers

x/i $pc
stepi
printf "ebx = %d\n", $rbx

x/i $pc
stepi
printf "ebx = %d\n", $rbx
