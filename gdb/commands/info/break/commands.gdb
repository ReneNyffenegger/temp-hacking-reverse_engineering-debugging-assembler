#
#  vi: ft=gdb
#
set width     0
set height    0
set verbose off


#
# Set a breakoint when cnt is increased
#
b 8

#
# ignore 1st breakpoint many tims
#
ignore 1 9999999

#
# Set a breakoint at the end of the program (after printf)
#
b 13

#
# run the program
#
r

#
# Use info breakpoint to reveal how many times the
# breakpoint was hit.
#
info breakpoint 1
