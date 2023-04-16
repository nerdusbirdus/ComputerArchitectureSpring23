//this program prints the values within the array of characters that is argv
//it uses a for loop checking integer i, incremented after each iteration, to iterate through the array and print each value at each index.
//it does not return a value. 
#include<stdio.h>
int main(int argc, char *argv[])
{
    int i;
    printf("You have this many arguments: %d, and the ones you passed are:\n",argc);
    for(i=1;i<argc;i++)
    {
        printf("1 %s \n", argv[i]);
        printf("2 %s \n", argv[i]);
        printf("3 %s \n", argv[i]);
    
    }
    return 0;
}