#mulTwo.sam Sam16 program 
#Hint - your program will be nearly identical to the sumTotal.sam program except that your program will take two inputs and each time through the loop you will add the #second input to the running total. The first input will be the “count”. The idea is that multiply is simply an addition loop.

    in count
start	jan	done
	sta	count
    in  operand
    sta operand
    lda count
loop    jaz done
	lda	total
	add	count
	sta	total
    lda operand
    add total
    sta total
	lda	count
	sub	one
	sta	count
	jmp	loop
done	lda	total
	out
	hlt
total	dat	00
operand dat 00
one	    dat	01
count	dat	03
