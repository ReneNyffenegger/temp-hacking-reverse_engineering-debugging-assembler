	.file	"call-write-int.c"
	.intel_syntax noprefix
# GNU C17 (Debian 10.2.1-6) version 10.2.1 20210110 (x86_64-linux-gnu)
#	compiled by GNU C version 10.2.1 20210110, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.0, isl version isl-0.23-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu call-write-int.c
# -masm=intel -mtune=generic -march=x86-64 -auxbase-strip call-write-int.s
# -O3 -fverbose-asm -fno-asynchronous-unwind-tables
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-functions -falign-jumps -falign-labels -falign-loops
# -fallocation-dce -fauto-inc-dec -fbranch-count-reg -fcaller-saves
# -fcode-hoisting -fcombine-stack-adjustments -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-cp-clone -fipa-icf -fipa-icf-functions -fipa-icf-variables
# -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference
# -fipa-reference-addressable -fipa-sra -fipa-stack-alignment -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -floop-interchange
# -floop-unroll-and-jam -flra-remat -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining
# -fpeel-loops -fpeephole -fpeephole2 -fplt -fpredictive-commoning
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-blocks-and-partition -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-loops -fsplit-paths -fsplit-wide-types -fssa-backprop
# -fssa-phiopt -fstdarg-opt -fstore-merging -fstrict-aliasing
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-distribution
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -funswitch-loops -fverbose-asm
# -fversion-loops-for-strides -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.p2align 4
	.globl	_start
	.type	_start, @function
_start:
	sub	rsp, 8	#,
# call-write-int.c:5:     write_int(         1);
	mov	edi, 1	#,
	call	write_int@PLT	#
# call-write-int.c:6:     write_int(        12);
	mov	edi, 12	#,
	call	write_int@PLT	#
# call-write-int.c:7:     write_int(       123);
	mov	edi, 123	#,
	call	write_int@PLT	#
# call-write-int.c:8:     write_int(      1234);
	mov	edi, 1234	#,
	call	write_int@PLT	#
# call-write-int.c:9:     write_int(     12345);
	mov	edi, 12345	#,
	call	write_int@PLT	#
# call-write-int.c:10:     write_int(    123456);
	mov	edi, 123456	#,
	call	write_int@PLT	#
# call-write-int.c:11:     write_int(   1234567);
	mov	edi, 1234567	#,
	call	write_int@PLT	#
# call-write-int.c:12:     write_int(  12345678);
	mov	edi, 12345678	#,
	call	write_int@PLT	#
# call-write-int.c:13:     write_int( 123456789);
	mov	edi, 123456789	#,
	call	write_int@PLT	#
# call-write-int.c:14:     write_int(1234567890);
	mov	edi, 1234567890	#,
	call	write_int@PLT	#
# call-write-int.c:16:     write_int(2147483647);
	mov	edi, 2147483647	#,
	call	write_int@PLT	#
# call-write-int.c:19: }

#
# exit(0)
#
  mov rax, 60        # syscall number for exit
  xor rdi, rdi       # return code 0            # exit with code 0
  syscall            # invoke kernel


#	xor	eax, eax	#
# 	add	rsp, 8	#,
#	ret	
	.size	_start, .-_start
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
