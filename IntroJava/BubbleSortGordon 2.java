package sorting;

public class BubbleSort
{
	public static void sort(int[] theArray)
	{
		int temp;
		
		for(int i = 0; i < theArray.length; ++i)
		{
			for(int j = 0; j < theArray.length - i - 1; ++j)
			{
				if(theArray[j] > theArray[j + 1])
				{
					temp = theArray[j];
					theArray[j] = theArray[j + 1];
					theArray[j + 1] = temp;
				}
			}
		}
	}
	
	public static void print(int[] theArray)
	{
		for(int i = 0; i < theArray.length; i++)
		{
			System.out.println(theArray[i]);
		}
	}
}