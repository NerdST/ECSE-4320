	.file	"saxpy.cpp"
	.text
	.section	.text._ZSt23__is_constant_evaluatedv,"axG",@progbits,_ZSt23__is_constant_evaluatedv,comdat
	.weak	_ZSt23__is_constant_evaluatedv
	.type	_ZSt23__is_constant_evaluatedv, @function
_ZSt23__is_constant_evaluatedv:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZSt23__is_constant_evaluatedv, .-_ZSt23__is_constant_evaluatedv
	.section	.text._ZNSt11char_traitsIcE2ltERKcS2_,"axG",@progbits,_ZNSt11char_traitsIcE2ltERKcS2_,comdat
	.weak	_ZNSt11char_traitsIcE2ltERKcS2_
	.type	_ZNSt11char_traitsIcE2ltERKcS2_, @function
_ZNSt11char_traitsIcE2ltERKcS2_:
.LFB113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	setb	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	_ZNSt11char_traitsIcE2ltERKcS2_, .-_ZNSt11char_traitsIcE2ltERKcS2_
	.section	.text._ZNSt11char_traitsIcE7compareEPKcS2_m,"axG",@progbits,_ZNSt11char_traitsIcE7compareEPKcS2_m,comdat
	.weak	_ZNSt11char_traitsIcE7compareEPKcS2_m
	.type	_ZNSt11char_traitsIcE7compareEPKcS2_m, @function
_ZNSt11char_traitsIcE7compareEPKcS2_m:
.LFB114:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	call	_ZSt23__is_constant_evaluatedv
	testb	%al, %al
	je	.L8
	movq	$0, -8(%rbp)
	jmp	.L9
.L12:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L10
	movl	$-1, %eax
	jmp	.L7
.L10:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L11
	movl	$1, %eax
	jmp	.L7
.L11:
	addq	$1, -8(%rbp)
.L9:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L12
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	nop
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	_ZNSt11char_traitsIcE7compareEPKcS2_m, .-_ZNSt11char_traitsIcE7compareEPKcS2_m
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB115:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZSt23__is_constant_evaluatedv
	testb	%al, %al
	je	.L14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.rodata
.LC0:
	.string	"stoul"
	.section	.text._ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.weak	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, @function
_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB1173:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	__isoc23_strtoul@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1173:
	.size	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:
.LFB2251:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2251:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB2253:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2253:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.section	.text._ZSt3loge,"axG",@progbits,_ZSt3loge,comdat
	.weak	_ZSt3loge
	.type	_ZSt3loge, @function
_ZSt3loge:
.LFB2332:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	logl@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2332:
	.size	_ZSt3loge, .-_ZSt3loge
	.section	.text._ZSt9nextafterff,"axG",@progbits,_ZSt9nextafterff,comdat
	.weak	_ZSt9nextafterff
	.type	_ZSt9nextafterff, @function
_ZSt9nextafterff:
.LFB2473:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	movaps	%xmm0, %xmm1
	movd	%eax, %xmm0
	call	nextafterf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2473:
	.size	_ZSt9nextafterff, .-_ZSt9nextafterff
	.section	.rodata
.LC2:
	.string	"results.csv"
	.section	.text._ZN11SaxpyConfigC2Ev,"axG",@progbits,_ZN11SaxpyConfigC5Ev,comdat
	.align 2
	.weak	_ZN11SaxpyConfigC2Ev
	.type	_ZN11SaxpyConfigC2Ev, @function
_ZN11SaxpyConfigC2Ev:
.LFB3946:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3946
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movb	$1, (%rax)
	movq	-56(%rbp), %rax
	movb	$1, 1(%rax)
	movq	-56(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-56(%rbp), %rax
	movq	$10000000, 16(%rax)
	movq	-56(%rbp), %rax
	movb	$0, 24(%rax)
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	-33(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	leaq	-33(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L28
	jmp	.L30
.L29:
	endbr64
	movq	%rax, %rbx
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L30:
	call	__stack_chk_fail@PLT
.L28:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3946:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN11SaxpyConfigC2Ev,"aG",@progbits,_ZN11SaxpyConfigC5Ev,comdat
.LLSDA3946:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3946-.LLSDACSB3946
.LLSDACSB3946:
	.uleb128 .LEHB0-.LFB3946
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L29-.LFB3946
	.uleb128 0
	.uleb128 .LEHB1-.LFB3946
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3946:
	.section	.text._ZN11SaxpyConfigC2Ev,"axG",@progbits,_ZN11SaxpyConfigC5Ev,comdat
	.size	_ZN11SaxpyConfigC2Ev, .-_ZN11SaxpyConfigC2Ev
	.weak	_ZN11SaxpyConfigC1Ev
	.set	_ZN11SaxpyConfigC1Ev,_ZN11SaxpyConfigC2Ev
	.section	.text._ZN11SaxpyConfigD2Ev,"axG",@progbits,_ZN11SaxpyConfigD5Ev,comdat
	.align 2
	.weak	_ZN11SaxpyConfigD2Ev
	.type	_ZN11SaxpyConfigD2Ev, @function
_ZN11SaxpyConfigD2Ev:
.LFB3949:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3949:
	.size	_ZN11SaxpyConfigD2Ev, .-_ZN11SaxpyConfigD2Ev
	.weak	_ZN11SaxpyConfigD1Ev
	.set	_ZN11SaxpyConfigD1Ev,_ZN11SaxpyConfigD2Ev
	.section	.rodata
.LC3:
	.string	"--float64"
.LC4:
	.string	"--unaligned"
.LC5:
	.string	"--stride="
.LC6:
	.string	"--sweep"
.LC7:
	.string	"--csv="
	.align 8
.LC8:
	.string	"datatype,n,stride,aligned,time_s,gflops\n"
.LC10:
	.string	"float32,"
.LC11:
	.string	","
.LC12:
	.string	"\n"
.LC14:
	.string	"float64,"
.LC15:
	.string	"Results written to "
	.text
	.globl	main
	.type	main, @function
main:
.LFB3944:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3944
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$712, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -724(%rbp)
	movq	%rsi, -736(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
.LEHB2:
	call	_ZN11SaxpyConfigC1Ev
.LEHE2:
	movl	$1, -712(%rbp)
	jmp	.L33
.L40:
	leaq	-688(%rbp), %rax
	movq	%rax, -704(%rbp)
	nop
	nop
	movl	-712(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-736(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	leaq	-688(%rbp), %rdx
	leaq	-656(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE3:
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	leaq	-656(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L34
	movb	$0, -624(%rbp)
	jmp	.L35
.L34:
	leaq	-656(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L36
	movb	$0, -623(%rbp)
	jmp	.L35
.L36:
	leaq	-656(%rbp), %rax
	movl	$0, %edx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm@PLT
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L37
	leaq	-560(%rbp), %rax
	leaq	-656(%rbp), %rsi
	movq	$-1, %rcx
	movl	$9, %edx
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
.LEHE4:
	leaq	-560(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE5:
	movq	%rax, -616(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L35
.L37:
	leaq	-656(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L38
	movb	$1, -600(%rbp)
	jmp	.L35
.L38:
	leaq	-656(%rbp), %rax
	movl	$0, %edx
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm@PLT
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L39
	leaq	-560(%rbp), %rax
	leaq	-656(%rbp), %rsi
	movq	$-1, %rcx
	movl	$6, %edx
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@PLT
	leaq	-560(%rbp), %rax
	leaq	-624(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L35
.L39:
	leaq	-656(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE6:
	movq	%rax, -608(%rbp)
.L35:
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addl	$1, -712(%rbp)
.L33:
	movl	-712(%rbp), %eax
	cmpl	-724(%rbp), %eax
	jl	.L40
	movq	$1, -560(%rbp)
	movq	$2, -552(%rbp)
	movq	$4, -544(%rbp)
	movq	$8, -536(%rbp)
	movq	$16, -528(%rbp)
	movq	$32, -520(%rbp)
	movq	$64, -512(%rbp)
	movq	$128, -504(%rbp)
	movq	$256, -496(%rbp)
	movq	$512, -488(%rbp)
	movq	$1024, -480(%rbp)
	movq	$2048, -472(%rbp)
	movq	$4096, -464(%rbp)
	movq	$8192, -456(%rbp)
	movq	$16384, -448(%rbp)
	movq	$32768, -440(%rbp)
	movq	$65536, -432(%rbp)
	movq	$131072, -424(%rbp)
	movq	$262144, -416(%rbp)
	movq	$524288, -408(%rbp)
	movq	$1048576, -400(%rbp)
	movq	$2097152, -392(%rbp)
	movq	$4194304, -384(%rbp)
	movq	$8388608, -376(%rbp)
	movq	$16777216, -368(%rbp)
	movq	$33554432, -360(%rbp)
	movq	$67108864, -352(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %r12
	movl	$27, %r13d
	leaq	-713(%rbp), %rax
	movq	%rax, -696(%rbp)
	nop
	nop
	leaq	-713(%rbp), %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%rbx, %rdi
	leaq	-688(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6vectorImSaImEEC1ESt16initializer_listImERKS0_
.LEHE7:
	leaq	-713(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorImED2Ev
	nop
	leaq	-624(%rbp), %rax
	leaq	32(%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.LEHE8:
	leaq	-560(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$3, -708(%rbp)
	movzbl	-600(%rbp), %eax
	testb	%al, %al
	je	.L41
	movzbl	-624(%rbp), %eax
	testb	%al, %al
	je	.L42
	leaq	-560(%rbp), %rcx
	movl	-708(%rbp), %edx
	leaq	-688(%rbp), %rsi
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	jmp	.L43
.L42:
	leaq	-560(%rbp), %rcx
	movl	-708(%rbp), %edx
	leaq	-688(%rbp), %rsi
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	jmp	.L43
.L41:
	movzbl	-624(%rbp), %eax
	testb	%al, %al
	je	.L44
	movzbl	-623(%rbp), %eax
	movzbl	%al, %edx
	movq	-616(%rbp), %rsi
	movq	-608(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	.LC9(%rip), %eax
	movd	%eax, %xmm0
	call	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb
	movq	%xmm0, %rax
	movq	%rax, -656(%rbp)
	leaq	-560(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-608(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzbl	-623(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEb@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-656(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5arrayIfLm2EEixEm
	movl	(%rax), %eax
	movd	%eax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEf@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-656(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt5arrayIfLm2EEixEm
	movl	(%rax), %eax
	movd	%eax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEf@PLT
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	jmp	.L43
.L44:
	movzbl	-623(%rbp), %eax
	movzbl	%al, %edx
	movq	-616(%rbp), %rsi
	movq	-608(%rbp), %rdi
	movq	.LC13(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %xmm0
	call	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -656(%rbp)
	movsd	%xmm0, -648(%rbp)
	leaq	-560(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-608(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-616(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzbl	-623(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEb@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-656(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm2EEixEm
	movq	(%rax), %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-656(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm2EEixEm
	movq	(%rax), %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.L43:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-624(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE9:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorImSaImEED1Ev
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN11SaxpyConfigD1Ev
	movl	$0, %eax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L54
	jmp	.L61
.L55:
	endbr64
	movq	%rax, %rbx
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	jmp	.L47
.L57:
	endbr64
	movq	%rax, %rbx
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L49
.L56:
	endbr64
	movq	%rax, %rbx
.L49:
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L47
.L58:
	endbr64
	movq	%rax, %rbx
	leaq	-713(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorImED2Ev
	nop
	jmp	.L47
.L60:
	endbr64
	movq	%rax, %rbx
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L52
.L59:
	endbr64
	movq	%rax, %rbx
.L52:
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorImSaImEED1Ev
.L47:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN11SaxpyConfigD1Ev
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L53
	call	__stack_chk_fail@PLT
.L53:
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L61:
	call	__stack_chk_fail@PLT
.L54:
	addq	$712, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3944:
	.section	.gcc_except_table,"a",@progbits
.LLSDA3944:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3944-.LLSDACSB3944
.LLSDACSB3944:
	.uleb128 .LEHB2-.LFB3944
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB3944
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L55-.LFB3944
	.uleb128 0
	.uleb128 .LEHB4-.LFB3944
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L56-.LFB3944
	.uleb128 0
	.uleb128 .LEHB5-.LFB3944
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L57-.LFB3944
	.uleb128 0
	.uleb128 .LEHB6-.LFB3944
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L56-.LFB3944
	.uleb128 0
	.uleb128 .LEHB7-.LFB3944
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L58-.LFB3944
	.uleb128 0
	.uleb128 .LEHB8-.LFB3944
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L59-.LFB3944
	.uleb128 0
	.uleb128 .LEHB9-.LFB3944
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L60-.LFB3944
	.uleb128 0
	.uleb128 .LEHB10-.LFB3944
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE3944:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3954:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	jmp	.L63
.L64:
	addq	$1, -16(%rbp)
.L63:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L64
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3954:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, @function
_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB4002:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	call	__errno_location@PLT
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4002:
	.size	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, @function
_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB4005:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L70
	call	__errno_location@PLT
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
.L70:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4005:
	.size	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE
	.type	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE, @function
_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE:
.LFB4007:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4007:
	.size	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE, .-_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB4000:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4000
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	movq	-72(%rbp), %r8
	movl	-100(%rbp), %edx
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	*%r8
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jne	.L74
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L74:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L76
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkEmSt17integral_constantIbLb0EE
	testb	%al, %al
	je	.L77
.L76:
	movl	$1, %eax
	jmp	.L78
.L77:
	movl	$0, %eax
.L78:
	testb	%al, %al
	je	.L79
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE11:
.L79:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L81
	movq	-48(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L81:
	movq	-32(%rbp), %rbx
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L85
	jmp	.L87
.L86:
	endbr64
	movq	%rax, %rbx
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L84
	call	__stack_chk_fail@PLT
.L84:
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L87:
	call	__stack_chk_fail@PLT
.L85:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4000:
	.section	.gcc_except_table
.LLSDA4000:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4000-.LLSDACSB4000
.LLSDACSB4000:
	.uleb128 .LEHB11-.LFB4000
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L86-.LFB4000
	.uleb128 0
	.uleb128 .LEHB12-.LFB4000
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE4000:
	.section	.text._ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB4063:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIcED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4063:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB4208:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4208:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.rodata
	.align 8
.LC16:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB4288:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4288
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
	cmpq	$0, -48(%rbp)
	jne	.L92
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
.LEHB13:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L92:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE13:
	jmp	.L95
.L94:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L95:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4288:
	.section	.gcc_except_table
.LLSDA4288:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4288-.LLSDACSB4288
.LLSDACSB4288:
	.uleb128 .LEHB13-.LFB4288
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L94-.LFB4288
	.uleb128 0
	.uleb128 .LEHB14-.LFB4288
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE4288:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB4319:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE6lengthEPKc
	cmpq	%rax, %rbx
	jne	.L97
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt11char_traitsIcE7compareEPKcS2_m
	testl	%eax, %eax
	jne	.L97
	movl	$1, %eax
	jmp	.L98
.L97:
	movl	$0, %eax
.L98:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4319:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.section	.text._ZNSt6vectorImSaImEEC2ESt16initializer_listImERKS0_,"axG",@progbits,_ZNSt6vectorImSaImEEC5ESt16initializer_listImERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorImSaImEEC2ESt16initializer_listImERKS0_
	.type	_ZNSt6vectorImSaImEEC2ESt16initializer_listImERKS0_, @function
_ZNSt6vectorImSaImEEC2ESt16initializer_listImERKS0_:
.LFB4330:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4330
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEEC2ERKS0_
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listImE3endEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listImE5beginEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt6vectorImSaImEE19_M_range_initializeIPKmEEvT_S5_St20forward_iterator_tag
.LEHE15:
	jmp	.L105
.L104:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEED2Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L102
	call	__stack_chk_fail@PLT
.L102:
	movq	%rax, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L105:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4330:
	.section	.gcc_except_table
.LLSDA4330:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4330-.LLSDACSB4330
.LLSDACSB4330:
	.uleb128 .LEHB15-.LFB4330
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L104-.LFB4330
	.uleb128 0
	.uleb128 .LEHB16-.LFB4330
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE4330:
	.section	.text._ZNSt6vectorImSaImEEC2ESt16initializer_listImERKS0_,"axG",@progbits,_ZNSt6vectorImSaImEEC5ESt16initializer_listImERKS0_,comdat
	.size	_ZNSt6vectorImSaImEEC2ESt16initializer_listImERKS0_, .-_ZNSt6vectorImSaImEEC2ESt16initializer_listImERKS0_
	.weak	_ZNSt6vectorImSaImEEC1ESt16initializer_listImERKS0_
	.set	_ZNSt6vectorImSaImEEC1ESt16initializer_listImERKS0_,_ZNSt6vectorImSaImEEC2ESt16initializer_listImERKS0_
	.section	.text._ZNSt6vectorImSaImEED2Ev,"axG",@progbits,_ZNSt6vectorImSaImEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorImSaImEED2Ev
	.type	_ZNSt6vectorImSaImEED2Ev, @function
_ZNSt6vectorImSaImEED2Ev:
.LFB4333:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4333
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPmEvT_S1_
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4333:
	.section	.gcc_except_table
.LLSDA4333:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4333-.LLSDACSB4333
.LLSDACSB4333:
.LLSDACSE4333:
	.section	.text._ZNSt6vectorImSaImEED2Ev,"axG",@progbits,_ZNSt6vectorImSaImEED5Ev,comdat
	.size	_ZNSt6vectorImSaImEED2Ev, .-_ZNSt6vectorImSaImEED2Ev
	.weak	_ZNSt6vectorImSaImEED1Ev
	.set	_ZNSt6vectorImSaImEED1Ev,_ZNSt6vectorImSaImEED2Ev
	.section	.rodata
.LC17:
	.string	"float32"
	.section	.text._Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,"axG",@progbits,_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.weak	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.type	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, @function
_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE:
.LFB4343:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorImSaImEE5beginEv
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorImSaImEE3endEv
	movq	%rax, -56(%rbp)
	jmp	.L108
.L111:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L109
.L110:
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	.LC9(%rip), %eax
	movd	%eax, %xmm0
	call	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEb@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5arrayIfLm2EEixEm
	movl	(%rax), %eax
	movd	%eax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEf@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt5arrayIfLm2EEixEm
	movl	(%rax), %eax
	movd	%eax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEf@PLT
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	addl	$1, -68(%rbp)
.L109:
	movl	-68(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L110
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv
.L108:
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L111
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4343:
	.size	_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, .-_Z13run_and_writeIfEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.rodata
.LC18:
	.string	"float64"
	.section	.text._Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,"axG",@progbits,_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE,comdat
	.weak	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.type	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, @function
_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE:
.LFB4344:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorImSaImEE5beginEv
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorImSaImEE3endEv
	movq	%rax, -72(%rbp)
	jmp	.L114
.L117:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L115
.L116:
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rdi
	movq	.LC13(%rip), %rax
	movl	$0, %ecx
	movq	%rax, %xmm0
	call	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-128(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEb@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm2EEixEm
	movq	(%rax), %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm2EEixEm
	movq	(%rax), %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	addl	$1, -84(%rbp)
.L115:
	movl	-84(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L116
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv
.L114:
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L117
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L118
	call	__stack_chk_fail@PLT
.L118:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4344:
	.size	_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE, .-_Z13run_and_writeIdEvRK11SaxpyConfigRKSt6vectorImSaImEEiRSt14basic_ofstreamIcSt11char_traitsIcEE
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB4347:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L121
	call	__stack_chk_fail@PLT
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4347:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, @function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB4348:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4348:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.section	.rodata
.LC22:
	.string	"N="
.LC23:
	.string	" | stride="
.LC24:
	.string	" | aligned="
.LC25:
	.string	" | time="
.LC26:
	.string	" s | GFLOP/s="
	.section	.text._Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb,"axG",@progbits,_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb,comdat
	.weak	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb
	.type	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb, @function
_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb:
.LFB4345:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1040, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movss	%xmm0, -5124(%rbp)
	movq	%rdi, -5136(%rbp)
	movq	%rsi, -5144(%rbp)
	movl	%ecx, %eax
	movb	%dl, -5128(%rbp)
	movb	%al, -5148(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-5136(%rbp), %rax
	addq	$8, %rax
	salq	$2, %rax
	movq	%rax, -5080(%rbp)
	movzbl	-5128(%rbp), %edx
	movq	-5080(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9alloc_memIfEPT_mb
	movq	%rax, -5072(%rbp)
	movzbl	-5128(%rbp), %edx
	movq	-5080(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9alloc_memIfEPT_mb
	movq	%rax, -5064(%rbp)
	leaq	-5024(%rbp), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	leaq	-5032(%rbp), %rax
	movss	.LC19(%rip), %xmm1
	movl	.LC20(%rip), %edx
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIfEC1Eff
	movq	$0, -5088(%rbp)
	jmp	.L125
.L126:
	movq	-5088(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-5072(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-5024(%rbp), %rdx
	leaq	-5032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	movq	-5088(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-5064(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-5024(%rbp), %rdx
	leaq	-5032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	addq	$1, -5088(%rbp)
.L125:
	movq	-5088(%rbp), %rax
	cmpq	-5136(%rbp), %rax
	jb	.L126
	movq	-5144(%rbp), %rcx
	movq	-5136(%rbp), %rdx
	movq	-5064(%rbp), %rsi
	movq	-5072(%rbp), %rdi
	movl	-5124(%rbp), %eax
	movd	%eax, %xmm0
	call	_Z12saxpy_scalarIfEvT_PKS0_PS0_mm
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -5120(%rbp)
	movq	-5144(%rbp), %rcx
	movq	-5136(%rbp), %rdx
	movq	-5064(%rbp), %rsi
	movq	-5072(%rbp), %rdi
	movl	-5124(%rbp), %eax
	movd	%eax, %xmm0
	call	_Z12saxpy_scalarIfEvT_PKS0_PS0_mm
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -5112(%rbp)
	leaq	-5120(%rbp), %rdx
	leaq	-5112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -5096(%rbp)
	leaq	-5096(%rbp), %rdx
	leaq	-5104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-5104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	movq	%xmm0, %rax
	movq	%rax, -5056(%rbp)
	movq	-5136(%rbp), %rax
	movl	$0, %edx
	divq	-5144(%rbp)
	testq	%rax, %rax
	js	.L127
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L128
.L127:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L128:
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -5048(%rbp)
	movsd	-5048(%rbp), %xmm0
	divsd	-5056(%rbp), %xmm0
	movsd	.LC21(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -5040(%rbp)
	cmpb	$0, -5148(%rbp)
	je	.L129
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-5136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-5144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzbl	-5128(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEb@PLT
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-5056(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-5040(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L129:
	movzbl	-5128(%rbp), %edx
	movq	-5072(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z8free_memIfEvPT_b
	movzbl	-5128(%rbp), %edx
	movq	-5064(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z8free_memIfEvPT_b
	pxor	%xmm0, %xmm0
	cvtsd2ss	-5040(%rbp), %xmm0
	movd	%xmm0, %edx
	movabsq	$-4294967296, %rax
	andq	%r12, %rax
	orq	%rdx, %rax
	movq	%rax, %r12
	pxor	%xmm0, %xmm0
	cvtsd2ss	-5056(%rbp), %xmm0
	movd	%xmm0, %eax
	salq	$32, %rax
	movl	%r12d, %edx
	orq	%rdx, %rax
	movq	%rax, %r12
	movq	%r12, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L131
	call	__stack_chk_fail@PLT
.L131:
	movq	%rax, %xmm0
	addq	$5136, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4345:
	.size	_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb, .-_Z14run_experimentIfESt5arrayIT_Lm2EES1_mmbb
	.section	.text._ZNSt5arrayIfLm2EEixEm,"axG",@progbits,_ZNSt5arrayIfLm2EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayIfLm2EEixEm
	.type	_ZNSt5arrayIfLm2EEixEm, @function
_ZNSt5arrayIfLm2EEixEm:
.LFB4351:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4351:
	.size	_ZNSt5arrayIfLm2EEixEm, .-_ZNSt5arrayIfLm2EEixEm
	.section	.text._Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb,"axG",@progbits,_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb,comdat
	.weak	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb
	.type	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb, @function
_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb:
.LFB4353:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1080, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movsd	%xmm0, -5160(%rbp)
	movq	%rdi, -5168(%rbp)
	movq	%rsi, -5176(%rbp)
	movl	%ecx, %eax
	movb	%dl, -5180(%rbp)
	movb	%al, -5184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-5168(%rbp), %rax
	addq	$8, %rax
	salq	$3, %rax
	movq	%rax, -5104(%rbp)
	movzbl	-5180(%rbp), %edx
	movq	-5104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9alloc_memIdEPT_mb
	movq	%rax, -5096(%rbp)
	movzbl	-5180(%rbp), %edx
	movq	-5104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9alloc_memIdEPT_mb
	movq	%rax, -5088(%rbp)
	leaq	-5040(%rbp), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	movsd	.LC27(%rip), %xmm0
	leaq	-5056(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %rdx
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIdEC1Edd
	movq	$0, -5112(%rbp)
	jmp	.L135
.L136:
	movq	-5112(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-5096(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-5040(%rbp), %rdx
	leaq	-5056(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_
	movq	%xmm0, %rax
	movq	%rax, (%rbx)
	movq	-5112(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-5088(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-5040(%rbp), %rdx
	leaq	-5056(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_
	movq	%xmm0, %rax
	movq	%rax, (%rbx)
	addq	$1, -5112(%rbp)
.L135:
	movq	-5112(%rbp), %rax
	cmpq	-5168(%rbp), %rax
	jb	.L136
	movq	-5176(%rbp), %rcx
	movq	-5168(%rbp), %rdx
	movq	-5088(%rbp), %rsi
	movq	-5096(%rbp), %rdi
	movq	-5160(%rbp), %rax
	movq	%rax, %xmm0
	call	_Z12saxpy_scalarIdEvT_PKS0_PS0_mm
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -5144(%rbp)
	movq	-5176(%rbp), %rcx
	movq	-5168(%rbp), %rdx
	movq	-5088(%rbp), %rsi
	movq	-5096(%rbp), %rdi
	movq	-5160(%rbp), %rax
	movq	%rax, %xmm0
	call	_Z12saxpy_scalarIdEvT_PKS0_PS0_mm
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -5136(%rbp)
	leaq	-5144(%rbp), %rdx
	leaq	-5136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -5120(%rbp)
	leaq	-5120(%rbp), %rdx
	leaq	-5128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	-5128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	movq	%xmm0, %rax
	movq	%rax, -5080(%rbp)
	movq	-5168(%rbp), %rax
	movl	$0, %edx
	divq	-5176(%rbp)
	testq	%rax, %rax
	js	.L137
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L138
.L137:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L138:
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -5072(%rbp)
	movsd	-5072(%rbp), %xmm0
	divsd	-5080(%rbp), %xmm0
	movsd	.LC21(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -5064(%rbp)
	cmpb	$0, -5184(%rbp)
	je	.L139
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-5168(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-5176(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzbl	-5180(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEb@PLT
	movq	%rax, %rdx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-5080(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-5064(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEd@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L139:
	movzbl	-5180(%rbp), %edx
	movq	-5096(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z8free_memIdEvPT_b
	movzbl	-5180(%rbp), %edx
	movq	-5088(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z8free_memIdEvPT_b
	movq	-5064(%rbp), %r12
	movq	-5080(%rbp), %r13
	movq	%r12, -5200(%rbp)
	movq	%r13, -5192(%rbp)
	movdqa	-5200(%rbp), %xmm0
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rdx, %xmm1
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L141
	call	__stack_chk_fail@PLT
.L141:
	addq	$5176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4353:
	.size	_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb, .-_Z14run_experimentIdESt5arrayIT_Lm2EES1_mmbb
	.section	.text._ZNSt5arrayIdLm2EEixEm,"axG",@progbits,_ZNSt5arrayIdLm2EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayIdLm2EEixEm
	.type	_ZNSt5arrayIdLm2EEixEm, @function
_ZNSt5arrayIdLm2EEixEm:
.LFB4354:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4354:
	.size	_ZNSt5arrayIdLm2EEixEm, .-_ZNSt5arrayIdLm2EEixEm
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB4360:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4360:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZNSt15__new_allocatorIcED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIcED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIcED2Ev
	.type	_ZNSt15__new_allocatorIcED2Ev, @function
_ZNSt15__new_allocatorIcED2Ev:
.LFB4368:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4368:
	.size	_ZNSt15__new_allocatorIcED2Ev, .-_ZNSt15__new_allocatorIcED2Ev
	.weak	_ZNSt15__new_allocatorIcED1Ev
	.set	_ZNSt15__new_allocatorIcED1Ev,_ZNSt15__new_allocatorIcED2Ev
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB4398:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4398:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB4401:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4401
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L150:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4401:
	.section	.gcc_except_table
.LLSDA4401:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4401-.LLSDACSB4401
.LLSDACSB4401:
.LLSDACSE4401:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB4396:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	nop
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	nop
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L155
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
	jmp	.L156
.L155:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	nop
.L156:
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	$0, -48(%rbp)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L157
	call	__stack_chk_fail@PLT
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4396:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt15__new_allocatorImED2Ev,"axG",@progbits,_ZNSt15__new_allocatorImED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorImED2Ev
	.type	_ZNSt15__new_allocatorImED2Ev, @function
_ZNSt15__new_allocatorImED2Ev:
.LFB4551:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4551:
	.size	_ZNSt15__new_allocatorImED2Ev, .-_ZNSt15__new_allocatorImED2Ev
	.weak	_ZNSt15__new_allocatorImED1Ev
	.set	_ZNSt15__new_allocatorImED1Ev,_ZNSt15__new_allocatorImED2Ev
	.section	.text._ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev:
.LFB4555:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorImED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4555:
	.size	_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseImSaImEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseImSaImEE12_Vector_implD1Ev,_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseImSaImEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseImSaImEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseImSaImEEC2ERKS0_
	.type	_ZNSt12_Vector_baseImSaImEEC2ERKS0_, @function
_ZNSt12_Vector_baseImSaImEEC2ERKS0_:
.LFB4557:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEE12_Vector_implC1ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4557:
	.size	_ZNSt12_Vector_baseImSaImEEC2ERKS0_, .-_ZNSt12_Vector_baseImSaImEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseImSaImEEC1ERKS0_
	.set	_ZNSt12_Vector_baseImSaImEEC1ERKS0_,_ZNSt12_Vector_baseImSaImEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseImSaImEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseImSaImEED2Ev
	.type	_ZNSt12_Vector_baseImSaImEED2Ev, @function
_ZNSt12_Vector_baseImSaImEED2Ev:
.LFB4560:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4560
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4560:
	.section	.gcc_except_table
.LLSDA4560:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4560-.LLSDACSB4560
.LLSDACSB4560:
.LLSDACSE4560:
	.section	.text._ZNSt12_Vector_baseImSaImEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEED5Ev,comdat
	.size	_ZNSt12_Vector_baseImSaImEED2Ev, .-_ZNSt12_Vector_baseImSaImEED2Ev
	.weak	_ZNSt12_Vector_baseImSaImEED1Ev
	.set	_ZNSt12_Vector_baseImSaImEED1Ev,_ZNSt12_Vector_baseImSaImEED2Ev
	.section	.text._ZNKSt16initializer_listImE5beginEv,"axG",@progbits,_ZNKSt16initializer_listImE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listImE5beginEv
	.type	_ZNKSt16initializer_listImE5beginEv, @function
_ZNKSt16initializer_listImE5beginEv:
.LFB4562:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4562:
	.size	_ZNKSt16initializer_listImE5beginEv, .-_ZNKSt16initializer_listImE5beginEv
	.section	.text._ZNKSt16initializer_listImE3endEv,"axG",@progbits,_ZNKSt16initializer_listImE3endEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listImE3endEv
	.type	_ZNKSt16initializer_listImE3endEv, @function
_ZNKSt16initializer_listImE3endEv:
.LFB4563:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listImE5beginEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listImE4sizeEv
	salq	$3, %rax
	addq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4563:
	.size	_ZNKSt16initializer_listImE3endEv, .-_ZNKSt16initializer_listImE3endEv
	.section	.text._ZNSt6vectorImSaImEE19_M_range_initializeIPKmEEvT_S5_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorImSaImEE19_M_range_initializeIPKmEEvT_S5_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt6vectorImSaImEE19_M_range_initializeIPKmEEvT_S5_St20forward_iterator_tag
	.type	_ZNSt6vectorImSaImEE19_M_range_initializeIPKmEEvT_S5_St20forward_iterator_tag, @function
_ZNSt6vectorImSaImEE19_M_range_initializeIPKmEEvT_S5_St20forward_iterator_tag:
.LFB4564:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	nop
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	sarq	$3, %rax
	nop
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L170
	call	__stack_chk_fail@PLT
.L170:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4564:
	.size	_ZNSt6vectorImSaImEE19_M_range_initializeIPKmEEvT_S5_St20forward_iterator_tag, .-_ZNSt6vectorImSaImEE19_M_range_initializeIPKmEEvT_S5_St20forward_iterator_tag
	.section	.text._ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv:
.LFB4566:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4566:
	.size	_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorImSaImEE5beginEv,"axG",@progbits,_ZNKSt6vectorImSaImEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorImSaImEE5beginEv
	.type	_ZNKSt6vectorImSaImEE5beginEv, @function
_ZNKSt6vectorImSaImEE5beginEv:
.LFB4588:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L175
	call	__stack_chk_fail@PLT
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4588:
	.size	_ZNKSt6vectorImSaImEE5beginEv, .-_ZNKSt6vectorImSaImEE5beginEv
	.section	.text._ZNKSt6vectorImSaImEE3endEv,"axG",@progbits,_ZNKSt6vectorImSaImEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorImSaImEE3endEv
	.type	_ZNKSt6vectorImSaImEE3endEv, @function
_ZNKSt6vectorImSaImEE3endEv:
.LFB4589:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L178
	call	__stack_chk_fail@PLT
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4589:
	.size	_ZNKSt6vectorImSaImEE3endEv, .-_ZNKSt6vectorImSaImEE3endEv
	.section	.text._ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB4590:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4590:
	.size	_ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxneIPKmSt6vectorImSaImEEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv:
.LFB4591:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4591:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv:
.LFB4592:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4592:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv
	.section	.text._Z9alloc_memIfEPT_mb,"axG",@progbits,_Z9alloc_memIfEPT_mb,comdat
	.weak	_Z9alloc_memIfEPT_mb
	.type	_Z9alloc_memIfEPT_mb, @function
_Z9alloc_memIfEPT_mb:
.LFB4593:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpb	$0, -12(%rbp)
	je	.L186
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	aligned_alloc@PLT
	jmp	.L187
.L186:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	aligned_alloc@PLT
	addq	$4, %rax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4593:
	.size	_Z9alloc_memIfEPT_mb, .-_Z9alloc_memIfEPT_mb
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC5Em,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em:
.LFB4595:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4595:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	.set	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.section	.text._ZNSt25uniform_real_distributionIfEC2Eff,"axG",@progbits,_ZNSt25uniform_real_distributionIfEC5Eff,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIfEC2Eff
	.type	_ZNSt25uniform_real_distributionIfEC2Eff, @function
_ZNSt25uniform_real_distributionIfEC2Eff:
.LFB4598:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	movss	-16(%rbp), %xmm0
	movl	-12(%rbp), %edx
	movaps	%xmm0, %xmm1
	movd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIfE10param_typeC1Eff
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4598:
	.size	_ZNSt25uniform_real_distributionIfEC2Eff, .-_ZNSt25uniform_real_distributionIfEC2Eff
	.weak	_ZNSt25uniform_real_distributionIfEC1Eff
	.set	_ZNSt25uniform_real_distributionIfEC1Eff,_ZNSt25uniform_real_distributionIfEC2Eff
	.section	.text._ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_,"axG",@progbits,_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_
	.type	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_, @function
_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_:
.LFB4600:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4600:
	.size	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_, .-_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_
	.section	.text._Z12saxpy_scalarIfEvT_PKS0_PS0_mm,"axG",@progbits,_Z12saxpy_scalarIfEvT_PKS0_PS0_mm,comdat
	.weak	_Z12saxpy_scalarIfEvT_PKS0_PS0_mm
	.type	_Z12saxpy_scalarIfEvT_PKS0_PS0_mm, @function
_Z12saxpy_scalarIfEvT_PKS0_PS0_mm:
.LFB4601:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -20(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L193
.L194:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-20(%rbp), %xmm1
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	addq	%rax, -8(%rbp)
.L193:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L194
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4601:
	.size	_Z12saxpy_scalarIfEvT_PKS0_PS0_mm, .-_Z12saxpy_scalarIfEvT_PKS0_PS0_mm
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB4603:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movsd	%xmm0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L196
	call	__stack_chk_fail@PLT
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4603:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB4605:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	%rdx, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L199
	call	__stack_chk_fail@PLT
.L199:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4605:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._Z8free_memIfEvPT_b,"axG",@progbits,_Z8free_memIfEvPT_b,comdat
	.weak	_Z8free_memIfEvPT_b
	.type	_Z8free_memIfEvPT_b, @function
_Z8free_memIfEvPT_b:
.LFB4606:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpb	$0, -12(%rbp)
	je	.L201
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L203
.L201:
	movq	-8(%rbp), %rax
	subq	$4, %rax
	movq	%rax, %rdi
	call	free@PLT
.L203:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4606:
	.size	_Z8free_memIfEvPT_b, .-_Z8free_memIfEvPT_b
	.section	.text._Z9alloc_memIdEPT_mb,"axG",@progbits,_Z9alloc_memIdEPT_mb,comdat
	.weak	_Z9alloc_memIdEPT_mb
	.type	_Z9alloc_memIdEPT_mb, @function
_Z9alloc_memIdEPT_mb:
.LFB4607:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpb	$0, -12(%rbp)
	je	.L205
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	aligned_alloc@PLT
	jmp	.L206
.L205:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	aligned_alloc@PLT
	addq	$8, %rax
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4607:
	.size	_Z9alloc_memIdEPT_mb, .-_Z9alloc_memIdEPT_mb
	.section	.text._ZNSt25uniform_real_distributionIdEC2Edd,"axG",@progbits,_ZNSt25uniform_real_distributionIdEC5Edd,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIdEC2Edd
	.type	_ZNSt25uniform_real_distributionIdEC2Edd, @function
_ZNSt25uniform_real_distributionIdEC2Edd:
.LFB4609:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rdx
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIdE10param_typeC1Edd
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4609:
	.size	_ZNSt25uniform_real_distributionIdEC2Edd, .-_ZNSt25uniform_real_distributionIdEC2Edd
	.weak	_ZNSt25uniform_real_distributionIdEC1Edd
	.set	_ZNSt25uniform_real_distributionIdEC1Edd,_ZNSt25uniform_real_distributionIdEC2Edd
	.section	.text._ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_
	.type	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_, @function
_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_:
.LFB4611:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4611:
	.size	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_, .-_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_
	.section	.text._Z12saxpy_scalarIdEvT_PKS0_PS0_mm,"axG",@progbits,_Z12saxpy_scalarIdEvT_PKS0_PS0_mm,comdat
	.weak	_Z12saxpy_scalarIdEvT_PKS0_PS0_mm
	.type	_Z12saxpy_scalarIdEvT_PKS0_PS0_mm, @function
_Z12saxpy_scalarIdEvT_PKS0_PS0_mm:
.LFB4612:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L211
.L212:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	addq	%rax, -8(%rbp)
.L211:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L212
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4612:
	.size	_Z12saxpy_scalarIdEvT_PKS0_PS0_mm, .-_Z12saxpy_scalarIdEvT_PKS0_PS0_mm
	.section	.text._Z8free_memIdEvPT_b,"axG",@progbits,_Z8free_memIdEvPT_b,comdat
	.weak	_Z8free_memIdEvPT_b
	.type	_Z8free_memIdEvPT_b, @function
_Z8free_memIdEvPT_b:
.LFB4613:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpb	$0, -12(%rbp)
	je	.L214
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L216
.L214:
	movq	-8(%rbp), %rax
	subq	$8, %rax
	movq	%rax, %rdi
	call	free@PLT
.L216:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4613:
	.size	_Z8free_memIdEvPT_b, .-_Z8free_memIdEvPT_b
	.section	.text._ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_:
.LFB4725:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4725:
	.size	_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseImSaImEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseImSaImEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
	.type	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm, @function
_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm:
.LFB4727:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L220
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorImE10deallocateEPmm
	nop
.L220:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4727:
	.size	_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm, .-_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm
	.section	.text._ZNKSt16initializer_listImE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listImE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listImE4sizeEv
	.type	_ZNKSt16initializer_listImE4sizeEv, @function
_ZNKSt16initializer_listImE4sizeEv:
.LFB4728:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4728:
	.size	_ZNKSt16initializer_listImE4sizeEv, .-_ZNKSt16initializer_listImE4sizeEv
	.section	.rodata
	.align 8
.LC29:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_:
.LFB4731:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-49(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_
	cmpq	-72(%rbp), %rax
	setb	%bl
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorImED2Ev
	nop
	testb	%bl, %bl
	je	.L224
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L225
	call	__stack_chk_fail@PLT
.L225:
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L224:
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L227
	call	__stack_chk_fail@PLT
.L227:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4731:
	.size	_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseImSaImEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm, @function
_ZNSt12_Vector_baseImSaImEE11_M_allocateEm:
.LFB4732:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L229
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorImE8allocateEmPKv
	nop
	jmp	.L231
.L229:
	movl	$0, %eax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4732:
	.size	_ZNSt12_Vector_baseImSaImEE11_M_allocateEm, .-_ZNSt12_Vector_baseImSaImEE11_M_allocateEm
	.section	.text._ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E:
.LFB4733:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4733:
	.size	_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E
	.section	.text._ZSt8_DestroyIPmEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPmEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPmEvT_S1_
	.type	_ZSt8_DestroyIPmEvT_S1_, @function
_ZSt8_DestroyIPmEvT_S1_:
.LFB4734:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4734:
	.size	_ZSt8_DestroyIPmEvT_S1_, .-_ZSt8_DestroyIPmEvT_S1_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_:
.LFB4742:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4742:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv:
.LFB4744:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4744:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm:
.LFB4745:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	$1, -16(%rbp)
	jmp	.L240
.L241:
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$30, %rax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	$1812433253, %rax, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, (%rdx,%rcx,8)
	addq	$1, -16(%rbp)
.L240:
	cmpq	$623, -16(%rbp)
	jbe	.L241
	movq	-24(%rbp), %rax
	movq	$624, 4992(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4745:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.section	.text._ZNSt25uniform_real_distributionIfE10param_typeC2Eff,"axG",@progbits,_ZNSt25uniform_real_distributionIfE10param_typeC5Eff,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.type	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff, @function
_ZNSt25uniform_real_distributionIfE10param_typeC2Eff:
.LFB4747:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movss	-16(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	call	_ZSt23__is_constant_evaluatedv
	testb	%al, %al
	je	.L243
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-8(%rbp), %rax
	movss	4(%rax), %xmm0
	comiss	%xmm1, %xmm0
	setnb	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L243
	movl	$1, %eax
	jmp	.L244
.L243:
	movl	$0, %eax
.L244:
	testb	%al, %al
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4747:
	.size	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff, .-_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.weak	_ZNSt25uniform_real_distributionIfE10param_typeC1Eff
	.set	_ZNSt25uniform_real_distributionIfE10param_typeC1Eff,_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.section	.text._ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	.type	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE, @function
_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE:
.LFB4749:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC1ERS2_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv
	movss	%xmm0, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIfE10param_type1bEv
	movd	%xmm0, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	movd	%ebx, %xmm1
	subss	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movss	%xmm1, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	addss	-60(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L248
	call	__stack_chk_fail@PLT
.L248:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4749:
	.size	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE, .-_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB4750:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4750:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt25uniform_real_distributionIdE10param_typeC2Edd,"axG",@progbits,_ZNSt25uniform_real_distributionIdE10param_typeC5Edd,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.type	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd, @function
_ZNSt25uniform_real_distributionIdE10param_typeC2Edd:
.LFB4752:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, 8(%rax)
	call	_ZSt23__is_constant_evaluatedv
	testb	%al, %al
	je	.L252
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	xorl	$1, %eax
	testb	%al, %al
	je	.L252
	movl	$1, %eax
	jmp	.L253
.L252:
	movl	$0, %eax
.L253:
	testb	%al, %al
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4752:
	.size	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd, .-_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.weak	_ZNSt25uniform_real_distributionIdE10param_typeC1Edd
	.set	_ZNSt25uniform_real_distributionIdE10param_typeC1Edd,_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.section	.text._ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE
	.type	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE, @function
_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE:
.LFB4754:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC1ERS2_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv
	movsd	%xmm0, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	movq	%xmm0, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	movq	%rbx, %xmm1
	subsd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	addsd	-64(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L257
	call	__stack_chk_fail@PLT
.L257:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4754:
	.size	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE, .-_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE
	.section	.text._ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev:
.LFB4829:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4829:
	.size	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt6vectorImSaImEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_:
.LFB4832:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$1152921504606846975, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$1152921504606846975, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L264
	call	__stack_chk_fail@PLT
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4832:
	.size	_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_, .-_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_
	.section	.text._ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_, @function
_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_:
.LFB4834:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -2(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4834:
	.size	_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_, .-_ZSt18uninitialized_copyIPKmPmET0_T_S4_S3_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_:
.LFB4836:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4836:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_
	.section	.text._ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_:
.LFB4837:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4837:
	.size	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_:
.LFB4838:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4838:
	.size	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC5ERS2_,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_, @function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_:
.LFB4840:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4840:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_, .-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC1ERS2_
	.set	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC1ERS2_,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv, @function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv:
.LFB4842:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4842:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv, .-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv
	.section	.text._ZNKSt25uniform_real_distributionIfE10param_type1bEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIfE10param_type1bEv,comdat
	.align 2
	.weak	_ZNKSt25uniform_real_distributionIfE10param_type1bEv
	.type	_ZNKSt25uniform_real_distributionIfE10param_type1bEv, @function
_ZNKSt25uniform_real_distributionIfE10param_type1bEv:
.LFB4843:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	4(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4843:
	.size	_ZNKSt25uniform_real_distributionIfE10param_type1bEv, .-_ZNKSt25uniform_real_distributionIfE10param_type1bEv
	.section	.text._ZNKSt25uniform_real_distributionIfE10param_type1aEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIfE10param_type1aEv,comdat
	.align 2
	.weak	_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	.type	_ZNKSt25uniform_real_distributionIfE10param_type1aEv, @function
_ZNKSt25uniform_real_distributionIfE10param_type1aEv:
.LFB4844:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4844:
	.size	_ZNKSt25uniform_real_distributionIfE10param_type1aEv, .-_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB4845:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC21(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	movsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L281
	call	__stack_chk_fail@PLT
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4845:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC5ERS2_,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_, @function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_:
.LFB4847:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4847:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_, .-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC1ERS2_
	.set	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC1ERS2_,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv, @function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv:
.LFB4849:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4849:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv, .-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv
	.section	.text._ZNKSt25uniform_real_distributionIdE10param_type1bEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIdE10param_type1bEv,comdat
	.align 2
	.weak	_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.type	_ZNKSt25uniform_real_distributionIdE10param_type1bEv, @function
_ZNKSt25uniform_real_distributionIdE10param_type1bEv:
.LFB4850:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4850:
	.size	_ZNKSt25uniform_real_distributionIdE10param_type1bEv, .-_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.section	.text._ZNKSt25uniform_real_distributionIdE10param_type1aEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIdE10param_type1aEv,comdat
	.align 2
	.weak	_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.type	_ZNKSt25uniform_real_distributionIdE10param_type1aEv, @function
_ZNKSt25uniform_real_distributionIdE10param_type1aEv:
.LFB4851:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4851:
	.size	_ZNKSt25uniform_real_distributionIdE10param_type1aEv, .-_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.section	.text._ZNSt15__new_allocatorImE10deallocateEPmm,"axG",@progbits,_ZNSt15__new_allocatorImE10deallocateEPmm,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorImE10deallocateEPmm
	.type	_ZNSt15__new_allocatorImE10deallocateEPmm, @function
_ZNSt15__new_allocatorImE10deallocateEPmm:
.LFB4879:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4879:
	.size	_ZNSt15__new_allocatorImE10deallocateEPmm, .-_ZNSt15__new_allocatorImE10deallocateEPmm
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB4881:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L292
	movq	-16(%rbp), %rax
	jmp	.L293
.L292:
	movq	-8(%rbp), %rax
.L293:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4881:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNSt15__new_allocatorImE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorImE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorImE8allocateEmPKv
	.type	_ZNSt15__new_allocatorImE8allocateEmPKv, @function
_ZNSt15__new_allocatorImE8allocateEmPKv:
.LFB4882:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L296
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L297
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L297:
	call	_ZSt17__throw_bad_allocv@PLT
.L296:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4882:
	.size	_ZNSt15__new_allocatorImE8allocateEmPKv, .-_ZNSt15__new_allocatorImE8allocateEmPKv
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_:
.LFB4883:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKmPmET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4883:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKmPmEET0_T_S6_S5_
	.section	.text._ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB4884:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4294967295, %eax
	andq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4884:
	.size	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB4885:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	movabsq	$945986875574848801, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	imulq	$624, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4885:
	.size	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv:
.LFB4888:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4888:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB4889:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L308
	movq	-16(%rbp), %rax
	jmp	.L309
.L308:
	movq	-8(%rbp), %rax
.L309:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4889:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB4886:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$24, -72(%rbp)
	fldt	.LC30(%rip)
	fstpt	-48(%rbp)
	fldt	.LC30(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	_ZSt3loge
	addq	$16, %rsp
	fstpt	-144(%rbp)
	fldt	.LC31(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	_ZSt3loge
	addq	$16, %rsp
	fldt	-144(%rbp)
	fdivp	%st, %st(1)
	fldt	.LC32(%rip)
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jnb	.L311
	fnstcw	-122(%rbp)
	movzwl	-122(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -124(%rbp)
	fldcw	-124(%rbp)
	fistpq	-64(%rbp)
	fldcw	-122(%rbp)
	jmp	.L312
.L311:
	fldt	.LC32(%rip)
	fsubrp	%st, %st(1)
	fnstcw	-122(%rbp)
	movzwl	-122(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -124(%rbp)
	fldcw	-124(%rbp)
	fistpq	-64(%rbp)
	fldcw	-122(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -64(%rbp)
.L312:
	movq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$23, %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rax, -88(%rbp)
	movq	$1, -96(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L313
.L316:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, %rbx
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	movq	%rax, %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	js	.L314
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L315
.L314:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L315:
	mulss	-100(%rbp), %xmm0
	movss	-104(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-100(%rbp), %xmm1
	movss	.LC33(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	subq	$1, -80(%rbp)
.L313:
	cmpq	$0, -80(%rbp)
	jne	.L316
	movss	-104(%rbp), %xmm0
	divss	-100(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-108(%rbp), %xmm0
	movss	.LC19(%rip), %xmm1
	comiss	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L317
	pxor	%xmm1, %xmm1
	movl	.LC19(%rip), %eax
	movd	%eax, %xmm0
	call	_ZSt9nextafterff
	movd	%xmm0, %eax
	movl	%eax, -108(%rbp)
.L317:
	movss	-108(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L320
	call	__stack_chk_fail@PLT
.L320:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4886:
	.size	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IdvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_:
.LFB4891:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4891:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB4893:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$53, -72(%rbp)
	fldt	.LC30(%rip)
	fstpt	-48(%rbp)
	fldt	.LC30(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	_ZSt3loge
	addq	$16, %rsp
	fstpt	-160(%rbp)
	fldt	.LC31(%rip)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	_ZSt3loge
	addq	$16, %rsp
	fldt	-160(%rbp)
	fdivp	%st, %st(1)
	fldt	.LC32(%rip)
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jnb	.L323
	fnstcw	-138(%rbp)
	movzwl	-138(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -140(%rbp)
	fldcw	-140(%rbp)
	fistpq	-64(%rbp)
	fldcw	-138(%rbp)
	jmp	.L324
.L323:
	fldt	.LC32(%rip)
	fsubrp	%st, %st(1)
	fnstcw	-138(%rbp)
	movzwl	-138(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -140(%rbp)
	fldcw	-140(%rbp)
	fistpq	-64(%rbp)
	fldcw	-138(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -64(%rbp)
.L324:
	movq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$52, %rax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rax, -112(%rbp)
	movq	$1, -120(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	.LC27(%rip), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L325
.L328:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, %rbx
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	movq	%rax, %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	js	.L326
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L327
.L326:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L327:
	mulsd	-88(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	fldl	-88(%rbp)
	fldt	.LC30(%rip)
	fmulp	%st, %st(1)
	fstpl	-88(%rbp)
	subq	$1, -80(%rbp)
.L325:
	cmpq	$0, -80(%rbp)
	jne	.L328
	movsd	-96(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	movsd	.LC27(%rip), %xmm1
	comisd	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L329
	movsd	.LC34(%rip), %xmm0
	movsd	%xmm0, -104(%rbp)
.L329:
	movsd	-104(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L332
	call	__stack_chk_fail@PLT
.L332:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4893:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.text._ZSt4copyIPKmPmET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKmPmET0_T_S4_S3_,comdat
	.weak	_ZSt4copyIPKmPmET0_T_S4_S3_
	.type	_ZSt4copyIPKmPmET0_T_S4_S3_, @function
_ZSt4copyIPKmPmET0_T_S4_S3_:
.LFB4907:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKmET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKmET_S2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4907:
	.size	_ZSt4copyIPKmPmET0_T_S4_S3_, .-_ZSt4copyIPKmPmET0_T_S4_S3_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB4908:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	4992(%rax), %rax
	cmpq	$623, %rax
	jbe	.L336
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
.L336:
	movq	-24(%rbp), %rax
	movq	4992(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 4992(%rdx)
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$18, %rax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4908:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.section	.text._ZSt12__miter_baseIPKmET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKmET_S2_,comdat
	.weak	_ZSt12__miter_baseIPKmET_S2_
	.type	_ZSt12__miter_baseIPKmET_S2_, @function
_ZSt12__miter_baseIPKmET_S2_:
.LFB4914:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4914:
	.size	_ZSt12__miter_baseIPKmET_S2_, .-_ZSt12__miter_baseIPKmET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_, @function
_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_:
.LFB4915:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPmET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKmET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKmET_S2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPmET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4915:
	.size	_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB4918:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	$-2147483648, -40(%rbp)
	movq	$2147483647, -32(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L343
.L346:
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	leaq	397(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	-8(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L344
	movl	$2567483615, %eax
	jmp	.L345
.L344:
	movl	$0, %eax
.L345:
	xorq	%rdx, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -56(%rbp)
.L343:
	cmpq	$226, -56(%rbp)
	jbe	.L346
	movq	$227, -48(%rbp)
	jmp	.L347
.L350:
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	-227(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	-16(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L348
	movl	$2567483615, %eax
	jmp	.L349
.L348:
	movl	$0, %eax
.L349:
	xorq	%rdx, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -48(%rbp)
.L347:
	cmpq	$622, -48(%rbp)
	jbe	.L350
	movq	-72(%rbp), %rax
	movq	4984(%rax), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andl	$2147483647, %eax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	3168(%rax), %rax
	movq	-24(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L351
	movl	$2567483615, %eax
	jmp	.L352
.L351:
	movl	$0, %eax
.L352:
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4984(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4992(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4918:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.text._ZSt12__niter_baseIPKmET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKmET_S2_,comdat
	.weak	_ZSt12__niter_baseIPKmET_S2_
	.type	_ZSt12__niter_baseIPKmET_S2_, @function
_ZSt12__niter_baseIPKmET_S2_:
.LFB4919:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4919:
	.size	_ZSt12__niter_baseIPKmET_S2_, .-_ZSt12__niter_baseIPKmET_S2_
	.section	.text._ZSt12__niter_baseIPmET_S1_,"axG",@progbits,_ZSt12__niter_baseIPmET_S1_,comdat
	.weak	_ZSt12__niter_baseIPmET_S1_
	.type	_ZSt12__niter_baseIPmET_S1_, @function
_ZSt12__niter_baseIPmET_S1_:
.LFB4920:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4920:
	.size	_ZSt12__niter_baseIPmET_S1_, .-_ZSt12__niter_baseIPmET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_:
.LFB4921:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4921:
	.size	_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKmPmET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPmET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPmET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPmET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPmET_RKS1_S1_, @function
_ZSt12__niter_wrapIPmET_RKS1_S1_:
.LFB4922:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4922:
	.size	_ZSt12__niter_wrapIPmET_RKS1_S1_, .-_ZSt12__niter_wrapIPmET_RKS1_S1_
	.section	.text._ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_:
.LFB4923:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4923:
	.size	_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKmPmET1_T0_S4_S3_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_:
.LFB4924:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L364
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L365
.L364:
	cmpq	$1, -8(%rbp)
	jne	.L365
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_
.L365:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4924:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKmmEEPT0_PT_S7_S5_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_:
.LFB4925:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4925:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneImKmEEvPT_PT0_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE:
	.byte	1
	.align 4
.LC9:
	.long	1075838976
	.align 8
.LC13:
	.long	0
	.long	1074003968
	.align 4
.LC19:
	.long	1065353216
	.align 4
.LC20:
	.long	0
	.align 8
.LC21:
	.long	0
	.long	1104006501
	.align 8
.LC27:
	.long	0
	.long	1072693248
	.align 8
.LC28:
	.long	0
	.long	0
	.align 16
.LC30:
	.long	0
	.long	-2147483648
	.long	16415
	.long	0
	.align 16
.LC31:
	.long	0
	.long	-2147483648
	.long	16384
	.long	0
	.align 16
.LC32:
	.long	0
	.long	-2147483648
	.long	16446
	.long	0
	.align 4
.LC33:
	.long	1333788672
	.align 8
.LC34:
	.long	-1
	.long	1072693247
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
