#
#  vi: ft=gdb
#
set width 0
set height 0
set verbose off

#
# Examine (x) a (b)yte in he(x)adecimal:
#
x/bx   &var_two

#
# And a (h)alfword
#
x/hx   &var_two

#
# And a (w)word
#
x/wx   &var_two

#
# And a (g)iant
#
x/gx   &var_two
