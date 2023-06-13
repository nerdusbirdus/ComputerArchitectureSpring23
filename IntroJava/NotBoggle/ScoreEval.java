
package IntroJava.NotBoggle;

import java.io.File;
import java.util.List;
import java.util.ArrayList;
import java.util.Scanner;
import java.io.IOException;

public class ScoreEval 
/*This class takes string parameters (letters) from the Game class and returns a boolean flag true if they are contained in the dictionary.txt file.
 * it first checks to see if the string word is comprised of the characters in the letters parameter issued by the Game class method getLetters(), if not a usage statement is printed and the boolean is set false.
 * If every character in the string word is in the string letters, wordValidator continues and reads the dictionary.txt file, comparing each line with the 
 * user entered word, by setting the line to currentWord. If the comparison value between them is 0, then the boolean flag is set true.
 * The setScore method accepts the string word for every iteration of the wordValidator method, and gets the character length of the word.
 * setScore then multiplies the length by 10 to assign a score and prints the score, returning the int score.
 * setUserScore creates a new ArrayList containing score objects, with score defined as the scoreVal integer that gets stored in the ArrayList along with the Username.
 * The userScore object is created, taking the keyboard input as its argument for username and the score given by SetScore as its int argument.
 * It is then returned by getUserScore to be passed to the other methods and saved as an object in the ArrayList.
*/
{
	
	
	public static boolean wordValidator(String word, String letters) throws IOException 
	{
        for (int i = 0; i < word.length(); i++) 
        {
            char letter = word.charAt(i);
            if (letters.indexOf(letter) == -1) //checks to see if the words entered are actually made from the letters
            {
                System.out.println(word + " contains invalid letters.");
                return false;
            }
        }

        File dictionary = new File("dictionary.txt");

        if (dictionary.createNewFile()) 
        {
            System.out.println("New dictionary file created."); //checks to see if there is a dictionary file, if not creates one.
        } 
        else 
        {
            try (Scanner scannerReader = new Scanner(dictionary)) 
            {
                while (scannerReader.hasNextLine()) 
                {
                    String currentWord = scannerReader.nextLine();

                    int comparisonValue = word.compareTo(currentWord);

                    if (comparisonValue == 0) 
                    {
                        System.out.println(word + " is a valid word and will be added to the list of words to score.");
                        return true;
                    }
                }
                scannerReader.close();
            }
        }

        System.out.println(word + " is not a valid word.");
        return false;
    }

	//does scoring
	 private static int setScore(String words) throws IOException
	 {
	        int score = words.length() * 10;
	        System.out.println("Your score is: "+ score);
	        return score;
	 }
	 //returns score
	 public static int getScore(String words) throws IOException
	 {
	        return setScore(words);
	 }
	    //creates userScore objects
	 private static List<UserScore> setUserScore() throws IOException 
	 {
	        List<UserScore> scores = new ArrayList<>();
	        UserScore userScore = new UserScore("", 0);
	        scores.add(userScore);
	        return scores;
	 }

	//returns userScores
	public static List<UserScore> getUserScore(String words) throws IOException
	{
		
		return setUserScore();
	}

	
	
}
