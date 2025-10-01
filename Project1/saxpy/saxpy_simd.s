	.file	"saxpy.cpp"
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
	.section	.rodata._Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb.str1.1,"aMS",@progbits,1
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
	.section	.text._Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb,"axG",@progbits,_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb,comdat
	.p2align 4
	.weak	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb
	.type	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb, @function
_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb:
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
	subq	$992, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, -5080(%rbp)
	leaq	32(,%rdi,4), %r14
	movq	%rdi, %r13
	movl	$32, %edi
	movl	%edx, -5084(%rbp)
	movq	%r14, %rsi
	movl	%ecx, -5096(%rbp)
	vmovss	%xmm0, -5072(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L34
	call	aligned_alloc@PLT
	movq	%r14, %rsi
	movl	$32, %edi
	movq	%rax, %r12
	call	aligned_alloc@PLT
	movq	%rax, %r15
.L35:
	movq	$42, -5056(%rbp)
	movl	$42, %esi
	movl	$1, %eax
	leaq	-5056(%rbp), %r14
	.p2align 4,,10
	.p2align 3
.L36:
	movq	%rsi, %rdx
	shrq	$30, %rdx
	xorq	%rsi, %rdx
	imulq	$1812433253, %rdx, %rdx
	leal	(%rdx,%rax), %esi
	movq	%rsi, (%r14,%rax,8)
	addq	$1, %rax
	cmpq	$624, %rax
	jne	.L36
	movq	$624, -64(%rbp)
	vxorps	%xmm2, %xmm2, %xmm2
	testq	%r13, %r13
	je	.L37
	vmovss	.LC13(%rip), %xmm4
	vmovss	.LC14(%rip), %xmm3
	xorl	%ebx, %ebx
	vxorps	%xmm1, %xmm1, %xmm1
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L98:
	vcvtsi2ssq	%rax, %xmm2, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jnb	.L73
.L99:
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r12,%rbx,4)
	cmpq	$623, %rdx
	ja	.L96
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
.L100:
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r15,%rbx,4)
	addq	$1, %rbx
	cmpq	%rbx, %r13
	je	.L47
.L48:
	cmpq	$623, %rax
	ja	.L97
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
	jns	.L98
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2ssq	%rdi, %xmm2, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jb	.L99
.L73:
	vmovss	.LC11(%rip), %xmm0
	vmovss	%xmm0, (%r12,%rbx,4)
	cmpq	$623, %rdx
	jbe	.L42
	.p2align 4,,10
	.p2align 3
.L96:
	movq	%r14, %rdi
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
	jb	.L100
.L45:
	movl	$0x3f7fffff, (%r15,%rbx,4)
	addq	$1, %rbx
	cmpq	%rbx, %r13
	jne	.L48
.L47:
	cmpq	$1, -5080(%rbp)
	jne	.L101
	leaq	-1(%r13), %rsi
	cmpq	$6, %rsi
	jbe	.L74
	vbroadcastss	-5072(%rbp), %ymm1
	movq	%r13, %rdx
	xorl	%eax, %eax
	shrq	$3, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L53:
	vmulps	(%r12,%rax), %ymm1, %ymm0
	vaddps	(%r15,%rax), %ymm0, %ymm0
	vmovups	%ymm0, (%r15,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L53
	movq	%r13, %rax
	andq	$-8, %rax
	testb	$7, %r13b
	je	.L102
	vzeroupper
.L52:
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	-1(%rdx), %rdi
	cmpq	$2, %rdi
	jbe	.L55
	vbroadcastss	-5072(%rbp), %xmm0
	leaq	(%r15,%rax,4), %rdi
	vmulps	(%r12,%rax,4), %xmm0, %xmm0
	vaddps	(%rdi), %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	%rdx, %rdi
	andq	$-4, %rdi
	addq	%rdi, %rax
	andl	$3, %edx
	je	.L56
.L55:
	leaq	0(,%rax,4), %rdx
	vmovss	-5072(%rbp), %xmm5
	vmulss	(%r12,%rax,4), %xmm5, %xmm0
	leaq	(%r15,%rdx), %rdi
	vaddss	(%rdi), %xmm0, %xmm0
	vmovss	%xmm0, (%rdi)
	leaq	1(%rax), %rdi
	cmpq	%r13, %rdi
	jnb	.L56
	leaq	4(%r15,%rdx), %rdi
	vmulss	4(%r12,%rdx), %xmm5, %xmm0
	addq	$2, %rax
	vaddss	(%rdi), %xmm0, %xmm0
	vmovss	%xmm0, (%rdi)
	cmpq	%r13, %rax
	jnb	.L56
	leaq	8(%r15,%rdx), %rax
	vmulss	8(%r12,%rdx), %xmm5, %xmm0
	vaddss	(%rax), %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
.L56:
	movq	%rsi, -5136(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	-5136(%rbp), %rsi
	movq	%rax, %r14
	cmpq	$6, %rsi
	jbe	.L75
	vbroadcastss	-5072(%rbp), %ymm1
.L54:
	movq	%r13, %rdx
	xorl	%eax, %eax
	shrq	$3, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L60:
	vmulps	(%r12,%rax), %ymm1, %ymm0
	vaddps	(%r15,%rax), %ymm0, %ymm0
	vmovups	%ymm0, (%r15,%rax)
	addq	$32, %rax
	cmpq	%rdx, %rax
	jne	.L60
	movq	%r13, %rax
	andq	$-8, %rax
	testb	$7, %r13b
	je	.L103
	vzeroupper
.L57:
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	-1(%rdx), %rsi
	cmpq	$2, %rsi
	jbe	.L62
	vbroadcastss	-5072(%rbp), %xmm0
	leaq	(%r15,%rax,4), %rsi
	vmulps	(%r12,%rax,4), %xmm0, %xmm0
	vaddps	(%rsi), %xmm0, %xmm0
	vmovups	%xmm0, (%rsi)
	movq	%rdx, %rsi
	andq	$-4, %rsi
	addq	%rsi, %rax
	andl	$3, %edx
	je	.L71
.L62:
	leaq	0(,%rax,4), %rdx
	vmovss	-5072(%rbp), %xmm6
	vmulss	(%r12,%rax,4), %xmm6, %xmm0
	leaq	(%r15,%rdx), %rsi
	vaddss	(%rsi), %xmm0, %xmm0
	vmovss	%xmm0, (%rsi)
	leaq	1(%rax), %rsi
	cmpq	%r13, %rsi
	jnb	.L71
	leaq	4(%r15,%rdx), %rsi
	vmulss	4(%r12,%rdx), %xmm6, %xmm0
	addq	$2, %rax
	vaddss	(%rsi), %xmm0, %xmm0
	vmovss	%xmm0, (%rsi)
	cmpq	%r13, %rax
	jnb	.L71
	leaq	8(%r15,%rdx), %rax
	vmulss	8(%r12,%rdx), %xmm6, %xmm0
	vaddss	(%rax), %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
.L71:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%edx, %edx
	subq	%r14, %rax
	vcvtsi2sdq	%rax, %xmm2, %xmm1
	movq	%r13, %rax
	vdivsd	.LC15(%rip), %xmm1, %xmm3
	divq	-5080(%rbp)
	cmpb	$0, -5096(%rbp)
	vcvtsi2sdq	%rax, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm2
	vdivsd	%xmm3, %xmm2, %xmm0
	vunpcklpd	%xmm1, %xmm0, %xmm0
	vmovddup	.LC15(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm7
	vmovapd	%xmm7, -5072(%rbp)
	jne	.L104
.L64:
	cmpb	$0, -5084(%rbp)
	jne	.L105
	leaq	-4(%r12), %rdi
	call	free@PLT
	leaq	-4(%r15), %rdi
	call	free@PLT
.L70:
	vcvtpd2psx	-5072(%rbp), %xmm0
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L92
	addq	$5088, %rsp
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
.L97:
	.cfi_restore_state
	movq	%r14, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rax
	vxorps	%xmm2, %xmm2, %xmm2
	vmovss	.LC14(%rip), %xmm3
	vmovss	.LC13(%rip), %xmm4
	vxorps	%xmm1, %xmm1, %xmm1
	jmp	.L38
.L34:
	call	aligned_alloc@PLT
	movq	%r14, %rsi
	movl	$32, %edi
	leaq	4(%rax), %r12
	call	aligned_alloc@PLT
	leaq	4(%rax), %r15
	jmp	.L35
.L105:
	movq	%r12, %rdi
	call	free@PLT
	movq	%r15, %rdi
	call	free@PLT
	jmp	.L70
.L104:
	leaq	_ZSt4cout(%rip), %rbx
	movl	$2, %edx
	leaq	.LC17(%rip), %rsi
	vmovsd	%xmm3, -5096(%rbp)
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$10, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-5080(%rbp), %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$11, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	-5084(%rbp), %esi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$8, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-5096(%rbp), %xmm3
	movq	%rbx, %rdi
	vmovsd	%xmm3, %xmm3, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$13, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-5072(%rbp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r13
	testq	%r13, %r13
	je	.L106
	cmpb	$0, 56(%r13)
	je	.L67
	movsbl	67(%r13), %esi
.L68:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	jmp	.L64
.L67:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L68
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L68
.L101:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L50:
	vmovss	-5072(%rbp), %xmm5
	vmulss	(%r12,%rax,4), %xmm5, %xmm0
	vaddss	(%r15,%rax,4), %xmm0, %xmm0
	movq	-5080(%rbp), %rcx
	vmovss	%xmm0, (%r15,%rax,4)
	addq	%rcx, %rax
	cmpq	%r13, %rax
	jb	.L50
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r14
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L58:
	vmovss	-5072(%rbp), %xmm6
	vmulss	(%r12,%rax,4), %xmm6, %xmm0
	vaddss	(%r15,%rax,4), %xmm0, %xmm0
	movq	-5080(%rbp), %rcx
	vmovss	%xmm0, (%r15,%rax,4)
	addq	%rcx, %rax
	cmpq	%r13, %rax
	jb	.L58
	jmp	.L71
.L103:
	vzeroupper
	jmp	.L71
.L37:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r14
	jmp	.L71
.L102:
	vmovaps	%ymm1, -5136(%rbp)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vmovaps	-5136(%rbp), %ymm1
	movq	%rax, %r14
	jmp	.L54
.L75:
	xorl	%eax, %eax
	jmp	.L57
.L74:
	xorl	%eax, %eax
	jmp	.L52
.L92:
	call	__stack_chk_fail@PLT
.L106:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L92
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4953:
	.size	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb, .-_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb
	.section	.text._Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb.constprop.0,"axG",@progbits,_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.p2align 4
	.type	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb.constprop.0, @function
_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb.constprop.0:
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
	movq	%rsi, 64(%rsp)
	leaq	32(,%rdi,4), %r15
	movq	%rdi, %r14
	movl	$32, %edi
	movl	%edx, 60(%rsp)
	movq	%r15, %rsi
	movq	%fs:40, %rax
	movq	%rax, 5080(%rsp)
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L108
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	movq	%rax, %r13
	call	aligned_alloc@PLT
	movq	%rax, %r12
.L109:
	movl	$42, %esi
	movl	$1, %ecx
	leaq	80(%rsp), %r15
	movq	$42, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L110:
	movq	%rsi, %rdx
	shrq	$30, %rdx
	xorq	%rsi, %rdx
	imulq	$1812433253, %rdx, %rdx
	leal	(%rdx,%rcx), %esi
	movq	%rsi, (%r15,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L110
	movq	$624, 5072(%rsp)
	vxorps	%xmm2, %xmm2, %xmm2
	testq	%r14, %r14
	je	.L111
	vmovss	.LC13(%rip), %xmm4
	vmovss	.LC14(%rip), %xmm3
	xorl	%ebx, %ebx
	vxorps	%xmm1, %xmm1, %xmm1
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L166:
	vcvtsi2ssq	%rax, %xmm2, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jnb	.L142
.L167:
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 0(%r13,%rbx,4)
	cmpq	$623, %rsi
	ja	.L164
.L116:
	movq	80(%rsp,%rsi,8), %rax
	leaq	1(%rsi), %rcx
	movq	%rcx, 5072(%rsp)
	movq	%rax, %rsi
	shrq	$11, %rsi
	movl	%esi, %esi
	xorq	%rsi, %rax
	movq	%rax, %rsi
	salq	$7, %rsi
	andl	$2636928640, %esi
	xorq	%rsi, %rax
	movq	%rax, %rsi
	salq	$15, %rsi
	andl	$4022730752, %esi
	xorq	%rsi, %rax
	movq	%rax, %rsi
	shrq	$18, %rsi
	xorq	%rsi, %rax
	js	.L117
	vcvtsi2ssq	%rax, %xmm2, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jnb	.L119
.L168:
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r12,%rbx,4)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	je	.L121
.L122:
	cmpq	$623, %rcx
	ja	.L165
.L112:
	movq	80(%rsp,%rcx,8), %rax
	leaq	1(%rcx), %rsi
	movq	%rsi, 5072(%rsp)
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$7, %rcx
	andl	$2636928640, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$15, %rcx
	andl	$4022730752, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$18, %rcx
	xorq	%rcx, %rax
	jns	.L166
	movq	%rax, %rcx
	andl	$1, %eax
	shrq	%rcx
	orq	%rax, %rcx
	vcvtsi2ssq	%rcx, %xmm2, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jb	.L167
.L142:
	vmovss	.LC11(%rip), %xmm0
	vmovss	%xmm0, 0(%r13,%rbx,4)
	cmpq	$623, %rsi
	jbe	.L116
	.p2align 4,,10
	.p2align 3
.L164:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm1, %xmm1, %xmm1
	movq	5072(%rsp), %rsi
	vmovss	.LC14(%rip), %xmm3
	vmovss	.LC13(%rip), %xmm4
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L117:
	movq	%rax, %rsi
	andl	$1, %eax
	shrq	%rsi
	orq	%rax, %rsi
	vcvtsi2ssq	%rsi, %xmm2, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	vcomiss	%xmm3, %xmm0
	jb	.L168
.L119:
	movl	$0x3f7fffff, (%r12,%rbx,4)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.L122
.L121:
	cmpq	$1, 64(%rsp)
	jne	.L169
	leaq	-1(%r14), %rcx
	cmpq	$6, %rcx
	jbe	.L143
	vbroadcastss	.LC22(%rip), %ymm1
	movq	%r14, %rdx
	xorl	%eax, %eax
	shrq	$3, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L127:
	vmulps	0(%r13,%rax), %ymm1, %ymm0
	vaddps	(%r12,%rax), %ymm0, %ymm0
	vmovups	%ymm0, (%r12,%rax)
	addq	$32, %rax
	cmpq	%rdx, %rax
	jne	.L127
	movq	%r14, %rax
	andq	$-8, %rax
	testb	$7, %r14b
	je	.L170
	vzeroupper
.L126:
	movq	%r14, %rdx
	subq	%rax, %rdx
	leaq	-1(%rdx), %rsi
	cmpq	$2, %rsi
	jbe	.L129
	vbroadcastss	.LC22(%rip), %xmm0
	leaq	(%r12,%rax,4), %rsi
	vmulps	0(%r13,%rax,4), %xmm0, %xmm0
	vaddps	(%rsi), %xmm0, %xmm0
	vmovups	%xmm0, (%rsi)
	movq	%rdx, %rsi
	andq	$-4, %rsi
	addq	%rsi, %rax
	andl	$3, %edx
	je	.L130
.L129:
	leaq	0(,%rax,4), %rdx
	vmovss	.LC22(%rip), %xmm0
	vmulss	0(%r13,%rax,4), %xmm0, %xmm1
	leaq	(%r12,%rdx), %rsi
	vaddss	(%rsi), %xmm1, %xmm1
	vmovss	%xmm1, (%rsi)
	leaq	1(%rax), %rsi
	cmpq	%r14, %rsi
	jnb	.L130
	leaq	4(%r12,%rdx), %rsi
	vmulss	4(%r13,%rdx), %xmm0, %xmm1
	addq	$2, %rax
	vaddss	(%rsi), %xmm1, %xmm1
	vmovss	%xmm1, (%rsi)
	cmpq	%r14, %rax
	jnb	.L130
	leaq	8(%r12,%rdx), %rax
	vmulss	8(%r13,%rdx), %xmm0, %xmm0
	vaddss	(%rax), %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
.L130:
	movq	%rcx, (%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	(%rsp), %rcx
	movq	%rax, %r15
	cmpq	$6, %rcx
	jbe	.L144
	vbroadcastss	.LC22(%rip), %ymm1
.L128:
	movq	%r14, %rdx
	xorl	%eax, %eax
	shrq	$3, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L134:
	vmulps	0(%r13,%rax), %ymm1, %ymm0
	vaddps	(%r12,%rax), %ymm0, %ymm0
	vmovups	%ymm0, (%r12,%rax)
	addq	$32, %rax
	cmpq	%rdx, %rax
	jne	.L134
	movq	%r14, %rax
	andq	$-8, %rax
	testb	$7, %r14b
	je	.L171
	vzeroupper
.L131:
	movq	%r14, %rdx
	subq	%rax, %rdx
	leaq	-1(%rdx), %rcx
	cmpq	$2, %rcx
	jbe	.L136
	vbroadcastss	.LC22(%rip), %xmm0
	leaq	(%r12,%rax,4), %rcx
	vmulps	0(%r13,%rax,4), %xmm0, %xmm0
	vaddps	(%rcx), %xmm0, %xmm0
	vmovups	%xmm0, (%rcx)
	movq	%rdx, %rcx
	andq	$-4, %rcx
	addq	%rcx, %rax
	andl	$3, %edx
	je	.L140
.L136:
	leaq	0(,%rax,4), %rdx
	vmovss	.LC22(%rip), %xmm0
	vmulss	0(%r13,%rax,4), %xmm0, %xmm1
	leaq	(%r12,%rdx), %rcx
	vaddss	(%rcx), %xmm1, %xmm1
	vmovss	%xmm1, (%rcx)
	leaq	1(%rax), %rcx
	cmpq	%r14, %rcx
	jnb	.L140
	leaq	4(%r12,%rdx), %rcx
	vmulss	4(%r13,%rdx), %xmm0, %xmm1
	addq	$2, %rax
	vaddss	(%rcx), %xmm1, %xmm1
	vmovss	%xmm1, (%rcx)
	cmpq	%r14, %rax
	jnb	.L140
	leaq	8(%r12,%rdx), %rax
	vmulss	8(%r13,%rdx), %xmm0, %xmm0
	vaddss	(%rax), %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
.L140:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%edx, %edx
	subq	%r15, %rax
	vcvtsi2sdq	%rax, %xmm2, %xmm1
	movq	%r14, %rax
	vdivsd	.LC15(%rip), %xmm1, %xmm0
	divq	64(%rsp)
	cmpb	$0, 60(%rsp)
	vcvtsi2sdq	%rax, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm2
	vdivsd	%xmm0, %xmm2, %xmm0
	vunpcklpd	%xmm1, %xmm0, %xmm0
	vmovddup	.LC15(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm5
	vmovapd	%xmm5, 64(%rsp)
	je	.L138
	movq	%r13, %rdi
	call	free@PLT
	movq	%r12, %rdi
	call	free@PLT
.L139:
	vcvtpd2psx	64(%rsp), %xmm0
	movq	5080(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L172
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
.L165:
	.cfi_restore_state
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm1, %xmm1, %xmm1
	movq	5072(%rsp), %rcx
	vmovss	.LC14(%rip), %xmm3
	vmovss	.LC13(%rip), %xmm4
	jmp	.L112
.L108:
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	leaq	4(%rax), %r13
	call	aligned_alloc@PLT
	leaq	4(%rax), %r12
	jmp	.L109
.L138:
	leaq	-4(%r13), %rdi
	call	free@PLT
	leaq	-4(%r12), %rdi
	call	free@PLT
	jmp	.L139
.L169:
	vmovss	.LC22(%rip), %xmm1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L124:
	vmulss	0(%r13,%rax,4), %xmm1, %xmm0
	movq	64(%rsp), %rdi
	vaddss	(%r12,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%r12,%rax,4)
	addq	%rdi, %rax
	cmpq	%r14, %rax
	jb	.L124
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vmovss	.LC22(%rip), %xmm1
	movq	%rax, %r15
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L132:
	vmulss	0(%r13,%rax,4), %xmm1, %xmm0
	movq	64(%rsp), %rdi
	vaddss	(%r12,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%r12,%rax,4)
	addq	%rdi, %rax
	cmpq	%r14, %rax
	jb	.L132
	jmp	.L140
.L170:
	vmovaps	%ymm1, (%rsp)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vmovaps	(%rsp), %ymm1
	movq	%rax, %r15
	jmp	.L128
.L111:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r15
	jmp	.L140
.L171:
	vzeroupper
	jmp	.L140
.L143:
	xorl	%eax, %eax
	jmp	.L126
.L144:
	xorl	%eax, %eax
	jmp	.L131
.L172:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5539:
	.size	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb.constprop.0, .-_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb.constprop.0
	.section	.rodata._Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE.str1.1,"aMS",@progbits,1
.LC25:
	.string	"float32"
.LC26:
	.string	","
.LC27:
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
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	8(%rsi), %rcx
	movq	(%rsi), %rax
	movl	%edx, 12(%rsp)
	movq	%rcx, 24(%rsp)
	cmpq	%rax, %rcx
	je	.L179
	testl	%edx, %edx
	jle	.L179
	movq	%rax, 16(%rsp)
	movq	%rdi, %r15
	leaq	.LC26(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L176:
	movq	16(%rsp), %rax
	xorl	%r14d, %r14d
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	.p2align 4,,10
	.p2align 3
.L175:
	movq	(%rsp), %r13
	movzbl	1(%r15), %edx
	addl	$1, %r14d
	movq	8(%r15), %rsi
	movq	%r13, %rdi
	call	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb.constprop.0
	movl	$7, %edx
	leaq	.LC25(%rip), %rsi
	movq	%r12, %rdi
	vmovq	%xmm0, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%r15), %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	1(%r15), %esi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	vmovq	%rbx, %xmm1
	vshufps	$85, %xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbp, %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	vmovd	%ebx, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	call	_ZNSo5flushEv@PLT
	cmpl	%r14d, 12(%rsp)
	jne	.L175
	addq	$8, 16(%rsp)
	movq	16(%rsp), %rax
	cmpq	%rax, 24(%rsp)
	jne	.L176
.L179:
	addq	$40, %rsp
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
	.cfi_endproc
.LFE4951:
	.size	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, .-_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.text._Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb,"axG",@progbits,_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb,comdat
	.p2align 4
	.weak	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb
	.type	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb, @function
_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb:
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
	subq	$992, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, -5072(%rbp)
	leaq	64(,%rdi,8), %r15
	movq	%rdi, %r12
	movl	$32, %edi
	movl	%edx, -5108(%rbp)
	movq	%r15, %rsi
	movl	%ecx, -5112(%rbp)
	vmovsd	%xmm0, -5064(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L182
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	movq	%rax, %rbx
	call	aligned_alloc@PLT
	movq	%rax, %r14
.L183:
	movq	$42, -5056(%rbp)
	movl	$42, %esi
	movl	$1, %edx
	leaq	-5056(%rbp), %r15
	.p2align 4,,10
	.p2align 3
.L184:
	movq	%rsi, %rax
	shrq	$30, %rax
	xorq	%rsi, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rdx), %esi
	movq	%rsi, (%r15,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L184
	movq	$624, -64(%rbp)
	vxorps	%xmm1, %xmm1, %xmm1
	testq	%r12, %r12
	je	.L185
	xorl	%r13d, %r13d
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L260:
	vcvtsi2sdq	%rax, %xmm1, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	ja	.L256
.L189:
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
	js	.L190
	vcvtsi2sdq	%rax, %xmm1, %xmm0
.L191:
	vmulsd	.LC30(%rip), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LC31(%rip), %xmm0, %xmm0
	vcomisd	.LC32(%rip), %xmm0
	jnb	.L228
	vaddsd	%xmm2, %xmm0, %xmm0
.L192:
	vmovsd	%xmm0, (%rbx,%r13,8)
	cmpq	$623, %rdx
	ja	.L257
.L193:
	movq	-5056(%rbp,%rdx,8), %rax
	leaq	1(%rdx), %rdi
	movq	%rdi, -64(%rbp)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	js	.L194
	vcvtsi2sdq	%rax, %xmm1, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	ja	.L258
.L196:
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
	js	.L197
	vcvtsi2sdq	%rax, %xmm1, %xmm0
.L198:
	vmulsd	.LC30(%rip), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LC31(%rip), %xmm0, %xmm0
	vcomisd	.LC32(%rip), %xmm0
	jnb	.L199
	vaddsd	%xmm2, %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%r13,8)
	addq	$1, %r13
	cmpq	%r13, %r12
	je	.L201
.L202:
	cmpq	$623, %rdx
	ja	.L259
.L186:
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
	jns	.L260
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	jbe	.L189
.L256:
	movq	%r15, %rdi
	vmovsd	%xmm3, -5104(%rbp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdi
	vxorps	%xmm1, %xmm1, %xmm1
	vmovsd	-5104(%rbp), %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L197:
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2sdq	%rdi, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L194:
	movq	%rax, %rdx
	andl	$1, %eax
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	cmpq	$623, %rdi
	jbe	.L196
.L258:
	movq	%r15, %rdi
	vmovsd	%xmm3, -5104(%rbp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdi
	vxorps	%xmm1, %xmm1, %xmm1
	vmovsd	-5104(%rbp), %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L190:
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2sdq	%rdi, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L257:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdx
	vxorps	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L259:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	-64(%rbp), %rdx
	vxorps	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L186
.L199:
	movq	.LC28(%rip), %rax
	movq	%rax, (%r14,%r13,8)
	addq	$1, %r13
	cmpq	%r13, %r12
	jne	.L202
.L201:
	cmpq	$1, -5072(%rbp)
	jne	.L261
	leaq	-1(%r12), %r15
	cmpq	$2, %r15
	jbe	.L229
	vbroadcastsd	-5064(%rbp), %ymm2
	movq	%r12, %rdx
	xorl	%eax, %eax
	shrq	$2, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L207:
	vmulpd	(%rbx,%rax), %ymm2, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vmovupd	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L207
	movq	%r12, %rax
	andq	$-4, %rax
	testb	$3, %r12b
	je	.L262
	vzeroupper
.L206:
	movq	%r12, %rsi
	subq	%rax, %rsi
	cmpq	$1, %rsi
	je	.L209
	leaq	(%r14,%rax,8), %rdx
	vmovddup	-5064(%rbp), %xmm0
	vmulpd	(%rbx,%rax,8), %xmm0, %xmm2
	vaddpd	(%rdx), %xmm2, %xmm2
	vmovupd	%xmm2, (%rdx)
	movq	%rsi, %rdx
	andl	$1, %edx
	je	.L210
	andq	$-2, %rsi
	addq	%rsi, %rax
.L209:
	leaq	(%r14,%rax,8), %rdx
	vmovsd	-5064(%rbp), %xmm4
	vmulsd	(%rbx,%rax,8), %xmm4, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rsi
	cmpq	$2, %r15
	jbe	.L231
.L255:
	vbroadcastsd	-5064(%rbp), %ymm2
.L208:
	movq	%r12, %rdx
	xorl	%eax, %eax
	shrq	$2, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L215:
	vmulpd	(%rbx,%rax), %ymm2, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vmovupd	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L215
	movq	%r12, %rdx
	andq	$-4, %rdx
	testb	$3, %r12b
	je	.L263
	vzeroupper
.L212:
	movq	%r12, %rax
	subq	%rdx, %rax
	cmpq	$1, %rax
	je	.L217
	vmovddup	-5064(%rbp), %xmm0
.L211:
	leaq	(%r14,%rdx,8), %rdi
	vmulpd	(%rbx,%rdx,8), %xmm0, %xmm0
	vaddpd	(%rdi), %xmm0, %xmm0
	vmovupd	%xmm0, (%rdi)
	testb	$1, %al
	je	.L226
	andq	$-2, %rax
	addq	%rax, %rdx
.L217:
	leaq	(%r14,%rdx,8), %rax
	vmovsd	-5064(%rbp), %xmm5
	vmulsd	(%rbx,%rdx,8), %xmm5, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
.L226:
	movq	%rsi, -5064(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	-5064(%rbp), %rsi
	xorl	%edx, %edx
	vxorps	%xmm1, %xmm1, %xmm1
	vmovsd	.LC15(%rip), %xmm2
	subq	%rsi, %rax
	vcvtsi2sdq	%rax, %xmm1, %xmm0
	movq	%r12, %rax
	divq	-5072(%rbp)
	vdivsd	%xmm2, %xmm0, %xmm6
	cmpb	$0, -5112(%rbp)
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	vdivsd	%xmm6, %xmm1, %xmm1
	vmovsd	%xmm6, -5104(%rbp)
	vdivsd	%xmm2, %xmm1, %xmm7
	vmovsd	%xmm7, -5064(%rbp)
	jne	.L264
.L219:
	cmpb	$0, -5108(%rbp)
	je	.L224
	movq	%rbx, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
.L225:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L251
	vmovsd	-5064(%rbp), %xmm0
	vmovsd	-5104(%rbp), %xmm1
	addq	$5088, %rsp
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
.L228:
	.cfi_restore_state
	vmovsd	.LC28(%rip), %xmm0
	jmp	.L192
.L182:
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	leaq	8(%rax), %rbx
	call	aligned_alloc@PLT
	leaq	8(%rax), %r14
	jmp	.L183
.L224:
	leaq	-8(%rbx), %rdi
	call	free@PLT
	leaq	-8(%r14), %rdi
	call	free@PLT
	jmp	.L225
.L231:
	xorl	%edx, %edx
	jmp	.L212
.L210:
	movq	%rdx, -5104(%rbp)
	vmovapd	%xmm0, -5136(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	cmpq	$2, %r15
	movq	-5104(%rbp), %rdx
	vmovapd	-5136(%rbp), %xmm0
	movq	%rax, %rsi
	ja	.L255
	movl	$2, %eax
	jmp	.L211
.L264:
	leaq	_ZSt4cout(%rip), %r15
	movl	$2, %edx
	leaq	.LC17(%rip), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$10, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-5072(%rbp), %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$11, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	-5108(%rbp), %esi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$8, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-5104(%rbp), %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$13, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-5064(%rbp), %xmm0
	movq	%r12, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.L265
	cmpb	$0, 56(%r13)
	je	.L222
	movsbl	67(%r13), %esi
.L223:
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	jmp	.L219
.L262:
	vmovapd	%ymm2, -5104(%rbp)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vmovapd	-5104(%rbp), %ymm2
	movq	%rax, %rsi
	jmp	.L208
.L222:
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L223
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L223
.L261:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L204:
	vmovsd	-5064(%rbp), %xmm6
	vmulsd	(%rbx,%rax,8), %xmm6, %xmm0
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movq	-5072(%rbp), %rcx
	vmovsd	%xmm0, (%r14,%rax,8)
	addq	%rcx, %rax
	cmpq	%r12, %rax
	jb	.L204
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L213:
	vmovsd	-5064(%rbp), %xmm7
	vmulsd	(%rbx,%rax,8), %xmm7, %xmm0
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	movq	-5072(%rbp), %rcx
	vmovsd	%xmm0, (%r14,%rax,8)
	addq	%rcx, %rax
	cmpq	%r12, %rax
	jb	.L213
	jmp	.L226
.L263:
	vzeroupper
	jmp	.L226
.L185:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rsi
	jmp	.L226
.L229:
	xorl	%eax, %eax
	jmp	.L206
.L251:
	call	__stack_chk_fail@PLT
.L265:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L251
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4960:
	.size	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb, .-_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb
	.section	.text._Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb.constprop.0,"axG",@progbits,_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.p2align 4
	.type	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb.constprop.0, @function
_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb.constprop.0:
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
	subq	$992, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rsi, 72(%rsp)
	leaq	64(,%rdi,8), %r15
	movq	%rdi, %r12
	movl	$32, %edi
	movl	%edx, 68(%rsp)
	movq	%r15, %rsi
	movq	%fs:40, %rax
	movq	%rax, 5080(%rsp)
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.L267
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	movq	%rax, %rbx
	call	aligned_alloc@PLT
	movq	%rax, %r14
.L268:
	movl	$42, %ecx
	movl	$1, %eax
	leaq	80(%rsp), %r15
	movq	$42, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L269:
	movq	%rcx, %rdx
	shrq	$30, %rdx
	xorq	%rcx, %rdx
	imulq	$1812433253, %rdx, %rdx
	leal	(%rdx,%rax), %ecx
	movq	%rcx, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	$624, %rax
	jne	.L269
	movq	$624, 5072(%rsp)
	vxorps	%xmm2, %xmm2, %xmm2
	testq	%r12, %r12
	je	.L270
	xorl	%r13d, %r13d
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.L287
	.p2align 4,,10
	.p2align 3
.L340:
	vcvtsi2sdq	%rax, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm3, %xmm3
	cmpq	$623, %rdi
	ja	.L336
.L274:
	movq	80(%rsp,%rdi,8), %rax
	leaq	1(%rdi), %rcx
	movq	%rcx, 5072(%rsp)
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
	js	.L275
	vcvtsi2sdq	%rax, %xmm2, %xmm0
.L276:
	vmulsd	.LC30(%rip), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LC31(%rip), %xmm0, %xmm0
	vcomisd	.LC32(%rip), %xmm0
	jnb	.L308
	vaddsd	%xmm1, %xmm0, %xmm0
.L277:
	vmovsd	%xmm0, (%rbx,%r13,8)
	cmpq	$623, %rcx
	ja	.L337
.L278:
	leaq	1(%rcx), %rdi
	movq	80(%rsp,%rcx,8), %rcx
	movq	%rdi, 5072(%rsp)
	movq	%rcx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$7, %rcx
	andl	$2636928640, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$15, %rcx
	andl	$4022730752, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$18, %rcx
	xorq	%rax, %rcx
	js	.L279
	vcvtsi2sdq	%rcx, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm3, %xmm3
	cmpq	$623, %rdi
	ja	.L338
.L281:
	movq	80(%rsp,%rdi,8), %rcx
	leaq	1(%rdi), %rax
	movq	%rax, 5072(%rsp)
	movq	%rcx, %rdi
	shrq	$11, %rdi
	movl	%edi, %edi
	xorq	%rdi, %rcx
	movq	%rcx, %rdi
	salq	$7, %rdi
	andl	$2636928640, %edi
	xorq	%rcx, %rdi
	movq	%rdi, %rcx
	salq	$15, %rcx
	andl	$4022730752, %ecx
	xorq	%rdi, %rcx
	movq	%rcx, %rdi
	shrq	$18, %rdi
	xorq	%rdi, %rcx
	js	.L282
	vcvtsi2sdq	%rcx, %xmm2, %xmm0
.L283:
	vmulsd	.LC30(%rip), %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LC31(%rip), %xmm0, %xmm0
	vcomisd	.LC32(%rip), %xmm0
	jnb	.L284
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%r13,8)
	addq	$1, %r13
	cmpq	%r13, %r12
	je	.L286
.L287:
	cmpq	$623, %rax
	ja	.L339
.L271:
	leaq	1(%rax), %rdi
	movq	80(%rsp,%rax,8), %rax
	movq	%rdi, 5072(%rsp)
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$7, %rcx
	andl	$2636928640, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	salq	$15, %rcx
	andl	$4022730752, %ecx
	xorq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$18, %rcx
	xorq	%rcx, %rax
	jns	.L340
	movq	%rax, %rcx
	andl	$1, %eax
	shrq	%rcx
	orq	%rax, %rcx
	vcvtsi2sdq	%rcx, %xmm2, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm1, %xmm3, %xmm3
	cmpq	$623, %rdi
	jbe	.L274
.L336:
	movq	%r15, %rdi
	vmovsd	%xmm3, 32(%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vmovsd	32(%rsp), %xmm3
	vxorps	%xmm2, %xmm2, %xmm2
	movq	5072(%rsp), %rdi
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.L274
	.p2align 4,,10
	.p2align 3
.L282:
	movq	%rcx, %rdi
	andl	$1, %ecx
	shrq	%rdi
	orq	%rcx, %rdi
	vcvtsi2sdq	%rdi, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L279:
	movq	%rcx, %rax
	andl	$1, %ecx
	shrq	%rax
	orq	%rcx, %rax
	vcvtsi2sdq	%rax, %xmm2, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm1, %xmm3, %xmm3
	cmpq	$623, %rdi
	jbe	.L281
.L338:
	movq	%r15, %rdi
	vmovsd	%xmm3, 32(%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vmovsd	32(%rsp), %xmm3
	vxorps	%xmm2, %xmm2, %xmm2
	movq	5072(%rsp), %rdi
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L275:
	movq	%rax, %rdi
	andl	$1, %eax
	shrq	%rdi
	orq	%rax, %rdi
	vcvtsi2sdq	%rdi, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L337:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	5072(%rsp), %rcx
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L339:
	movq	%r15, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	vxorps	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	5072(%rsp), %rax
	jmp	.L271
.L284:
	movq	.LC28(%rip), %rsi
	movq	%rsi, (%r14,%r13,8)
	addq	$1, %r13
	cmpq	%r13, %r12
	jne	.L287
.L286:
	cmpq	$1, 72(%rsp)
	jne	.L341
	leaq	-1(%r12), %r15
	cmpq	$2, %r15
	jbe	.L309
	vbroadcastsd	.LC33(%rip), %ymm1
	movq	%r12, %rdx
	xorl	%eax, %eax
	shrq	$2, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L292:
	vmulpd	(%rbx,%rax), %ymm1, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vmovupd	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L292
	movq	%r12, %rax
	andq	$-4, %rax
	testb	$3, %r12b
	je	.L342
	vzeroupper
.L291:
	movq	%r12, %rcx
	subq	%rax, %rcx
	cmpq	$1, %rcx
	je	.L294
	leaq	(%r14,%rax,8), %rdx
	vmovddup	.LC33(%rip), %xmm0
	vmulpd	(%rbx,%rax,8), %xmm0, %xmm1
	vaddpd	(%rdx), %xmm1, %xmm1
	vmovupd	%xmm1, (%rdx)
	movq	%rcx, %rdx
	andl	$1, %edx
	je	.L295
	andq	$-2, %rcx
	addq	%rcx, %rax
.L294:
	leaq	(%r14,%rax,8), %rdx
	vmovsd	.LC33(%rip), %xmm0
	vmulsd	(%rbx,%rax,8), %xmm0, %xmm0
	vaddsd	(%rdx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rcx
	cmpq	$2, %r15
	jbe	.L311
.L335:
	vbroadcastsd	.LC33(%rip), %ymm1
.L293:
	movq	%r12, %rdx
	xorl	%eax, %eax
	shrq	$2, %rdx
	salq	$5, %rdx
	.p2align 4,,10
	.p2align 3
.L300:
	vmulpd	(%rbx,%rax), %ymm1, %ymm0
	vaddpd	(%r14,%rax), %ymm0, %ymm0
	vmovupd	%ymm0, (%r14,%rax)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.L300
	movq	%r12, %rdx
	andq	$-4, %rdx
	testb	$3, %r12b
	je	.L343
	vzeroupper
.L297:
	movq	%r12, %rax
	subq	%rdx, %rax
	cmpq	$1, %rax
	je	.L302
	vmovddup	.LC33(%rip), %xmm0
.L296:
	leaq	(%r14,%rdx,8), %rdi
	vmulpd	(%rbx,%rdx,8), %xmm0, %xmm0
	vaddpd	(%rdi), %xmm0, %xmm0
	vmovupd	%xmm0, (%rdi)
	testb	$1, %al
	je	.L306
	andq	$-2, %rax
	addq	%rax, %rdx
.L302:
	leaq	(%r14,%rdx,8), %rax
	vmovsd	.LC33(%rip), %xmm0
	vmulsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vaddsd	(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
.L306:
	movq	%rcx, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	32(%rsp), %rcx
	vxorps	%xmm2, %xmm2, %xmm2
	xorl	%edx, %edx
	vmovsd	.LC15(%rip), %xmm3
	subq	%rcx, %rax
	vcvtsi2sdq	%rax, %xmm2, %xmm1
	movq	%r12, %rax
	divq	72(%rsp)
	vdivsd	%xmm3, %xmm1, %xmm1
	cmpb	$0, 68(%rsp)
	vcvtsi2sdq	%rax, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm2
	vdivsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm1, 72(%rsp)
	vdivsd	%xmm3, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)
	je	.L304
	movq	%rbx, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
	vmovsd	72(%rsp), %xmm1
	vmovsd	32(%rsp), %xmm0
.L305:
	movq	5080(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L344
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
.L308:
	.cfi_restore_state
	vmovsd	.LC28(%rip), %xmm0
	jmp	.L277
.L267:
	call	aligned_alloc@PLT
	movq	%r15, %rsi
	movl	$32, %edi
	leaq	8(%rax), %rbx
	call	aligned_alloc@PLT
	leaq	8(%rax), %r14
	jmp	.L268
.L304:
	leaq	-8(%rbx), %rdi
	call	free@PLT
	leaq	-8(%r14), %rdi
	call	free@PLT
	vmovsd	32(%rsp), %xmm0
	vmovsd	72(%rsp), %xmm1
	jmp	.L305
.L311:
	xorl	%edx, %edx
	jmp	.L297
.L295:
	movq	%rdx, 32(%rsp)
	vmovapd	%xmm0, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	cmpq	$2, %r15
	movq	32(%rsp), %rdx
	vmovapd	16(%rsp), %xmm0
	movq	%rax, %rcx
	ja	.L335
	movl	$2, %eax
	jmp	.L296
.L342:
	vmovapd	%ymm1, 32(%rsp)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vmovapd	32(%rsp), %ymm1
	movq	%rax, %rcx
	jmp	.L293
.L341:
	vmovsd	.LC33(%rip), %xmm1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L289:
	vmulsd	(%rbx,%rax,8), %xmm1, %xmm0
	movq	72(%rsp), %rsi
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%rax,8)
	addq	%rsi, %rax
	cmpq	%r12, %rax
	jb	.L289
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vmovsd	.LC33(%rip), %xmm1
	movq	%rax, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L298:
	vmulsd	(%rbx,%rax,8), %xmm1, %xmm0
	movq	72(%rsp), %rsi
	vaddsd	(%r14,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%rax,8)
	addq	%rsi, %rax
	cmpq	%r12, %rax
	jb	.L298
	jmp	.L306
.L343:
	vzeroupper
	jmp	.L306
.L270:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %rcx
	jmp	.L306
.L309:
	xorl	%eax, %eax
	jmp	.L291
.L344:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5543:
	.size	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb.constprop.0, .-_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb.constprop.0
	.section	.rodata._Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE.str1.1,"aMS",@progbits,1
.LC36:
	.string	"float64"
	.section	.text._Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,"axG",@progbits,_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.p2align 4
	.weak	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.type	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, @function
_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE:
.LFB4952:
	.cfi_startproc
	endbr64
	movq	(%rsi), %rax
	movq	8(%rsi), %rsi
	cmpq	%rax, %rsi
	je	.L353
	testl	%edx, %edx
	jle	.L353
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.LC26(%rip), %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rsi, 40(%rsp)
	movl	%edx, 28(%rsp)
	.p2align 4,,10
	.p2align 3
.L348:
	movq	%rax, 32(%rsp)
	xorl	%ebp, %ebp
	movq	(%rax), %r14
	movq	%r12, %r15
	movl	%ebp, %r12d
	.p2align 4,,10
	.p2align 3
.L347:
	movzbl	1(%r15), %edx
	movq	8(%r15), %rsi
	movq	%r14, %rdi
	addl	$1, %r12d
	call	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb.constprop.0
	movl	$7, %edx
	leaq	.LC36(%rip), %rsi
	movq	%r13, %rdi
	vmovsd	%xmm1, 16(%rsp)
	vmovsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%r15), %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	1(%r15), %esi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	16(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	8(%rsp), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	call	_ZNSo5flushEv@PLT
	cmpl	%r12d, 28(%rsp)
	jne	.L347
	movq	32(%rsp), %rax
	movq	%r15, %r12
	addq	$8, %rax
	cmpq	%rax, 40(%rsp)
	jne	.L348
	addq	$56, %rsp
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
.L353:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	ret
	.cfi_endproc
.LFE4952:
	.size	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, .-_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC46:
	.string	"basic_string: construction from null is not valid"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC47:
	.string	"--float64"
.LC48:
	.string	"--unaligned"
.LC49:
	.string	"--stride="
.LC50:
	.string	"stoul"
.LC51:
	.string	"--sweep"
.LC52:
	.string	"--csv="
	.section	.rodata.str1.8
	.align 8
.LC53:
	.string	"datatype,n,stride,aligned,time_s,gflops\n"
	.section	.rodata.str1.1
.LC54:
	.string	"float32,"
.LC55:
	.string	"float64,"
.LC56:
	.string	"Results written to "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB58:
	.section	.text.startup,"ax",@progbits
.LHOTB58:
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
	vmovdqa	.LC38(%rip), %xmm0
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
	jle	.L388
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
.L389:
	movq	(%r12), %r13
	movq	%r14, -688(%rbp)
	testq	%r13, %r13
	je	.L427
	movq	%r13, %rdi
	call	strlen@PLT
	movq	%rax, -720(%rbp)
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.L428
	cmpq	$1, %rax
	jne	.L363
	movzbl	0(%r13), %edx
	movb	%dl, -672(%rbp)
.L365:
	movq	%r14, %rdx
.L364:
	movq	%rax, -680(%rbp)
	movb	$0, (%rdx,%rax)
	movq	-680(%rbp), %rax
	cmpq	$9, %rax
	je	.L429
	cmpq	$11, %rax
	jne	.L370
	movq	-688(%rbp), %rdi
	movabsq	$7451606224181996845, %rax
	cmpq	%rax, (%rdi)
	je	.L430
	.p2align 4,,10
	.p2align 3
.L370:
	movq	-728(%rbp), %rdi
	xorl	%edx, %edx
	movl	$9, %ecx
	leaq	.LC49(%rip), %rsi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm@PLT
	testq	%rax, %rax
	je	.L431
	cmpq	$7, -680(%rbp)
	je	.L432
.L376:
	movq	-728(%rbp), %r13
	xorl	%edx, %edx
	movl	$6, %ecx
	leaq	.LC52(%rip), %rsi
	movq	%r13, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm@PLT
	testq	%rax, %rax
	jne	.L377
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
	je	.L433
	movq	-744(%rbp), %rcx
	vpinsrq	$1, -576(%rbp), %xmm0, %xmm0
	cmpq	%rcx, %rdi
	je	.L434
	movq	-608(%rbp), %rdx
	movq	%rsi, -624(%rbp)
	vmovdqu	%xmm0, -616(%rbp)
	testq	%rdi, %rdi
	je	.L385
	movq	%rdi, -592(%rbp)
	movq	%rdx, -576(%rbp)
.L384:
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rax, -584(%rbp)
	movq	-592(%rbp), %rax
	movb	$0, (%rax)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-688(%rbp), %rdi
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L429:
	movq	-688(%rbp), %rdi
	movabsq	$3923868306534444333, %rax
	cmpq	%rax, (%rdi)
	jne	.L370
	cmpb	$52, 8(%rdi)
	jne	.L370
	movb	$0, -656(%rbp)
	.p2align 4,,10
	.p2align 3
.L372:
	cmpq	%r14, %rdi
	je	.L386
	movq	-672(%rbp), %rax
	addq	$8, %r12
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	cmpq	%r12, %r15
	jne	.L389
.L388:
	vmovdqa	.LC39(%rip), %ymm0
	movl	$216, %edi
	movq	$67108864, -384(%rbp)
	vmovdqa	%ymm0, -592(%rbp)
	vmovdqa	.LC40(%rip), %ymm0
	vmovdqa	%ymm0, -560(%rbp)
	vmovdqa	.LC41(%rip), %ymm0
	vmovdqa	%ymm0, -528(%rbp)
	vmovdqa	.LC42(%rip), %ymm0
	vmovdqa	%ymm0, -496(%rbp)
	vmovdqa	.LC43(%rip), %ymm0
	vmovdqa	%ymm0, -464(%rbp)
	vmovdqa	.LC44(%rip), %ymm0
	vmovdqa	%ymm0, -432(%rbp)
	vmovdqa	.LC45(%rip), %xmm0
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
	leaq	-624(%rbp), %r12
	movq	%rdx, -712(%rbp)
	vmovdqa	-496(%rbp), %ymm5
	movl	$16, %edx
	movq	%r12, %rsi
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
	movl	$40, %edx
	leaq	.LC53(%rip), %rsi
	movq	%rbx, %rdi
.LEHB5:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpb	$0, -632(%rbp)
	movzbl	-656(%rbp), %eax
	jne	.L435
	movzbl	-655(%rbp), %edx
	movq	-648(%rbp), %rsi
	movl	$1, %ecx
	movq	-640(%rbp), %rdi
	testb	%al, %al
	je	.L394
	vmovss	.LC22(%rip), %xmm0
	call	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb
	movl	$8, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rbx, %rdi
	vmovq	%xmm0, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-640(%rbp), %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	leaq	.LC26(%rip), %r13
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%r13, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-648(%rbp), %rsi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	-655(%rbp), %esi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovq	%r14, %xmm2
	movq	%r15, %rdi
	vshufps	$85, %xmm2, %xmm2, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovd	%r14d, %xmm0
	movq	%r15, %rdi
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
.L426:
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC27(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZNSo5flushEv@PLT
.L392:
	movq	%rbx, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
	leaq	_ZSt4cout(%rip), %r13
	movl	$19, %edx
	leaq	.LC56(%rip), %rsi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-616(%rbp), %rdx
	movq	-624(%rbp), %rsi
	movq	%r13, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r14
	testq	%r14, %r14
	je	.L436
	cmpb	$0, 56(%r14)
	je	.L397
	movsbl	67(%r14), %esi
.L398:
	movq	%r13, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.LEHE5:
	movq	%rbx, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-720(%rbp), %rdi
	call	_ZNSt6vectorImSaImEED1Ev
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L420
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
.L363:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L365
	movq	%r14, %rdi
	jmp	.L362
	.p2align 4,,10
	.p2align 3
.L428:
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
.L362:
	movq	%rbx, %rdx
	movq	%r13, %rsi
	call	memcpy@PLT
	movq	-720(%rbp), %rax
	movq	-688(%rbp), %rdx
	jmp	.L364
.L435:
	leaq	-720(%rbp), %rsi
	leaq	-656(%rbp), %rdi
	movq	%rbx, %rcx
	movl	$3, %edx
	testb	%al, %al
	je	.L391
.LEHB7:
	call	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	jmp	.L392
	.p2align 4,,10
	.p2align 3
.L386:
	addq	$8, %r12
	cmpq	%r12, %r15
	jne	.L389
	jmp	.L388
.L430:
	cmpl	$1684368999, 7(%rdi)
	jne	.L370
	movb	$0, -655(%rbp)
	jmp	.L372
.L397:
	movq	%r14, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L398
	movl	$10, %esi
	movq	%r14, %rdi
	call	*%rax
.LEHE7:
	movsbl	%al, %esi
	jmp	.L398
.L431:
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
	leaq	.LC50(%rip), %rsi
.LEHB9:
	call	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE9:
	movq	%rbx, %rdi
	movq	%rax, -648(%rbp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-688(%rbp), %rdi
	jmp	.L372
.L432:
	movq	-688(%rbp), %rdi
	movl	$7, %edx
	leaq	.LC51(%rip), %rsi
	movq	%rdi, -752(%rbp)
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L376
	movb	$1, -632(%rbp)
	movq	-752(%rbp), %rdi
	jmp	.L372
.L394:
	vmovsd	.LC33(%rip), %xmm0
.LEHB10:
	call	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb
	movl	$8, %edx
	movq	%rbx, %rdi
	vmovq	%xmm1, %r15
	vmovsd	%xmm0, -728(%rbp)
	leaq	.LC55(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-640(%rbp), %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	leaq	.LC26(%rip), %r13
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%r13, %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	-648(%rbp), %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movzbl	-655(%rbp), %esi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIbEERSoT_@PLT
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovq	%r15, %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	-728(%rbp), %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	jmp	.L426
.L391:
	call	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
.LEHE10:
	jmp	.L392
.L377:
	movq	-688(%rbp), %rdx
	movq	__isoc23_strtoul@GOTPCREL(%rip), %rdi
	movl	$10, %r8d
	xorl	%ecx, %ecx
	leaq	.LC50(%rip), %rsi
.LEHB11:
	call	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
.LEHE11:
	movq	%rax, -640(%rbp)
	movq	-688(%rbp), %rdi
	jmp	.L372
.L434:
	movq	%rsi, -624(%rbp)
	vmovdqu	%xmm0, -616(%rbp)
.L385:
	movq	%rax, -592(%rbp)
	jmp	.L384
.L433:
	vmovq	%xmm0, %rax
	testq	%rax, %rax
	je	.L380
	subq	$1, %rax
	je	.L437
	vmovq	%xmm0, %rdx
	call	memcpy@PLT
	movq	-624(%rbp), %rdi
	vmovq	-584(%rbp), %xmm0
.L380:
	vmovq	%xmm0, %rax
	vmovq	%xmm0, -616(%rbp)
	movb	$0, (%rdi,%rax)
	jmp	.L384
.L437:
	movzbl	-576(%rbp), %eax
	movb	%al, (%rdi)
	movq	-624(%rbp), %rdi
	vmovq	-584(%rbp), %xmm0
	jmp	.L380
.L427:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L420
	leaq	.LC46(%rip), %rdi
.LEHB12:
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE12:
.L420:
	call	__stack_chk_fail@PLT
.L436:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L420
.LEHB13:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE13:
.L410:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L403
.L409:
	endbr64
	movq	%rax, %rbx
	leaq	-624(%rbp), %r12
	vzeroupper
	jmp	.L401
.L407:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L400
.L408:
	endbr64
	movq	%rax, %r12
	jmp	.L399
.L411:
	endbr64
	movq	%rax, %r13
	jmp	.L402
	.section	.gcc_except_table,"a",@progbits
.LLSDA4548:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4548-.LLSDACSB4548
.LLSDACSB4548:
	.uleb128 .LEHB2-.LFB4548
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L407-.LFB4548
	.uleb128 0
	.uleb128 .LEHB3-.LFB4548
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L409-.LFB4548
	.uleb128 0
	.uleb128 .LEHB4-.LFB4548
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L410-.LFB4548
	.uleb128 0
	.uleb128 .LEHB5-.LFB4548
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L411-.LFB4548
	.uleb128 0
	.uleb128 .LEHB6-.LFB4548
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L409-.LFB4548
	.uleb128 0
	.uleb128 .LEHB7-.LFB4548
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L411-.LFB4548
	.uleb128 0
	.uleb128 .LEHB8-.LFB4548
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L407-.LFB4548
	.uleb128 0
	.uleb128 .LEHB9-.LFB4548
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L408-.LFB4548
	.uleb128 0
	.uleb128 .LEHB10-.LFB4548
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L411-.LFB4548
	.uleb128 0
	.uleb128 .LEHB11-.LFB4548
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L407-.LFB4548
	.uleb128 0
	.uleb128 .LEHB12-.LFB4548
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L409-.LFB4548
	.uleb128 0
	.uleb128 .LEHB13-.LFB4548
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L411-.LFB4548
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
.L402:
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	%rbx, %rdi
	vzeroupper
	movq	%r13, %rbx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.L403:
	leaq	-720(%rbp), %rdi
	call	_ZNSt6vectorImSaImEED1Ev
.L401:
	movq	%r12, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L438
	movq	%rbx, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L399:
	movq	%rbx, %rdi
	vzeroupper
	movq	%r12, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L400:
	movq	-728(%rbp), %rdi
	leaq	-624(%rbp), %r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	jmp	.L401
.L438:
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
	.uleb128 .LEHB14-.LCOLDB58
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSEC4548:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE58:
	.section	.text.startup
.LHOTE58:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.quad	-2147483648
	.align 8
.LC9:
	.quad	2147483647
	.set	.LC10,.LC39
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
	.section	.rodata.cst4
	.align 4
.LC22:
	.long	1075838976
	.section	.rodata.cst8
	.align 8
.LC28:
	.long	-1
	.long	1072693247
	.align 8
.LC30:
	.long	0
	.long	1106247680
	.align 8
.LC31:
	.long	0
	.long	1005584384
	.align 8
.LC32:
	.long	0
	.long	1072693248
	.align 8
.LC33:
	.long	0
	.long	1074003968
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC38:
	.quad	1
	.quad	10000000
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC39:
	.quad	1
	.quad	2
	.quad	4
	.quad	8
	.align 32
.LC40:
	.quad	16
	.quad	32
	.quad	64
	.quad	128
	.align 32
.LC41:
	.quad	256
	.quad	512
	.quad	1024
	.quad	2048
	.align 32
.LC42:
	.quad	4096
	.quad	8192
	.quad	16384
	.quad	32768
	.align 32
.LC43:
	.quad	65536
	.quad	131072
	.quad	262144
	.quad	524288
	.align 32
.LC44:
	.quad	1048576
	.quad	2097152
	.quad	4194304
	.quad	8388608
	.section	.rodata.cst16
	.align 16
.LC45:
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
