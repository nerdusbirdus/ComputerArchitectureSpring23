package menukspbweek3lab;

import java.util.Scanner;
//lets the program get keyboard input

public class menuproject
{
//Requirements from assignment: 
	//The program contains a reusable menu with the following features: 
	//Create a reusable menu with three options (using switch) inside a while loop
	//1) A while loop which terminates on user request
	//2) An option that allows the user to enter information 
	//3) An option that displays whatever the user entered


	public static void main(String[] args)
//starts a main method, I think I need to do this but I'm not sure
	{
		Scanner scnr= new Scanner(System.in);
//starts a new scanner looking for input
		
		
		String choice;
		//declares a string that will be used with the choice keyword
		
		String foodSelected = null;
		//creates and initializes string to use later
		
		
		System.out.print("Welcome to Le Belle Restaurant. Would you like to see the menu? Answer yes or no.:");
		//asks user for input
		choice = scnr.nextLine();
		//this uses the choice keyword to create a menu we can choose from
		choice = choice.toLowerCase();
		//I believe choice.toLowerCase() is a method that makes whatever string is input for this be interpreted as lower case?
		
			while(choice.compareTo("yes") !=0);
		{
		//compares the string entered to "no". This if statement does all the stuff below if the input is not "no".
		
			System.out.println("Tonight's Menu here at Le Belle Restaurant consists of the three prix fixe options below or a special request at market price:");
			System.out.println("1. Royale with cheese: 12 Euros");
			System.out.println("2. Doner kebab for: 11 Euros");
			System.out.println("3. Fish and chips: 10 Euros");
			System.out.println("4. Special request");
		    System.out.println("5. Just leave");
			System.out.println("Please enter the number of your selection:");
			//prints the menu options
			
	
			if(choice.compareTo("no") !=0);
		//this while statement compares strings
		//says that while the input is "no" it should do the stuff below:
		// System.out.println("bon voyage!"); 
		 
		 int menuSelection;
			//declares int to use later
		 menuSelection = scnr.nextInt();
			//this assigns menuSelection as an int that will be assigned the value typed into the keyboard	
		
		//I DONT KNOW WHY THIS DOESNT WORK!!
			//it is supposed to run the stuff below if the conditions obtain
		
					switch(menuSelection) {
					
					case 1: 
							foodSelected =("Royale with cheese. Excellent choice.");
							System.out.println(" Your selection is: " + foodSelected);
							
							
					break;
					case 2:
									foodSelected =("Doner kebab. Superb selection.");
									System.out.println(" Your selection is: " + foodSelected);
									
					break;
					case 3:
									foodSelected = ("Fish and chips. Wonderful decision.");
									System.out.println(" Your selection is: " + foodSelected);
									
					break;
					case 4:
					foodSelected = ("You have chosen a special request. Tell us what you would like:");
					System.out.println(" Your selection is: " + foodSelected);
					
					// HOW DO I GET A SCANNER IN HERE TO LET THE USER MODIFY foodSelected?
					
					break;
					
					case 5: 
						System.out.println("Bon Voyage!");
					break;
					
					default:
					foodSelected=("Please try again and select the number of the menu option next time.");
					choice = ("yes");
					break;
			}			
					}
		
				
		scnr.close();//closes scanner
		
	}}

			