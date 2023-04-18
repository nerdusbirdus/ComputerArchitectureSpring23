package IntroJava;
import java.util.Scanner;
public class Quiz
{

    Scanner keyboard = new Scanner(System.in); //adds user input with object 'keyboard'
    public int question1() { //method for first question // each method functions the same with variations for questions and answers
        int answer1; // variable with assigned numerical value 1-9 of Lawful good to Chaotic evil
        do {
// prints the questions and answers for the user and gets the results in integer form
            System.out.println("Which of these values matter to you the most?");
            System.out.println("1) Truth"); // Lawful good
            System.out.println("2) Loyalty"); // Neutral good
            System.out.println("3) Justice"); // chaotic good
            System.out.println("4) Family"); // lawful neutral
            System.out.println("5) Happiness"); // true neutral
            System.out.println("6) Friends"); // chaotic neutral
            System.out.println("7) Success"); // lawful evil
            System.out.println("8) Self"); // neutral evil
            System.out.println("9) Bloodlust"); // chaotic evil
            System.out.print("> ");
            try {
            answer1 = Integer.parseInt(keyboard.nextLine());
            	} catch (NumberFormatException e) 
            {//catches exception
            		System.out.println("Error. Please enter a number 1-9.");
            		answer1 = Integer.parseInt(keyboard.nextLine()); 
            	}
        } while (answer1 > 9 || answer1 < 1); //sets parameters for user input as integers 1-9
        return answer1;
    }

    public int question2() { // method for second question
        int answer2;
        do {

            System.out.println("You get food poisoning from a restaurant. What do you do?");
            System.out.println("1) Politely inform the staff that their food made you sick"); // Lawful good
            System.out.println("2) Wait for it to pass at home by yourself"); // Neutral good
            System.out.println("3) Warn all of your friends not to eat there"); // chaotic good
            System.out.println("4) Lodge a formal complaint with the restaurant"); // lawful neutral
            System.out.println("5) Go to a doctor"); // true neutral
            System.out.println("6) Call the health inspector"); // chaotic neutral
            System.out.println("7) Sue the restaurant"); // lawful evil
            System.out.println("8) Write a bad yelp review"); // neutral evil
            System.out.println("9) Light the building on fire"); // chaotic evil
            System.out.print("> ");
            try {
                answer2 = Integer.parseInt(keyboard.nextLine());
                	} catch (NumberFormatException e) {
                		System.out.println("Error. Please enter a number 1-9.");
                		answer2 = Integer.parseInt(keyboard.nextLine());
                	}
                
        } while (answer2 > 9 || answer2 < 1);
        return answer2;
    }

    public int question3() {
        int answer3;
        do {
            System.out.println("How do you feel about authority?");
            System.out.println("1) It is an integral part of any function society."); //Lawful good
            System.out.println("2) Some situations require strong leadership."); //Neutral good
            System.out.println("3) Sometimes people need to be told what to do, for their own good."); //Chaotic good
            System.out.println("4) I have faith in the system."); //Lawful neutral
            System.out.println("5) I just mind my own business and try not to upset anyone."); //True neutral
            System.out.println("6) It's only illegal if you don't get caught."); // Chaotic neutral
            System.out.println("7) I don't mind it as long as it doesn't get in my way. "); // Lawful evil
            System.out.println("8) I bow to no one."); // Neutral evil
            System.out.println("9) *Muffled sounds of monkey violence*"); // Chaotic evil
            System.out.print("> ");
            try {
                answer3 = Integer.parseInt(keyboard.nextLine());
                	} catch (NumberFormatException e) {
                		System.out.println("Error. Please enter a number 1-9.");
                		answer3 = Integer.parseInt(keyboard.nextLine());
                	}
              
        } while (answer3 > 9 || answer3 < 1);
        return answer3;
    }

    public int question4() {
        int answer4;
        do {
            System.out.println("What is your ideal living situation?");
            System.out.println("1) A nice house with a well manicured lawn."); //Lawful good
            System.out.println("2) Anywhere close to my friends and family."); //Neutral good
            System.out.println("3) I like to think of the world as my home, and everyone is my neighbor."); //Chaotic good
            System.out.println("4) Someplace the bog man can't find mw."); //Lawful neutral
            System.out.println("5) Anywhere I'm comfortable, I guess."); //True neutral
            System.out.println("6) A place with enough amenities to suit my every need."); // Chaotic neutral
            System.out.println("7) A well-defended fortress. "); // Lawful evil
            System.out.println("8) A solitary cabin the in the forest."); // Neutral evil
            System.out.println("9) The bog"); // Chaotic evil
            System.out.print("> ");
            
            try {
                answer4 = Integer.parseInt(keyboard.nextLine());
                	} catch (NumberFormatException e) {
                		System.out.println("Error. Please enter a number 1-9.");
                		answer4 = Integer.parseInt(keyboard.nextLine());
                	}
        } while (answer4 > 9 || answer4 < 1);
        return answer4;
    }
    public int question5() {
        int answer5;
        do {
            System.out.println("What is your approach to problem solving?");
            System.out.println("1) I always do whatever is fair and just."); //Lawful good
            System.out.println("2) I just try not create more problems."); //Neutral good
            System.out.println("3) I do what's right, no matter the cost."); //Chaotic good
            System.out.println("4) I'll deal with it and try not to cause a fuss."); //Lawful neutral
            System.out.println("5) I'll do my best to come to a mutually agreeable compromise."); //True neutral
            System.out.println("6) I'll do what I want and deal with consequences later."); // Chaotic neutral
            System.out.println("7) Assert my authority to anyone who questions it. "); // Lawful evil
            System.out.println("8) Brass knuckles."); // Neutral evil
            System.out.println("9) I will claim the souls of all who dare enter my bog"); // Chaotic evil
            System.out.print("> ");
            try {
                answer5 = Integer.parseInt(keyboard.nextLine());
                	} catch (NumberFormatException e) {
                		System.out.println("Error. Please enter a number 1-9.");
                		answer5 = Integer.parseInt(keyboard.nextLine());
                	}
            
        } while (answer5 > 9 || answer5 < 1);
        return answer5;
    }
}


