package tutorialmenuworkspace;
// Snack Selector 5000:
//This program is a reusable menu that uses a while loop for selecting 1 of 3 snack options using switch case, 
//entering a string as a suggestion, which displays that suggestion,
//and terminating the while loop when the user requests it by typing "exit"

import java.util.Scanner;
//scanner for keyboard input

public class tutorialmenu 
{
	
	public static void main(String[] args) 
	//starts main class
	{
		Scanner keyboard= new Scanner(System.in);
		String endingInput = "yes";
	//declaring scanner and the input to be used at the end here is the only place
	//that it works because everywhere else is wrapped in a while loop
		
	while (endingInput.compareToIgnoreCase("exit")!=0)
		//have to wrap the whole thing in this in order to make it reusable.
		//this is a kludgy solution but it took me like 6 hours to come up with.
		{
	
			{	
		
				System.out.println("Welcome to the menu. Please type what you want.");
		 
				System.out.println("1. Potato chips. Enter 'chips' to select");
	
				System.out.println("2. Granola bar. Enter 'bar' to select.");

				System.out.println("3. Cookie. Enter 'cookie' to select.");
				
				System.out.println("4. If we don't have a snack you like, enter its name and we will add it soon.");

				System.out.println("5. Type 'exit' to leave.");
								//prints options and asks for input
			
		String selectedOption= keyboard.nextLine();
		//starts a string that will be assigned keyboard input
		
			while (selectedOption.compareToIgnoreCase("exit")!=0)		
				//This is funny how this works, the same input will cause 2 different loops to do 2 different
				//things because they have different scopes, while "exit" is not the string 
				//this nested while loop will run
			{
				
					switch (selectedOption) 
						{
						case "chips":
							System.out.println(" You picked " + selectedOption + ". Type anything to see the menu again or type 'exit' to leave.");
							selectedOption="exit";
							//Prompts user to order again or type exit to leave the whole program, but selects "exit" for this nested while, 
							//so that we can escape it because I don't know how to do an updater on a string comparison.
							break;
							
							case "bar":
							System.out.println(" You picked " + selectedOption + ". Type anything to see the menu again or type 'exit' to leave.");
							selectedOption="exit";
							//the reason it prompts the user to type something to see the menu and order again or leave was because I could not figure out how to get it to
							//ask for input again within these loops and put another recursive loop in to make the menu print again.
							break;
							case "cookie":
								System.out.println(" You picked " + selectedOption + ". Type anything to see the menu again or type 'exit' to leave.");
								selectedOption="exit";
								break;
							default:
								System.out.println("You entered " + selectedOption +". We don't carry that, but we will make a note of it.");
								System.out.println("Type anything to see the menu again or type 'exit' to leave.");
								selectedOption="exit";
								break;
							}
					
					
		 
			} 	
		
		 endingInput= keyboard.nextLine();
		 //This is the key line along with the one above that makes it reusable
		 //because it asks for input again and then the while above runs again if the input is not "exit".
		
		
				}
			
			} 
	keyboard.close();
	//closes scanner because we are done with input.
	
	}
	
}		
	



