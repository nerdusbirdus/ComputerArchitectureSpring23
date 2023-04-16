//WORKS
//this program prints the values within the array of characters that is argv
//it uses a for loop checking integer i, incremented after each iteration, to iterate through the array and print each value at each index.
//it does not return a value. 
#include<stdio.h>
int main(int argc, char *argv[])
{
    int i;
    
    for(i= 0;i < argc; i++)
    {
       printf("%2d %s\n", i, argv[i]);
    
    
    }

    printf("You have this many arguments: %d \n", argc);
    return 0;
}