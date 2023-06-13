/*
 * The Leaderboard class is the most important part of my final project as it demonstrates that I can successfully implement a list with searches and sorts.
 * This class implements a list, which is sorted with bubbleSort method which is called by displayLeaderboard(). This class implements a search function
 * with the search() method, which allows user input of a string for username to search for the scores associated with a username.
 * The create() method implements file IO, making a new file if one does not exist.
 * The write() method writes the arraylist of UserScore objects to a file called ScoreList.txt and lets the user know that the score was saved.
 * The bubbleSort() method implements a modified bubble sort with a boolean checking if the elements have been swapped, in order to sort the ScoreList file.
 * the swap() method allows bubbleSort() to work more efficiently by only running if the elements have not been swapped already.
 * The read() method uses the line.split operation and trim in order to split the lines of the ScoreList.txt file into their components each with its 
 * requisite data typing intact, that took a bit of figuring out. It then returns the whole list as scores to print. 
 * The printlist() method is a little redundant and could be integrated into displayLeaderboard() but I wanted to make a non sorted print an option for later.
 * The displayLeaderboard() method checks to see if there is a score file, and if there is one then it sorts the file with bubbleSort and prints with printList.
 * The search() method takes keyboard input as an argument and checks to see if there is a UserScore corresponding to that username.
 * If there is a UserScore corresponding to the username in the file, then the score or scores are printed. 
 */

package IntroJava.NotBoggle;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Leaderboard 
{
    private static final String FILE_PATH = "ScoreList.txt";

    public static void create() 
    {
        try 
        {
            File myFile = new File("ScoreList.txt");

            if (myFile.createNewFile()) 
            {
                System.out.println("New high score file created.");
            } 
            else 
            {
                System.out.println("High score file already exists.");
            }
        } 
        catch (IOException e) 
        {
            System.out.println("Error");
            e.printStackTrace();
        }
    }

    public static void write(List<UserScore> scores) 
    {
        try (FileWriter myWriter = new FileWriter("ScoreList.txt", true)) 
        {
            for (UserScore userScore : scores) 
            {
                myWriter.write(userScore.getUserName() + "," + userScore.getScore() + "\n");
            }

            myWriter.close();
            System.out.println("Saved high score.");
        } 
        catch (IOException e) 
        {
            System.out.println("Error");
            e.printStackTrace();
        }
    }

    private static void bubbleSort(List<UserScore> list) 
    {
        int n = list.size();
        boolean swapped;
        for (int pass = 0; pass < n - 1; pass++) 
        {
            swapped = false;
            for (int compare = 0; compare < n - pass - 1; compare++) 
            {
                UserScore first = list.get(compare);
                UserScore second = list.get(compare + 1);
                if (first.getScore() > second.getScore()) 
                {
                    swap(list, compare, compare + 1);
                    swapped = true;
                }
            }

            if (!swapped)
                break;
        }
    }

    private static void swap(List<UserScore> list, int x, int y) 
    {
        UserScore temp = list.get(x);
        list.set(x, list.get(y));
        list.set(y, temp);
    }

    public static List<UserScore> read() 
    {
        List<UserScore> scores = new ArrayList<>();

        try {
            File file = new File(FILE_PATH);
            Scanner scanner = new Scanner(file);

            while (scanner.hasNextLine()) 
            {
                String line = scanner.nextLine();
                String[] data = line.split(","); 
                //need this to separate the int score from the string username
                if (data.length == 2) 
                {
                    String userName = data[0].trim();
                    //trims the data to read the string only
                    int scoreVal = Integer.parseInt(data[1].trim());
                    //trims the data to read the score only
                    UserScore score = new UserScore(userName, scoreVal);
                    scores.add(score);
                }
            }

            scanner.close();
        } 
        catch (IOException e) 
        {
            System.out.println("Error reading scores file: " + e.getMessage());
        }

        return scores;
    }

    public static void printList(List<UserScore> scores) 
    {
        if (scores.isEmpty()) 
        {
            System.out.println("Leaderboard is empty.");
        } 
        else 
        {
            for (UserScore score : scores) 
            {
                System.out.println(score.getUserName() + "," + score.getScore());
            }
        }
    }

    public static void displayLeaderboard() 
    {
        List<UserScore> scores = read();

        if (scores.isEmpty()) 
        {
            System.out.println("Leaderboard is empty.");
        } 
        else 
        {
            System.out.println("Here are the sorted User Scores, sorted by high score to low: ");
            bubbleSort(scores);
            printList(scores);
        }
    }

    public static void search(String username) 
    {
        List<UserScore> scores = read();
        List<UserScore> userScores = new ArrayList<>();

        for (UserScore score : scores) 
        {
            if (score.getUserName().equalsIgnoreCase(username)) 
            {
                userScores.add(score);
            }
        }

        if (userScores.isEmpty()) 
        {
            System.out.println("No scores found for the username: " + username);
        } 
        else 
        {
            System.out.println("Scores for the username: " + username + " in chronological order.");
            printList(userScores);
        }
    }
}
