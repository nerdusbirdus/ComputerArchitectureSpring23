//WORKS
//This program prints the number of arguments passed to it on the command line, and what they are, unless no args are passed to the program, in which case the program 
//simply prints the number of command line arguments passed (0) and not what they are, because in that case there are none
//it uses a for loop to check the length of the argument array and runs the system.out.println to print the value at the current index, before
//incrementing the index i in order to point to the next value in the array of passed argument strings. 

public class EchoArgs
{ public static void main(String args[])
    { 
        System.out.println("You have passed " + args.length + " command line arguments");
            for(int i=0; i < args.length; i++) 
            {
                System.out.println("Your command line arguments are: " + args[i]); 
            }
    }


}