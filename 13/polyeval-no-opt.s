	.file	"polyeval.cpp"
# GNU C++14 (GCC) version 9.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.21-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE polyeval.cpp -mtune=generic -march=x86-64
# -auxbase-strip polyeval-slow.s -O0 -fverbose-asm
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexceptions -ffp-int-builtin-inexact
# -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fident
# -finline-atomics -fipa-stack-alignment -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstack-protector-strong
# -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB379:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# D.11745, D.11745
	movq	%rsi, -16(%rbp)	# __p, __p
# /usr/include/c++/9.3/new:174: { return __p; }
	movq	-16(%rbp), %rax	# __p, _2
# /usr/include/c++/9.3/new:174: { return __p; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE379:
	.size	_ZnwmPv, .-_ZnwmPv
	.text
	.globl	_Z9poly_evalRKSt6vectorIiSaIiEEi
	.type	_Z9poly_evalRKSt6vectorIiSaIiEEi, @function
_Z9poly_evalRKSt6vectorIiSaIiEEi:
.LFB868:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# x, x
# polyeval.cpp:9: 	int sum=0; /* storage for result */
	movl	$0, -16(%rbp)	#, sum
# polyeval.cpp:10: 	int xi = 1; /* store x^i */
	movl	$1, -12(%rbp)	#, xi
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	movq	$0, -8(%rbp)	#, i
.L5:
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	movq	-24(%rbp), %rax	# a, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNKSt6vectorIiSaIiEE4sizeEv	#
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	cmpq	%rax, -8(%rbp)	# _1, i
	setb	%al	#, retval.0_14
	testb	%al, %al	# retval.0_14
	je	.L4	#,
# polyeval.cpp:12: 		sum += a[i]*xi;
	movq	-8(%rbp), %rdx	# i, tmp90
	movq	-24(%rbp), %rax	# a, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	_ZNKSt6vectorIiSaIiEEixEm	#
# polyeval.cpp:12: 		sum += a[i]*xi;
	movl	(%rax), %eax	# *_2, _3
	imull	-12(%rbp), %eax	# xi, _17
# polyeval.cpp:12: 		sum += a[i]*xi;
	addl	%eax, -16(%rbp)	# _17, sum
# polyeval.cpp:13: 		xi *= x;
	movl	-12(%rbp), %eax	# xi, tmp93
	imull	-28(%rbp), %eax	# x, tmp92
	movl	%eax, -12(%rbp)	# tmp92, xi
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	addq	$1, -8(%rbp)	#, i
	jmp	.L5	#
.L4:
# polyeval.cpp:19: 	return sum;
	movl	-16(%rbp), %eax	# sum, _15
# polyeval.cpp:20: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE868:
	.size	_Z9poly_evalRKSt6vectorIiSaIiEEi, .-_Z9poly_evalRKSt6vectorIiSaIiEEi
	.globl	_Z10poly_eval2RKSt6vectorIiSaIiEEi
	.type	_Z10poly_eval2RKSt6vectorIiSaIiEEi, @function
_Z10poly_eval2RKSt6vectorIiSaIiEEi:
.LFB869:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# a, a
	movl	%esi, -44(%rbp)	# x, x
# polyeval.cpp:30: 	int result=0;
	movl	$0, -28(%rbp)	#, result
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	movq	-40(%rbp), %rax	# a, tmp88
	movq	%rax, %rdi	# tmp88,
	call	_ZNKSt6vectorIiSaIiEE4sizeEv	#
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	subq	$1, %rax	#, tmp89
	movq	%rax, -24(%rbp)	# tmp89, i
.L9:
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	cmpq	$-1, -24(%rbp)	#, i
	je	.L8	#,
# polyeval.cpp:33: 		result = result*x + a[i];
	movl	-28(%rbp), %eax	# result, tmp90
	imull	-44(%rbp), %eax	# x, tmp90
	movl	%eax, %ebx	# tmp90, _2
# polyeval.cpp:33: 		result = result*x + a[i];
	movq	-24(%rbp), %rdx	# i, tmp91
	movq	-40(%rbp), %rax	# a, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	_ZNKSt6vectorIiSaIiEEixEm	#
# polyeval.cpp:33: 		result = result*x + a[i];
	movl	(%rax), %eax	# *_3, _4
# polyeval.cpp:33: 		result = result*x + a[i];
	addl	%ebx, %eax	# _2, tmp93
	movl	%eax, -28(%rbp)	# tmp93, result
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	subq	$1, -24(%rbp)	#, i
	jmp	.L9	#
.L8:
# polyeval.cpp:35: 	return result;
	movl	-28(%rbp), %eax	# result, _17
# polyeval.cpp:36: }
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE869:
	.size	_Z10poly_eval2RKSt6vectorIiSaIiEEi, .-_Z10poly_eval2RKSt6vectorIiSaIiEEi
	.globl	_Z7randVecRSt6vectorIiSaIiEEm
	.type	_Z7randVecRSt6vectorIiSaIiEEm, @function
_Z7randVecRSt6vectorIiSaIiEEm:
.LFB870:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# V, V
	movq	%rsi, -48(%rbp)	# n, n
# polyeval.cpp:40: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	movq	%rax, -8(%rbp)	# tmp88, D.19756
	xorl	%eax, %eax	# tmp88
# polyeval.cpp:41: 	srand48(time(0));
	movl	$0, %edi	#,
	call	time@PLT	#
	movq	%rax, %rdi	# _1,
	call	srand48@PLT	#
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	movq	$0, -16(%rbp)	#, i
.L13:
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	movq	-16(%rbp), %rax	# i, tmp85
	cmpq	-48(%rbp), %rax	# n, tmp85
	jnb	.L15	#,
# polyeval.cpp:43: 		V.push_back(lrand48());
	call	lrand48@PLT	#
# polyeval.cpp:43: 		V.push_back(lrand48());
	movl	%eax, -20(%rbp)	# _3, D.18378
	leaq	-20(%rbp), %rdx	#, tmp86
	movq	-40(%rbp), %rax	# V, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	_ZNSt6vectorIiSaIiEE9push_backEOi	#
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	addq	$1, -16(%rbp)	#, i
	jmp	.L13	#
.L15:
# polyeval.cpp:45: }
	nop	
	movq	-8(%rbp), %rax	# D.19756, tmp89
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp89
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE870:
	.size	_Z7randVecRSt6vectorIiSaIiEEm, .-_Z7randVecRSt6vectorIiSaIiEEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev:
.LFB875:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:125:       struct _Vector_impl
	movq	-8(%rbp), %rax	# this, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZNSaIiED2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE875:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEEC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEEC2Ev:
.LFB877:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:285:       _Vector_base() = default;
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE877:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2Ev, .-_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEEC1Ev,_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.section	.text._ZNSt6vectorIiSaIiEEC2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEEC2Ev
	.type	_ZNSt6vectorIiSaIiEEC2Ev, @function
_ZNSt6vectorIiSaIiEEC2Ev:
.LFB879:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:484:       vector() = default;
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseIiSaIiEEC2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE879:
	.size	_ZNSt6vectorIiSaIiEEC2Ev, .-_ZNSt6vectorIiSaIiEEC2Ev
	.weak	_ZNSt6vectorIiSaIiEEC1Ev
	.set	_ZNSt6vectorIiSaIiEEC1Ev,_ZNSt6vectorIiSaIiEEC2Ev
	.section	.rodata
	.align 8
.LC1:
	.string	"Normal computed f(%i)=%i in %f sec.\n"
	.align 8
.LC2:
	.string	"Horner computed f(%i)=%i in %f sec.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB871:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA871
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
# polyeval.cpp:48: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	movq	%rax, -24(%rbp)	# tmp117, D.19759
	xorl	%eax, %eax	# tmp117
# polyeval.cpp:50: 	vector<int> f;
	leaq	-48(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNSt6vectorIiSaIiEEC1Ev	#
# polyeval.cpp:52: 	randVec(f,1<<24);
	leaq	-48(%rbp), %rax	#, tmp90
	movl	$16777216, %esi	#,
	movq	%rax, %rdi	# tmp90,
.LEHB0:
	call	_Z7randVecRSt6vectorIiSaIiEEm	#
# polyeval.cpp:53: 	int x = 519; /* test input */
	movl	$519, -80(%rbp)	#, x
# polyeval.cpp:58: 	s = clock();
	call	clock@PLT	#
	movq	%rax, -72(%rbp)	# tmp91, s
# polyeval.cpp:59: 	y = poly_eval(f,x);
	movl	-80(%rbp), %edx	# x, tmp92
	leaq	-48(%rbp), %rax	#, tmp93
	movl	%edx, %esi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	_Z9poly_evalRKSt6vectorIiSaIiEEi	#
	movl	%eax, -76(%rbp)	# tmp94, y
# polyeval.cpp:60: 	e = clock();
	call	clock@PLT	#
	movq	%rax, -64(%rbp)	# tmp95, e
# polyeval.cpp:61: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	movq	-64(%rbp), %rax	# e, tmp96
	subq	-72(%rbp), %rax	# s, _1
# polyeval.cpp:61: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	cvtsi2sdq	%rax, %xmm0	# _1, _2
# polyeval.cpp:61: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	movsd	.LC0(%rip), %xmm1	#, tmp98
	divsd	%xmm1, %xmm0	# tmp98, tmp97
	movsd	%xmm0, -56(%rbp)	# tmp97, d
# polyeval.cpp:62: 	printf("Normal computed f(%i)=%i in %f sec.\n",x,y,d);
	movq	-56(%rbp), %rcx	# d, tmp99
	movl	-76(%rbp), %edx	# y, tmp100
	movl	-80(%rbp), %eax	# x, tmp101
	movq	%rcx, %xmm0	# tmp99,
	movl	%eax, %esi	# tmp101,
	leaq	.LC1(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# polyeval.cpp:64: 	s = clock();
	call	clock@PLT	#
	movq	%rax, -72(%rbp)	# tmp102, s
# polyeval.cpp:65: 	y = poly_eval2(f,x);
	movl	-80(%rbp), %edx	# x, tmp103
	leaq	-48(%rbp), %rax	#, tmp104
	movl	%edx, %esi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	_Z10poly_eval2RKSt6vectorIiSaIiEEi	#
	movl	%eax, -76(%rbp)	# tmp105, y
# polyeval.cpp:66: 	e = clock();
	call	clock@PLT	#
	movq	%rax, -64(%rbp)	# tmp106, e
# polyeval.cpp:67: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	movq	-64(%rbp), %rax	# e, tmp107
	subq	-72(%rbp), %rax	# s, _3
# polyeval.cpp:67: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	cvtsi2sdq	%rax, %xmm0	# _3, _4
# polyeval.cpp:67: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	movsd	.LC0(%rip), %xmm1	#, tmp109
	divsd	%xmm1, %xmm0	# tmp109, tmp108
	movsd	%xmm0, -56(%rbp)	# tmp108, d
# polyeval.cpp:68: 	printf("Horner computed f(%i)=%i in %f sec.\n",x,y,d);
	movq	-56(%rbp), %rcx	# d, tmp110
	movl	-76(%rbp), %edx	# y, tmp111
	movl	-80(%rbp), %eax	# x, tmp112
	movq	%rcx, %xmm0	# tmp110,
	movl	%eax, %esi	# tmp112,
	leaq	.LC2(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
.LEHE0:
# polyeval.cpp:70: 	return 0;
	movl	$0, %ebx	#, _26
# polyeval.cpp:50: 	vector<int> f;
	leaq	-48(%rbp), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	_ZNSt6vectorIiSaIiEED1Ev	#
	movl	%ebx, %eax	# _26, <retval>
# polyeval.cpp:71: }
	movq	-24(%rbp), %rcx	# D.19759, tmp118
	xorq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	je	.L22	#,
	jmp	.L24	#
.L23:
	movq	%rax, %rbx	#, tmp116
# polyeval.cpp:50: 	vector<int> f;
	leaq	-48(%rbp), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNSt6vectorIiSaIiEED1Ev	#
	movq	%rbx, %rax	# tmp116, D.19758
	movq	%rax, %rdi	# D.19758,
.LEHB1:
	call	_Unwind_Resume@PLT	#
.LEHE1:
.L24:
# polyeval.cpp:71: }
	call	__stack_chk_fail@PLT	#
.L22:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE871:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA871:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE871-.LLSDACSB871
.LLSDACSB871:
	.uleb128 .LEHB0-.LFB871
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L23-.LFB871
	.uleb128 0
	.uleb128 .LEHB1-.LFB871
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE871:
	.text
	.size	main, .-main
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv, @function
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB883:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	-8(%rbp), %rax	# this, tmp88
	movq	8(%rax), %rdx	# this_6(D)->D.18360._M_impl.D.17662._M_finish, _1
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	-8(%rbp), %rax	# this, tmp89
	movq	(%rax), %rax	# this_6(D)->D.18360._M_impl.D.17662._M_start, _2
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	subq	%rax, %rdx	# _2, _1
	movq	%rdx, %rax	# _1, _3
	sarq	$2, %rax	#, tmp90
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE883:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .-_ZNKSt6vectorIiSaIiEE4sizeEv
	.section	.text._ZNKSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNKSt6vectorIiSaIiEEixEm,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEEixEm
	.type	_ZNKSt6vectorIiSaIiEEixEm, @function
_ZNKSt6vectorIiSaIiEEixEm:
.LFB884:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __n, __n
# /usr/include/c++/9.3/bits/stl_vector.h:1061: 	return *(this->_M_impl._M_start + __n);
	movq	-8(%rbp), %rax	# this, tmp86
	movq	(%rax), %rax	# this_4(D)->D.18360._M_impl.D.17662._M_start, _1
# /usr/include/c++/9.3/bits/stl_vector.h:1061: 	return *(this->_M_impl._M_start + __n);
	movq	-16(%rbp), %rdx	# __n, tmp87
	salq	$2, %rdx	#, _2
# /usr/include/c++/9.3/bits/stl_vector.h:1061: 	return *(this->_M_impl._M_start + __n);
	addq	%rdx, %rax	# _2, _6
# /usr/include/c++/9.3/bits/stl_vector.h:1062:       }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE884:
	.size	_ZNKSt6vectorIiSaIiEEixEm, .-_ZNKSt6vectorIiSaIiEEixEm
	.section	.text._ZNSt6vectorIiSaIiEE9push_backEOi,"axG",@progbits,_ZNSt6vectorIiSaIiEE9push_backEOi,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE9push_backEOi
	.type	_ZNSt6vectorIiSaIiEE9push_backEOi, @function
_ZNSt6vectorIiSaIiEE9push_backEOi:
.LFB885:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __x, __x
# /usr/include/c++/9.3/bits/stl_vector.h:1201:       { emplace_back(std::move(__x)); }
	movq	-16(%rbp), %rax	# __x, tmp83
	movq	%rax, %rdi	# tmp83,
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_	#
	movq	%rax, %rdx	#, _1
# /usr/include/c++/9.3/bits/stl_vector.h:1201:       { emplace_back(std::move(__x)); }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp84,
	call	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_	#
# /usr/include/c++/9.3/bits/stl_vector.h:1201:       { emplace_back(std::move(__x)); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE885:
	.size	_ZNSt6vectorIiSaIiEE9push_backEOi, .-_ZNSt6vectorIiSaIiEE9push_backEOi
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev:
.LFB887:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:130: 	: _Tp_alloc_type()
	movq	-8(%rbp), %rax	# this, tmp83
	movq	%rax, %rdi	# tmp83,
	call	_ZNSaIiEC2Ev	#
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev	#
# /usr/include/c++/9.3/bits/stl_vector.h:131: 	{ }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE887:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.section	.text._ZNSaIiED2Ev,"axG",@progbits,_ZNSaIiED5Ev,comdat
	.align 2
	.weak	_ZNSaIiED2Ev
	.type	_ZNSaIiED2Ev, @function
_ZNSaIiED2Ev:
.LFB890:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/allocator.h:153:       ~allocator() _GLIBCXX_NOTHROW { }
	movq	-8(%rbp), %rax	# this, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZN9__gnu_cxx13new_allocatorIiED2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE890:
	.size	_ZNSaIiED2Ev, .-_ZNSaIiED2Ev
	.weak	_ZNSaIiED1Ev
	.set	_ZNSaIiED1Ev,_ZNSaIiED2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev, @function
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB893:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA893
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:333: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-8(%rbp), %rax	# this, tmp89
	movq	16(%rax), %rdx	# this_9(D)->_M_impl.D.17662._M_end_of_storage, _1
# /usr/include/c++/9.3/bits/stl_vector.h:333: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-8(%rbp), %rax	# this, tmp90
	movq	(%rax), %rax	# this_9(D)->_M_impl.D.17662._M_start, _2
# /usr/include/c++/9.3/bits/stl_vector.h:333: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rax, %rdx	# _2, _1
	movq	%rdx, %rax	# _1, _3
	sarq	$2, %rax	#, tmp91
# /usr/include/c++/9.3/bits/stl_vector.h:332: 	_M_deallocate(_M_impl._M_start,
	movq	%rax, %rdx	# _4, _5
	movq	-8(%rbp), %rax	# this, tmp92
	movq	(%rax), %rcx	# this_9(D)->_M_impl.D.17662._M_start, _6
	movq	-8(%rbp), %rax	# this, tmp93
	movq	%rcx, %rsi	# _6,
	movq	%rax, %rdi	# tmp93,
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim	#
# /usr/include/c++/9.3/bits/stl_vector.h:334:       }
	movq	-8(%rbp), %rax	# this, _7
	movq	%rax, %rdi	# _7,
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE893:
	.section	.gcc_except_table
.LLSDA893:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE893-.LLSDACSB893
.LLSDACSB893:
.LLSDACSE893:
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEED1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEED1Ev,_ZNSt12_Vector_baseIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, @function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB896:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA896
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:678: 		      _M_get_Tp_allocator());
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rdx	#, _2
# /usr/include/c++/9.3/bits/stl_vector.h:677: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-8(%rbp), %rax	# this, tmp87
	movq	8(%rax), %rcx	# this_6(D)->D.18360._M_impl.D.17662._M_finish, _3
	movq	-8(%rbp), %rax	# this, tmp88
	movq	(%rax), %rax	# this_6(D)->D.18360._M_impl.D.17662._M_start, _4
	movq	%rcx, %rsi	# _3,
	movq	%rax, %rdi	# _4,
	call	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E	#
# /usr/include/c++/9.3/bits/stl_vector.h:680:       }
	movq	-8(%rbp), %rax	# this, _5
	movq	%rax, %rdi	# _5,
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev	#
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE896:
	.section	.gcc_except_table
.LLSDA896:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE896-.LLSDACSB896
.LLSDACSB896:
.LLSDACSE896:
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.size	_ZNSt6vectorIiSaIiEED2Ev, .-_ZNSt6vectorIiSaIiEED2Ev
	.weak	_ZNSt6vectorIiSaIiEED1Ev
	.set	_ZNSt6vectorIiSaIiEED1Ev,_ZNSt6vectorIiSaIiEED2Ev
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB898:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __t, __t
# /usr/include/c++/9.3/bits/move.h:100:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	movq	-8(%rbp), %rax	# __t, _2
# /usr/include/c++/9.3/bits/move.h:100:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE898:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_
	.type	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_, @function
_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_:
.LFB899:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __args#0, __args#0
# /usr/include/c++/9.3/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-24(%rbp), %rax	# this, tmp91
	movq	8(%rax), %rdx	# this_11(D)->D.18360._M_impl.D.17662._M_finish, _1
# /usr/include/c++/9.3/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-24(%rbp), %rax	# this, tmp92
	movq	16(%rax), %rax	# this_11(D)->D.18360._M_impl.D.17662._M_end_of_storage, _2
# /usr/include/c++/9.3/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rax, %rdx	# _2, _1
	je	.L37	#,
# /usr/include/c++/9.3/bits/vector.tcc:115: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	-32(%rbp), %rax	# __args#0, tmp93
	movq	%rax, %rdi	# tmp93,
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE	#
	movq	%rax, %rdx	#, _3
	movq	-24(%rbp), %rax	# this, tmp94
	movq	8(%rax), %rcx	# this_11(D)->D.18360._M_impl.D.17662._M_finish, _4
# /usr/include/c++/9.3/bits/vector.tcc:115: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	-24(%rbp), %rax	# this, _5
# /usr/include/c++/9.3/bits/vector.tcc:115: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	movq	%rcx, %rsi	# _4,
	movq	%rax, %rdi	# _5,
	call	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_	#
# /usr/include/c++/9.3/bits/vector.tcc:117: 	    ++this->_M_impl._M_finish;
	movq	-24(%rbp), %rax	# this, tmp95
	movq	8(%rax), %rax	# this_11(D)->D.18360._M_impl.D.17662._M_finish, _6
# /usr/include/c++/9.3/bits/vector.tcc:117: 	    ++this->_M_impl._M_finish;
	leaq	4(%rax), %rdx	#, _7
	movq	-24(%rbp), %rax	# this, tmp96
	movq	%rdx, 8(%rax)	# _7, this_11(D)->D.18360._M_impl.D.17662._M_finish
# /usr/include/c++/9.3/bits/vector.tcc:125:       }
	jmp	.L39	#
.L37:
# /usr/include/c++/9.3/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	movq	-32(%rbp), %rax	# __args#0, tmp97
	movq	%rax, %rdi	# tmp97,
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE	#
	movq	%rax, %rbx	#, _8
	movq	-24(%rbp), %rax	# this, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZNSt6vectorIiSaIiEE3endEv	#
	movq	%rax, %rcx	#, D.19533
	movq	-24(%rbp), %rax	# this, tmp99
	movq	%rbx, %rdx	# _8,
	movq	%rcx, %rsi	# D.19533,
	movq	%rax, %rdi	# tmp99,
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_	#
.L39:
# /usr/include/c++/9.3/bits/vector.tcc:125:       }
	nop	
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE899:
	.size	_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_, .-_ZNSt6vectorIiSaIiEE12emplace_backIJiEEEvDpOT_
	.section	.text._ZNSaIiEC2Ev,"axG",@progbits,_ZNSaIiEC5Ev,comdat
	.align 2
	.weak	_ZNSaIiEC2Ev
	.type	_ZNSaIiEC2Ev, @function
_ZNSaIiEC2Ev:
.LFB901:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/allocator.h:138:       allocator() _GLIBCXX_NOTHROW { }
	movq	-8(%rbp), %rax	# this, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZN9__gnu_cxx13new_allocatorIiEC2Ev	#
# /usr/include/c++/9.3/bits/allocator.h:138:       allocator() _GLIBCXX_NOTHROW { }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE901:
	.size	_ZNSaIiEC2Ev, .-_ZNSaIiEC2Ev
	.weak	_ZNSaIiEC1Ev
	.set	_ZNSaIiEC1Ev,_ZNSaIiEC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB904:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:95: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	-8(%rbp), %rax	# this, tmp82
	movq	$0, (%rax)	#, this_2(D)->_M_start
	movq	-8(%rbp), %rax	# this, tmp83
	movq	$0, 8(%rax)	#, this_2(D)->_M_finish
	movq	-8(%rbp), %rax	# this, tmp84
	movq	$0, 16(%rax)	#, this_2(D)->_M_end_of_storage
# /usr/include/c++/9.3/bits/stl_vector.h:96: 	{ }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE904:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIiED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIiED2Ev:
.LFB907:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/ext/new_allocator.h:89:       ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE907:
	.size	_ZN9__gnu_cxx13new_allocatorIiED2Ev, .-_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIiED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIiED1Ev,_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, @function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
.LFB909:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __p, __p
	movq	%rdx, -24(%rbp)	# __n, __n
# /usr/include/c++/9.3/bits/stl_vector.h:350: 	if (__p)
	cmpq	$0, -16(%rbp)	#, __p
	je	.L45	#,
# /usr/include/c++/9.3/bits/stl_vector.h:351: 	  _Tr::deallocate(_M_impl, __p, __n);
	movq	-8(%rbp), %rax	# this, _1
# /usr/include/c++/9.3/bits/stl_vector.h:351: 	  _Tr::deallocate(_M_impl, __p, __n);
	movq	-24(%rbp), %rdx	# __n, tmp83
	movq	-16(%rbp), %rcx	# __p, tmp84
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# _1,
	call	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim	#
.L45:
# /usr/include/c++/9.3/bits/stl_vector.h:352:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE909:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB910:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:274:       { return this->_M_impl; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include/c++/9.3/bits/stl_vector.h:274:       { return this->_M_impl; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE910:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E:
.LFB911:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
	movq	%rdx, -24(%rbp)	# D.18458, D.18458
# /usr/include/c++/9.3/bits/stl_construct.h:206:       _Destroy(__first, __last);
	movq	-16(%rbp), %rdx	# __last, tmp82
	movq	-8(%rbp), %rax	# __first, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	_ZSt8_DestroyIPiEvT_S1_	#
# /usr/include/c++/9.3/bits/stl_construct.h:207:     }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE911:
	.size	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB912:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __t, __t
# /usr/include/c++/9.3/bits/move.h:75:     { return static_cast<_Tp&&>(__t); }
	movq	-8(%rbp), %rax	# __t, _2
# /usr/include/c++/9.3/bits/move.h:75:     { return static_cast<_Tp&&>(__t); }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE912:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_:
.LFB913:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __p, __p
	movq	%rdx, -24(%rbp)	# __args#0, __args#0
# /usr/include/c++/9.3/bits/alloc_traits.h:484: 	{ __a.construct(__p, std::forward<_Args>(__args)...); }
	movq	-24(%rbp), %rax	# __args#0, tmp83
	movq	%rax, %rdi	# tmp83,
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE	#
	movq	%rax, %rdx	#, _1
	movq	-16(%rbp), %rcx	# __p, tmp84
	movq	-8(%rbp), %rax	# __a, tmp85
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_	#
# /usr/include/c++/9.3/bits/alloc_traits.h:484: 	{ __a.construct(__p, std::forward<_Args>(__args)...); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE913:
	.size	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_
	.section	.text._ZNSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE3endEv
	.type	_ZNSt6vectorIiSaIiEE3endEv, @function
_ZNSt6vectorIiSaIiEE3endEv:
.LFB914:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:826:       end() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	movq	%rax, -8(%rbp)	# tmp88, D.19762
	xorl	%eax, %eax	# tmp88
# /usr/include/c++/9.3/bits/stl_vector.h:827:       { return iterator(this->_M_impl._M_finish); }
	movq	-24(%rbp), %rax	# this, tmp85
	leaq	8(%rax), %rdx	#, _1
# /usr/include/c++/9.3/bits/stl_vector.h:827:       { return iterator(this->_M_impl._M_finish); }
	leaq	-16(%rbp), %rax	#, tmp86
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp86,
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_	#
	movq	-16(%rbp), %rax	# D.18707, D.19538
# /usr/include/c++/9.3/bits/stl_vector.h:827:       { return iterator(this->_M_impl._M_finish); }
	movq	-8(%rbp), %rcx	# D.19762, tmp89
	xorq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp89
	je	.L54	#,
	call	__stack_chk_fail@PLT	#
.L54:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE914:
	.size	_ZNSt6vectorIiSaIiEE3endEv, .-_ZNSt6vectorIiSaIiEE3endEv
	.section	.text._ZNSt6vectorIiSaIiEE15_S_use_relocateEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE15_S_use_relocateEv,comdat
	.weak	_ZNSt6vectorIiSaIiEE15_S_use_relocateEv
	.type	_ZNSt6vectorIiSaIiEE15_S_use_relocateEv, @function
_ZNSt6vectorIiSaIiEE15_S_use_relocateEv:
.LFB916:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# /usr/include/c++/9.3/bits/stl_vector.h:441:       _S_use_relocate()
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	movq	%rax, -8(%rbp)	# tmp88, D.19763
	xorl	%eax, %eax	# tmp88
# /usr/include/c++/9.3/bits/stl_vector.h:446: 	return _S_nothrow_relocate(__is_move_insertable<_Tp_alloc_type>{});
	call	_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE	#
# /usr/include/c++/9.3/bits/stl_vector.h:447:       }
	movq	-8(%rbp), %rdx	# D.19763, tmp89
	xorq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp89
	je	.L57	#,
	call	__stack_chk_fail@PLT	#
.L57:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE916:
	.size	_ZNSt6vectorIiSaIiEE15_S_use_relocateEv, .-_ZNSt6vectorIiSaIiEE15_S_use_relocateEv
	.section	.text._ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE
	.type	_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE, @function
_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE:
.LFB917:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# /usr/include/c++/9.3/bits/stl_vector.h:433: 					  std::declval<_Tp_alloc_type&>()));
	movl	$1, %eax	#, _1
# /usr/include/c++/9.3/bits/stl_vector.h:434:       }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE917:
	.size	_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE, .-_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE
	.section	.rodata
.LC3:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB915:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA915
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# this, this
	movq	%rsi, -96(%rbp)	# __position, __position
	movq	%rdx, -104(%rbp)	# __args#0, __args#0
# /usr/include/c++/9.3/bits/vector.tcc:426:       vector<_Tp, _Alloc>::
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp177
	movq	%rax, -24(%rbp)	# tmp177, D.19765
	xorl	%eax, %eax	# tmp177
# /usr/include/c++/9.3/bits/vector.tcc:435:       const size_type __len =
	movq	-88(%rbp), %rax	# this, tmp128
	leaq	.LC3(%rip), %rdx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp128,
.LEHB2:
	call	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc	#
	movq	%rax, -64(%rbp)	# _50, __len
# /usr/include/c++/9.3/bits/vector.tcc:437:       pointer __old_start = this->_M_impl._M_start;
	movq	-88(%rbp), %rax	# this, tmp129
	movq	(%rax), %rax	# this_48(D)->D.18360._M_impl.D.17662._M_start, tmp130
	movq	%rax, -56(%rbp)	# tmp130, __old_start
# /usr/include/c++/9.3/bits/vector.tcc:438:       pointer __old_finish = this->_M_impl._M_finish;
	movq	-88(%rbp), %rax	# this, tmp131
	movq	8(%rax), %rax	# this_48(D)->D.18360._M_impl.D.17662._M_finish, tmp132
	movq	%rax, -48(%rbp)	# tmp132, __old_finish
# /usr/include/c++/9.3/bits/vector.tcc:439:       const size_type __elems_before = __position - begin();
	movq	-88(%rbp), %rax	# this, tmp133
	movq	%rax, %rdi	# tmp133,
	call	_ZNSt6vectorIiSaIiEE5beginEv	#
	movq	%rax, -80(%rbp)	# tmp135, D.18713
	leaq	-80(%rbp), %rdx	#, tmp136
	leaq	-96(%rbp), %rax	#, tmp137
	movq	%rdx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_	#
# /usr/include/c++/9.3/bits/vector.tcc:439:       const size_type __elems_before = __position - begin();
	movq	%rax, -40(%rbp)	# _1, __elems_before
# /usr/include/c++/9.3/bits/vector.tcc:440:       pointer __new_start(this->_M_allocate(__len));
	movq	-88(%rbp), %rax	# this, _2
	movq	-64(%rbp), %rdx	# __len, tmp138
	movq	%rdx, %rsi	# tmp138,
	movq	%rax, %rdi	# _2,
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm	#
.LEHE2:
	movq	%rax, -32(%rbp)	# _59, __new_start
# /usr/include/c++/9.3/bits/vector.tcc:441:       pointer __new_finish(__new_start);
	movq	-32(%rbp), %rax	# __new_start, tmp139
	movq	%rax, -72(%rbp)	# tmp139, __new_finish
# /usr/include/c++/9.3/bits/vector.tcc:449: 	  _Alloc_traits::construct(this->_M_impl,
	movq	-104(%rbp), %rax	# __args#0, tmp140
	movq	%rax, %rdi	# tmp140,
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE	#
	movq	%rax, %rdx	#, _3
# /usr/include/c++/9.3/bits/vector.tcc:450: 				   __new_start + __elems_before,
	movq	-40(%rbp), %rax	# __elems_before, tmp141
	leaq	0(,%rax,4), %rcx	#, _4
# /usr/include/c++/9.3/bits/vector.tcc:449: 	  _Alloc_traits::construct(this->_M_impl,
	movq	-32(%rbp), %rax	# __new_start, tmp142
	addq	%rax, %rcx	# tmp142, _5
# /usr/include/c++/9.3/bits/vector.tcc:449: 	  _Alloc_traits::construct(this->_M_impl,
	movq	-88(%rbp), %rax	# this, _6
# /usr/include/c++/9.3/bits/vector.tcc:449: 	  _Alloc_traits::construct(this->_M_impl,
	movq	%rcx, %rsi	# _5,
	movq	%rax, %rdi	# _6,
	call	_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_	#
# /usr/include/c++/9.3/bits/vector.tcc:456: 	  __new_finish = pointer();
	movq	$0, -72(%rbp)	#, __new_finish
# /usr/include/c++/9.3/bits/vector.tcc:459: 	  if _GLIBCXX17_CONSTEXPR (_S_use_relocate())
	call	_ZNSt6vectorIiSaIiEE15_S_use_relocateEv	#
# /usr/include/c++/9.3/bits/vector.tcc:459: 	  if _GLIBCXX17_CONSTEXPR (_S_use_relocate())
	testb	%al, %al	# _67
	je	.L61	#,
# /usr/include/c++/9.3/bits/vector.tcc:462: 					 __new_start, _M_get_Tp_allocator());
	movq	-88(%rbp), %rax	# this, _7
	movq	%rax, %rdi	# _7,
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rbx	#, _8
# /usr/include/c++/9.3/bits/vector.tcc:461: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	leaq	-96(%rbp), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv	#
	movq	(%rax), %rsi	# *_9, _10
	movq	-32(%rbp), %rdx	# __new_start, tmp144
	movq	-56(%rbp), %rax	# __old_start, tmp145
	movq	%rbx, %rcx	# _8,
	movq	%rax, %rdi	# tmp145,
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_	#
	movq	%rax, -72(%rbp)	# tmp146, __new_finish
# /usr/include/c++/9.3/bits/vector.tcc:464: 	      ++__new_finish;
	addq	$4, -72(%rbp)	#, __new_finish
# /usr/include/c++/9.3/bits/vector.tcc:467: 					 __new_finish, _M_get_Tp_allocator());
	movq	-88(%rbp), %rax	# this, _11
	movq	%rax, %rdi	# _11,
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rbx	#, _12
# /usr/include/c++/9.3/bits/vector.tcc:466: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	leaq	-96(%rbp), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv	#
	movq	(%rax), %rax	# *_13, _14
	movq	-72(%rbp), %rdx	# __new_finish, tmp148
	movq	-48(%rbp), %rsi	# __old_finish, tmp149
	movq	%rbx, %rcx	# _12,
	movq	%rax, %rdi	# _14,
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_	#
	movq	%rax, -72(%rbp)	# tmp150, __new_finish
	jmp	.L62	#
.L61:
# /usr/include/c++/9.3/bits/vector.tcc:475: 		 __new_start, _M_get_Tp_allocator());
	movq	-88(%rbp), %rax	# this, _15
	movq	%rax, %rdi	# _15,
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rbx	#, _16
# /usr/include/c++/9.3/bits/vector.tcc:474: 		(__old_start, __position.base(),
	leaq	-96(%rbp), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv	#
	movq	(%rax), %rsi	# *_17, _18
	movq	-32(%rbp), %rdx	# __new_start, tmp152
	movq	-56(%rbp), %rax	# __old_start, tmp153
	movq	%rbx, %rcx	# _16,
	movq	%rax, %rdi	# tmp153,
.LEHB3:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_	#
	movq	%rax, -72(%rbp)	# _72, __new_finish
# /usr/include/c++/9.3/bits/vector.tcc:477: 	      ++__new_finish;
	addq	$4, -72(%rbp)	#, __new_finish
# /usr/include/c++/9.3/bits/vector.tcc:482: 		 __new_finish, _M_get_Tp_allocator());
	movq	-88(%rbp), %rax	# this, _19
	movq	%rax, %rdi	# _19,
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rbx	#, _20
# /usr/include/c++/9.3/bits/vector.tcc:481: 		(__position.base(), __old_finish,
	leaq	-96(%rbp), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv	#
	movq	(%rax), %rax	# *_21, _22
	movq	-72(%rbp), %rdx	# __new_finish, tmp155
	movq	-48(%rbp), %rsi	# __old_finish, tmp156
	movq	%rbx, %rcx	# _20,
	movq	%rax, %rdi	# _22,
	call	_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_	#
.LEHE3:
# /usr/include/c++/9.3/bits/vector.tcc:481: 		(__position.base(), __old_finish,
	movq	%rax, -72(%rbp)	# _78, __new_finish
.L62:
# /usr/include/c++/9.3/bits/vector.tcc:496:       if _GLIBCXX17_CONSTEXPR (!_S_use_relocate())
	call	_ZNSt6vectorIiSaIiEE15_S_use_relocateEv	#
# /usr/include/c++/9.3/bits/vector.tcc:496:       if _GLIBCXX17_CONSTEXPR (!_S_use_relocate())
	xorl	$1, %eax	#, retval.2_91
# /usr/include/c++/9.3/bits/vector.tcc:496:       if _GLIBCXX17_CONSTEXPR (!_S_use_relocate())
	testb	%al, %al	# retval.2_91
	je	.L63	#,
# /usr/include/c++/9.3/bits/vector.tcc:498: 	std::_Destroy(__old_start, __old_finish, _M_get_Tp_allocator());
	movq	-88(%rbp), %rax	# this, _31
	movq	%rax, %rdi	# _31,
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rdx	#, _32
# /usr/include/c++/9.3/bits/vector.tcc:498: 	std::_Destroy(__old_start, __old_finish, _M_get_Tp_allocator());
	movq	-48(%rbp), %rcx	# __old_finish, tmp157
	movq	-56(%rbp), %rax	# __old_start, tmp158
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
.LEHB4:
	call	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E	#
.L63:
# /usr/include/c++/9.3/bits/vector.tcc:500:       _M_deallocate(__old_start,
	movq	-88(%rbp), %rax	# this, _33
# /usr/include/c++/9.3/bits/vector.tcc:501: 		    this->_M_impl._M_end_of_storage - __old_start);
	movq	-88(%rbp), %rdx	# this, tmp159
	movq	16(%rdx), %rdx	# this_48(D)->D.18360._M_impl.D.17662._M_end_of_storage, _34
# /usr/include/c++/9.3/bits/vector.tcc:501: 		    this->_M_impl._M_end_of_storage - __old_start);
	subq	-56(%rbp), %rdx	# __old_start, _35
	sarq	$2, %rdx	#, tmp160
# /usr/include/c++/9.3/bits/vector.tcc:500:       _M_deallocate(__old_start,
	movq	-56(%rbp), %rcx	# __old_start, tmp161
	movq	%rcx, %rsi	# tmp161,
	movq	%rax, %rdi	# _33,
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim	#
.LEHE4:
# /usr/include/c++/9.3/bits/vector.tcc:502:       this->_M_impl._M_start = __new_start;
	movq	-88(%rbp), %rax	# this, tmp162
	movq	-32(%rbp), %rdx	# __new_start, tmp163
	movq	%rdx, (%rax)	# tmp163, this_48(D)->D.18360._M_impl.D.17662._M_start
# /usr/include/c++/9.3/bits/vector.tcc:503:       this->_M_impl._M_finish = __new_finish;
	movq	-88(%rbp), %rax	# this, tmp164
	movq	-72(%rbp), %rdx	# __new_finish, tmp165
	movq	%rdx, 8(%rax)	# tmp165, this_48(D)->D.18360._M_impl.D.17662._M_finish
# /usr/include/c++/9.3/bits/vector.tcc:504:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-64(%rbp), %rax	# __len, tmp166
	leaq	0(,%rax,4), %rdx	#, _38
	movq	-32(%rbp), %rax	# __new_start, tmp167
	addq	%rax, %rdx	# tmp167, _39
# /usr/include/c++/9.3/bits/vector.tcc:504:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	-88(%rbp), %rax	# this, tmp168
	movq	%rdx, 16(%rax)	# _39, this_48(D)->D.18360._M_impl.D.17662._M_end_of_storage
# /usr/include/c++/9.3/bits/vector.tcc:505:     }
	nop	
	movq	-24(%rbp), %rax	# D.19765, tmp178
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp178
	je	.L68	#,
	jmp	.L71	#
.L69:
# /usr/include/c++/9.3/bits/vector.tcc:485:       __catch(...)
	movq	%rax, %rdi	# _23,
	call	__cxa_begin_catch@PLT	#
# /usr/include/c++/9.3/bits/vector.tcc:487: 	  if (!__new_finish)
	cmpq	$0, -72(%rbp)	#, __new_finish
	jne	.L65	#,
# /usr/include/c++/9.3/bits/vector.tcc:489: 				   __new_start + __elems_before);
	movq	-40(%rbp), %rax	# __elems_before, tmp170
	leaq	0(,%rax,4), %rdx	#, _24
# /usr/include/c++/9.3/bits/vector.tcc:488: 	    _Alloc_traits::destroy(this->_M_impl,
	movq	-32(%rbp), %rax	# __new_start, tmp171
	addq	%rax, %rdx	# tmp171, _25
# /usr/include/c++/9.3/bits/vector.tcc:488: 	    _Alloc_traits::destroy(this->_M_impl,
	movq	-88(%rbp), %rax	# this, _26
# /usr/include/c++/9.3/bits/vector.tcc:488: 	    _Alloc_traits::destroy(this->_M_impl,
	movq	%rdx, %rsi	# _25,
	movq	%rax, %rdi	# _26,
	call	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_	#
	jmp	.L66	#
.L65:
# /usr/include/c++/9.3/bits/vector.tcc:491: 	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
	movq	-88(%rbp), %rax	# this, _27
	movq	%rax, %rdi	# _27,
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv	#
	movq	%rax, %rdx	#, _28
# /usr/include/c++/9.3/bits/vector.tcc:491: 	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
	movq	-72(%rbp), %rcx	# __new_finish, tmp172
	movq	-32(%rbp), %rax	# __new_start, tmp173
	movq	%rcx, %rsi	# tmp172,
	movq	%rax, %rdi	# tmp173,
.LEHB5:
	call	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E	#
.L66:
# /usr/include/c++/9.3/bits/vector.tcc:492: 	  _M_deallocate(__new_start, __len);
	movq	-88(%rbp), %rax	# this, _29
	movq	-64(%rbp), %rdx	# __len, tmp174
	movq	-32(%rbp), %rcx	# __new_start, tmp175
	movq	%rcx, %rsi	# tmp175,
	movq	%rax, %rdi	# _29,
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim	#
# /usr/include/c++/9.3/bits/vector.tcc:493: 	  __throw_exception_again;
	call	__cxa_rethrow@PLT	#
.LEHE5:
.L70:
	movq	%rax, %rbx	#, tmp176
# /usr/include/c++/9.3/bits/vector.tcc:485:       __catch(...)
	call	__cxa_end_catch@PLT	#
	movq	%rbx, %rax	# tmp176, D.19764
	movq	%rax, %rdi	# D.19764,
.LEHB6:
	call	_Unwind_Resume@PLT	#
.LEHE6:
.L71:
# /usr/include/c++/9.3/bits/vector.tcc:505:     }
	call	__stack_chk_fail@PLT	#
.L68:
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE915:
	.section	.gcc_except_table
	.align 4
.LLSDA915:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT915-.LLSDATTD915
.LLSDATTD915:
	.byte	0x1
	.uleb128 .LLSDACSE915-.LLSDACSB915
.LLSDACSB915:
	.uleb128 .LEHB2-.LFB915
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB915
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L69-.LFB915
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB915
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB915
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L70-.LFB915
	.uleb128 0
	.uleb128 .LEHB6-.LFB915
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE915:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT915:
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIiEC2Ev:
.LFB919:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/ext/new_allocator.h:80:       new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE919:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIiEC1Ev,_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.section	.text._ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.type	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, @function
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim:
.LFB921:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __p, __p
	movq	%rdx, -24(%rbp)	# __n, __n
# /usr/include/c++/9.3/bits/alloc_traits.h:470:       { __a.deallocate(__p, __n); }
	movq	-24(%rbp), %rdx	# __n, tmp82
	movq	-16(%rbp), %rcx	# __p, tmp83
	movq	-8(%rbp), %rax	# __a, tmp84
	movq	%rcx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim	#
# /usr/include/c++/9.3/bits/alloc_traits.h:470:       { __a.deallocate(__p, __n); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE921:
	.size	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, .-_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPiEvT_S1_
	.type	_ZSt8_DestroyIPiEvT_S1_, @function
_ZSt8_DestroyIPiEvT_S1_:
.LFB922:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
# /usr/include/c++/9.3/bits/stl_construct.h:137: 	__destroy(__first, __last);
	movq	-16(%rbp), %rdx	# __last, tmp82
	movq	-8(%rbp), %rax	# __first, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_	#
# /usr/include/c++/9.3/bits/stl_construct.h:138:     }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE922:
	.size	_ZSt8_DestroyIPiEvT_S1_, .-_ZSt8_DestroyIPiEvT_S1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_:
.LFB923:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __p, __p
	movq	%rdx, -40(%rbp)	# __args#0, __args#0
# /usr/include/c++/9.3/ext/new_allocator.h:147: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-40(%rbp), %rax	# __args#0, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE	#
# /usr/include/c++/9.3/ext/new_allocator.h:147: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movl	(%rax), %ebx	# *_1, _5
# /usr/include/c++/9.3/ext/new_allocator.h:147: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	-32(%rbp), %rax	# __p, _7
# /usr/include/c++/9.3/ext/new_allocator.h:147: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	movq	%rax, %rsi	# _7,
	movl	$4, %edi	#,
	call	_ZnwmPv	#
	movl	%ebx, (%rax)	# _5, MEM[(int *)_9]
# /usr/include/c++/9.3/ext/new_allocator.h:147: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE923:
	.size	_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_:
.LFB925:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __i, __i
# /usr/include/c++/9.3/bits/stl_iterator.h:807:       : _M_current(__i) { }
	movq	-16(%rbp), %rax	# __i, tmp83
	movq	(%rax), %rdx	# *__i_5(D), _1
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rdx, (%rax)	# _1, this_3(D)->_M_current
# /usr/include/c++/9.3/bits/stl_iterator.h:807:       : _M_current(__i) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE925:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.section	.text._ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc:
.LFB927:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# this, this
	movq	%rsi, -64(%rbp)	# __n, __n
	movq	%rdx, -72(%rbp)	# __s, __s
# /usr/include/c++/9.3/bits/stl_vector.h:1753:       _M_check_len(size_type __n, const char* __s) const
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -24(%rbp)	# tmp107, D.19767
	xorl	%eax, %eax	# tmp107
# /usr/include/c++/9.3/bits/stl_vector.h:1755: 	if (max_size() - size() < __n)
	movq	-56(%rbp), %rax	# this, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv	#
	movq	%rax, %rbx	#, _1
	movq	-56(%rbp), %rax	# this, tmp96
	movq	%rax, %rdi	# tmp96,
	call	_ZNKSt6vectorIiSaIiEE4sizeEv	#
	subq	%rax, %rbx	# _2, _1
	movq	%rbx, %rdx	# _1, _3
# /usr/include/c++/9.3/bits/stl_vector.h:1755: 	if (max_size() - size() < __n)
	movq	-64(%rbp), %rax	# __n, __n.4_4
	cmpq	%rax, %rdx	# __n.4_4, _3
	setb	%al	#, retval.3_18
# /usr/include/c++/9.3/bits/stl_vector.h:1755: 	if (max_size() - size() < __n)
	testb	%al, %al	# retval.3_18
	je	.L78	#,
# /usr/include/c++/9.3/bits/stl_vector.h:1756: 	  __throw_length_error(__N(__s));
	movq	-72(%rbp), %rax	# __s, tmp97
	movq	%rax, %rdi	# tmp97,
	call	_ZSt20__throw_length_errorPKc@PLT	#
.L78:
# /usr/include/c++/9.3/bits/stl_vector.h:1758: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	-56(%rbp), %rax	# this, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZNKSt6vectorIiSaIiEE4sizeEv	#
	movq	%rax, %rbx	#, _5
# /usr/include/c++/9.3/bits/stl_vector.h:1758: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	-56(%rbp), %rax	# this, tmp99
	movq	%rax, %rdi	# tmp99,
	call	_ZNKSt6vectorIiSaIiEE4sizeEv	#
	movq	%rax, -40(%rbp)	# _6, D.19171
	leaq	-64(%rbp), %rdx	#, tmp100
	leaq	-40(%rbp), %rax	#, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	_ZSt3maxImERKT_S2_S2_	#
# /usr/include/c++/9.3/bits/stl_vector.h:1758: 	const size_type __len = size() + (std::max)(size(), __n);
	movq	(%rax), %rax	# *_7, _8
# /usr/include/c++/9.3/bits/stl_vector.h:1758: 	const size_type __len = size() + (std::max)(size(), __n);
	addq	%rbx, %rax	# _5, tmp102
	movq	%rax, -32(%rbp)	# tmp102, __len
# /usr/include/c++/9.3/bits/stl_vector.h:1759: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZNKSt6vectorIiSaIiEE4sizeEv	#
# /usr/include/c++/9.3/bits/stl_vector.h:1759: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	%rax, -32(%rbp)	# _9, __len
	jb	.L79	#,
# /usr/include/c++/9.3/bits/stl_vector.h:1759: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv	#
# /usr/include/c++/9.3/bits/stl_vector.h:1759: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	%rax, -32(%rbp)	# _10, __len
	jbe	.L80	#,
.L79:
# /usr/include/c++/9.3/bits/stl_vector.h:1759: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-56(%rbp), %rax	# this, tmp105
	movq	%rax, %rdi	# tmp105,
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv	#
	jmp	.L81	#
.L80:
# /usr/include/c++/9.3/bits/stl_vector.h:1759: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	movq	-32(%rbp), %rax	# __len, iftmp.5_11
.L81:
# /usr/include/c++/9.3/bits/stl_vector.h:1760:       }
	movq	-24(%rbp), %rcx	# D.19767, tmp108
	xorq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	je	.L83	#,
# /usr/include/c++/9.3/bits/stl_vector.h:1760:       }
	call	__stack_chk_fail@PLT	#
.L83:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE927:
	.size	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE5beginEv
	.type	_ZNSt6vectorIiSaIiEE5beginEv, @function
_ZNSt6vectorIiSaIiEE5beginEv:
.LFB928:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:808:       begin() _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp87
	movq	%rax, -8(%rbp)	# tmp87, D.19768
	xorl	%eax, %eax	# tmp87
# /usr/include/c++/9.3/bits/stl_vector.h:809:       { return iterator(this->_M_impl._M_start); }
	movq	-24(%rbp), %rdx	# this, _1
# /usr/include/c++/9.3/bits/stl_vector.h:809:       { return iterator(this->_M_impl._M_start); }
	leaq	-16(%rbp), %rax	#, tmp85
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp85,
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_	#
	movq	-16(%rbp), %rax	# D.19173, D.19590
# /usr/include/c++/9.3/bits/stl_vector.h:809:       { return iterator(this->_M_impl._M_start); }
	movq	-8(%rbp), %rcx	# D.19768, tmp88
	xorq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	je	.L86	#,
	call	__stack_chk_fail@PLT	#
.L86:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE928:
	.size	_ZNSt6vectorIiSaIiEE5beginEv, .-_ZNSt6vectorIiSaIiEE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, @function
_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB929:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# __lhs, __lhs
	movq	%rsi, -32(%rbp)	# __rhs, __rhs
# /usr/include/c++/9.3/bits/stl_iterator.h:992:     { return __lhs.base() - __rhs.base(); }
	movq	-24(%rbp), %rax	# __lhs, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv	#
	movq	(%rax), %rbx	# *_1, _2
	movq	-32(%rbp), %rax	# __rhs, tmp90
	movq	%rax, %rdi	# tmp90,
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv	#
	movq	(%rax), %rax	# *_3, _4
	subq	%rax, %rbx	# _4, _2
	movq	%rbx, %rax	# _2, _5
# /usr/include/c++/9.3/bits/stl_iterator.h:992:     { return __lhs.base() - __rhs.base(); }
	sarq	$2, %rax	#, tmp91
# /usr/include/c++/9.3/bits/stl_iterator.h:992:     { return __lhs.base() - __rhs.base(); }
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE929:
	.size	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm:
.LFB930:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __n, __n
# /usr/include/c++/9.3/bits/stl_vector.h:343: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cmpq	$0, -16(%rbp)	#, __n
	je	.L90	#,
# /usr/include/c++/9.3/bits/stl_vector.h:343: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	-8(%rbp), %rax	# this, _1
# /usr/include/c++/9.3/bits/stl_vector.h:343: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	-16(%rbp), %rdx	# __n, tmp85
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# _1,
	call	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m	#
# /usr/include/c++/9.3/bits/stl_vector.h:343: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	jmp	.L92	#
.L90:
# /usr/include/c++/9.3/bits/stl_vector.h:343: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movl	$0, %eax	#, _9
.L92:
# /usr/include/c++/9.3/bits/stl_vector.h:344:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE930:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.section	.text._ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, @function
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_:
.LFB931:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
	movq	%rcx, -48(%rbp)	# __alloc, __alloc
# /usr/include/c++/9.3/bits/stl_vector.h:462:       _S_relocate(pointer __first, pointer __last, pointer __result,
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp90
	movq	%rax, -8(%rbp)	# tmp90, D.19769
	xorl	%eax, %eax	# tmp90
# /usr/include/c++/9.3/bits/stl_vector.h:466: 	return _S_do_relocate(__first, __last, __result, __alloc, __do_it{});
	movq	-48(%rbp), %rcx	# __alloc, tmp85
	movq	-40(%rbp), %rdx	# __result, tmp86
	movq	-32(%rbp), %rsi	# __last, tmp87
	movq	-24(%rbp), %rax	# __first, tmp88
	movq	%rax, %rdi	# tmp88,
	call	_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE	#
# /usr/include/c++/9.3/bits/stl_vector.h:467:       }
	movq	-8(%rbp), %rdi	# D.19769, tmp91
	xorq	%fs:40, %rdi	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	je	.L95	#,
	call	__stack_chk_fail@PLT	#
.L95:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE931:
	.size	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, .-_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv:
.LFB932:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_iterator.h:872:       { return _M_current; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include/c++/9.3/bits/stl_iterator.h:872:       { return _M_current; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE932:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_:
.LFB933:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
	movq	%rcx, -48(%rbp)	# __alloc, __alloc
# /usr/include/c++/9.3/bits/stl_uninitialized.h:329: 	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
	movq	-32(%rbp), %rax	# __last, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_	#
	movq	%rax, %rbx	#, D.19629
	movq	-24(%rbp), %rax	# __first, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_	#
	movq	%rax, %rdi	#, D.19630
	movq	-48(%rbp), %rdx	# __alloc, tmp88
	movq	-40(%rbp), %rax	# __result, tmp89
	movq	%rdx, %rcx	# tmp88,
	movq	%rax, %rdx	# tmp89,
	movq	%rbx, %rsi	# D.19629,
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E	#
# /usr/include/c++/9.3/bits/stl_uninitialized.h:331:     }
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE933:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.section	.text._ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_, @function
_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_:
.LFB934:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __p, __p
# /usr/include/c++/9.3/bits/alloc_traits.h:497: 	{ __a.destroy(__p); }
	movq	-16(%rbp), %rdx	# __p, tmp82
	movq	-8(%rbp), %rax	# __a, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_	#
# /usr/include/c++/9.3/bits/alloc_traits.h:497: 	{ __a.destroy(__p); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE934:
	.size	_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.type	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, @function
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim:
.LFB935:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __p, __p
	movq	%rdx, -24(%rbp)	# D.17331, D.17331
# /usr/include/c++/9.3/ext/new_allocator.h:128: 	::operator delete(__p);
	movq	-16(%rbp), %rax	# __p, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZdlPv@PLT	#
# /usr/include/c++/9.3/ext/new_allocator.h:129:       }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE935:
	.size	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, .-_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB936:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# D.19157, D.19157
	movq	%rsi, -16(%rbp)	# D.19158, D.19158
# /usr/include/c++/9.3/bits/stl_construct.h:117:         __destroy(_ForwardIterator, _ForwardIterator) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE936:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.section	.text._ZNKSt6vectorIiSaIiEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.type	_ZNKSt6vectorIiSaIiEE8max_sizeEv, @function
_ZNKSt6vectorIiSaIiEE8max_sizeEv:
.LFB937:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:921:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	-8(%rbp), %rax	# this, _1
	movq	%rax, %rdi	# _1,
	call	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv	#
# /usr/include/c++/9.3/bits/stl_vector.h:921:       { return _S_max_size(_M_get_Tp_allocator()); }
	movq	%rax, %rdi	# _2,
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_	#
# /usr/include/c++/9.3/bits/stl_vector.h:921:       { return _S_max_size(_M_get_Tp_allocator()); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE937:
	.size	_ZNKSt6vectorIiSaIiEE8max_sizeEv, .-_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB938:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __b, __b
# /usr/include/c++/9.3/bits/stl_algobase.h:227:       if (__a < __b)
	movq	-8(%rbp), %rax	# __a, tmp86
	movq	(%rax), %rdx	# *__a_5(D), _1
	movq	-16(%rbp), %rax	# __b, tmp87
	movq	(%rax), %rax	# *__b_6(D), _2
# /usr/include/c++/9.3/bits/stl_algobase.h:227:       if (__a < __b)
	cmpq	%rax, %rdx	# _2, _1
	jnb	.L106	#,
# /usr/include/c++/9.3/bits/stl_algobase.h:228: 	return __b;
	movq	-16(%rbp), %rax	# __b, _3
	jmp	.L107	#
.L106:
# /usr/include/c++/9.3/bits/stl_algobase.h:229:       return __a;
	movq	-8(%rbp), %rax	# __a, _3
.L107:
# /usr/include/c++/9.3/bits/stl_algobase.h:230:     }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE938:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt16allocator_traitsISaIiEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIiEE8allocateERS0_m:
.LFB939:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __n, __n
# /usr/include/c++/9.3/bits/alloc_traits.h:444:       { return __a.allocate(__n); }
	movq	-16(%rbp), %rcx	# __n, tmp84
	movq	-8(%rbp), %rax	# __a, tmp85
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv	#
# /usr/include/c++/9.3/bits/alloc_traits.h:444:       { return __a.allocate(__n); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE939:
	.size	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.section	.text._ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE:
.LFB940:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
	movq	%rdx, -24(%rbp)	# __result, __result
	movq	%rcx, -32(%rbp)	# __alloc, __alloc
# /usr/include/c++/9.3/bits/stl_vector.h:453: 	return std::__relocate_a(__first, __last, __result, __alloc);
	movq	-32(%rbp), %rcx	# __alloc, tmp84
	movq	-24(%rbp), %rdx	# __result, tmp85
	movq	-16(%rbp), %rsi	# __last, tmp86
	movq	-8(%rbp), %rax	# __first, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_	#
# /usr/include/c++/9.3/bits/stl_vector.h:454:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE940:
	.size	_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE, .-_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE
	.section	.text._ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_, @function
_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_:
.LFB941:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __i, __i
# /usr/include/c++/9.3/bits/stl_iterator.h:1242:     __make_move_if_noexcept_iterator(_Tp* __i)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp87
	movq	%rax, -8(%rbp)	# tmp87, D.19770
	xorl	%eax, %eax	# tmp87
# /usr/include/c++/9.3/bits/stl_iterator.h:1243:     { return _ReturnType(__i); }
	movq	-24(%rbp), %rdx	# __i, tmp84
	leaq	-16(%rbp), %rax	#, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	_ZNSt13move_iteratorIPiEC1ES0_	#
	movq	-16(%rbp), %rax	# D.19375, D.19633
# /usr/include/c++/9.3/bits/stl_iterator.h:1243:     { return _ReturnType(__i); }
	movq	-8(%rbp), %rcx	# D.19770, tmp88
	xorq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	je	.L114	#,
	call	__stack_chk_fail@PLT	#
.L114:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE941:
	.size	_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E:
.LFB942:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
	movq	%rdx, -24(%rbp)	# __result, __result
	movq	%rcx, -32(%rbp)	# D.19331, D.19331
# /usr/include/c++/9.3/bits/stl_uninitialized.h:307:     { return std::uninitialized_copy(__first, __last, __result); }
	movq	-24(%rbp), %rdx	# __result, tmp84
	movq	-16(%rbp), %rcx	# __last, tmp85
	movq	-8(%rbp), %rax	# __first, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_	#
# /usr/include/c++/9.3/bits/stl_uninitialized.h:307:     { return std::uninitialized_copy(__first, __last, __result); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE942:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_:
.LFB943:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __p, __p
# /usr/include/c++/9.3/ext/new_allocator.h:153: 	{ __p->~_Up(); }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE943:
	.size	_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_
	.section	.text._ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_:
.LFB944:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# __a, __a
# /usr/include/c++/9.3/bits/stl_vector.h:1773:       _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp90
	movq	%rax, -8(%rbp)	# tmp90, D.19771
	xorl	%eax, %eax	# tmp90
# /usr/include/c++/9.3/bits/stl_vector.h:1778: 	const size_t __diffmax
	movabsq	$2305843009213693951, %rax	#, tmp92
	movq	%rax, -24(%rbp)	# tmp92, __diffmax
# /usr/include/c++/9.3/bits/stl_vector.h:1780: 	const size_t __allocmax = _Alloc_traits::max_size(__a);
	movq	-40(%rbp), %rax	# __a, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_	#
# /usr/include/c++/9.3/bits/stl_vector.h:1780: 	const size_t __allocmax = _Alloc_traits::max_size(__a);
	movq	%rax, -16(%rbp)	# _1, __allocmax
# /usr/include/c++/9.3/bits/stl_vector.h:1781: 	return (std::min)(__diffmax, __allocmax);
	leaq	-16(%rbp), %rdx	#, tmp87
	leaq	-24(%rbp), %rax	#, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	_ZSt3minImERKT_S2_S2_	#
	movq	(%rax), %rax	# *_2, _9
# /usr/include/c++/9.3/bits/stl_vector.h:1782:       }
	movq	-8(%rbp), %rcx	# D.19771, tmp91
	xorq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	je	.L120	#,
	call	__stack_chk_fail@PLT	#
.L120:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE944:
	.size	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB945:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_vector.h:278:       { return this->_M_impl; }
	movq	-8(%rbp), %rax	# this, _2
# /usr/include/c++/9.3/bits/stl_vector.h:278:       { return this->_M_impl; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE945:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv:
.LFB946:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __n, __n
	movq	%rdx, -24(%rbp)	# D.17327, D.17327
# /usr/include/c++/9.3/ext/new_allocator.h:104: 	if (__n > this->max_size())
	movq	-8(%rbp), %rax	# this, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv	#
	cmpq	%rax, -16(%rbp)	# _1, __n
	seta	%al	#, retval.7_7
# /usr/include/c++/9.3/ext/new_allocator.h:104: 	if (__n > this->max_size())
	testb	%al, %al	# retval.7_7
	je	.L124	#,
# /usr/include/c++/9.3/ext/new_allocator.h:105: 	  std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
.L124:
# /usr/include/c++/9.3/ext/new_allocator.h:114: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movq	-16(%rbp), %rax	# __n, tmp88
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	_Znwm@PLT	#
# /usr/include/c++/9.3/ext/new_allocator.h:115:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE946:
	.size	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, @function
_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_:
.LFB947:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
	movq	%rcx, -48(%rbp)	# __alloc, __alloc
# /usr/include/c++/9.3/bits/stl_uninitialized.h:964:       return __relocate_a_1(std::__niter_base(__first),
	movq	-40(%rbp), %rax	# __result, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZSt12__niter_baseIPiET_S1_	#
	movq	%rax, %r12	#, _1
	movq	-32(%rbp), %rax	# __last, tmp88
	movq	%rax, %rdi	# tmp88,
	call	_ZSt12__niter_baseIPiET_S1_	#
	movq	%rax, %rbx	#, _2
	movq	-24(%rbp), %rax	# __first, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZSt12__niter_baseIPiET_S1_	#
	movq	%rax, %rdi	#, _3
	movq	-48(%rbp), %rax	# __alloc, tmp90
	movq	%rax, %rcx	# tmp90,
	movq	%r12, %rdx	# _1,
	movq	%rbx, %rsi	# _2,
	call	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E	#
# /usr/include/c++/9.3/bits/stl_uninitialized.h:967:     }
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE947:
	.size	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.section	.text._ZNSt13move_iteratorIPiEC2ES0_,"axG",@progbits,_ZNSt13move_iteratorIPiEC5ES0_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPiEC2ES0_
	.type	_ZNSt13move_iteratorIPiEC2ES0_, @function
_ZNSt13move_iteratorIPiEC2ES0_:
.LFB949:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __i, __i
# /usr/include/c++/9.3/bits/stl_iterator.h:1058:       : _M_current(__i) { }
	movq	-8(%rbp), %rax	# this, tmp82
	movq	-16(%rbp), %rdx	# __i, tmp83
	movq	%rdx, (%rax)	# tmp83, this_2(D)->_M_current
# /usr/include/c++/9.3/bits/stl_iterator.h:1058:       : _M_current(__i) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE949:
	.size	_ZNSt13move_iteratorIPiEC2ES0_, .-_ZNSt13move_iteratorIPiEC2ES0_
	.weak	_ZNSt13move_iteratorIPiEC1ES0_
	.set	_ZNSt13move_iteratorIPiEC1ES0_,_ZNSt13move_iteratorIPiEC2ES0_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_, @function
_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_:
.LFB951:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
# /usr/include/c++/9.3/bits/stl_uninitialized.h:134:       const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
	movb	$1, -1(%rbp)	#, __assignable
# /usr/include/c++/9.3/bits/stl_uninitialized.h:140: 	__uninit_copy(__first, __last, __result);
	movq	-40(%rbp), %rdx	# __result, tmp84
	movq	-32(%rbp), %rcx	# __last, tmp85
	movq	-24(%rbp), %rax	# __first, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_	#
# /usr/include/c++/9.3/bits/stl_uninitialized.h:141:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE951:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_, .-_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_
	.section	.text._ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_:
.LFB952:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __a, __a
# /usr/include/c++/9.3/bits/alloc_traits.h:506:       { return __a.max_size(); }
	movq	-8(%rbp), %rax	# __a, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv	#
# /usr/include/c++/9.3/bits/alloc_traits.h:506:       { return __a.max_size(); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE952:
	.size	_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB953:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __a, __a
	movq	%rsi, -16(%rbp)	# __b, __b
# /usr/include/c++/9.3/bits/stl_algobase.h:203:       if (__b < __a)
	movq	-16(%rbp), %rax	# __b, tmp86
	movq	(%rax), %rdx	# *__b_5(D), _1
	movq	-8(%rbp), %rax	# __a, tmp87
	movq	(%rax), %rax	# *__a_6(D), _2
# /usr/include/c++/9.3/bits/stl_algobase.h:203:       if (__b < __a)
	cmpq	%rax, %rdx	# _2, _1
	jnb	.L134	#,
# /usr/include/c++/9.3/bits/stl_algobase.h:204: 	return __b;
	movq	-16(%rbp), %rax	# __b, _3
	jmp	.L135	#
.L134:
# /usr/include/c++/9.3/bits/stl_algobase.h:205:       return __a;
	movq	-8(%rbp), %rax	# __a, _3
.L135:
# /usr/include/c++/9.3/bits/stl_algobase.h:206:     }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE953:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv:
.LFB954:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/ext/new_allocator.h:135: 	return size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	movabsq	$2305843009213693951, %rax	#, _1
# /usr/include/c++/9.3/ext/new_allocator.h:139:       }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE954:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, @function
_ZSt12__niter_baseIPiET_S1_:
.LFB955:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __it, __it
# /usr/include/c++/9.3/bits/stl_algobase.h:282:     { return __it; }
	movq	-8(%rbp), %rax	# __it, _2
# /usr/include/c++/9.3/bits/stl_algobase.h:282:     { return __it; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE955:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, @function
_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB956:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
	movq	%rcx, -48(%rbp)	# D.19072, D.19072
# /usr/include/c++/9.3/bits/stl_uninitialized.h:927:       ptrdiff_t __count = __last - __first;
	movq	-32(%rbp), %rax	# __last, tmp89
	subq	-24(%rbp), %rax	# __first, _1
# /usr/include/c++/9.3/bits/stl_uninitialized.h:927:       ptrdiff_t __count = __last - __first;
	sarq	$2, %rax	#, tmp90
	movq	%rax, -8(%rbp)	# tmp90, __count
# /usr/include/c++/9.3/bits/stl_uninitialized.h:928:       if (__count > 0)
	cmpq	$0, -8(%rbp)	#, __count
	jle	.L141	#,
# /usr/include/c++/9.3/bits/stl_uninitialized.h:929: 	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
	movq	-8(%rbp), %rax	# __count, __count.8_2
# /usr/include/c++/9.3/bits/stl_uninitialized.h:929: 	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-24(%rbp), %rcx	# __first, tmp91
	movq	-40(%rbp), %rax	# __result, tmp92
	movq	%rcx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	memmove@PLT	#
.L141:
# /usr/include/c++/9.3/bits/stl_uninitialized.h:930:       return __result + __count;
	movq	-8(%rbp), %rax	# __count, __count.9_4
# /usr/include/c++/9.3/bits/stl_uninitialized.h:930:       return __result + __count;
	leaq	0(,%rax,4), %rdx	#, _5
# /usr/include/c++/9.3/bits/stl_uninitialized.h:930:       return __result + __count;
	movq	-40(%rbp), %rax	# __result, tmp93
	addq	%rdx, %rax	# _5, _13
# /usr/include/c++/9.3/bits/stl_uninitialized.h:931:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE956:
	.size	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_:
.LFB957:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# __first, __first
	movq	%rsi, -16(%rbp)	# __last, __last
	movq	%rdx, -24(%rbp)	# __result, __result
# /usr/include/c++/9.3/bits/stl_uninitialized.h:101:         { return std::copy(__first, __last, __result); }
	movq	-24(%rbp), %rdx	# __result, tmp84
	movq	-16(%rbp), %rcx	# __last, tmp85
	movq	-8(%rbp), %rax	# __first, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_	#
# /usr/include/c++/9.3/bits/stl_uninitialized.h:101:         { return std::copy(__first, __last, __result); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE957:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_
	.section	.text._ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_,comdat
	.weak	_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_
	.type	_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_, @function
_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_:
.LFB958:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
# /usr/include/c++/9.3/bits/stl_algobase.h:474: 	     (std::__miter_base(__first), std::__miter_base(__last), __result);
	movq	-32(%rbp), %rax	# __last, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E	#
	movq	%rax, %rbx	#, _1
	movq	-24(%rbp), %rax	# __first, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E	#
	movq	%rax, %rcx	#, _2
	movq	-40(%rbp), %rax	# __result, tmp88
	movq	%rax, %rdx	# tmp88,
	movq	%rbx, %rsi	# _1,
	movq	%rcx, %rdi	# _2,
	call	_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_	#
# /usr/include/c++/9.3/bits/stl_algobase.h:475:     }
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE958:
	.size	_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_, .-_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_
	.section	.text._ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"axG",@progbits,_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,comdat
	.weak	_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.type	_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E, @function
_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB959:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __it, __it
# /usr/include/c++/9.3/bits/stl_iterator.h:1264:     { return __miter_base(__it.base()); }
	leaq	-8(%rbp), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	_ZNKSt13move_iteratorIPiE4baseEv	#
	movq	%rax, %rdi	# _1,
	call	_ZSt12__miter_baseIPiET_S1_	#
# /usr/include/c++/9.3/bits/stl_iterator.h:1264:     { return __miter_base(__it.base()); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE959:
	.size	_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E, .-_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.section	.text._ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_:
.LFB960:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
# /usr/include/c++/9.3/bits/stl_algobase.h:440:       return std::__niter_wrap(__result,
	movq	-40(%rbp), %rax	# __result, __result.10_1
	movq	%rax, %rdi	# __result.10_1,
	call	_ZSt12__niter_baseIPiET_S1_	#
	movq	%rax, %r12	#, _2
	movq	-32(%rbp), %rax	# __last, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZSt12__niter_baseIPiET_S1_	#
	movq	%rax, %rbx	#, _3
	movq	-24(%rbp), %rax	# __first, tmp90
	movq	%rax, %rdi	# tmp90,
	call	_ZSt12__niter_baseIPiET_S1_	#
	movq	%r12, %rdx	# _2,
	movq	%rbx, %rsi	# _3,
	movq	%rax, %rdi	# _4,
	call	_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_	#
	movq	%rax, %rdx	#, _5
	leaq	-40(%rbp), %rax	#, tmp91
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# tmp91,
	call	_ZSt12__niter_wrapIPiET_RKS1_S1_	#
# /usr/include/c++/9.3/bits/stl_algobase.h:444:     }
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE960:
	.size	_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_
	.section	.text._ZNKSt13move_iteratorIPiE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPiE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPiE4baseEv
	.type	_ZNKSt13move_iteratorIPiE4baseEv, @function
_ZNKSt13move_iteratorIPiE4baseEv:
.LFB961:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/9.3/bits/stl_iterator.h:1067:       { return _M_current; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->_M_current, _3
# /usr/include/c++/9.3/bits/stl_iterator.h:1067:       { return _M_current; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE961:
	.size	_ZNKSt13move_iteratorIPiE4baseEv, .-_ZNKSt13move_iteratorIPiE4baseEv
	.section	.text._ZSt12__miter_baseIPiET_S1_,"axG",@progbits,_ZSt12__miter_baseIPiET_S1_,comdat
	.weak	_ZSt12__miter_baseIPiET_S1_
	.type	_ZSt12__miter_baseIPiET_S1_, @function
_ZSt12__miter_baseIPiET_S1_:
.LFB962:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# __it, __it
# /usr/include/c++/9.3/bits/cpp_type_traits.h:429:     { return __it; }
	movq	-8(%rbp), %rax	# __it, _2
# /usr/include/c++/9.3/bits/cpp_type_traits.h:429:     { return __it; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE962:
	.size	_ZSt12__miter_baseIPiET_S1_, .-_ZSt12__miter_baseIPiET_S1_
	.section	.text._ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_:
.LFB963:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
# /usr/include/c++/9.3/bits/stl_algobase.h:398:       const bool __simple = (__is_trivially_copyable(_ValueTypeI)
	movb	$1, -1(%rbp)	#, __simple
# /usr/include/c++/9.3/bits/stl_algobase.h:404: 			      _Category>::__copy_m(__first, __last, __result);
	movq	-40(%rbp), %rdx	# __result, tmp84
	movq	-32(%rbp), %rcx	# __last, tmp85
	movq	-24(%rbp), %rax	# __first, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_	#
# /usr/include/c++/9.3/bits/stl_algobase.h:405:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE963:
	.size	_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_wrapIPiET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPiET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPiET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPiET_RKS1_S1_, @function
_ZSt12__niter_wrapIPiET_RKS1_S1_:
.LFB964:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# D.19461, D.19461
	movq	%rsi, -16(%rbp)	# __res, __res
# /usr/include/c++/9.3/bits/stl_algobase.h:296:     { return __res; }
	movq	-16(%rbp), %rax	# __res, _2
# /usr/include/c++/9.3/bits/stl_algobase.h:296:     { return __res; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE964:
	.size	_ZSt12__niter_wrapIPiET_RKS1_S1_, .-_ZSt12__niter_wrapIPiET_RKS1_S1_
	.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_:
.LFB965:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# __first, __first
	movq	%rsi, -32(%rbp)	# __last, __last
	movq	%rdx, -40(%rbp)	# __result, __result
# /usr/include/c++/9.3/bits/stl_algobase.h:384: 	  const ptrdiff_t _Num = __last - __first;
	movq	-32(%rbp), %rax	# __last, tmp89
	subq	-24(%rbp), %rax	# __first, _1
# /usr/include/c++/9.3/bits/stl_algobase.h:384: 	  const ptrdiff_t _Num = __last - __first;
	sarq	$2, %rax	#, tmp90
	movq	%rax, -8(%rbp)	# tmp90, _Num
# /usr/include/c++/9.3/bits/stl_algobase.h:385: 	  if (_Num)
	cmpq	$0, -8(%rbp)	#, _Num
	je	.L160	#,
# /usr/include/c++/9.3/bits/stl_algobase.h:386: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	movq	-8(%rbp), %rax	# _Num, _Num.11_2
# /usr/include/c++/9.3/bits/stl_algobase.h:386: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-24(%rbp), %rcx	# __first, tmp91
	movq	-40(%rbp), %rax	# __result, tmp92
	movq	%rcx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	memmove@PLT	#
.L160:
# /usr/include/c++/9.3/bits/stl_algobase.h:387: 	  return __result + _Num;
	movq	-8(%rbp), %rax	# _Num, _Num.12_4
# /usr/include/c++/9.3/bits/stl_algobase.h:387: 	  return __result + _Num;
	leaq	0(,%rax,4), %rdx	#, _5
# /usr/include/c++/9.3/bits/stl_algobase.h:387: 	  return __result + _Num;
	movq	-40(%rbp), %rax	# __result, tmp93
	addq	%rdx, %rax	# _5, _13
# /usr/include/c++/9.3/bits/stl_algobase.h:388: 	}
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE965:
	.size	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
