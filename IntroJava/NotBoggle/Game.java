/*
This class creates both a UserScore object and a Leaderboard object, 
showing how the Game class is composed of the other two classes and cannot run without it.
The Game class uses the getLetters() method to generate 16 random letters between ASCII values 97 and 122, the lowercase letters.
The StringBuilder method is used to turn those 16 letters into a string, then the string is printed for the user from the local variable letters.
The setWords() method accepts the scanner input as an argument, and takes the user's input and adds it to a string wordList, but only 
after wordValidator() is called on it, and the result is true. The string of words is then printed and it is returned as words, which will be scored.
The method getWords provides access to the string words. 
The playGame method is where all the magic happens. It implements the check to see if the user wants to keep trying words or press 4 to quit.
It also implements scoring with a check to see if wordValidator() returns true. If so, the getScore method is called with words as an argument to 
get the score value. A new arraylist of userScores is created, and the username previously entered is combined with the score generated from the length of the words and
the UserScore object containing both elements is created and saved in the high score list. The createUserScore() method is called to prompt input of a username to pass as an
argument to be used to save the UserScore.
*/

package IntroJava.NotBoggle;
import java.io.IOException;
import java.util.Random;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.List;

public class Game 
{
    private String letters;
    private List<String> words;

    public Game() 
    {
        words = new ArrayList<>();
    }

    public void getLetters() 
    {
        int letterA = 97;
        int letterZ = 122;
        int strLength = 16;
        Random random = new Random();
        StringBuilder temp = new StringBuilder(strLength);
        for (int i = 0; i < strLength; i++) 
        {
            int randomChar = letterA + (int) (random.nextFloat() * (letterZ - letterA + 1));
            temp.append((char) randomChar); 
            //appends a character at a random int index within the range to the string
        }
        letters = temp.toString(); 
        //turns string builder int array to a string called letters

        System.out.println("Here are your letters: ");
        System.out.println(letters);
    }

    private String setWords(Scanner keyboard) throws IOException 
    {
        System.out.println("Type as many words as you dare to try into the command line, pressing enter after each one to save it. Type the number 4 when you are done.");
        StringBuilder wordList = new StringBuilder();

        String word;
        while ((word = keyboard.nextLine()) != null && !word.equals("4")) 
        {
            
            if (ScoreEval.wordValidator(word, letters))
            {
                wordList.append(word).append(" ");
            }
        }

        String words = wordList.toString();
        System.out.println("These are the words you entered: " + words);

        return words;
    }

    public String getWords(Scanner keyboard) throws IOException 
    {
        return setWords(keyboard);
    }

    public void playGame(Scanner keyboard) throws IOException 
    {
        getLetters();
        UserScore userScore = createUserScore(keyboard);

        String word;
        boolean isValid;
        do 
        {
            System.out.println("Enter a word (or press 4 to finish):");
            word = keyboard.nextLine().trim();
            //use trim to make sure that the empty string is not treated as an input causing errors

            if (word.equals("4")) 
            {
                break; // Exit the loop when "4" is entered
            }

            if (!word.isEmpty()) 
            	//check to see if there is a word entered and validate it, if so add to arraylist of words.
            {
                isValid = ScoreEval.wordValidator(word, letters);
                if (isValid) 
                {
                    words.add(word);
                } 
                else 
                {
                    System.out.println("Invalid word! Please try again.");
                }
            } 
            else 
            {
                isValid = true; 
                // Continue the loop when word is empty in order to collect more inputs, this probably isn't the right way to do it.
            }
        } 
        while (!word.equals("4")); 
        // Check the condition for "4" to quit, this is a little redundant and might not be necessary but it works as it is. 

        String words = String.join(" ", this.words);
        int score = ScoreEval.getScore(words);
        userScore.setScore(score);

        List<UserScore> userScores = new ArrayList<>();
        userScores.add(userScore);
        Leaderboard.write(userScores);
    }

    private UserScore createUserScore(Scanner keyboard) 
    {
        System.out.print("Enter your name: ");
        String userName = keyboard.nextLine();

        return new UserScore(userName, 0);
    }
}
