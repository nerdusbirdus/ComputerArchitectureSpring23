//the code Richard wrote to demonstrate nested for-loops
package mathNested;

public class Main 
{

	public static void main(String[] args) 
	{
	int SIZE = 100;
	int[] values = new int[SIZE];
	init_array(values);
	System.out.println(sum(values));
	System.out.println(99*25);

}

	public static int sum(int[] vals)
	{
		int total = 0;
		for (int i = 0; i < vals.length; i++)
		{
			total =+ vals[i];
		}
		return total;
	}
	
	public static void init_array(int[] vals)
	{
		for (int i = 0 ; i < vals.length; i++)
		{
			vals[i] = i;
		}
	}
	
	
	
	
	
	
	}