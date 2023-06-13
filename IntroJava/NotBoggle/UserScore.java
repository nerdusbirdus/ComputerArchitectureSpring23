/*
 * This class defines UserScore objects for use in the ArrayLists that are made out of them in order to write them to a file, read them from a file, or display them.
 * The constructor UserScore() calls the getUserInput method and sets the userName equal to the result of the getUserInput method, and initializes scoreVal.
 * UserScore also accepts the string userName and the int scoreVal to make new objects out of. 
 * getUserName defines the userName string. getScore returns the scoreVal, setScore turns the score from the rest of the program into scoreVal to be stored here.
 * There may be some redundancy here that could be eliminated. I will be revising this program when I have more time and am not under deadline pressure.
 */

package IntroJava.NotBoggle;

import java.util.Scanner;

public class UserScore {
    private String userName;
    private int scoreVal;

    public UserScore() 
    {
        this.userName = getUserInput("Enter your name: "); 
        // Get the userName from user input
        this.scoreVal = 0; 
        // Set the initial scoreVal to 0
    }

    public UserScore(String userName, int scoreVal) 
    {
        this.userName = userName; 
        // Set the userName field to the provided value
        this.scoreVal = scoreVal; 
        // Set the scoreVal field to the provided value
    }

    public String getUserName() 
    {
        return userName; 
        // Return the userName field
    }

    public int getScore() 
    {
        return scoreVal; 
        // Return the scoreVal field
    }
    
    public void setScore(int score) 
    {
        this.scoreVal = score; 
        // Set the scoreVal field to the provided value from the rest of the program
    }

    private String getUserInput(String prompt) 
    {
        Scanner scanner = new Scanner(System.in);
        System.out.print(prompt);
        String input = scanner.nextLine();
        scanner.close();
        return input;
    }
}
