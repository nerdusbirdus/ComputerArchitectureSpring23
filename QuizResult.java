package classFinalProject;
public class QuizResult
{
	
	private static int goodScale;
	private static int lawfulScale;
	static String goodResult;
	static String lawfulResult;
	
//	QuizEvaluate resultsLaw = new QuizEvaluate();
//	resultsLaw.getLawSum(lawfulScale);
	
	public void setGoodVal(int newGoodVal) {
		goodScale = newGoodVal;
	}
	public void setLawfulVal(int newLawfulVal) {
		lawfulScale = newLawfulVal;
	}
	public int getGoodVal() {
		return goodScale;
	}
	public int lawfulScale() {
		return lawfulScale;
	}

	
	
	public static void createResults() {	//good axis -3 to 3 is neutral, 4+ is good, -4 - is evil
											//lawful is the same but with lawful and chaotic respectively
		
		
		if (lawfulScale > 3) {
			lawfulResult = "Lawful";
		}
		else if (lawfulScale <= 3 && lawfulScale >= -3) {
			lawfulResult = "Neutral";
		}
		else if (lawfulScale < -3) {
			lawfulResult = "Chaotic";
		}
		else { //I cannot fathom a way this else statement will trigger but just in case
			System.out.printf("something went wrong, check to make sure  '%d' makes sense ", lawfulScale);
		}
		
		if (goodScale > 3) {
			goodResult = "Good";
		}
		else if (goodScale <= 3 && goodScale >= -3) {
			goodResult = "Neutral";
		}
		else if (goodScale < -3) {
			goodResult = "Evil";
		}
		else {
			System.out.printf("something went wrong, check to make sure  '%d' makes sense ", goodScale);
		}
		
		if (lawfulResult == "Neutral" && goodResult == "Neutral") {
			lawfulResult = "True";
		}
		
		System.out.printf("Your alignment is %s %s", lawfulResult, goodResult);
	}
}