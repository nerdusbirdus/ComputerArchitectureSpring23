package IntroJava;
// this class written by Kaj Parker-Benson takes the 5 different scores calculated using the Quiz class, then
//the array of scores from Quiz is summed up with values corresponding to Good or Evil or Lawful or Chaotic.
public class QuizEvaluate 
{
	
		
		 static int lawSum = 0;
		 static int goodSum = 0;
		 
		//this is a method that creates a scoreArray object and calls the Quiz so we can get results from it.
		public void scoreArray() 
		{
			
			int[][] lawGoodVal = new int[5][2];
			
			
			Quiz results = new Quiz();
			int[] scoreValue = new int[5];
			scoreValue[0] = results.question1();
			scoreValue[1] = results.question2();
			scoreValue[2] = results.question3();
			scoreValue[3] = results.question4();
			scoreValue[4] = results.question5();
			
			for (int i=0; i<5; i++)
			{
				//x or zero is law/chaos, y value is goodness/evil. [x][y]
				// this is a 2d array of the results that parses the single integer into two values for x and y and stores them.
				
				
			if (scoreValue[i]== 1) 
		     {
			 lawGoodVal[i][0] = 2;
			 lawGoodVal[i][1] = 2;
		      }
			 if (scoreValue[i]== 2)
			 {
			lawGoodVal[i][0] = 0 ;
			 lawGoodVal[i][1] = 2 ;
			 }
			 if (scoreValue[i]== 3)
			 {
			lawGoodVal[i][0] = -2;
			lawGoodVal[i][1] = 2;
			 }
			 
			if (scoreValue[i]== 4)
			{
			lawGoodVal[i][0] = 2;
			lawGoodVal[i][1] = 0;
			 }
			 if (scoreValue[i]== 5)
			 {
			lawGoodVal[i][0] = 0;
			lawGoodVal[i][1] = 0;
			 }
									 
									 
			 if (scoreValue[i]== 6)
			 {
			lawGoodVal[i][0] = -2;
			lawGoodVal[i][1] = 0;
			}
											 
			 if (scoreValue[i]== 7)
			 {
			lawGoodVal[i][0] = 2;
			lawGoodVal[i][1] = -2;
			 }
													 
													 
			 if (scoreValue[i]== 8)
			{
			lawGoodVal[i][0] = 0;
			lawGoodVal[i][1] = -2;
			}
															 
			 if (scoreValue[i]== 9 )
			 {
			lawGoodVal[i][0] = -2;
			 lawGoodVal[i][1] = -2;
			}
															 
			}
		
		for (int i=0; i<5; i++)
				{
			
			lawSum = lawGoodVal[i][0] + lawSum;
			goodSum = lawGoodVal[i][1] + goodSum;
			
				}
		   
		}
		
		public int getLawSum() 
		{
			return lawSum;
		}
		public int getGoodSum() 
		{
			return goodSum;
		}
	}
