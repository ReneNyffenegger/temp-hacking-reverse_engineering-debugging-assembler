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
printf "--------------------------\n"
printf "addr of summands  : %8x\n",        &summands
printf "val of summands[0]: %8x\n", (long)  summands


info registers

printf "--------------------------\n"
x/i $pc
stepi
printf "ebx = %d\n", $rbx

printf "--------------------------\n"
x/i $pc
stepi
printf "ebx = %d\n", $rbx
