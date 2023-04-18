package IntroJava;

import java.util.Scanner;

public class theGronkalizer {//This program does caveman math and is guaranteed to fully gRonkalize an input. 
							// which produces a gRonked gRank which then get further gRonked, ranked, and then gRinked.
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
	
int[] rockArray;//this program is supposed to have an array in it and this declares one, supposedly.

				// this array stores the price of various rocks expressed in pebbles.
rockArray= new int[3]; // this is supposed to declare that the array has 3 integers.
rockArray[0] = 30; // assigns a rock price of 30 pebbles for position 0.
rockArray[1] = 60; // assigns a rock price of 60 pebbles for position 1.
rockArray[2] = 90; // assigns a rock price of 90 pebbles for position 2.

	//This price list is currently useless. I want to ask the user if they want to buy a rock with their pebbles,
	// and let them choose a rock to buy,
    // and sell them a rock for pebbles & then display new number of pebbles but I don't know how.

System.out.println("A granite rock is worth: " + rockArray[0]+ "\n" + "pebbles."); //prints data from array position 1 + string

System.out.println("An obsidian rock is worth: " + rockArray[1] + "\n" + "pebbles."); // same

System.out.println("A pumice rock is worth: " + rockArray[2] + "\n" + "pebbles."); // same

System.out.println("Would you like to further gRonk your gRank? Tell me how many gRanks to gRonk by gRank:");//prints prompt for further input

Scanner scnr1 = new Scanner(System.in);// starts another scanner called scnrl, didn't know it was necessary to rename
										// IDE renamed it for me, to take input

int gRanktwo, gRankthree ;// declares more integer variables gRanktwo and gRankthree

gRanktwo = scnr1.nextInt();//collects input from user, this is the number of granks to gronk again.

gRankthree = (gRanktwo * gRank);//assigns gRankthree as gRanktwo times gRank, 
								// which was the previous result ("gronks it by grank")

System.out.println("The result of the gRonking by gRank is: " + gRankthree);//prints the result of gronking

System.out.println("Here is a rank of our groups's different gRinks");
//this begins a loop of "gRinks" that counts up from 0 to 10 by 1 while the value is less than or equal to 10. 
// it has no purpose within this program because I don't really know how to use loops yet, but the program needed to have one.

    int gRink=0;//this creates an integer called gRink and assigns it a value zero
    
    while (gRink<=10)//this is the conditional statement which imposes a condition while gRink is <=10
    	
    {//opens the statement executed while these conditions obtain
    	
      System.out.println(gRink);//tells the system to print the value of gRink
      
      gRink++; //the increment operator tells the system what to do while going from zero to 10 (add 1 each time the loop goes)
    }
    int gRonked = (gRink * gRankthree);// declares integer gRonked which is gRink value times the previous gRankthree value 
    System.out.println(" Your gRink rank multiplies your gRonked gRank of pebbles into:" + "\n" + gRonked + " pebble fragments");
    //This prints a string and variable telling the user how many pebble fragments they get at the end.
}}
