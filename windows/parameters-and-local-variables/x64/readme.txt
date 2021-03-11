

  ======================
    R9  home
    --------
    R8  home
    --------
    RDX home
    --------
    RCX home
    --------
    Caller return Addr
  ======================
    local var 1
    -------
    local var 2
    …


   -------------------------
    stack parameter-6 (?) 
    -------
    stack parameter-5 (?)
    --------
    R9  home
    --------
    R8  home
    --------
    RDX home
    --------
    RCX home
    --------
    Caller return Addr
  ======================
     






By default, the x64 calling convention passes the first four arguments to a
function in registers. The registers used for these arguments depend on the
position and type of the argument. Remaining arguments get pushed on the stack
in right-to-left order.

Integer valued arguments in the leftmost four positions are passed in
left-to-right order in RCX, RDX, R8, and R9, respectively. The fifth and higher
arguments are passed on the stack as previously described. All integer
arguments in registers are right-justified, so the callee can ignore the upper
bits of the register and access only the portion of the register necessary.

A function's prolog is responsible for allocating stack space for local
variables, saved registers, stack parameters, and register parameters.

The parameter area is always at the bottom of the stack (even if alloca is
used), so that it will always be adjacent to the return address during any
function call. It contains at least four entries, but always enough space to
hold all the parameters needed by any function that may be called.


The x64 Application Binary Interface (ABI) uses a four-register fast-call
calling convention by default. Space is allocated on the call stack as a shadow
store for callees to save those registers.

The caller is responsible for allocating space for the callee's parameters.
The caller must always allocate sufficient space to store four register parameters, even if the callee doesn't take that many parameters.
This convention simplifies support for unprototyped C-language functions and vararg C/C++ functions.

Any parameters beyond the first four must be stored on the stack after the shadow store before the call.

The x64 ABI considers the registers RAX, RCX, RDX, R8, R9, R10, R11, and XMM0-XMM5 volatile.
-
The x64 ABI considers registers RBX, RBP, RDI, RSI, RSP, R12, R13, R14, R15,
and XMM6-XMM15 nonvolatile. They must be saved and restored by a function that
uses them.
