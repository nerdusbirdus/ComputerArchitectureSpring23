package intSearch;

import java.util.Scanner;

public class Main {
//int search with gordon showing us stuff
	public static void main(String[] args) 
	
	
	{	System.out.print("Enter number to search for:");
		Scanner keyboard = new Scanner(System.in);
		int SearchNumber = keyboard.nextInt();
		int[] theArray = {1,2,3,4,5,6,7,8,9,10};
		for(int i = 0; i < theArray.length -1; ++i)
		{
			System.out.println(theArray[i]);
		}
		
		int i = -1;
		do
		{
			i++;
			if(SearchNumber == theArray[i])
			{
			System.out.print("The number " + SearchNumber + " is located at index " + i + " out of 11 array indices.");
			}
			else
			{
				System.out.print("Value not at index " + i + ", ");
			}
			
		}
		while(theArray[i] != SearchNumber && i < 9);
			
		{
			System.out.print(" Search Complete.");
		
		
		}
		
		keyboard.close();
	}

}