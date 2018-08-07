#
#  vi: ft=gdb
#
set width                  0
set height                 0
set verbose              off
set disassembly-flavor intel

b _start
r

# info registers

x/i $pc
stepi
# printf "ebx = %d\n", $rbx

x/i $pc
stepi

x/i $pc
stepi

continue
