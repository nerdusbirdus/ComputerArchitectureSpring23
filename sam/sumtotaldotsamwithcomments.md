sumtotaldotsamwithcomments
In 		        ##puts argument in the accumulator(?)
start	jan	done 	##test accumulator for negative, jump at negative 
	sta	count 	##store from accumulator into count memory location to store argument for count.
loop	jaz	done 	##test accumulator for zero, jump at zero 
	lda	total 	##load total to accumulator
	add	count	##add value in count to value in accumulator (total)
	sta	total 	##store new value in total
	lda	count	##load value in count 
	sub	one	    ##Subtracts 1 from count
	sta	count	##Stores decremented value back in count 
	jmp	loop	##jumps back to the start of loop, which is JaZ.
done	lda	total  ##once count is zero total is loaded
	Out		##the output of the value in the accumulator happens
	Hlt		##Program halts
##The following symbol table would make it start at 0 and loop 3x:
total	dat	00
one	dat	01
count	dat	03 
