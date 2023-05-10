##assembly code made with arch -x86_64 gcc -S addTwoFun.c from my addTwo.c
##with comments, with assembler directives removed
## removed movb	$0, %al  which moves the format string for printf, in this case 0, into the lowest 8 bytes of %rax the temp register, unnecessary here.
_addTwoFun:                             ## here begins the function addTwoFun which adds two integers.

## %bb.0:                               ## As far as I can tell the %bb.0 is a label for the function that is read instead of the string "addTwoFun" by GNU C Compiler.
	pushq	%rbp                        ##pushes %rbp onto stack to be operated on.
	movq	%rsp, %rbp                  ##moves the value of the stack pointer to the base pointer, growing the stack by a predefined number of bytes that is a multiple of 4 (not sure how many here), necessary to store things during this function's execution
	movl	%edi, -4(%rbp)              ##moves the first argument you are passing (an integer to add) to 4 bytes below the base pointer on the stack frame.
	movl	%esi, -8(%rbp)              ##Moves the second argument you are passing (the other integer to add) to the next available chunk 8 bytes below base pointer.
	movl	-4(%rbp), %eax              ##moves the first arg into %eax the temp register where all the cool operation stuff happens
	addl	-8(%rbp), %eax              ##adds the second arg to %eax which holds the value of the first arg, adding the two integers.
	popq	%rbp                        ##pops the base pointer off the stack which frees up that virtual memory for other functions.
	popq    %rip                        ##changed from retq to equivalent, the instruction pointer IP is popped off stack as last step
_main:                                  ## here begins the function main which calls addTwoFun and printf 
## %bb.0:
	pushq	%rbp                        ##push base pointer onto stack
	movq	%rsp, %rbp                  ##creates stack frame of undefined size(?)
	subq	$16, %rsp                   ##defines stack as 16 bytes in size by putting 16 into stack pointer.
	movl	$10, -4(%rbp)               ## moves the number 10 onto stack 4 bytes below base
	movl	$7, -8(%rbp)                ## moves the number 7 onto stack 8 bytes below base
	movl	-4(%rbp), %edi              ## moves 10 into 1st argument register %edi
	movl	-8(%rbp), %esi              ## moves 7 into 2nd argument register %esi
    push    %rip                        ## first of two instructions replacing callq, pushes instruction pointer (IP) onto stack to be changed.
    mov     _addTwoFun, %rip            ## after IP pushed, the address of the called function addTwoFun is moved to IP to call it.
	movl	%eax, %esi                  ## the result of the addTwoFun is moved from the temp/return register to %esi
	leaq	L_.str(%rip), %rdi          ## the address of the string to be printed with the calculation results is moved to %rdi for first argument 
                                        ## this line had the removed instruction at it.       
    push    %rip                        ## to call printf we push the IP onto stack
    mov     _printf, %rip               ## then we move the address of printf to IP, usually with a print string char in %rax for printf to use but not today. calls printf & prints result of addTwoFun.
	xorl	%eax, %eax                  ## the temp register %eax is Xor'd with itself after printf ends, producing 0.
	addq	$16, %rsp                   ## 16 bytes are added to the stack pointer to shrink the stack back down.
	popq	%rbp                        ## base pointer is popped off stack, now there is no stack frame to speak of for this function.
	popq    %rip                        ## returns to the caller function usually but this pop of the IP ends the program.
	
