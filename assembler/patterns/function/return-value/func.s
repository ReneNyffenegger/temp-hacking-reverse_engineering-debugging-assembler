.intel_syntax noprefix

.text

.globl  func

func:
#
# Standard ABI: function values are returned in the eax register.
#
  mov eax, 42
  ret
