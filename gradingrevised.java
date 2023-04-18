import java.util.Scanner;

public class gradingrevised {
	//this program takes a decimal grade (expressed in an integer) 
	//and returns a letter grade corresponding a range of scores
	//takes an integer and performs an if-else check and if the condition obtains it runs and if else.
	//then it runs something else, until some condition is true. If none of them are, it tells you it is not a valid grade

	public static void main(String[] args) {
		
		// TODO Auto-generated method stub (the machine makes this comment).
		
		System.out.println("Please enter your grade percentage:"); 
		
		//prints ask for input
		Scanner scnr = new Scanner(System.in);// declares a scanner looking for an input from the keyboard.
		
		int grade ; 
		//declares integer variable grade
		
		grade = scnr.nextInt();
		//assigns grade to scanner input
		
		// Grade calculation if then, else if, and else statements
		scnr.close();
		
		if ((grade >= 90) && (grade <= 100)){ 
			// this logic can be written easily in English 
			//"if the grade is greater than or equal to 90 (&& operator) and less than or equal to 100 (i.e. 90-100) then run." 
			//No extra credit, that means a value above 100 returns invalid, the "else" condition.
		
		    System.out.print("You get an A.");
		    
		
		} else if ((grade >= 80) && (grade <=90)){
			//grades between 80 and 90 are B
		    System.out.print("You get a B.");
		    
		} else if ((grade >= 70) && (grade <= 80)) {
			
		    System.out.print("You get a C.");
		    
		} else if ((grade >= 60) && (grade <= 70)) {
			
		    System.out.print("You get a D.");
		    
		} else if ((grade >= 50) && (grade <= 60)) { 
			
		    System.out.print("You get an F.");
		} else 
			System.out.println ("Not a valid grade.");
		}
	// Thanks to Gordon for explaining how to use >= operator
	}

