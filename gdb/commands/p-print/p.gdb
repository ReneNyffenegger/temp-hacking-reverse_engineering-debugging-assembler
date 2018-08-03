#
#  vi: ft=gdb
#
set width 0
set height 0
set verbose off

#
# print values of var_one and var_two in
# decimal and hexadecimal, respectively.
#
p   (int) var_one
p/x (int) var_two

#
# print address of var_one and var_two:
#
p/a &var_one
p/a &var_two
