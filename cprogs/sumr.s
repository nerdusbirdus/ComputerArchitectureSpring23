	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_sumr                           ## -- Begin function sumr
	.p2align	4, 0x90
_sumr:                                  ## @sumr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	LBB0_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB0_3
LBB0_2:
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
	movl	-8(%rbp), %edi
	subl	$1, %edi
	callq	_sumr
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"

.subsections_via_symbols
