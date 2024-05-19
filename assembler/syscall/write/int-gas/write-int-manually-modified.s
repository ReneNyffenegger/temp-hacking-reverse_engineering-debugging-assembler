	.file	"write-int.c"
	.intel_syntax noprefix
# GNU C17 (Debian 10.2.1-6) version 10.2.1 20210110 (x86_64-linux-gnu)
#	compiled by GNU C version 10.2.1 20210110, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.0, isl version isl-0.23-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu write-int.c -masm=intel
# -mtune=generic -march=x86-64 -auxbase-strip write-int.s -O3 -fverbose-asm
# -fno-asynchronous-unwind-tables
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
	.globl	write_int
	.type	write_int, @function
write_int:
# write-int.c:7:    char t[11] = "          \n";  // longest int has 10 digits (2147483647) -- 11 characters are reserved for the null terminated byte
	movabs	rax, 2314885530818453536	# tmp290,
# write-int.c:6: void write_int(int i) {
	sub	rsp, 24	#,
# write-int.c:16:       digit = sum % 10;
	mov	edx, edi	# tmp137, i
# write-int.c:7:    char t[11] = "          \n";  // longest int has 10 digits (2147483647) -- 11 characters are reserved for the null terminated byte
	mov	QWORD PTR 5[rsp], rax	# t, tmp290
	mov	eax, 8224	#,
# write-int.c:16:       digit = sum % 10;
	sar	edx, 31	# tmp137,
# write-int.c:7:    char t[11] = "          \n";  // longest int has 10 digits (2147483647) -- 11 characters are reserved for the null terminated byte
	mov	WORD PTR 13[rsp], ax	# t,
# write-int.c:16:       digit = sum % 10;
	movsx	rax, edi	# i, i
	imul	rax, rax, 1717986919	# tmp134, i,
# write-int.c:7:    char t[11] = "          \n";  // longest int has 10 digits (2147483647) -- 11 characters are reserved for the null terminated byte
	mov	BYTE PTR 15[rsp], 10	# t,
# write-int.c:16:       digit = sum % 10;
	sar	rax, 34	# tmp136,
	sub	eax, edx	# tmp132, tmp137
	lea	edx, [rax+rax*4]	# tmp140,
	add	edx, edx	# tmp141
	sub	edi, edx	# digit, tmp141
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	edi, 48	# tmp143,
	mov	BYTE PTR 14[rsp], dil	# t[9], tmp143
# write-int.c:23:    while (sum);
	test	eax, eax	# tmp132
	je	.L2	#,
# write-int.c:16:       digit = sum % 10;
	movsx	rdx, eax	# sum, tmp132
	mov	ecx, eax	# tmp154, tmp132
	imul	rdx, rdx, 1717986919	# tmp151, sum,
	sar	ecx, 31	# tmp154,
	sar	rdx, 34	# tmp153,
	sub	edx, ecx	# tmp149, tmp154
	lea	ecx, [rdx+rdx*4]	# tmp157,
	add	ecx, ecx	# tmp158
	sub	eax, ecx	# digit, tmp158
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	eax, 48	# tmp160,
	mov	BYTE PTR 13[rsp], al	# t[8], tmp160
# write-int.c:23:    while (sum);
	test	edx, edx	# tmp149
	je	.L2	#,
# write-int.c:16:       digit = sum % 10;
	movsx	rax, edx	# sum, tmp149
	mov	ecx, edx	# tmp171, tmp149
	imul	rax, rax, 1717986919	# tmp168, sum,
	sar	ecx, 31	# tmp171,
	sar	rax, 34	# tmp170,
	sub	eax, ecx	# tmp166, tmp171
	lea	ecx, [rax+rax*4]	# tmp174,
	add	ecx, ecx	# tmp175
	sub	edx, ecx	# digit, tmp175
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	edx, 48	# tmp177,
	mov	BYTE PTR 12[rsp], dl	# t[7], tmp177
# write-int.c:23:    while (sum);
	test	eax, eax	# tmp166
	je	.L2	#,
# write-int.c:16:       digit = sum % 10;
	movsx	rdx, eax	# sum, tmp166
	mov	ecx, eax	# tmp188, tmp166
	imul	rdx, rdx, 1717986919	# tmp185, sum,
	sar	ecx, 31	# tmp188,
	sar	rdx, 34	# tmp187,
	sub	edx, ecx	# tmp183, tmp188
	lea	ecx, [rdx+rdx*4]	# tmp191,
	add	ecx, ecx	# tmp192
	sub	eax, ecx	# digit, tmp192
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	eax, 48	# tmp194,
	mov	BYTE PTR 11[rsp], al	# t[6], tmp194
# write-int.c:23:    while (sum);
	test	edx, edx	# tmp183
	je	.L2	#,
# write-int.c:16:       digit = sum % 10;
	movsx	rax, edx	# sum, tmp183
	mov	ecx, edx	# tmp205, tmp183
	imul	rax, rax, 1717986919	# tmp202, sum,
	sar	ecx, 31	# tmp205,
	sar	rax, 34	# tmp204,
	sub	eax, ecx	# tmp200, tmp205
	lea	ecx, [rax+rax*4]	# tmp208,
	add	ecx, ecx	# tmp209
	sub	edx, ecx	# digit, tmp209
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	edx, 48	# tmp211,
	mov	BYTE PTR 10[rsp], dl	# t[5], tmp211
# write-int.c:23:    while (sum);
	test	eax, eax	# tmp200
	je	.L2	#,
# write-int.c:16:       digit = sum % 10;
	movsx	rdx, eax	# sum, tmp200
	mov	ecx, eax	# tmp222, tmp200
	imul	rdx, rdx, 1717986919	# tmp219, sum,
	sar	ecx, 31	# tmp222,
	sar	rdx, 34	# tmp221,
	sub	edx, ecx	# tmp217, tmp222
	lea	ecx, [rdx+rdx*4]	# tmp225,
	add	ecx, ecx	# tmp226
	sub	eax, ecx	# digit, tmp226
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	eax, 48	# tmp228,
	mov	BYTE PTR 9[rsp], al	# t[4], tmp228
# write-int.c:23:    while (sum);
	test	edx, edx	# tmp217
	je	.L2	#,
# write-int.c:16:       digit = sum % 10;
	movsx	rax, edx	# sum, tmp217
	mov	ecx, edx	# tmp239, tmp217
	imul	rax, rax, 1717986919	# tmp236, sum,
	sar	ecx, 31	# tmp239,
	sar	rax, 34	# tmp238,
	sub	eax, ecx	# tmp234, tmp239
	lea	ecx, [rax+rax*4]	# tmp242,
	add	ecx, ecx	# tmp243
	sub	edx, ecx	# digit, tmp243
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	edx, 48	# tmp245,
	mov	BYTE PTR 8[rsp], dl	# t[3], tmp245
# write-int.c:23:    while (sum);
	test	eax, eax	# tmp234
	je	.L2	#,
# write-int.c:16:       digit = sum % 10;
	movsx	rdx, eax	# sum, tmp234
	mov	ecx, eax	# tmp256, tmp234
	imul	rdx, rdx, 1717986919	# tmp253, sum,
	sar	ecx, 31	# tmp256,
	sar	rdx, 34	# tmp255,
	sub	edx, ecx	# tmp251, tmp256
	lea	ecx, [rdx+rdx*4]	# tmp259,
	add	ecx, ecx	# tmp260
	sub	eax, ecx	# digit, tmp260
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	eax, 48	# tmp262,
	mov	BYTE PTR 7[rsp], al	# t[2], tmp262
# write-int.c:23:    while (sum);
	test	edx, edx	# tmp251
	je	.L2	#,
# write-int.c:16:       digit = sum % 10;
	movsx	rax, edx	# sum, tmp251
	mov	ecx, edx	# tmp273, tmp251
	imul	rax, rax, 1717986919	# tmp270, sum,
	sar	ecx, 31	# tmp273,
	sar	rax, 34	# tmp272,
	sub	eax, ecx	# tmp268, tmp273
	lea	ecx, [rax+rax*4]	# tmp276,
	add	ecx, ecx	# tmp277
	sub	edx, ecx	# digit, tmp277
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	edx, 48	# tmp279,
	mov	BYTE PTR 6[rsp], dl	# t[1], tmp279
# write-int.c:23:    while (sum);
	test	eax, eax	# tmp268
	je	.L2	#,
# write-int.c:18:       t[9-pos] = '0' + digit;
	add	eax, 48	# tmp285,
	mov	BYTE PTR 5[rsp], al	# t[0], tmp285
.L2:

# write-int.c:25:    syscall(SYS_write, 1, t, 11);
#	lea	rdx, 5[rsp]	# tmp286,
#	mov	ecx, 11	#,
#	mov	esi, 1	#,
#	xor	eax, eax	#
#	mov	edi, 1	#,
  mov rax, 1
  mov rdi, 1
  lea rsi, 5[rsp]
  mov rdx, 11
  syscall
#call	syscall@PLT	#
# write-int.c:26: }
	add	rsp, 24	#,
	ret	
	.size	write_int, .-write_int
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
