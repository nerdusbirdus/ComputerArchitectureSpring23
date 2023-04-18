import java.util.Scanner;

//this program uses switch cases to give a grade from a percentage entered
public class SwitchCaseGrades {

 public static void main(String[] args) {
	 //starts program with a main method
	 
	Scanner scnr = new Scanner(System.in);
	//puts in a scanner
	
	System.out.println("Please enter your grade percentage:"); 
	//prints ask for input
	
	
	int percent;
	// declares integer of percent
	
	percent = scnr.nextInt();//assigns the next integer typed to the variable "percent"
	
    String gradeLetter = null;// this declares a string, holding text that can be output later. it has the value "null" at first
    //I called it gradeLetter because it stores the grade letter.
    
	scnr.close();
	//closes scanner after input
		
    switch(percent/10) {//this starts a switch for percent, and does an operator on the integer value that divides the input by 10, 
    //which turns the two digits into 1, 
    //which is all this case thing seems to be able to handle unless we are making 100 cases, but that is okay, we can just
    //ignore the last digit so for 90 to 100 (case 9 or 10) we put down that the grade is A. It just uses 1 digit. 
    //I did not come up with this insight on my own, I looked it up.
    
    case 10:
    	//for all the high achievers, this system also does not allow for extra credit, 109 is the same as 100 and 110 is invalid.
     case 9:
    gradeLetter = "A";
    
	break;//gotta put this in once you add the cases to tell the code you have stopped adding cases
	
  // Anything starting in a 9 or 10 gets an A
	
	case 8:
    gradeLetter = "B";
	 break;
	 //8s get a B
	 
	// 7s get a C
	case 7:
   gradeLetter = "C";
	break;
	
	// 6s get a D
	case 6:
   gradeLetter = "D";
   break;
   
   // 5s get an F
   case 5:
 gradeLetter = "F";
	break;
	
	default:
  gradeLetter = "Invalid";
	break;
	 // Had to put in a "default" which is basically the same as "else" 
	//for what happens if the other conditions are all false, as far as I know.
					      }
					      
// this prints words also the result of whichever string we selected using the switch case function thingy, gradeLetter.
System.out.println("Grade = " + gradeLetter);
					   }

					}