b prog.c:11
r

set variable $addr_1 =     ptr_char
set variable $addr_2 = ptr_ptr_char

print "$addr_1"
x/s            $addr_1

print "$addr_2"
x/3s *(char**) $addr_2
