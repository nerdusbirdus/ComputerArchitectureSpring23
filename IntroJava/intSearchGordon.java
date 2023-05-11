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
		//need to send in the array as a parameter method(arrayworkedon) and also the searched number and the boundaries of your search, 4 args
		public static void search(int theArray, int SearchNumber, int leftLimit, int rightLimit)
		{

		}
		
		keyboard.close();
	}

}