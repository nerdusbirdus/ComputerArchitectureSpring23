package classFinalProject;

public class Main 
{

	public static void main(String[] args) 
	{
		int goodVal;
		int lawVal;

		QuizEvaluate runQuiz = new QuizEvaluate();
		runQuiz.scoreArray();
		
		QuizEvaluate scoreGood = new QuizEvaluate();
		QuizEvaluate scoreLaw = new QuizEvaluate();
		
		
	
		goodVal = scoreGood.getGoodSum();
		lawVal = scoreLaw.getLawSum();
		//System.out.printf("%d %d \n", goodVal, lawVal);
		
		QuizResult result1 = new QuizResult();
		result1.setGoodVal(goodVal);
		result1.setLawfulVal(lawVal);
		QuizResult.createResults();
	}
}
