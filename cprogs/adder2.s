	## adder2.s with comments by nerdusbirdus
	.section	__TEXT,__text,regular,pure_instructions  ##this is all information about the adder2.s file itself here, its name, etc.
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_adder2                         ; -- Begin function adder2
	.p2align	2
_adder2:                                ; @adder2
	.cfi_startproc ##canonical frame instruction moved to start process
; %bb.0: ##indicates start of the adder2 function "basic block"(?)
	sub	sp, sp, #16 ##decrements stack pointer by 16 bytes, growing stack. 
	.cfi_def_cfa_offset 16 ## tells compiler that the stack pointer is now offset by 16 bytes
	str	w0, [sp, #12] ##store w0 into stack pointer with an argument of 12
	ldr	w8, [sp, #12] ##load w8 with the value 12(?)
	add	w0, w8, #2 ##add 2 to value in w8 and store in w0
	add	sp, sp, #16 ## adds 16 to the stack pointer, shrinking stack by 16 bytes
	ret ##returns to the main function
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc ##not sure what this canonical frame indicator thing does exactly
; %bb.0:
	sub	sp, sp, #48 ##subtracts 48 bytes from stack pointer, grows stack by 48
	.cfi_def_cfa_offset 48 ##now the compiler knows about the 48 byte "offset"
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill ##stores x29 and x30 in the stack(?) IDK what a folded spill is
	add	x29, sp, #32 ## adds x29 to the stack pointer which points it at x29(?)
	.cfi_def_cfa w29, 16 ##someting here tells the compiler what just happened
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0 ## moves 0 into register w8
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill ## stores w8 into whatever location [x29-12] is.
	stur	wzr, [x29, #-4] ##stores the value of wzr into stack at [x29-12]
	mov	w8, #40 ##moves 40 into w8
	stur	w8, [x29, #-8] ##stores w8 into location [x29 -8]
	ldur	w0, [x29, #-8] ##loads value at location [x29-8] into register w0
	bl	_adder2 ## I guess this somehow calls adder2?
	stur	w0, [x29, #-8] ##stores what is in w0 (the result of adder2) into location [x29-8]
	ldur	w9, [x29, #-8] ##loads value at [x29-8] into register w9
                                        ; implicit-def: $x8 ##IDK what this does
	mov	x8, x9 ## moves x9 into x8
	mov	x9, sp ## moves value of x9 onto stack 
	str	x8, [x9] ##stores value of x8 into x9 (how is that different from move again?)
	adrp	x0, l_.str@PAGE ## I looked it up and I guess this stores a string literal into register x0?
	add	x0, x0, l_.str@PAGEOFF ##this adds whatever l_.str@PAGEOFF is into x0 register
	bl	_printf ##supposed to call printf?
	ldur	w0, [x29, #-12]                 ; 4-byte Folded Reload ##loads w0 with value at [x29-12] which I think is still the output of adder2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload ##loads x29 and x30 into stack pointer somehow(?) (doing what?)
	add	sp, sp, #48 ##adds 48 from stack pointer into stack pointer, so I think the stack shrinks by 48 bytes
	ret ##ends main function
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"x is: %d\n"  ##Something to do with storing the string "x is %d\n"

.subsections_via_symbols
