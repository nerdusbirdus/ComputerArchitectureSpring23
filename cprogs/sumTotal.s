	#sumtotal assembly code with arch -x86_64 gcc -S -o sumTotal sumTotal.c 
	
	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_start                          ## -- Begin function start
	.p2align	4, 0x90
_start:                                 ## @start
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	jmp	LBB0_1
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, _count(%rip)
	jl	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	_count(%rip), %eax
	addl	_total(%rip), %eax
	movl	%eax, _total(%rip)
	movl	_count(%rip), %eax
	addl	$-1, %eax
	movl	%eax, _count(%rip)
	jmp	LBB0_1
LBB0_3:
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	_start
	movl	_total(%rip), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_total                          ## @total
.zerofill __DATA,__common,_total,4,2
	.section	__DATA,__data
	.globl	_count                          ## @count
	.p2align	2
_count:
	.long	3                               ## 0x3

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The sum of the loop indices is: %d\n"

.subsections_via_symbols
