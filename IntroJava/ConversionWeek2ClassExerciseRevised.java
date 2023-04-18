package IntroJava;
import java.util.Scanner;//needed for input (why?)

public class ConversionWeek2ClassExerciseRevised {

	public static void main(String[] args) {//starts main method
		// TODO Auto-generated method stub
		System.out.println ("Enter the seconds to be converted");//asks for input
		Scanner scnr = new Scanner(System.in);// declares a scanner looking for an input from the keyboard. how do I close it?
		{
		int initTime= scnr.nextInt(); //declares that the initial time is the value you input
			
				int numDays= (initTime) /(24*60*60); //provides number of days, 
													//dividing number of seconds by number of seconds per day but chucks out remainder
				int remainder = (initTime) % (24*60*60);
													//provides modulus (remainder) but not the division
												//of initial time divided by seconds in a day leaving seconds
		
				int numHours= (remainder) / (60*60); //takes remaining seconds that don't fit in days of 86400 sec
				  								//and divides them into number of hours
				remainder = remainder % (60*60) ; 
				//YOU CAN USE THE SAME VARIABLE BECAUSE IT IS BEING CHANGED BY THE NEXT EQUALS SIGN
												//takes remainder of seconds that don't fit in a 3600-second day
				
				//USE THE SAME "BOX" of the variable for all of them, use further equals signs to repurpose
			
				int numMinutes= remainder / 60; // divides remaining seconds into sixty second minutes 
				
				remainder= remainder % 60; //takes remainder of seconds that did not divide into minutes
						//same as % =
			
				
				System.out.println (numDays + " days");
				System.out.println (numHours + " hours");
				System.out.println (numMinutes + " minutes");
				System.out.println (remainder + " remaining seconds");
		//prints integers and strings
		}	

}}