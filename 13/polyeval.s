	.file	"polyeval.cpp"
# GNU C++14 (GCC) version 9.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.21-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE polyeval.cpp -mtune=generic -march=x86-64
# -O2 -fverbose-asm
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-functions -falign-jumps -falign-labels -falign-loops
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexceptions -fexpensive-optimizations -fforward-propagate
# -ffp-int-builtin-inexact -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
# -fif-conversion -fif-conversion2 -findirect-inlining -finline
# -finline-atomics -finline-functions-called-once -finline-small-functions
# -fipa-bit-cp -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables
# -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference
# -fipa-reference-addressable -fipa-sra -fipa-stack-alignment -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-blocks-and-partition -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-protector-strong
# -fstdarg-opt -fstore-merging -fstrict-aliasing
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
# -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vrp -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.p2align 4
	.globl	_Z9poly_evalRKSt6vectorIiSaIiEEi
	.type	_Z9poly_evalRKSt6vectorIiSaIiEEi, @function
_Z9poly_evalRKSt6vectorIiSaIiEEi:
.LFB885:
	.cfi_startproc
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	movq	(%rdi), %rax	# MEM[(int * *)a_7(D)], _24
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	8(%rdi), %rdi	# MEM[(int * *)a_7(D) + 8B], MEM[(int * *)a_7(D) + 8B]
	subq	%rax, %rdi	# _24, _26
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	movq	%rdi, %rdx	# _26, tmp104
	shrq	$2, %rdx	#, tmp104
	je	.L4	#,
	addq	%rax, %rdi	# ivtmp.79, _5
# polyeval.cpp:10: 	int xi = 1; /* store x^i */
	movl	$1, %edx	#, xi
# polyeval.cpp:9: 	int sum=0; /* storage for result */
	xorl	%r8d, %r8d	# <retval>
	.p2align 4,,10
	.p2align 3
.L3:
# polyeval.cpp:12: 		sum += a[i]*xi;
	movl	(%rax), %ecx	# MEM[base: _14, offset: 0], tmp100
	addq	$4, %rax	#, ivtmp.79
	imull	%edx, %ecx	# xi, tmp100
# polyeval.cpp:13: 		xi *= x;
	imull	%esi, %edx	# x, xi
# polyeval.cpp:12: 		sum += a[i]*xi;
	addl	%ecx, %r8d	# tmp100, <retval>
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	cmpq	%rax, %rdi	# ivtmp.79, _5
	jne	.L3	#,
# polyeval.cpp:20: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
# polyeval.cpp:9: 	int sum=0; /* storage for result */
	xorl	%r8d, %r8d	# <retval>
# polyeval.cpp:20: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE885:
	.size	_Z9poly_evalRKSt6vectorIiSaIiEEi, .-_Z9poly_evalRKSt6vectorIiSaIiEEi
	.p2align 4
	.globl	_Z10poly_eval2RKSt6vectorIiSaIiEEi
	.type	_Z10poly_eval2RKSt6vectorIiSaIiEEi, @function
_Z10poly_eval2RKSt6vectorIiSaIiEEi:
.LFB886:
	.cfi_startproc
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	movq	(%rdi), %r8	# MEM[(int * *)a_7(D)], _12
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	8(%rdi), %rax	# MEM[(int * *)a_7(D) + 8B], MEM[(int * *)a_7(D) + 8B]
	subq	%r8, %rax	# _12, _15
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	movq	%rax, %rdi	# _15, tmp109
	shrq	$2, %rdi	#, tmp109
	je	.L10	#,
	leaq	-4(%r8,%rax), %rdx	#, ivtmp.89
# polyeval.cpp:30: 	int result=0;
	xorl	%eax, %eax	# <retval>
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%rdx, %rcx	# ivtmp.89, ivtmp.89
# polyeval.cpp:33: 		result = result*x + a[i];
	imull	%esi, %eax	# x, _1
	subq	$4, %rdx	#, ivtmp.89
# polyeval.cpp:33: 		result = result*x + a[i];
	addl	4(%rdx), %eax	# MEM[base: _27, offset: 0], <retval>
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	cmpq	%r8, %rcx	# _12, ivtmp.89
	jne	.L9	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
# polyeval.cpp:30: 	int result=0;
	xorl	%eax, %eax	# <retval>
# polyeval.cpp:36: }
	ret	
	.cfi_endproc
.LFE886:
	.size	_Z10poly_eval2RKSt6vectorIiSaIiEEi, .-_Z10poly_eval2RKSt6vectorIiSaIiEEi
	.section	.rodata._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC0:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB932:
	.cfi_startproc
# /usr/include/c++/9.3/bits/stl_vector.h:1755: 	if (max_size() - size() < __n)
	movabsq	$2305843009213693951, %rcx	#, tmp107
# /usr/include/c++/9.3/bits/vector.tcc:426:       vector<_Tp, _Alloc>::
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# /usr/include/c++/9.3/bits/stl_vector.h:1755: 	if (max_size() - size() < __n)
	movq	8(%rdi), %r12	# MEM[(int * *)this_11(D) + 8B], _37
	movq	(%rdi), %r8	# MEM[(int * *)this_11(D)], _36
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	%r12, %rax	# _37, tmp105
	subq	%r8, %rax	# _36, tmp105
	sarq	$2, %rax	#, tmp106
# /usr/include/c++/9.3/bits/stl_vector.h:1755: 	if (max_size() - size() < __n)
	cmpq	%rcx, %rax	# tmp107, tmp106
	je	.L26	#,
	movq	%rdx, %r15	# tmp121, __args#0
	movq	%rsi, %rdx	# __position, _74
	movq	%rdi, %rbx	# tmp119, this
	movq	%rsi, %r13	# tmp120, __position
	subq	%r8, %rdx	# _36, _74
# /usr/include/c++/9.3/bits/stl_algobase.h:227:       if (__a < __b)
	testq	%rax, %rax	# tmp106
	je	.L22	#,
	movabsq	$9223372036854775804, %r14	#, prephitmp_12
# /usr/include/c++/9.3/bits/stl_vector.h:1758: 	const size_type __len = size() + (std::max)(size(), __n);
	leaq	(%rax,%rax), %rsi	#, __len
# /usr/include/c++/9.3/bits/stl_vector.h:1759: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	cmpq	%rsi, %rax	# __len, tmp106
	jbe	.L27	#,
.L14:
# /usr/include/c++/9.3/ext/new_allocator.h:114: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movq	%r14, %rdi	# prephitmp_12,
	movq	%rdx, 8(%rsp)	# _74, %sfp
	movq	%r8, (%rsp)	# _36, %sfp
	call	_Znwm@PLT	#
	movq	(%rsp), %r8	# %sfp, _36
	movq	8(%rsp), %rdx	# %sfp, _74
	movq	%rax, %rbp	# tmp122, _34
	addq	%rax, %r14	# _34, _71
.L21:
	movl	(%r15), %eax	# *__args#0_4(D), *__args#0_4(D)
	leaq	4(%rbp,%rdx), %r9	#, _65
	subq	%r13, %r12	# __position, _63
	leaq	(%r9,%r12), %r15	#, _81
	movl	%eax, 0(%rbp,%rdx)	# *__args#0_4(D), *_2
# /usr/include/c++/9.3/bits/stl_uninitialized.h:928:       if (__count > 0)
	testq	%rdx, %rdx	# _74
	jg	.L28	#,
	testq	%r12, %r12	# _63
	jg	.L17	#,
# /usr/include/c++/9.3/bits/stl_vector.h:350: 	if (__p)
	testq	%r8, %r8	# _36
	jne	.L20	#,
.L18:
# /usr/include/c++/9.3/bits/vector.tcc:502:       this->_M_impl._M_start = __new_start;
	movq	%rbp, (%rbx)	# _34, this_11(D)->D.18425._M_impl.D.17727._M_start
# /usr/include/c++/9.3/bits/vector.tcc:503:       this->_M_impl._M_finish = __new_finish;
	movq	%r15, 8(%rbx)	# _81, this_11(D)->D.18425._M_impl.D.17727._M_finish
# /usr/include/c++/9.3/bits/vector.tcc:504:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r14, 16(%rbx)	# _71, this_11(D)->D.18425._M_impl.D.17727._M_end_of_storage
# /usr/include/c++/9.3/bits/vector.tcc:505:     }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
# /usr/include/c++/9.3/bits/stl_uninitialized.h:929: 	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
	movq	%r8, %rsi	# _36,
	movq	%rbp, %rdi	# _34,
	movq	%r9, 8(%rsp)	# _65, %sfp
	movq	%r8, (%rsp)	# _36, %sfp
	call	memmove@PLT	#
# /usr/include/c++/9.3/bits/stl_uninitialized.h:928:       if (__count > 0)
	testq	%r12, %r12	# _63
	movq	(%rsp), %r8	# %sfp, _36
	movq	8(%rsp), %r9	# %sfp, _65
	jg	.L17	#,
.L20:
# /usr/include/c++/9.3/ext/new_allocator.h:128: 	::operator delete(__p);
	movq	%r8, %rdi	# _36,
	call	_ZdlPv@PLT	#
# /usr/include/c++/9.3/bits/alloc_traits.h:470:       { __a.deallocate(__p, __n); }
	jmp	.L18	#
	.p2align 4,,10
	.p2align 3
.L27:
# /usr/include/c++/9.3/bits/stl_vector.h:343: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	testq	%rsi, %rsi	# __len
	jne	.L15	#,
	xorl	%r14d, %r14d	# _71
	xorl	%ebp, %ebp	# _34
	jmp	.L21	#
	.p2align 4,,10
	.p2align 3
.L17:
# /usr/include/c++/9.3/bits/stl_uninitialized.h:929: 	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
	movq	%r12, %rdx	# _63,
	movq	%r13, %rsi	# __position,
	movq	%r9, %rdi	# _65,
	movq	%r8, (%rsp)	# _36, %sfp
	call	memcpy@PLT	#
	movq	(%rsp), %r8	# %sfp, _36
# /usr/include/c++/9.3/bits/stl_vector.h:350: 	if (__p)
	testq	%r8, %r8	# _36
	je	.L18	#,
	jmp	.L20	#
	.p2align 4,,10
	.p2align 3
.L22:
	movl	$4, %r14d	#, prephitmp_12
	jmp	.L14	#
.L26:
# /usr/include/c++/9.3/bits/stl_vector.h:1756: 	  __throw_length_error(__N(__s));
	leaq	.LC0(%rip), %rdi	#,
	call	_ZSt20__throw_length_errorPKc@PLT	#
.L15:
	cmpq	%rcx, %rsi	# tmp107, __len
	cmovbe	%rsi, %rcx	# __len,, tmp107
	movq	%rcx, %r14	# tmp107, tmp115
	salq	$2, %r14	#, prephitmp_12
	jmp	.L14	#
	.cfi_endproc
.LFE932:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.text
	.p2align 4
	.globl	_Z7randVecRSt6vectorIiSaIiEEm
	.type	_Z7randVecRSt6vectorIiSaIiEEm, @function
_Z7randVecRSt6vectorIiSaIiEEm:
.LFB887:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12	# tmp97, V
# polyeval.cpp:41: 	srand48(time(0));
	xorl	%edi, %edi	#
# polyeval.cpp:40: {
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx	# tmp98, n
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 64
# polyeval.cpp:40: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	movq	%rax, 8(%rsp)	# tmp101, D.20206
	xorl	%eax, %eax	# tmp101
# polyeval.cpp:41: 	srand48(time(0));
	call	time@PLT	#
	movq	%rax, %rdi	# tmp99, _1
	call	srand48@PLT	#
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	testq	%rbx, %rbx	# n
	je	.L29	#,
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	xorl	%r13d, %r13d	# i
# /usr/include/c++/9.3/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	leaq	4(%rsp), %rbp	#, tmp96
	jmp	.L33	#
	.p2align 4,,10
	.p2align 3
.L40:
	movl	%eax, (%rsi)	# _2, *_16
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	addq	$1, %r13	#, i
# /usr/include/c++/9.3/bits/vector.tcc:117: 	    ++this->_M_impl._M_finish;
	addq	$4, %rsi	#, tmp93
	movq	%rsi, 8(%r12)	# tmp93, V_12(D)->D.18425._M_impl.D.17727._M_finish
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	cmpq	%r13, %rbx	# i, n
	je	.L29	#,
.L33:
# polyeval.cpp:43: 		V.push_back(lrand48());
	call	lrand48@PLT	#
# /usr/include/c++/9.3/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	8(%r12), %rsi	# V_12(D)->D.18425._M_impl.D.17727._M_finish, _16
# polyeval.cpp:43: 		V.push_back(lrand48());
	movl	%eax, 4(%rsp)	# _2, D.18443
# /usr/include/c++/9.3/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	16(%r12), %rsi	# V_12(D)->D.18425._M_impl.D.17727._M_end_of_storage, _16
	jne	.L40	#,
# /usr/include/c++/9.3/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	movq	%rbp, %rdx	# tmp96,
	movq	%r12, %rdi	# V,
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	addq	$1, %r13	#, i
# /usr/include/c++/9.3/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_	#
# polyeval.cpp:42: 	for (size_t i = 0; i < n; i++) {
	cmpq	%r13, %rbx	# i, n
	jne	.L33	#,
	.p2align 4,,10
	.p2align 3
.L29:
# polyeval.cpp:45: }
	movq	8(%rsp), %rax	# D.20206, tmp102
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	jne	.L41	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
.L41:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE887:
	.size	_Z7randVecRSt6vectorIiSaIiEEm, .-_Z7randVecRSt6vectorIiSaIiEEm
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Normal computed f(%i)=%i in %f sec.\n"
	.align 8
.LC3:
	.string	"Horner computed f(%i)=%i in %f sec.\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB888:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA888
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# polyeval.cpp:52: 	randVec(f,1<<24);
	movl	$16777216, %esi	#,
# polyeval.cpp:48: {
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 64
# polyeval.cpp:48: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	movq	%rax, 24(%rsp)	# tmp154, D.20228
	xorl	%eax, %eax	# tmp154
# polyeval.cpp:52: 	randVec(f,1<<24);
	movq	%rsp, %rdi	#, tmp126
# /usr/include/c++/9.3/bits/stl_vector.h:95: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, (%rsp)	#, MEM[(struct _Vector_impl_data *)&f]._M_start
	movq	$0, 8(%rsp)	#, MEM[(struct _Vector_impl_data *)&f]._M_finish
	movq	$0, 16(%rsp)	#, MEM[(struct _Vector_impl_data *)&f]._M_end_of_storage
.LEHB0:
# polyeval.cpp:52: 	randVec(f,1<<24);
	call	_Z7randVecRSt6vectorIiSaIiEEm	#
# polyeval.cpp:58: 	s = clock();
	call	clock@PLT	#
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	8(%rsp), %rsi	# MEM[(int * *)&f + 8B], _67
# polyeval.cpp:58: 	s = clock();
	movq	%rax, %rbx	# tmp149, s
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	movq	(%rsp), %rax	# MEM[(int * *)&f], _62
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	subq	%rax, %rsi	# _62, _67
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	movq	%rsi, %rdi	# _67, tmp155
	shrq	$2, %rdi	#, tmp155
	je	.L51	#,
	addq	%rax, %rsi	# ivtmp.115, _81
# polyeval.cpp:9: 	int sum=0; /* storage for result */
	xorl	%r12d, %r12d	# sum
# polyeval.cpp:10: 	int xi = 1; /* store x^i */
	movl	$1, %edx	#, xi
	.p2align 4,,10
	.p2align 3
.L44:
# polyeval.cpp:12: 		sum += a[i]*xi;
	movl	(%rax), %ecx	# MEM[base: _63, offset: 0], tmp130
	addq	$4, %rax	#, ivtmp.115
	imull	%edx, %ecx	# xi, tmp130
# polyeval.cpp:13: 		xi *= x;
	imull	$519, %edx, %edx	#, xi, xi
# polyeval.cpp:12: 		sum += a[i]*xi;
	addl	%ecx, %r12d	# tmp130, sum
# polyeval.cpp:11: 	for (size_t i = 0; i < a.size(); i++) {
	cmpq	%rsi, %rax	# _81, ivtmp.115
	jne	.L44	#,
.L43:
# polyeval.cpp:60: 	e = clock();
	call	clock@PLT	#
# polyeval.cpp:61: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	pxor	%xmm0, %xmm0	# tmp132
# polyeval.cpp:62: 	printf("Normal computed f(%i)=%i in %f sec.\n",x,y,d);
	movl	%r12d, %edx	# sum,
	movl	$519, %esi	#,
# polyeval.cpp:61: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	subq	%rbx, %rax	# s, tmp131
# polyeval.cpp:62: 	printf("Normal computed f(%i)=%i in %f sec.\n",x,y,d);
	leaq	.LC2(%rip), %rdi	#,
# polyeval.cpp:61: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	cvtsi2sdq	%rax, %xmm0	# tmp131, tmp132
# polyeval.cpp:62: 	printf("Normal computed f(%i)=%i in %f sec.\n",x,y,d);
	movl	$1, %eax	#,
# polyeval.cpp:61: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	divsd	.LC1(%rip), %xmm0	#, d
# polyeval.cpp:62: 	printf("Normal computed f(%i)=%i in %f sec.\n",x,y,d);
	call	printf@PLT	#
# polyeval.cpp:64: 	s = clock();
	call	clock@PLT	#
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	movq	(%rsp), %rcx	# MEM[(int * *)&f], _37
# polyeval.cpp:64: 	s = clock();
	movq	%rax, %rbx	# tmp151, s
# /usr/include/c++/9.3/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	8(%rsp), %rax	# MEM[(int * *)&f + 8B], _39
	subq	%rcx, %rax	# _37, _39
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	movq	%rax, %rdi	# _39, tmp156
	shrq	$2, %rdi	#, tmp156
	je	.L52	#,
	leaq	-4(%rcx,%rax), %rax	#, ivtmp.109
# polyeval.cpp:30: 	int result=0;
	xorl	%r12d, %r12d	# result
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%rax, %rdx	# ivtmp.109, ivtmp.109
# polyeval.cpp:33: 		result = result*x + a[i];
	imull	$519, %r12d, %r12d	#, result, _45
	subq	$4, %rax	#, ivtmp.109
# polyeval.cpp:33: 		result = result*x + a[i];
	addl	4(%rax), %r12d	# MEM[base: _23, offset: 0], result
# polyeval.cpp:31: 	for (size_t i = a.size()-1; i != (size_t)(-1); i--) {
	cmpq	%rdx, %rcx	# ivtmp.109, _37
	jne	.L46	#,
.L45:
# polyeval.cpp:66: 	e = clock();
	call	clock@PLT	#
# polyeval.cpp:67: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	pxor	%xmm0, %xmm0	# tmp142
# polyeval.cpp:68: 	printf("Horner computed f(%i)=%i in %f sec.\n",x,y,d);
	movl	%r12d, %edx	# result,
	movl	$519, %esi	#,
# polyeval.cpp:67: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	subq	%rbx, %rax	# s, tmp141
# polyeval.cpp:68: 	printf("Horner computed f(%i)=%i in %f sec.\n",x,y,d);
	leaq	.LC3(%rip), %rdi	#,
# polyeval.cpp:67: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	cvtsi2sdq	%rax, %xmm0	# tmp141, tmp142
# polyeval.cpp:68: 	printf("Horner computed f(%i)=%i in %f sec.\n",x,y,d);
	movl	$1, %eax	#,
# polyeval.cpp:67: 	d = (e-s)/((double)CLOCKS_PER_SEC);
	divsd	.LC1(%rip), %xmm0	#, d
# polyeval.cpp:68: 	printf("Horner computed f(%i)=%i in %f sec.\n",x,y,d);
	call	printf@PLT	#
.LEHE0:
# /usr/include/c++/9.3/bits/stl_vector.h:677: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	(%rsp), %rdi	# f.D.18425._M_impl.D.17727._M_start, _51
# /usr/include/c++/9.3/bits/stl_vector.h:350: 	if (__p)
	testq	%rdi, %rdi	# _51
	je	.L47	#,
# /usr/include/c++/9.3/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv@PLT	#
.L47:
# polyeval.cpp:73: }
	movq	24(%rsp), %rax	# D.20228, tmp157
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp157
	jne	.L64	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L51:
	.cfi_restore_state
# polyeval.cpp:9: 	int sum=0; /* storage for result */
	xorl	%r12d, %r12d	# sum
	jmp	.L43	#
.L52:
# polyeval.cpp:30: 	int result=0;
	xorl	%r12d, %r12d	# result
	jmp	.L45	#
.L64:
# polyeval.cpp:73: }
	call	__stack_chk_fail@PLT	#
.L53:
	movq	%rax, %r12	# tmp153, tmp146
	jmp	.L48	#
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA888:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE888-.LLSDACSB888
.LLSDACSB888:
	.uleb128 .LEHB0-.LFB888
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L53-.LFB888
	.uleb128 0
.LLSDACSE888:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC888
	.type	main.cold, @function
main.cold:
.LFSB888:
.L48:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 12, -16
# /usr/include/c++/9.3/bits/stl_vector.h:677: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	(%rsp), %rdi	# f.D.18425._M_impl.D.17727._M_start, _52
# /usr/include/c++/9.3/bits/stl_vector.h:350: 	if (__p)
	testq	%rdi, %rdi	# _52
	je	.L49	#,
# /usr/include/c++/9.3/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv@PLT	#
.L49:
	movq	%r12, %rdi	# tmp146,
.LEHB1:
	call	_Unwind_Resume@PLT	#
.LEHE1:
	.cfi_endproc
.LFE888:
	.section	.gcc_except_table
.LLSDAC888:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC888-.LLSDACSBC888
.LLSDACSBC888:
	.uleb128 .LEHB1-.LCOLDB4
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC888:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
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
