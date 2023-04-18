package kajParkerBensonWeek1Fundamentals;

import java.util.Scanner; //I know you need to put this in here to get keyboard input to your program.
public class kajPBWk1FundamentalstheGronkalizer {
	//This program does caveman math and is guaranteed to fully gRonkalize an input. 
	// which produces a gRonked gRank whichsu then get further gRonked, ranked, and then gRinked.
	// All fun themes aside, this doesn't really do anything but multiply numbers, but it is a functioning program.

	public static void main(String[] args) {// declares the method main(), right??
		// TODO Auto-generated method stub, this is the main method. 
		// A method or function is a requirement for this assignment.
		//It's something that the IDE gave me by default because I checked a box when creating the class.
		
		System.out.println("Welcome to the gRonkalizer. How many rocks should we gRonk for you today?");
		
int gRonk, gRank; //declares int variables gRonk and gRank, variables being a required feature of this assignment.

Scanner scnr = new Scanner(System.in);// declares a scanner looking for an input from the keyboard.

gRonk = scnr.nextInt();//assigns the typed value from the input to the variable gRonk.

gRank = gRonk * 3; //assigns a value for gRank of gRonk times 3.

System.out.println("Your " + gRonk + " rocks were gRonked" + " into a gRank of " + gRank + " pebbles."); 
//prints the string literal and the integer gRank
	
int[] boulderArray;//this program is supposed to have an array in it and this declares one, supposedly.
// this array stores the price of various boulders expressed in pebbles.

boulderArray= new int[3]; // this is supposed to declare that the array has 3 integers.
boulderArray[0] = 30; // assigns a boulder price of 30 pebbles for position 0.
boulderArray[1] = 60; // assigns a boulder price of 60 pebbles for position 1.
boulderArray[2] = 90; // assigns a boulder price of 90 pebbles for position 2.

	//This price list is currently useless. I want to ask the user if they want to 1. buy a boulder with their pebbles,
	// and 2. let them choose a boulder to buy,
    // and 3. sell them a rock for pebbles & then display new number of pebbles but I don't know how.

System.out.println("A granite boulder is worth: " + boulderArray[0]+ "\n" + "pebbles."); //prints data from array position 0 + string

System.out.println("An obsidian boulder is worth: " + boulderArray[1] + "\n" + "pebbles."); // same for position 1

System.out.println("A pumice boulder is worth: " + boulderArray[2] + "\n" + "pebbles."); // same for position 2

System.out.println("Would you like to further gRonk your gRank? Tell me how many gRanks to gRonk by gRank:");
//prints prompt for further input, in fictional caveman unit of gRanks.

Scanner scnr1 = new Scanner(System.in);// starts another scanner called scnrl, didn't know it was necessary to rename
										// IDE renamed it for me, to take input

int gRanktwo, gRankthree ;// declares more integer variables gRanktwo and gRankthree

gRanktwo = scnr1.nextInt();//collects input from user, this is the number of granks to gronk again.

gRankthree = (gRanktwo * gRank);//assigns gRankthree as gRanktwo times gRank, 
								// which was the previous result ("gronks it by grank")

System.out.println("The result of the gRonking by gRank is: " + gRankthree);//prints the result of gronking

System.out.println("Here is a rank of our group's different gRinks");
//this begins a loop of "gRinks" that counts up from 0 to 10 by 1 while the value is less than or equal to 10. 
// it has no purpose within this program because I don't really know how to use loops yet, but the program needed to have one.

    int gRink=0;//this creates an integer called gRink and assigns it a value zero
    
    while (gRink<=10)//this is the conditional statement which imposes a condition while gRink is <=10
    	
    {//opens the statement executed while these conditions obtain
    	
      System.out.println(gRink);//tells the system to print the value of gRink
      
      gRink++; //the increment operator tells the system what to do while going from zero to 10 (add 1 each time the loop goes)
      		// This eventually stops when it gets to 11 and the program continues
    }
    int gRonked = (gRink * gRankthree);
    // declares integer gRonked which is gRink value times the previous gRankthree value 
    // This is basically just a very roundabout way of multiplying the previous number by 11,
    // as gRink++ eventually stops when the condition is met.
    System.out.println(" You are gRink 11." + "\n" + "Your gRink rank gRonks your previously gRonked gRank of pebbles into:" + "\n" + gRonked + " pebble fragments");
    //This prints a string and variable telling the user 
    //how many pebble fragments they get at the end, which is the previous result *11.
}}
