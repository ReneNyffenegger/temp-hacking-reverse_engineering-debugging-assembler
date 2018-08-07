#
#  vi: ft=gdb
#
set width 0
set height 0
set verbose off
# set logging file on
# set print address off

#
# Create a breakpoint on main
#
b main
  commands
  silent
  end

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
