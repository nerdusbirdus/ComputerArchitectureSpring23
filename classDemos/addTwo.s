	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _num1@GOTPAGE
	ldr	x8, [x8, _num1@GOTPAGEOFF]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	adrp	x8, _num2@GOTPAGE
	ldr	x8, [x8, _num2@GOTPAGEOFF]
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB0_3
LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_atoi
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	str	w0, [x8]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	_atoi
	ldr	x9, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x10, [x29, #-24]                ; 8-byte Folded Reload
	str	w0, [x10]
	ldr	w8, [x9]
                                        ; implicit-def: $x11
	mov	x11, x8
	ldr	w12, [x10]
                                        ; implicit-def: $x8
	mov	x8, x12
	ldr	w9, [x9]
	ldr	w10, [x10]
	add	w10, w9, w10
	mov	x9, sp
	str	x11, [x9]
	str	x8, [x9, #8]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #16]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-4]
	b	LBB0_3
LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Number of command line arguments is %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"usage: ./addTwo int int\n"

	.comm	_num1,4,2                       ; @num1
	.comm	_num2,4,2                       ; @num2
l_.str.2:                               ; @.str.2
	.asciz	"The sum of %d and %d is %d\n"

.subsections_via_symbols
