.intel_syntax noprefix

.text

.globl  func

func:
#
# The function value is return in the eax register.
#
  mov eax, 42
  ret
