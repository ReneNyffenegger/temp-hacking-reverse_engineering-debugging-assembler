#
#    gcc -c gnu.s
#    objdump --syms       gnu.o
#    objdump --disassmble gnu.o
#
# Apparently, comments need a hash sign, not a semicolon.
#
.bss

.globl externallyVisibleLabel
.globl BlaBla

.data
   bytes_256  :  .space 256
   aWord      :  .word    0
   anotherWord:  .word    0
   x          :  .word    0

  .align 16   #   Align on 2^16 byte boundary
   txtFoo     :  .ascii  "Some text"

  .align 16   #
   txtBar     :  .ascii  "More text"

#  cString    :  .asciiz "NULL terminated string"



.text
goTo:
   jmp label2
   xor %eax, %eax
   lea (%eax, %eax, 2), %eax
   shl $10, %eax  # $10 = $0xa
label2:
   jmp goTo
