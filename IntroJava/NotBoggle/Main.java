/*notBoggle by Nerdus McBirdus. Submitted as the Final Project for Introduction To Java at TESC Spring Quarter 2023. 
 * The main class implements a reusable menu that allows the user to choose whether to play the game, see the high scores, or search for a high score, or quit.
 * A while loop checking a boolean makes sure the menu prints again and asks for input after each action, until it receives the input 4 and it causes the program to terminate.
 * This class performs user interface functions, giving the user prompts on the command line for input. It calls methods according to that input to implement the game and its functions.
 */

package IntroJava.NotBoggle;
import java.io.IOException;
import java.util.Scanner;

public class Main 
{
    public static void main(String[] args) throws IOException 
    {
        System.out.println("Welcome to a game that is legally distinct from Hasbro Corporation's Boggle(TM).");
        System.out.println("This game is harder than Boggle(TM) because you will unscramble random characters instead of premade dice. There will be many consonants.");
        System.out.println("This game is easier than Boggle(TM) because there is no timer as of yet. You can take your time and really find all the words possible.");
        System.out.println("You will be scored on the length of valid dictionary words you can make out of 16 letters.");

        boolean quit = false;
        Scanner keyboard = new Scanner(System.in);

        while (!quit) 
        {
            displayMenu();

            if (keyboard.hasNextLine()) 
            {
                String selection = keyboard.nextLine().trim();
                //need to use the trim method to make sure it does not read the enter key as an empty next line

                switch (selection) 
                {
                    case "1":
                        Game notBoggle = new Game();
                        notBoggle.playGame(keyboard);
                //the scanner keyboard is passed as an argument to the playGame method of the Game class
                        break;
                    case "2":
                        Leaderboard.displayLeaderboard();
                        break;
                    case "3":
                          System.out.print("Enter a username to search: ");
                          if (keyboard.hasNextLine()) 
                        	  //check to see if there is a next line to prevent exceptions
                          {
                              String username = keyboard.nextLine();
                              Leaderboard.search(username);
                          } else 
                          {
                              System.out.println("Invalid input. Please try again.");
                          }
                          break;
                    case "4":
                        quit = true;
                        break;
                    default:
                        System.out.println("Invalid selection. Please try again.");
                        break;
                }
              //redundant error handling means that any eventuality is planned for
            } 
            else 
            {
                System.out.println("Invalid input. Please try again."); 
                break;
            }
        }

        keyboard.close();
        //need to close the scanner here to avoid errors
    }

    private static void displayMenu() {
        System.out.println("\nWelcome to the menu. Please type the number for your selection.");
        System.out.println("Enter 1 to start a new game.");
        System.out.println("Enter 2 to see the high score list.");
        System.out.println("Enter 3 to search for a high score.");
        System.out.println("Enter 4 to quit.");
    }
}