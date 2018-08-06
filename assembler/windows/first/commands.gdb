#
#  vi: ft=gdb
#
set width                  0
set height                 0
set verbose              off
set disassembly-flavor intel

b mainCRTStartup
r

x/i $pc
