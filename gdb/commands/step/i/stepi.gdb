#
#  vi: ft=gdb
#
set width 0
set height 0
set verbose off

#
# Create a breakpoint on main
#
b main

#
# Start the program
#
run

x/i $rip

stepi
x/i $rip

stepi
x/i $rip

stepi
x/i $rip

stepi
x/i $rip
