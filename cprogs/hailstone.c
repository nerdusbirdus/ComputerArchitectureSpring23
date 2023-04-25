#include <stdio.h>
#include <stdlib.h> //calls standard libraries for i/o and for functions like printf

int main(int num, char* args[]) { //starts a main function with integer argument called num, and character args in an array[]
    int count = 0; //intializes a variable count to 0
    if ( (num!=2) || ( (num = atoi(args[1])) < 1) )  //if statement checks if num!=2 and also if the integer which is in the array at index 1 is less than one, it 
    //does an ASCII to integer on the argument to get it to be an integer to be checked. If num!=2 and the value in the array <1 the printf function runs and prints the usage guide
    {
        printf("Usage: ./hailstone with positive integer as argument\n"); //prints usage guide
        return 1; //returns 1 
    }
    printf("Starting number: %d\n", num); //prints the string and the value of num in decimal format.
    while (num !=1) //checks to see if num is not equal to 1 (end condition for hailstone algorithm)
    {  printf("%d, ", num); //runs if num is not 1, prints the number every time before it is modified so we can see the output every time. 
         
        if (num % 2 == 0) //checks to see if the remainder of the number when divided by 2 is 0, if so it is even and gets divided in half 
         {
        num = num / 2; 
         } 
         else //all non-even numbers get assigned the value of themselves * 3 + 1
        {
        num= 3 * num + 1;
        }
        count++; //increments the value of count for every run of the if-else statement, so we can print it for the length of the hailstone sequence/number of iterations.
        if (num ==1) 
        {
        break; //my clumsy way of making the loop end if the number reaches 1, otherwise it will run forever. I'm sure there's a better way to code this. 
        }
    
    }

    printf(" 1\n %d is the length of the Hailstone sequence before reaching 1\n", count); //prints the string and the given argument, count, in decimal format
    return 0; //I think this return statement is needed even though this function isn't part of a larger piece of software, to avoid errors. 
    

}
