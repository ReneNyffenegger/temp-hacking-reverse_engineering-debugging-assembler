#
#  vi: ft=gdb
#
set width 0
set height 0
set verbose off
set disassembly-flavor intel

b main
r

# echo "------------\n"
# x/i $pc
stepi
# p/x  $rax
# # info register $rax

echo "------------\n"
x/i $pc
stepi

# p/x  $rax
printf "rax = %016lx\n", $rax


echo "------------\n"
x/i $pc
stepi

#p/x  $rax
printf "rax = %016lx\n", $rax

continue

# echo "------------\n"
# x/i $pc
# stepi
# p/x  $rax
# 
# 
# echo "------------\n"
# x/i $pc
# stepi
# p/x  $rax
# 
# 
# echo "------------\n"
# x/i $pc
# stepi
# p/x  $rax
# 
# 
# echo "------------\n"
# x/i $pc
# stepi
# p/x  $rax
