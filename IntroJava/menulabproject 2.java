package IntroJava;

import java.util.Scanner;

public class menulabproject 
{
	

static Scanner scnr= new Scanner(System.in);
//starts a new scanner looking for input
	
	public static void main(String[] args)
    	{

		System.out.print("Welcome to Le Belle Restaurant. Would you like to see the menu? Answer yes or no.:");
		//asks user for input
		 int menuSelection = 0;
		boolean viewMenu = false;
		
		while (!viewMenu) 
			{
			System.out.println("Tonight's Menu here at Le Belle Restaurant consists of the three prix fixe options below or a special request at market price:");
			System.out.println("1. Royale with cheese: 12 Euros");
			System.out.println("2. Doner kebab for: 11 Euros");
			System.out.println("3. Fish and chips: 10 Euros");
			System .out.println("4. Special request");
			System.out.println("5. Just eat the breadsticks and leave");
			System.out.println("Please enter the number of your selection:");
			menuSelection = scnr.nextInt();
			
			if(menuSelection == 5 ) 
							{
				System.out.println("Bon Voyage!");
				viewMenu= true;
							}
			else if (menuSelection > 0 || menuSelection < 5)
				System.out.println("Excellent choice. Would you like to order something else?");
				
			}
			
			
			
		
    	}
	
}
