getsmallestdotsam maybe?
//an assembly program for a 16 bit Simple Accumulator Machine

Start: 	In X		    ##Moves argument X into the accumulator
	    Sta X		    ##Stores X from accumulator into memory
	    In Y		    ##Moves argument Y into the accumulator
	    Sta Y		    ##Stores Y from accumulator into memory     
	    Sub X		    ## Subtracts X from Y, result in accumulator
	    JaN BranchX	    ## Tests value in accumulator. If Y-X is negative, that means X is bigger. If this is the case BranchX runs. 	
	    Jump BranchY	##Jumps to BranchY if the JaN doesn’t run, because X is smaller than or equal in size to Y. 
BranchX: Lda Y		    ## Loads Y, because X was bigger and we are looking for smallest
         Out 		    ##Outputs value of Y, the smaller integer
	    Halt		    ##Halts program
BranchY: Lda X		    ##Loads X, because Y was bigger or equal and we are looking for smallest, and X wins in a tie between two equal size X and Y as the smallest, because of home advantage
	    Out		        ##Outputs X which in this case is the smallest 
	    Halt		    ##Halts program
