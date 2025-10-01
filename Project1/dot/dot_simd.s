	.file	"dot.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1810:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1810:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4606:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4606
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	__errno_location@PLT
	leaq	16(%rsp), %rsi
	movl	%r14d, %edx
	movq	%rbp, %rdi
	movl	(%rax), %r13d
	movq	%rax, %rbx
	movl	$0, (%rax)
.LEHB0:
	call	*%r15
	movq	16(%rsp), %rdx
	cmpq	%rbp, %rdx
	je	.L21
	movl	(%rbx), %ecx
	cmpl	$34, %ecx
	je	.L22
	testq	%r12, %r12
	je	.L8
	subq	%rbp, %rdx
	movq	%rdx, (%r12)
.L8:
	testl	%ecx, %ecx
	je	.L23
.L3:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L20
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	movl	%r13d, (%rbx)
	jmp	.L3
.L22:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
	movq	8(%rsp), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.L21:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
	movq	8(%rsp), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE0:
.L20:
	call	__stack_chk_fail@PLT
.L14:
	endbr64
	movq	%rax, %rdi
.L10:
	cmpl	$0, (%rbx)
	jne	.L11
	movl	%r13d, (%rbx)
.L11:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L24
	vzeroupper
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L24:
	vzeroupper
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4606:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"aG",@progbits,_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
.LLSDA4606:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4606-.LLSDACSB4606
.LLSDACSB4606:
	.uleb128 .LEHB0-.LFB4606
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L14-.LFB4606
	.uleb128 0
	.uleb128 .LEHB1-.LFB4606
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4606:
	.section	.text._ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt6vectorImSaImEED2Ev,"axG",@progbits,_ZNSt6vectorImSaImEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorImSaImEED2Ev
	.type	_ZNSt6vectorImSaImEED2Ev, @function
_ZNSt6vectorImSaImEED2Ev:
.LFB4941:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L27
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L27:
	ret
	.cfi_endproc
.LFE4941:
	.size	_ZNSt6vectorImSaImEED2Ev, .-_ZNSt6vectorImSaImEED2Ev
	.weak	_ZNSt6vectorImSaImEED1Ev
	.set	_ZNSt6vectorImSaImEED1Ev,_ZNSt6vectorImSaImEED2Ev
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5522:
	.cfi_startproc
	endbr64
	movq	%rdi, %rdx
	leaq	1792(%rdi), %rcx
	vpxor	%xmm7, %xmm7, %xmm7
	movq	%rdi, %rax
	movq	$-2147483648, %rdi
	vmovq	%rdi, %xmm0
	movl	$2147483647, %edi
	vmovq	%rdi, %xmm1
	movl	$1, %edi
	vpbroadcastq	%xmm0, %ymm10
	vmovq	%rdi, %xmm2
	movl	$2567483615, %edi
	vpbroadcastq	%xmm1, %ymm9
	vmovq	%rdi, %xmm3
	vpbroadcastq	%xmm2, %ymm8
	vpbroadcastq	%xmm3, %ymm6
	.p2align 4,,10
	.p2align 3
.L29:
	vpand	8(%rax), %ymm9, %ymm5
	vpand	(%rax), %ymm10, %ymm4
	addq	$32, %rax
	vpor	%ymm5, %ymm4, %ymm4
	vpsrlq	$1, %ymm4, %ymm5
	vpand	%ymm8, %ymm4, %ymm4
	vpxor	3144(%rax), %ymm5, %ymm5
	vpsubq	%ymm4, %ymm7, %ymm4
	vpand	%ymm6, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, -32(%rax)
	cmpq	%rax, %rcx
	jne	.L29
	movq	1808(%rdx), %rax
	vpunpcklqdq	%xmm0, %xmm0, %xmm0
	vpunpcklqdq	%xmm1, %xmm1, %xmm1
	vpunpcklqdq	%xmm2, %xmm2, %xmm2
	movq	1816(%rdx), %rcx
	vpand	1800(%rdx), %xmm1, %xmm1
	vpxor	%xmm6, %xmm6, %xmm6
	leaq	4984(%rdx), %rsi
	andq	$-2147483648, %rax
	vpand	1792(%rdx), %xmm0, %xmm0
	andl	$2147483647, %ecx
	orq	%rcx, %rax
	vpor	%xmm1, %xmm0, %xmm0
	movq	%rax, %rcx
	vpsrlq	$1, %xmm0, %xmm1
	vpand	%xmm2, %xmm0, %xmm0
	andl	$1, %eax
	negq	%rax
	vpxor	%xmm2, %xmm2, %xmm2
	shrq	%rcx
	xorq	4984(%rdx), %rcx
	andl	$2567483615, %eax
	vpxor	4968(%rdx), %xmm1, %xmm1
	vpsubq	%xmm0, %xmm2, %xmm0
	xorq	%rcx, %rax
	vpunpcklqdq	%xmm3, %xmm3, %xmm2
	leaq	1816(%rdx), %rcx
	vpbroadcastq	.LC8(%rip), %ymm3
	vpand	%xmm2, %xmm0, %xmm0
	movq	%rax, 1808(%rdx)
	movl	$2567483615, %eax
	vpbroadcastq	.LC9(%rip), %ymm2
	vpxor	%xmm0, %xmm1, %xmm0
	vmovq	%rax, %xmm7
	vpbroadcastq	.LC10(%rip), %ymm1
	vmovdqu	%xmm0, 1792(%rdx)
	vpbroadcastq	%xmm7, %ymm0
.L30:
	vpand	8(%rcx), %ymm2, %ymm5
	vpand	(%rcx), %ymm3, %ymm4
	addq	$32, %rcx
	vpor	%ymm5, %ymm4, %ymm4
	vpsrlq	$1, %ymm4, %ymm5
	vpand	%ymm1, %ymm4, %ymm4
	vpxor	-1848(%rcx), %ymm5, %ymm5
	vpsubq	%ymm4, %ymm6, %ymm4
	vpand	%ymm0, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, -32(%rcx)
	cmpq	%rcx, %rsi
	jne	.L30
	movq	4984(%rdx), %rax
	movq	(%rdx), %rcx
	movq	$0, 4992(%rdx)
	andl	$2147483647, %ecx
	andq	$-2147483648, %rax
	orq	%rcx, %rax
	movq	%rax, %rcx
	andl	$1, %eax
	negq	%rax
	shrq	%rcx
	xorq	3168(%rdx), %rcx
	andl	$2567483615, %eax
	xorq	%rcx, %rax
	movq	%rax, 4984(%rdx)
	vzeroupper
	ret
	.cfi_endproc
.LFE5522:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.rodata._Z14run_experimentIfESt5arrayIT_Lm3EEmmbb.str1.1,"aMS",@progbits,1
.LC17:
	.string	"N="
.LC18:
	.string	" | stride="
.LC19:
	.string	" | aligned="
.LC20:
	.string	" | time="
.LC21:
	.string	" s | GFLOP/s="
.LC22:
	.string	" | result="
	.section	.text._Z14run_experimentIfESt5arrayIT_Lm3EEmmbb,"axG",@progbits,_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb,comdat
	.p2align 4
	.weak	_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb
	.type	_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb, @function
_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb:
.LFB4953:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1024, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, -5112(%rbp)
	leaq	32(,%rdi,4), %r15
	movq	%rdi, %rbx
	movl	$32, %edi
	movl	%edx, -5116(%rbp)
	movq	%r15, %rsi
	movl	%ecx, -5144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L34
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	movq	%rax, %r13
	call	aligned_alloc@PLT
	movq	%rax, %r14
.L35:
	movq	$42, -5056(%rbp)
	movl	$42, %esi
	movl	$1, %eax
	leaq	-5056(%rbp), %r15
	.p2align 4,,10
	.p2align 3
.L36:
	movq	%rsi, %rdx
	shrq	$30, %rdx
	xorq	%rsi, %rdx
	imulq	$1812433253, %rdx, %rdx
	leal	(%rdx,%rax), %esi
	movq	%rsi, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	$624, %rax
	jne	.L36
	movq	$624, -64(%rbp)
	vxorps	%xmm2, %xmm2, %xmm2
	testq	%rbx, %rbx
	je	.L37
	vmovss	.LC13(%rip), %xmm4
	vmovss	.LC14(%rip), %xmm3
	xorl	%r12d, %r12d
	vxorps	%xmm1, %xmm1, %xmm1
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L84:
	vcvtsi2ssq	%rax, %xmm2, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jnb	.L66
.L85:
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 0(%r13,%r12,4)
	cmpq	$623, %rdx
	ja	.L82
.L42:
	leaq	1(%rdx), %rax
	movq	-5056(%rbp,%rdx,8), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, %rdi
	shrq	$11, %rdi
	movl	%edi, %edi
	xorq	%rdi, %rdx
	movq	%rdx, %rdi
	salq	$7, %rdi
	andl	$2636928640, %edi
	xorq	%rdi, %rdx
	movq	%rdx, %rdi
	salq	$15, %rdi
	andl	$4022730752, %edi
	xorq	%rdi, %rdx
	movq	%rdx, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rdx
	js	.L43
	vcvtsi2ssq	%rdx, %xmm2, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jnb	.L45
.L86:
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r14,%r12,4)
	addq	$1, %r12
	cmpq	%r12, %rbx
	je	.L47
.L48:
	cmpq	$623, %rax
	ja	.L83
.L38:
	leaq	1(%rax), %rdx
	movq	-5056(%rbp,%rax,8), %rax
	movq	%rdx, -64(%rbp)
	movq	%rax, %rdi
	shrq	$11, %rdi
	movl	%edi, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$7, %rdi
	andl	$2636928640, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$15, %rdi
	andl	$4022730752, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rax
	jns	.L84
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2ssq	%rdi, %xmm2, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jb	.L85
.L66:
	vmovss	.LC11(%rip), %xmm0
	vmovss	%xmm0, 0(%r13,%r12,4)
	cmpq	$623, %rdx
	jbe	.L42
	.p2align 4,,10
	.p2align 3
.L82:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdx
	vxorps	%xmm2, %xmm2, %xmm2
	vmovss	.LC14(%rip), %xmm3
	vmovss	.LC13(%rip), %xmm4
	vxorps	%xmm1, %xmm1, %xmm1
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L43:
	movq	%rdx, %rdi
	andl	$1, %edx
	shrq	%rdi
	orq	%rdx, %rdi
	vcvtsi2ssq	%rdi, %xmm2, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jb	.L86
.L45:
	movl	$0x3f7fffff, (%r14,%r12,4)
	addq	$1, %r12
	cmpq	%r12, %rbx
	jne	.L48
.L47:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	cmpq	$1, -5112(%rbp)
	movq	%rax, %r15
	jne	.L87
	leaq	-1(%rbx), %rax
	cmpq	$6, %rax
	jbe	.L67
	movq	%rbx, %rdx
	xorl	%eax, %eax
	vxorps	%xmm1, %xmm1, %xmm1
	shrq	$3, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L54:
	vmovups	(%r14,%rax), %ymm5
	vmulps	0(%r13,%rax), %ymm5, %ymm0
	addq	$32, %rax
	vaddss	%xmm1, %xmm0, %xmm1
	vshufps	$85, %xmm0, %xmm0, %xmm4
	vshufps	$255, %xmm0, %xmm0, %xmm3
	vaddss	%xmm1, %xmm4, %xmm4
	vunpckhps	%xmm0, %xmm0, %xmm1
	vextractf128	$0x1, %ymm0, %xmm0
	vaddss	%xmm4, %xmm1, %xmm1
	vaddss	%xmm1, %xmm3, %xmm3
	vaddss	%xmm3, %xmm0, %xmm1
	vshufps	$85, %xmm0, %xmm0, %xmm3
	vaddss	%xmm1, %xmm3, %xmm3
	vunpckhps	%xmm0, %xmm0, %xmm1
	vshufps	$255, %xmm0, %xmm0, %xmm0
	vaddss	%xmm3, %xmm1, %xmm1
	vaddss	%xmm0, %xmm1, %xmm1
	cmpq	%rdx, %rax
	jne	.L54
	movq	%rbx, %rax
	andq	$-8, %rax
	testb	$7, %bl
	je	.L88
	vzeroupper
.L53:
	movq	%rbx, %rdx
	subq	%rax, %rdx
	leaq	-1(%rdx), %rsi
	cmpq	$2, %rsi
	jbe	.L56
	vmovups	(%r14,%rax,4), %xmm6
	vmulps	0(%r13,%rax,4), %xmm6, %xmm0
	movq	%rdx, %rsi
	andq	$-4, %rsi
	addq	%rsi, %rax
	andl	$3, %edx
	vaddss	%xmm1, %xmm0, %xmm1
	vshufps	$85, %xmm0, %xmm0, %xmm3
	vaddss	%xmm1, %xmm3, %xmm3
	vunpckhps	%xmm0, %xmm0, %xmm1
	vshufps	$255, %xmm0, %xmm0, %xmm0
	vaddss	%xmm3, %xmm1, %xmm1
	vaddss	%xmm0, %xmm1, %xmm1
	je	.L49
.L56:
	vmovss	(%r14,%rax,4), %xmm0
	vmulss	0(%r13,%rax,4), %xmm0, %xmm0
	leaq	1(%rax), %rsi
	leaq	0(,%rax,4), %rdx
	vaddss	%xmm0, %xmm1, %xmm1
	cmpq	%rbx, %rsi
	jnb	.L49
	vmovss	4(%r14,%rdx), %xmm0
	vmulss	4(%r13,%rdx), %xmm0, %xmm0
	addq	$2, %rax
	vaddss	%xmm0, %xmm1, %xmm1
	cmpq	%rbx, %rax
	jnb	.L49
	vmovss	8(%r14,%rdx), %xmm0
	vmulss	8(%r13,%rdx), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
.L49:
	vmovss	%xmm1, -5120(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%edx, %edx
	vmovss	-5120(%rbp), %xmm1
	subq	%r15, %rax
	vcvtsi2sdq	%rax, %xmm2, %xmm3
	movq	%rbx, %rax
	vdivsd	.LC15(%rip), %xmm3, %xmm4
	divq	-5112(%rbp)
	cmpb	$0, -5144(%rbp)
	vcvtsi2sdq	%rax, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm2
	vdivsd	%xmm4, %xmm2, %xmm0
	vmovddup	.LC15(%rip), %xmm2
	vunpcklpd	%xmm3, %xmm0, %xmm0
	vdivpd	%xmm2, %xmm0, %xmm7
	vmovapd	%xmm7, -5136(%rbp)
	jne	.L89
.L58:
	cmpb	$0, -5116(%rbp)
	vmovss	%xmm1, -5112(%rbp)
	jne	.L90
	leaq	-4(%r13), %rdi
	call	free@PLT
	leaq	-4(%r14), %rdi
	call	free@PLT
	vmovss	-5112(%rbp), %xmm1
.L64:
	vmovss	%xmm1, -5064(%rbp)
	vcvtpd2psx	-5136(%rbp), %xmm0
	vmovd	-5064(%rbp), %xmm1
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L81
	addq	$5120, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L83:
	.cfi_restore_state
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rax
	vxorps	%xmm2, %xmm2, %xmm2
	vmovss	.LC14(%rip), %xmm3
	vmovss	.LC13(%rip), %xmm4
	vxorps	%xmm1, %xmm1, %xmm1
	jmp	.L38
.L34:
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	leaq	4(%rax), %r13
	call	aligned_alloc@PLT
	leaq	4(%rax), %r14
	jmp	.L35
.L90:
	movq	%r13, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
	vmovss	-5112(%rbp), %xmm1
	jmp	.L64
.L89:
	leaq	_ZSt4cout(%rip), %r12
	movl	$2, %edx
	leaq	.LC17(%rip), %rsi
	vmovsd	%xmm4, -5144(%rbp)
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$10, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-5112(%rbp), %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$11, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	-5116(%rbp), %esi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$8, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-5144(%rbp), %xmm4
	movq	%rbx, %rdi
	vmovsd	%xmm4, %xmm4, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$13, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-5136(%rbp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$10, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovss	-5120(%rbp), %xmm1
	movq	%rbx, %rdi
	vmovss	%xmm1, -5112(%rbp)
	vcvtss2sd	%xmm1, %xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	vmovss	-5112(%rbp), %xmm1
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.L91
	cmpb	$0, 56(%r12)
	je	.L61
	movsbl	67(%r12), %esi
.L62:
	movq	%rbx, %rdi
	vmovss	%xmm1, -5112(%rbp)
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	vmovss	-5112(%rbp), %xmm1
	jmp	.L58
.L61:
	movq	%r12, %rdi
	vmovss	%xmm1, -5112(%rbp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	vmovss	-5112(%rbp), %xmm1
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L62
	movq	%r12, %rdi
	call	*%rax
	vmovss	-5112(%rbp), %xmm1
	movsbl	%al, %esi
	jmp	.L62
.L87:
	vxorps	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L51:
	vmovss	0(%r13,%rax,4), %xmm0
	vmulss	(%r14,%rax,4), %xmm0, %xmm0
	movq	-5112(%rbp), %rcx
	addq	%rcx, %rax
	vaddss	%xmm0, %xmm1, %xmm1
	cmpq	%rbx, %rax
	jb	.L51
	jmp	.L49
.L37:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm1, %xmm1, %xmm1
	movq	%rax, %r15
	jmp	.L49
.L88:
	vzeroupper
	jmp	.L49
.L67:
	vxorps	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	jmp	.L53
.L81:
	call	__stack_chk_fail@PLT
.L91:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L81
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4953:
	.size	_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb, .-_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb
	.section	.text._Z14run_experimentIfESt5arrayIT_Lm3EEmmbb.constprop.0,"axG",@progbits,_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.p2align 4
	.type	_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb.constprop.0, @function
_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb.constprop.0:
.LFB5539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$992, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rsi, 16(%rsp)
	leaq	32(,%rdi,4), %r15
	movq	%rdi, %rbx
	movl	$32, %edi
	movl	%edx, 12(%rsp)
	movq	%r15, %rsi
	movq	%fs:40, %rax
	movq	%rax, 5080(%rsp)
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L93
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	movq	%rax, %r14
	call	aligned_alloc@PLT
	movq	%rax, %r13
.L94:
	movl	$42, %ecx
	movl	$1, %eax
	leaq	80(%rsp), %r15
	movq	$42, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L95:
	movq	%rcx, %rdx
	shrq	$30, %rdx
	xorq	%rcx, %rdx
	imulq	$1812433253, %rdx, %rdx
	leal	(%rdx,%rax), %ecx
	movq	%rcx, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	$624, %rax
	jne	.L95
	movq	$624, 5072(%rsp)
	vxorps	%xmm2, %xmm2, %xmm2
	testq	%rbx, %rbx
	je	.L96
	vmovss	.LC13(%rip), %xmm4
	vmovss	.LC14(%rip), %xmm3
	xorl	%r12d, %r12d
	vxorps	%xmm1, %xmm1, %xmm1
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L136:
	vcvtsi2ssq	%rax, %xmm2, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jnb	.L120
.L137:
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r14,%r12,4)
	cmpq	$623, %rdx
	ja	.L134
.L101:
	leaq	1(%rdx), %rax
	movq	80(%rsp,%rdx,8), %rdx
	movq	%rax, 5072(%rsp)
	movq	%rdx, %rdi
	shrq	$11, %rdi
	movl	%edi, %edi
	xorq	%rdi, %rdx
	movq	%rdx, %rdi
	salq	$7, %rdi
	andl	$2636928640, %edi
	xorq	%rdi, %rdx
	movq	%rdx, %rdi
	salq	$15, %rdi
	andl	$4022730752, %edi
	xorq	%rdi, %rdx
	movq	%rdx, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rdx
	js	.L102
	vcvtsi2ssq	%rdx, %xmm2, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jnb	.L104
.L138:
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 0(%r13,%r12,4)
	addq	$1, %r12
	cmpq	%r12, %rbx
	je	.L106
.L107:
	cmpq	$623, %rax
	ja	.L135
.L97:
	leaq	1(%rax), %rdx
	movq	80(%rsp,%rax,8), %rax
	movq	%rdx, 5072(%rsp)
	movq	%rax, %rdi
	shrq	$11, %rdi
	movl	%edi, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$7, %rdi
	andl	$2636928640, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$15, %rdi
	andl	$4022730752, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rax
	jns	.L136
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2ssq	%rdi, %xmm2, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jb	.L137
.L120:
	vmovss	.LC11(%rip), %xmm0
	vmovss	%xmm0, (%r14,%r12,4)
	cmpq	$623, %rdx
	jbe	.L101
	.p2align 4,,10
	.p2align 3
.L134:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm1, %xmm1, %xmm1
	movq	5072(%rsp), %rdx
	vmovss	.LC14(%rip), %xmm3
	vmovss	.LC13(%rip), %xmm4
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L102:
	movq	%rdx, %rdi
	andl	$1, %edx
	shrq	%rdi
	orq	%rdx, %rdi
	vcvtsi2ssq	%rdi, %xmm2, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jb	.L138
.L104:
	movl	$0x3f7fffff, 0(%r13,%r12,4)
	addq	$1, %r12
	cmpq	%r12, %rbx
	jne	.L107
.L106:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	cmpq	$1, 16(%rsp)
	movq	%rax, %r15
	jne	.L139
	leaq	-1(%rbx), %rax
	cmpq	$6, %rax
	jbe	.L121
	movq	%rbx, %rdx
	xorl	%eax, %eax
	vxorps	%xmm1, %xmm1, %xmm1
	shrq	$3, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L113:
	vmovups	0(%r13,%rax), %ymm5
	vmulps	(%r14,%rax), %ymm5, %ymm0
	addq	$32, %rax
	vaddss	%xmm1, %xmm0, %xmm1
	vshufps	$85, %xmm0, %xmm0, %xmm4
	vshufps	$255, %xmm0, %xmm0, %xmm3
	vaddss	%xmm1, %xmm4, %xmm4
	vunpckhps	%xmm0, %xmm0, %xmm1
	vextractf128	$0x1, %ymm0, %xmm0
	vaddss	%xmm4, %xmm1, %xmm1
	vaddss	%xmm1, %xmm3, %xmm3
	vaddss	%xmm3, %xmm0, %xmm1
	vshufps	$85, %xmm0, %xmm0, %xmm3
	vaddss	%xmm1, %xmm3, %xmm3
	vunpckhps	%xmm0, %xmm0, %xmm1
	vshufps	$255, %xmm0, %xmm0, %xmm0
	vaddss	%xmm3, %xmm1, %xmm1
	vaddss	%xmm0, %xmm1, %xmm1
	cmpq	%rdx, %rax
	jne	.L113
	movq	%rbx, %rax
	andq	$-8, %rax
	testb	$7, %bl
	je	.L140
	vzeroupper
.L112:
	movq	%rbx, %rdx
	subq	%rax, %rdx
	leaq	-1(%rdx), %rcx
	cmpq	$2, %rcx
	jbe	.L115
	vmovups	0(%r13,%rax,4), %xmm6
	vmulps	(%r14,%rax,4), %xmm6, %xmm0
	movq	%rdx, %rcx
	andq	$-4, %rcx
	addq	%rcx, %rax
	andl	$3, %edx
	vaddss	%xmm1, %xmm0, %xmm1
	vshufps	$85, %xmm0, %xmm0, %xmm3
	vaddss	%xmm1, %xmm3, %xmm3
	vunpckhps	%xmm0, %xmm0, %xmm1
	vshufps	$255, %xmm0, %xmm0, %xmm0
	vaddss	%xmm3, %xmm1, %xmm1
	vaddss	%xmm0, %xmm1, %xmm1
	je	.L108
.L115:
	vmovss	0(%r13,%rax,4), %xmm0
	vmulss	(%r14,%rax,4), %xmm0, %xmm0
	leaq	1(%rax), %rcx
	leaq	0(,%rax,4), %rdx
	vaddss	%xmm0, %xmm1, %xmm1
	cmpq	%rbx, %rcx
	jnb	.L108
	vmovss	4(%r13,%rdx), %xmm0
	vmulss	4(%r14,%rdx), %xmm0, %xmm0
	addq	$2, %rax
	vaddss	%xmm0, %xmm1, %xmm1
	cmpq	%rbx, %rax
	jnb	.L108
	vmovss	8(%r13,%rdx), %xmm0
	vmulss	8(%r14,%rdx), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
.L108:
	vmovss	%xmm1, 8(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%edx, %edx
	vmovss	8(%rsp), %xmm1
	subq	%r15, %rax
	vcvtsi2sdq	%rax, %xmm2, %xmm3
	movq	%rbx, %rax
	vdivsd	.LC15(%rip), %xmm3, %xmm0
	divq	16(%rsp)
	cmpb	$0, 12(%rsp)
	vmovss	%xmm1, 12(%rsp)
	vcvtsi2sdq	%rax, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm2
	vdivsd	%xmm0, %xmm2, %xmm0
	vmovddup	.LC15(%rip), %xmm2
	vunpcklpd	%xmm3, %xmm0, %xmm0
	vdivpd	%xmm2, %xmm0, %xmm7
	vmovapd	%xmm7, 16(%rsp)
	je	.L117
	movq	%r14, %rdi
	call	free@PLT
	movq	%r13, %rdi
	call	free@PLT
	vmovss	12(%rsp), %xmm1
.L118:
	vmovss	%xmm1, 72(%rsp)
	vcvtpd2psx	16(%rsp), %xmm0
	vmovd	72(%rsp), %xmm1
	movq	5080(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L141
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	.cfi_restore_state
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm1, %xmm1, %xmm1
	movq	5072(%rsp), %rax
	vmovss	.LC14(%rip), %xmm3
	vmovss	.LC13(%rip), %xmm4
	jmp	.L97
.L93:
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	leaq	4(%rax), %r14
	call	aligned_alloc@PLT
	leaq	4(%rax), %r13
	jmp	.L94
.L117:
	leaq	-4(%r14), %rdi
	call	free@PLT
	leaq	-4(%r13), %rdi
	call	free@PLT
	vmovss	12(%rsp), %xmm1
	jmp	.L118
.L139:
	vxorps	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L110:
	vmovss	(%r14,%rax,4), %xmm0
	vmulss	0(%r13,%rax,4), %xmm0, %xmm0
	movq	16(%rsp), %rsi
	addq	%rsi, %rax
	vaddss	%xmm0, %xmm1, %xmm1
	cmpq	%rbx, %rax
	jb	.L110
	jmp	.L108
.L96:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm1, %xmm1, %xmm1
	movq	%rax, %r15
	jmp	.L108
.L140:
	vzeroupper
	jmp	.L108
.L121:
	vxorps	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	jmp	.L112
.L141:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5539:
	.size	_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb.constprop.0, .-_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb.constprop.0
	.section	.rodata._Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE.str1.1,"aMS",@progbits,1
.LC23:
	.string	"float32"
.LC24:
	.string	","
.LC25:
	.string	"\n"
	.section	.text._Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,"axG",@progbits,_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.p2align 4
	.weak	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.type	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, @function
_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE:
.LFB4951:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	8(%rsi), %rcx
	movl	%edx, 12(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	movq	(%rsi), %rax
	movq	%rcx, 24(%rsp)
	cmpq	%rax, %rcx
	je	.L142
	testl	%edx, %edx
	jle	.L142
	movq	%rax, 16(%rsp)
	movq	%rdi, %r14
	leaq	.LC24(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L145:
	movq	16(%rsp), %rax
	xorl	%r15d, %r15d
	movq	(%rax), %r12
	.p2align 4,,10
	.p2align 3
.L144:
	movzbl	1(%r14), %edx
	movq	8(%r14), %rsi
	movq	%r12, %rdi
	addl	$1, %r15d
	call	_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb.constprop.0
	movl	$7, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rbp, %rdi
	vmovd	%xmm1, 52(%rsp)
	vmovq	%xmm0, 44(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%r14), %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	1(%r14), %esi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%r13, %rdi
	vcvtss2sd	48(%rsp), %xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%r13, %rdi
	vcvtss2sd	44(%rsp), %xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%r13, %rdi
	vcvtss2sd	52(%rsp), %xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	call	_ZNSo5flushEv@PLT
	cmpl	%r15d, 12(%rsp)
	jne	.L144
	addq	$8, 16(%rsp)
	movq	16(%rsp), %rax
	cmpq	%rax, 24(%rsp)
	jne	.L145
.L142:
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L151
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L151:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4951:
	.size	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, .-_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.text._Z14run_experimentIdESt5arrayIT_Lm3EEmmbb,"axG",@progbits,_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb,comdat
	.p2align 4
	.weak	_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb
	.type	_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb, @function
_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb:
.LFB4960:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$960, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, -5080(%rbp)
	movq	%rsi, %r13
	leaq	64(,%rsi,8), %rbx
	movl	$32, %edi
	movq	%rdx, -5072(%rbp)
	movq	%rbx, %rsi
	movl	%ecx, -5084(%rbp)
	movl	%r8d, -5096(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testb	%cl, %cl
	je	.L153
	call	aligned_alloc@PLT
	movq	%rbx, %rsi
	movl	$32, %edi
	movq	%rax, %r12
	call	aligned_alloc@PLT
	movq	%rax, %rbx
.L154:
	movq	$42, -5056(%rbp)
	movl	$42, %ecx
	movl	$1, %edx
	leaq	-5056(%rbp), %r14
	.p2align 4,,10
	.p2align 3
.L155:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rdx), %ecx
	movq	%rcx, (%r14,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L155
	movq	$624, -64(%rbp)
	vxorps	%xmm1, %xmm1, %xmm1
	testq	%r13, %r13
	je	.L156
	xorl	%r15d, %r15d
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L213:
	vcvtsi2sdq	%rax, %xmm1, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	ja	.L209
.L160:
	movq	-5056(%rbp,%rdi,8), %rax
	leaq	1(%rdi), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, %rdi
	shrq	$11, %rdi
	movl	%edi, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$7, %rdi
	andl	$2636928640, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$15, %rdi
	andl	$4022730752, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rax
	js	.L161
	vcvtsi2sdq	%rax, %xmm1, %xmm0
.L162:
	vmulsd	.LC28(%rip), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LC29(%rip), %xmm0, %xmm0
	vcomisd	.LC30(%rip), %xmm0
	jnb	.L191
	vaddsd	%xmm2, %xmm0, %xmm0
.L163:
	vmovsd	%xmm0, (%r12,%r15,8)
	cmpq	$623, %rdx
	ja	.L210
.L164:
	leaq	1(%rdx), %rdi
	movq	-5056(%rbp,%rdx,8), %rdx
	movq	%rdi, -64(%rbp)
	movq	%rdx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rax, %rdx
	js	.L165
	vcvtsi2sdq	%rdx, %xmm1, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	ja	.L211
.L167:
	movq	-5056(%rbp,%rdi,8), %rax
	leaq	1(%rdi), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, %rdi
	shrq	$11, %rdi
	movl	%edi, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$7, %rdi
	andl	$2636928640, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$15, %rdi
	andl	$4022730752, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rax
	js	.L168
	vcvtsi2sdq	%rax, %xmm1, %xmm0
.L169:
	vmulsd	.LC28(%rip), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LC29(%rip), %xmm0, %xmm0
	vcomisd	.LC30(%rip), %xmm0
	jnb	.L170
	vaddsd	%xmm2, %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%r15,8)
	addq	$1, %r15
	cmpq	%r15, %r13
	je	.L172
.L173:
	cmpq	$623, %rdx
	ja	.L212
.L157:
	movq	-5056(%rbp,%rdx,8), %rax
	leaq	1(%rdx), %rdi
	movq	%rdi, -64(%rbp)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	jns	.L213
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	jbe	.L160
.L209:
	movq	%r14, %rdi
	vmovsd	%xmm3, -5064(%rbp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdi
	vxorps	%xmm1, %xmm1, %xmm1
	vmovsd	-5064(%rbp), %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L168:
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2sdq	%rdi, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L165:
	movq	%rdx, %rax
	andl	$1, %edx
	shrq	%rax
	orq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm1, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	jbe	.L167
.L211:
	movq	%r14, %rdi
	vmovsd	%xmm3, -5064(%rbp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdi
	vxorps	%xmm1, %xmm1, %xmm1
	vmovsd	-5064(%rbp), %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L161:
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2sdq	%rdi, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L210:
	movq	%r14, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdx
	vxorps	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L212:
	movq	%r14, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdx
	vxorps	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L157
.L170:
	movq	.LC26(%rip), %rax
	movq	%rax, (%rbx,%r15,8)
	addq	$1, %r15
	cmpq	%r15, %r13
	jne	.L173
.L172:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	cmpq	$1, -5072(%rbp)
	movq	%rax, %r15
	jne	.L214
	leaq	-1(%r13), %rax
	cmpq	$2, %rax
	jbe	.L192
	movq	%r13, %rdx
	xorl	%eax, %eax
	vxorpd	%xmm2, %xmm2, %xmm2
	shrq	$2, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L179:
	vmovupd	(%rbx,%rax), %ymm5
	vmulpd	(%r12,%rax), %ymm5, %ymm0
	addq	$32, %rax
	vaddsd	%xmm2, %xmm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm3
	vextractf128	$0x1, %ymm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
	cmpq	%rax, %rdx
	jne	.L179
	movq	%r13, %rax
	andq	$-4, %rax
	testb	$3, %r13b
	je	.L215
	vzeroupper
.L178:
	movq	%r13, %rdx
	subq	%rax, %rdx
	cmpq	$1, %rdx
	je	.L181
	vmovupd	(%rbx,%rax,8), %xmm7
	vmulpd	(%r12,%rax,8), %xmm7, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	testb	$1, %dl
	je	.L174
	andq	$-2, %rdx
	addq	%rdx, %rax
.L181:
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	(%r12,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
.L174:
	vmovsd	%xmm2, -5104(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm1, %xmm1, %xmm1
	xorl	%edx, %edx
	vmovsd	.LC15(%rip), %xmm3
	subq	%r15, %rax
	vmovsd	-5104(%rbp), %xmm2
	vcvtsi2sdq	%rax, %xmm1, %xmm0
	movq	%r13, %rax
	divq	-5072(%rbp)
	vdivsd	%xmm3, %xmm0, %xmm6
	cmpb	$0, -5096(%rbp)
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	vdivsd	%xmm6, %xmm1, %xmm1
	vmovsd	%xmm6, -5064(%rbp)
	vdivsd	%xmm3, %xmm1, %xmm7
	vmovq	%xmm7, %r14
	jne	.L216
.L183:
	cmpb	$0, -5084(%rbp)
	vmovsd	%xmm2, -5072(%rbp)
	je	.L188
	movq	%r12, %rdi
	call	free@PLT
	movq	%rbx, %rdi
	call	free@PLT
	vmovsd	-5072(%rbp), %xmm2
.L189:
	movq	-5080(%rbp), %rax
	vmovsd	-5064(%rbp), %xmm7
	movq	%r14, (%rax)
	vmovsd	%xmm7, 8(%rax)
	vmovsd	%xmm2, 16(%rax)
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L208
	movq	-5080(%rbp), %rax
	addq	$5056, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L191:
	.cfi_restore_state
	vmovsd	.LC26(%rip), %xmm0
	jmp	.L163
.L153:
	call	aligned_alloc@PLT
	movq	%rbx, %rsi
	movl	$32, %edi
	leaq	8(%rax), %r12
	call	aligned_alloc@PLT
	leaq	8(%rax), %rbx
	jmp	.L154
.L188:
	leaq	-8(%r12), %rdi
	call	free@PLT
	leaq	-8(%rbx), %rdi
	call	free@PLT
	vmovsd	-5072(%rbp), %xmm2
	jmp	.L189
.L216:
	movl	$2, %edx
	leaq	.LC17(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	vmovsd	%xmm2, -5096(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$10, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-5072(%rbp), %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$11, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	-5084(%rbp), %esi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$8, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-5064(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$13, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovq	%r14, %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$10, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-5096(%rbp), %xmm2
	movq	%r13, %rdi
	vmovsd	%xmm2, %xmm2, %xmm0
	vmovsd	%xmm2, -5072(%rbp)
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	vmovsd	-5072(%rbp), %xmm2
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r15
	testq	%r15, %r15
	je	.L217
	cmpb	$0, 56(%r15)
	je	.L186
	movsbl	67(%r15), %esi
.L187:
	movq	%r13, %rdi
	vmovsd	%xmm2, -5072(%rbp)
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	vmovsd	-5072(%rbp), %xmm2
	jmp	.L183
.L215:
	vzeroupper
	jmp	.L174
.L186:
	movq	%r15, %rdi
	vmovsd	%xmm2, -5072(%rbp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	vmovsd	-5072(%rbp), %xmm2
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L187
	movq	%r15, %rdi
	call	*%rax
	vmovsd	-5072(%rbp), %xmm2
	movsbl	%al, %esi
	jmp	.L187
.L214:
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L176:
	vmovsd	(%r12,%rax,8), %xmm0
	vmulsd	(%rbx,%rax,8), %xmm0, %xmm0
	movq	-5072(%rbp), %rsi
	addq	%rsi, %rax
	vaddsd	%xmm0, %xmm2, %xmm2
	cmpq	%r13, %rax
	jb	.L176
	jmp	.L174
.L156:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%rax, %r15
	jmp	.L174
.L192:
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	jmp	.L178
.L208:
	call	__stack_chk_fail@PLT
.L217:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L208
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4960:
	.size	_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb, .-_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb
	.section	.text._Z14run_experimentIdESt5arrayIT_Lm3EEmmbb.constprop.0,"axG",@progbits,_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.p2align 4
	.type	_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb.constprop.0, @function
_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb.constprop.0:
.LFB5543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$960, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, 24(%rsp)
	movq	%rsi, %r13
	leaq	64(,%rsi,8), %rbx
	movl	$32, %edi
	movq	%rdx, 32(%rsp)
	movq	%rbx, %rsi
	movl	%ecx, 16(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 5048(%rsp)
	xorl	%eax, %eax
	testb	%cl, %cl
	je	.L219
	call	aligned_alloc@PLT
	movq	%rbx, %rsi
	movl	$32, %edi
	movq	%rax, %r12
	call	aligned_alloc@PLT
	movq	%rax, %rbx
.L220:
	movl	$42, %ecx
	movl	$1, %edx
	leaq	48(%rsp), %r15
	movq	$42, 48(%rsp)
	.p2align 4,,10
	.p2align 3
.L221:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rdx), %ecx
	movq	%rcx, (%r15,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L221
	movq	$624, 5040(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	testq	%r13, %r13
	je	.L222
	xorl	%r14d, %r14d
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L272:
	vcvtsi2sdq	%rax, %xmm1, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	ja	.L268
.L226:
	movq	48(%rsp,%rdi,8), %rax
	leaq	1(%rdi), %rdx
	movq	%rdx, 5040(%rsp)
	movq	%rax, %rdi
	shrq	$11, %rdi
	movl	%edi, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$7, %rdi
	andl	$2636928640, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$15, %rdi
	andl	$4022730752, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rax
	js	.L227
	vcvtsi2sdq	%rax, %xmm1, %xmm0
.L228:
	vmulsd	.LC28(%rip), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LC29(%rip), %xmm0, %xmm0
	vcomisd	.LC30(%rip), %xmm0
	jnb	.L252
	vaddsd	%xmm2, %xmm0, %xmm0
.L229:
	vmovsd	%xmm0, (%r12,%r14,8)
	cmpq	$623, %rdx
	ja	.L269
.L230:
	movq	48(%rsp,%rdx,8), %rax
	leaq	1(%rdx), %rdi
	movq	%rdi, 5040(%rsp)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rax, %rdx
	js	.L231
	vcvtsi2sdq	%rdx, %xmm1, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	ja	.L270
.L233:
	leaq	1(%rdi), %rdx
	movq	48(%rsp,%rdi,8), %rdi
	movq	%rdx, 5040(%rsp)
	movq	%rdi, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rdi
	movq	%rdi, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$15, %rdi
	andl	$4022730752, %edi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rax
	js	.L234
	vcvtsi2sdq	%rax, %xmm1, %xmm0
.L235:
	vmulsd	.LC28(%rip), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LC29(%rip), %xmm0, %xmm0
	vcomisd	.LC30(%rip), %xmm0
	jnb	.L236
	vaddsd	%xmm2, %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%r14,8)
	addq	$1, %r14
	cmpq	%r14, %r13
	je	.L238
.L239:
	cmpq	$623, %rdx
	ja	.L271
.L223:
	movq	48(%rsp,%rdx,8), %rax
	leaq	1(%rdx), %rdi
	movq	%rdi, 5040(%rsp)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	jns	.L272
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	jbe	.L226
.L268:
	movq	%r15, %rdi
	vmovsd	%xmm3, 40(%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vmovsd	40(%rsp), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	movq	5040(%rsp), %rdi
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L234:
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2sdq	%rdi, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L231:
	movq	%rdx, %rax
	andl	$1, %edx
	shrq	%rax
	orq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm1, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	jbe	.L233
.L270:
	movq	%r15, %rdi
	vmovsd	%xmm3, 40(%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vmovsd	40(%rsp), %xmm3
	vxorps	%xmm1, %xmm1, %xmm1
	movq	5040(%rsp), %rdi
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L227:
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2sdq	%rdi, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L228
	.p2align 4,,10
	.p2align 3
.L269:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	5040(%rsp), %rdx
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L271:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	5040(%rsp), %rdx
	jmp	.L223
.L236:
	movq	.LC26(%rip), %rax
	movq	%rax, (%rbx,%r14,8)
	addq	$1, %r14
	cmpq	%r14, %r13
	jne	.L239
.L238:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	cmpq	$1, 32(%rsp)
	movq	%rax, %r14
	jne	.L273
	leaq	-1(%r13), %rax
	cmpq	$2, %rax
	jbe	.L253
	movq	%r13, %rdx
	xorl	%eax, %eax
	vxorpd	%xmm2, %xmm2, %xmm2
	shrq	$2, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L245:
	vmovupd	(%rbx,%rax), %ymm5
	vmulpd	(%r12,%rax), %ymm5, %ymm0
	addq	$32, %rax
	vaddsd	%xmm2, %xmm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm3
	vextractf128	$0x1, %ymm0, %xmm0
	vaddsd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
	cmpq	%rax, %rdx
	jne	.L245
	movq	%r13, %rax
	andq	$-4, %rax
	testb	$3, %r13b
	je	.L274
	vzeroupper
.L244:
	movq	%r13, %rdx
	subq	%rax, %rdx
	cmpq	$1, %rdx
	je	.L247
	vmovupd	(%rbx,%rax,8), %xmm6
	vmulpd	(%r12,%rax,8), %xmm6, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	testb	$1, %dl
	je	.L240
	andq	$-2, %rdx
	addq	%rdx, %rax
.L247:
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	(%r12,%rax,8), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
.L240:
	vmovsd	%xmm2, 40(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm1, %xmm1, %xmm1
	xorl	%edx, %edx
	vmovsd	.LC15(%rip), %xmm3
	subq	%r14, %rax
	vmovsd	40(%rsp), %xmm2
	vcvtsi2sdq	%rax, %xmm1, %xmm0
	movq	%r13, %rax
	divq	32(%rsp)
	vdivsd	%xmm3, %xmm0, %xmm0
	cmpb	$0, 16(%rsp)
	vmovsd	%xmm2, 16(%rsp)
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm0, 40(%rsp)
	vdivsd	%xmm3, %xmm1, %xmm1
	vmovsd	%xmm1, 32(%rsp)
	je	.L249
	movq	%r12, %rdi
	call	free@PLT
	movq	%rbx, %rdi
	call	free@PLT
	vmovsd	40(%rsp), %xmm0
	vmovsd	32(%rsp), %xmm1
	vmovsd	16(%rsp), %xmm2
.L250:
	movq	24(%rsp), %rax
	vmovsd	%xmm1, (%rax)
	vmovsd	%xmm0, 8(%rax)
	vmovsd	%xmm2, 16(%rax)
	movq	5048(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L275
	movq	24(%rsp), %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L252:
	.cfi_restore_state
	vmovsd	.LC26(%rip), %xmm0
	jmp	.L229
.L219:
	call	aligned_alloc@PLT
	movq	%rbx, %rsi
	movl	$32, %edi
	leaq	8(%rax), %r12
	call	aligned_alloc@PLT
	leaq	8(%rax), %rbx
	jmp	.L220
.L249:
	leaq	-8(%r12), %rdi
	call	free@PLT
	leaq	-8(%rbx), %rdi
	call	free@PLT
	vmovsd	16(%rsp), %xmm2
	vmovsd	32(%rsp), %xmm1
	vmovsd	40(%rsp), %xmm0
	jmp	.L250
.L274:
	vzeroupper
	jmp	.L240
.L273:
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L242:
	vmovsd	(%r12,%rax,8), %xmm0
	vmulsd	(%rbx,%rax,8), %xmm0, %xmm0
	movq	32(%rsp), %rsi
	addq	%rsi, %rax
	vaddsd	%xmm0, %xmm2, %xmm2
	cmpq	%r13, %rax
	jb	.L242
	jmp	.L240
.L222:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%rax, %r14
	jmp	.L240
.L253:
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	jmp	.L244
.L275:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5543:
	.size	_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb.constprop.0, .-_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb.constprop.0
	.section	.rodata._Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE.str1.1,"aMS",@progbits,1
.LC31:
	.string	"float64"
	.section	.text._Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,"axG",@progbits,_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.p2align 4
	.weak	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.type	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, @function
_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE:
.LFB4952:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	8(%rsi), %rcx
	movl	%edx, 4(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	movq	(%rsi), %rax
	movq	%rcx, 24(%rsp)
	cmpq	%rax, %rcx
	je	.L276
	testl	%edx, %edx
	jle	.L276
	movq	%rax, 16(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdi, %r14
	leaq	.LC24(%rip), %rbx
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L279:
	movq	16(%rsp), %rax
	xorl	%r15d, %r15d
	movq	(%rax), %r12
	.p2align 4,,10
	.p2align 3
.L278:
	movzbl	1(%r14), %ecx
	movq	8(%r14), %rdx
	movq	%r12, %rsi
	addl	$1, %r15d
	movq	8(%rsp), %rdi
	call	_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb.constprop.0
	movl	$7, %edx
	leaq	.LC31(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%r14), %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	1(%r14), %esi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	40(%rsp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	32(%rsp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	48(%rsp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	call	_ZNSo5flushEv@PLT
	cmpl	%r15d, 4(%rsp)
	jne	.L278
	addq	$8, 16(%rsp)
	movq	16(%rsp), %rax
	cmpq	%rax, 24(%rsp)
	jne	.L279
.L276:
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L285
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L285:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4952:
	.size	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, .-_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC41:
	.string	"basic_string: construction from null is not valid"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC42:
	.string	"--float64"
.LC43:
	.string	"--unaligned"
.LC44:
	.string	"--stride="
.LC45:
	.string	"stoul"
.LC46:
	.string	"--sweep"
.LC47:
	.string	"--csv="
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"datatype,n,stride,aligned,time_s,gflops,result\n"
	.section	.rodata.str1.1
.LC49:
	.string	"float32,"
.LC50:
	.string	"float64,"
.LC51:
	.string	"Results written to "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB53:
	.section	.text.startup,"ax",@progbits
.LHOTB53:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4548:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4548
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$257, %edx
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$704, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	vmovdqa	.LC33(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-608(%rbp), %rax
	movw	%dx, -656(%rbp)
	movq	%rax, -744(%rbp)
	movq	%rax, -624(%rbp)
	movabsq	$3347146957242197362, %rax
	movq	%rax, -608(%rbp)
	movb	$0, -632(%rbp)
	movl	$1987273518, -601(%rbp)
	movq	$11, -616(%rbp)
	movb	$0, -597(%rbp)
	vmovdqu	%xmm0, -648(%rbp)
	cmpl	$1, %edi
	jle	.L318
	leal	-2(%rdi), %eax
	leaq	8(%rsi), %r12
	leaq	16(%rsi,%rax,8), %r15
	leaq	-688(%rbp), %rax
	movq	%rax, -728(%rbp)
	leaq	-720(%rbp), %rax
	leaq	-672(%rbp), %r14
	movq	%rax, -736(%rbp)
	.p2align 4,,10
	.p2align 3
.L319:
	movq	(%r12), %r13
	movq	%r14, -688(%rbp)
	testq	%r13, %r13
	je	.L357
	movq	%r13, %rdi
	call	strlen@PLT
	movq	%rax, -720(%rbp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.L358
	cmpq	$1, %rax
	jne	.L293
	movzbl	0(%r13), %edx
	movb	%dl, -672(%rbp)
.L295:
	movq	%r14, %rdx
.L294:
	movq	%rax, -680(%rbp)
	movb	$0, (%rdx,%rax)
	movq	-680(%rbp), %rax
	cmpq	$9, %rax
	je	.L359
	cmpq	$11, %rax
	jne	.L300
	movq	-688(%rbp), %rdi
	movabsq	$7451606224181996845, %rax
	cmpq	%rax, (%rdi)
	je	.L360
	.p2align 4,,10
	.p2align 3
.L300:
	movq	-728(%rbp), %rdi
	xorl	%edx, %edx
	movl	$9, %ecx
	leaq	.LC44(%rip), %rsi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm@PLT
	testq	%rax, %rax
	je	.L361
	cmpq	$7, -680(%rbp)
	je	.L362
.L306:
	movq	-728(%rbp), %r13
	xorl	%edx, %edx
	movl	$6, %ecx
	leaq	.LC47(%rip), %rsi
	movq	%r13, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm@PLT
	testq	%rax, %rax
	jne	.L307
	leaq	-592(%rbp), %rbx
	orq	$-1, %rcx
	movl	$6, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB2:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE2:
	movq	-592(%rbp), %rsi
	leaq	-576(%rbp), %rax
	movq	-624(%rbp), %rdi
	vmovq	-584(%rbp), %xmm0
	cmpq	%rax, %rsi
	je	.L363
	movq	-744(%rbp), %rcx
	vpinsrq	$1, -576(%rbp), %xmm0, %xmm0
	cmpq	%rcx, %rdi
	je	.L364
	movq	-608(%rbp), %rdx
	movq	%rsi, -624(%rbp)
	vmovdqu	%xmm0, -616(%rbp)
	testq	%rdi, %rdi
	je	.L315
	movq	%rdi, -592(%rbp)
	movq	%rdx, -576(%rbp)
.L314:
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rax, -584(%rbp)
	movq	-592(%rbp), %rax
	movb	$0, (%rax)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-688(%rbp), %rdi
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L359:
	movq	-688(%rbp), %rdi
	movabsq	$3923868306534444333, %rax
	cmpq	%rax, (%rdi)
	jne	.L300
	cmpb	$52, 8(%rdi)
	jne	.L300
	movb	$0, -656(%rbp)
	.p2align 4,,10
	.p2align 3
.L302:
	cmpq	%r14, %rdi
	je	.L316
	movq	-672(%rbp), %rax
	addq	$8, %r12
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	cmpq	%r12, %r15
	jne	.L319
.L318:
	vmovdqa	.LC34(%rip), %ymm0
	movl	$216, %edi
	movq	$67108864, -384(%rbp)
	vmovdqa	%ymm0, -592(%rbp)
	vmovdqa	.LC35(%rip), %ymm0
	vmovdqa	%ymm0, -560(%rbp)
	vmovdqa	.LC36(%rip), %ymm0
	vmovdqa	%ymm0, -528(%rbp)
	vmovdqa	.LC37(%rip), %ymm0
	vmovdqa	%ymm0, -496(%rbp)
	vmovdqa	.LC38(%rip), %ymm0
	vmovdqa	%ymm0, -464(%rbp)
	vmovdqa	.LC39(%rip), %ymm0
	vmovdqa	%ymm0, -432(%rbp)
	vmovdqa	.LC40(%rip), %xmm0
	vmovdqa	%xmm0, -400(%rbp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, -712(%rbp)
	vzeroupper
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	leaq	216(%rax), %rdx
	vmovdqa	-592(%rbp), %ymm2
	vmovdqa	-560(%rbp), %ymm3
	movq	%rax, -720(%rbp)
	movq	%rdx, -704(%rbp)
	vmovdqa	-528(%rbp), %ymm4
	leaq	-592(%rbp), %rbx
	leaq	-624(%rbp), %r14
	movq	%rdx, -712(%rbp)
	vmovdqa	-496(%rbp), %ymm5
	movl	$16, %edx
	movq	%r14, %rsi
	vmovdqa	-464(%rbp), %ymm6
	vmovdqa	-432(%rbp), %ymm7
	vmovdqu	%ymm2, (%rax)
	movq	%rbx, %rdi
	vmovdqu	-408(%rbp), %ymm1
	vmovdqu	%ymm3, 32(%rax)
	vmovdqu	%ymm7, 160(%rax)
	vmovdqu	%ymm4, 64(%rax)
	vmovdqu	%ymm5, 96(%rax)
	vmovdqu	%ymm6, 128(%rax)
	vmovdqu	%ymm1, 184(%rax)
	vzeroupper
.LEHB4:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.LEHE4:
	movl	$47, %edx
	leaq	.LC48(%rip), %rsi
	movq	%rbx, %rdi
.LEHB5:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpb	$0, -632(%rbp)
	movzbl	-656(%rbp), %eax
	jne	.L365
	movzbl	-655(%rbp), %edx
	movq	-648(%rbp), %rsi
	movq	-640(%rbp), %rdi
	testb	%al, %al
	je	.L324
	movl	$1, %ecx
	call	_Z14run_experimentIfESt5arrayIT_Lm3EEmmbb
	movl	$8, %edx
	leaq	.LC49(%rip), %rsi
	movq	%rbx, %rdi
	vmovq	%xmm0, -688(%rbp)
	vmovd	%xmm1, -680(%rbp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-640(%rbp), %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	leaq	.LC24(%rip), %r12
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%r12, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-648(%rbp), %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	-655(%rbp), %esi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%r13, %rdi
	vcvtss2sd	-684(%rbp), %xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%r13, %rdi
	vcvtss2sd	-688(%rbp), %xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%r13, %rdi
	vcvtss2sd	-680(%rbp), %xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
.L356:
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC25(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZNSo5flushEv@PLT
.L322:
	movq	%rbx, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
	leaq	_ZSt4cout(%rip), %r12
	movl	$19, %edx
	leaq	.LC51(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-616(%rbp), %rdx
	movq	-624(%rbp), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.L366
	cmpb	$0, 56(%r13)
	je	.L327
	movsbl	67(%r13), %esi
.L328:
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.LEHE5:
	movq	%rbx, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-720(%rbp), %rdi
	call	_ZNSt6vectorImSaImEED1Ev
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L350
	addq	$704, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L293:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L295
	movq	%r14, %rdi
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L358:
	movq	-736(%rbp), %rsi
	movq	-728(%rbp), %rdi
	xorl	%edx, %edx
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE6:
	movq	%rax, -688(%rbp)
	movq	%rax, %rdi
	movq	-720(%rbp), %rax
	movq	%rax, -672(%rbp)
.L292:
	movq	%rbx, %rdx
	movq	%r13, %rsi
	call	memcpy@PLT
	movq	-720(%rbp), %rax
	movq	-688(%rbp), %rdx
	jmp	.L294
.L365:
	leaq	-720(%rbp), %rsi
	leaq	-656(%rbp), %rdi
	movq	%rbx, %rcx
	movl	$3, %edx
	testb	%al, %al
	je	.L321
.LEHB7:
	call	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	jmp	.L322
	.p2align 4,,10
	.p2align 3
.L316:
	addq	$8, %r12
	cmpq	%r12, %r15
	jne	.L319
	jmp	.L318
.L360:
	cmpl	$1684368999, 7(%rdi)
	jne	.L300
	movb	$0, -655(%rbp)
	jmp	.L302
.L327:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L328
	movl	$10, %esi
	movq	%r13, %rdi
	call	*%rax
.LEHE7:
	movsbl	%al, %esi
	jmp	.L328
.L361:
	leaq	-592(%rbp), %rbx
	movq	-728(%rbp), %rsi
	orq	$-1, %rcx
	movl	$9, %edx
	movq	%rbx, %rdi
.LEHB8:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE8:
	movq	-592(%rbp), %rdx
	movq	__isoc23_strtoul@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC45(%rip), %rsi
.LEHB9:
	call	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE9:
	movq	%rbx, %rdi
	movq	%rax, -648(%rbp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-688(%rbp), %rdi
	jmp	.L302
.L362:
	movq	-688(%rbp), %rdi
	movl	$7, %edx
	leaq	.LC46(%rip), %rsi
	movq	%rdi, -752(%rbp)
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L306
	movb	$1, -632(%rbp)
	movq	-752(%rbp), %rdi
	jmp	.L302
.L324:
	leaq	-688(%rbp), %rax
	movl	%edx, %ecx
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_Z14run_experimentIdESt5arrayIT_Lm3EEmmbb
	movl	$8, %edx
	leaq	.LC50(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-640(%rbp), %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	leaq	.LC24(%rip), %r12
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%r12, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-648(%rbp), %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	-655(%rbp), %esi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-680(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-688(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-672(%rbp), %xmm0
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	jmp	.L356
.L321:
	call	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
.LEHE10:
	jmp	.L322
.L307:
	movq	-688(%rbp), %rdx
	movq	__isoc23_strtoul@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC45(%rip), %rsi
.LEHB11:
	call	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE11:
	movq	%rax, -640(%rbp)
	movq	-688(%rbp), %rdi
	jmp	.L302
.L364:
	movq	%rsi, -624(%rbp)
	vmovdqu	%xmm0, -616(%rbp)
.L315:
	movq	%rax, -592(%rbp)
	jmp	.L314
.L363:
	vmovq	%xmm0, %rax
	testq	%rax, %rax
	je	.L310
	subq	$1, %rax
	je	.L367
	vmovq	%xmm0, %rdx
	call	memcpy@PLT
	movq	-624(%rbp), %rdi
	vmovq	-584(%rbp), %xmm0
.L310:
	vmovq	%xmm0, %rax
	vmovq	%xmm0, -616(%rbp)
	movb	$0, (%rdi,%rax)
	jmp	.L314
.L367:
	movzbl	-576(%rbp), %eax
	movb	%al, (%rdi)
	movq	-624(%rbp), %rdi
	vmovq	-584(%rbp), %xmm0
	jmp	.L310
.L357:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L350
	leaq	.LC41(%rip), %rdi
.LEHB12:
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE12:
.L350:
	call	__stack_chk_fail@PLT
.L366:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L350
.LEHB13:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE13:
.L340:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L333
.L339:
	endbr64
	movq	%rax, %rbx
	leaq	-624(%rbp), %r14
	vzeroupper
	jmp	.L331
.L337:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L330
.L338:
	endbr64
	movq	%rax, %r12
	jmp	.L329
.L341:
	endbr64
	movq	%rax, %r12
	jmp	.L332
	.section	.gcc_except_table,"a",@progbits
.LLSDA4548:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4548-.LLSDACSB4548
.LLSDACSB4548:
	.uleb128 .LEHB2-.LFB4548
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L337-.LFB4548
	.uleb128 0
	.uleb128 .LEHB3-.LFB4548
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L339-.LFB4548
	.uleb128 0
	.uleb128 .LEHB4-.LFB4548
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L340-.LFB4548
	.uleb128 0
	.uleb128 .LEHB5-.LFB4548
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L341-.LFB4548
	.uleb128 0
	.uleb128 .LEHB6-.LFB4548
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L339-.LFB4548
	.uleb128 0
	.uleb128 .LEHB7-.LFB4548
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L341-.LFB4548
	.uleb128 0
	.uleb128 .LEHB8-.LFB4548
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L337-.LFB4548
	.uleb128 0
	.uleb128 .LEHB9-.LFB4548
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L338-.LFB4548
	.uleb128 0
	.uleb128 .LEHB10-.LFB4548
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L341-.LFB4548
	.uleb128 0
	.uleb128 .LEHB11-.LFB4548
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L337-.LFB4548
	.uleb128 0
	.uleb128 .LEHB12-.LFB4548
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L339-.LFB4548
	.uleb128 0
	.uleb128 .LEHB13-.LFB4548
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L341-.LFB4548
	.uleb128 0
.LLSDACSE4548:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4548
	.type	main.cold, @function
main.cold:
.LFSB4548:
.L332:
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	%rbx, %rdi
	vzeroupper
	movq	%r12, %rbx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.L333:
	leaq	-720(%rbp), %rdi
	call	_ZNSt6vectorImSaImEED1Ev
.L331:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L368
	movq	%rbx, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L329:
	movq	%rbx, %rdi
	vzeroupper
	movq	%r12, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L330:
	movq	-728(%rbp), %rdi
	leaq	-624(%rbp), %r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L331
.L368:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4548:
	.section	.gcc_except_table
.LLSDAC4548:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4548-.LLSDACSBC4548
.LLSDACSBC4548:
	.uleb128 .LEHB14-.LCOLDB53
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSEC4548:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE53:
	.section	.text.startup
.LHOTE53:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.quad	-2147483648
	.align 8
.LC9:
	.quad	2147483647
	.set	.LC10,.LC34
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC11:
	.long	1065353215
	.align 4
.LC13:
	.long	796917760
	.align 4
.LC14:
	.long	1065353216
	.section	.rodata.cst8
	.align 8
.LC15:
	.long	0
	.long	1104006501
	.align 8
.LC26:
	.long	-1
	.long	1072693247
	.align 8
.LC28:
	.long	0
	.long	1106247680
	.align 8
.LC29:
	.long	0
	.long	1005584384
	.align 8
.LC30:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC33:
	.quad	1
	.quad	10000000
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC34:
	.quad	1
	.quad	2
	.quad	4
	.quad	8
	.align 32
.LC35:
	.quad	16
	.quad	32
	.quad	64
	.quad	128
	.align 32
.LC36:
	.quad	256
	.quad	512
	.quad	1024
	.quad	2048
	.align 32
.LC37:
	.quad	4096
	.quad	8192
	.quad	16384
	.quad	32768
	.align 32
.LC38:
	.quad	65536
	.quad	131072
	.quad	262144
	.quad	524288
	.align 32
.LC39:
	.quad	1048576
	.quad	2097152
	.quad	4194304
	.quad	8388608
	.section	.rodata.cst16
	.align 16
.LC40:
	.quad	16777216
	.quad	33554432
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
