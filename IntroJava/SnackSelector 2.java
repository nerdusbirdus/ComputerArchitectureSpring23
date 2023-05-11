package IntroJava;

import java.util.Scanner;

public class tutorialmenu 
{
	
	public static void main(String[] args) 
	{
		Scanner keyboard= new Scanner(System.in);
		String endingInput = "yes";
	
	while (endingInput.compareToIgnoreCase("exit")!=0)
		{
	
			{	
		
			

				System.out.println("Welcome to the menu. Please type what you want.");
		 
				System.out.println("1. Potato chips. Enter 'chips' to select");
	
				System.out.println("2. Granola bar. Enter 'bar' to select.");

				System.out.println("3. Cookie. Enter 'cookie' to select.");
				
				System.out.println("4. If we don't have a snack you like, enter its name and we will add it soon.");

				System.out.println("5. Type 'exit' to leave.");
								
			
		String selectedOption= keyboard.nextLine();
		while (selectedOption.compareToIgnoreCase("exit")!=0)		
			{
				

					switch (selectedOption) 
						{
						case "chips":
							System.out.println(" You picked " + selectedOption + ". Order again or type 'exit' to leave.");
							selectedOption="exit";
							break;
							case "bar":
							System.out.println(" You picked " + selectedOption + ". Order again or type 'exit' to leave.");
							selectedOption="exit";
							break;
							case "cookie":
								System.out.println(" You picked " + selectedOption + ". Order again or type 'exit' to leave.");
								selectedOption="exit";
								break;
							default:
								System.out.println("You entered " + selectedOption +". We don't carry that, but we will make a note of it. Please enter your selection again or type 'exit' to leave.");
								selectedOption="exit";
								break;
							}
					
					
		 
					} 	
		
		 endingInput= keyboard.nextLine();
		
		
				}
	} keyboard.close();
			}
	
}		
	



