package testloop;

import java.util.Scanner;

public class conversionDoLoops
{

	public static void main(String[] args) 
	{
	Scanner keyboard= new Scanner(System.in);

		int initTime, days, hours, minutes, remainder;
		String choice;
		
		do
		{
			System.out.print("do you want to convert seconds? (yes/no):");
			choice = keyboard.nextLine();
			choice = choice.toLowerCase();
			
			
		if(choice.compareTo("no") !=0)
			//compares two strings, both must be same data type
			{
				System.out.print("enter seconds:");
				initTime = Integer.parseInt(keyboard.nextLine());
	
			days= initTime /(24*60*60); 
			remainder = initTime % (24*60*60);	
			hours= remainder / (60*60); 
			remainder = remainder % (60*60) ; 
			 minutes = remainder / 60;  
			remainder = remainder % 60; 
			
			System.out.println(initTime + " seconds equals " + days + " days " + hours + " hours " + minutes + " minutes " + remainder + " remainder ");
			}		
			
		} while(choice.compareTo("no") !=0);
		System.out.println("goodbye!");
				
}
	}