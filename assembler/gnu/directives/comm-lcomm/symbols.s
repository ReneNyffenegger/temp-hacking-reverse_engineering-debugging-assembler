.text
#         name      length alignment
.comm   	buf      ,   200,       32
.comm   	num      ,     4,        4
.comm   	greeting ,    50,       32

#
#  The following symbol should not be externally visible... but
#    objdump -t and
#    nm
#  nevertheless show these.
#
.lcomm	  not_exported,20 # Note: apparently, on x86/64, only length is allowed but not the alignment
