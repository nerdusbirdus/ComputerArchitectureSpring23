	
                                            ##assembly code of sumr with comments 
   
_sumr:                                      ## @sumr begins below
	pushq	%rbp                            ## base pointer pushed onto stack to get an operand
	movq	%rsp, %rbp                      ## stack pointer moved to base pointer
	subq	$16, %rsp                       ## 16 bytes subbed from stack pointer, growing stack for function
	movl	%edi, -8(%rbp)                  ## moves first argument 8 below base pointer
	cmpl	$0, -8(%rbp)                    ## compares 0 to the first arg to see which loop to run
	jg	LBB0_2                              ## a jump-if-greater-than instruction, if value > 0 then jump to LBB0_2 else continue
                                            ## (return zero)
	movl	$0, -4(%rbp)                    ## moves zero into spot 4 bytes below base pointer
	jmp	LBB0_3                              ## jumps to Lbb0_3
LBB0_2:                                     ##  LBB0_2 =(call sumr) jumped to if n is greater than 0
	movl	-8(%rbp), %eax                  ## move n into %eax
	movl	%eax, -12(%rbp)                 ## n into 12 below base pointer on stack
	movl	-8(%rbp), %edi                  ## move n into edi
	subl	$1, %edi                        ## subtract 1 from n
    push    %rip                            ## push IP onto stack to be worked on
    movq     _sumr, %rip                    ## moves the address pointer of sumr to the Instruction Pointer to call sumr
	movl	%eax, %ecx                      ## moves the result of sumr into ecx 4th argument register to store it
	movl	-12(%rbp), %eax                 ## loads n for count
	addl	%ecx, %eax                      ## adds result of sumr to n
	movl	%eax, -4(%rbp)                  ## stores count 4 below base pointer
LBB0_3:                                     ## (return value)
	movl	-4(%rbp), %eax                  ## moves count to %eax
	addq	$16, %rsp                       ## adds 16 to stack pointer, shrinking the stack.
	popq	%rbp                            ## pops base pointer off stack, closing stackframe
	popq    %rip                            ## equivalent to retq, pops %rip off stack, ending function and returning to caller function.
_main:                                      ## @main, this is just here because it gives me errors without one.
	pushq	%rbp                            ## pushes base pointer onto stack
	movq	%rsp, %rbp                      ## moves stack pointer to base growing stack
	movl	$0, -4(%rbp)                    ## moves 0 into 4 below base pointer because it returns 0
	xorl	%eax, %eax                      ## clears temp register to 0 with Xor long
	popq	%rbp                            ## closes
	popq    %rip                            ## pops IP off stack, ending function.
                                            ## -- End function
