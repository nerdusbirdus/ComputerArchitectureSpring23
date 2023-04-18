package testweek4class;
//this displays an array
public class poo 
{
	
	public static void main(String[] args)
		{
	int[]numbers= new int[100] ;
			//creates an array of 10 called numbers
			
	for(int i = 0; i < numbers.length; i++) {
		//this defines a value up to 20 and when it exceeds 20 it goes back to 0
			//if we are trying to work with large amounts of info we use
			//an array to store i.e. 10k indices instead of having that many variables
			//you can't go through individual variables in a loop
			
		numbers[i] = i + 1;
	}
	for(int i = 10; i< numbers.length; i++){
		numbers[i] = i;
	}
	for(int val : numbers)
		System.out.println("the next value is" +val);
	for(int i = 10; i < numbers.lenth; i++) {
		System.out.println(numbers[i]);
	}
	}
	
	//int index = 0;
	
	//while(numbers[index] != 0)
		//this will start the array until 0 then stop
		//line 21 of this i is effectively 0
						//	{
 //System.out.println(numbers[index]);
 
// index++;
						//	}
		}
}