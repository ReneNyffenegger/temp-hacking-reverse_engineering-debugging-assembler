#
#  vi: ft=gdb
#
set width 0
set height 0
set verbose off
set disassembly-flavor intel

b _start
r

stepi

echo "------------\n"
printf "rax = %016lx\n", $rax
x/i $pc
stepi

echo "------------\n"
printf "rax = %016lx\n", $rax
x/i $pc
stepi

# p/x  $rax
printf "rax = %016lx\n", $rax


echo "------------\n"
x/i $pc
stepi

printf "rax = %016lx\n", $rax

# End the program
continue
