#include <stdio.h>
#include <stdlib.h>

int main(int num, char* args[]) {
    int count = 0;
    if ( (num!=2) || ( (num = atoi(args[1])) < 1) ) 
    {
        printf("Usage: ./hailstone with positive integer as argument\n");
        return 1;
    }
    printf("Starting number: %d\n", num);
    while (num !=1) 
    {  printf("%d, ", num);
         
        if (num % 2 == 0) 
         {
        num = num / 2; 
         } 
         else 
        {
        num= 3 * num + 1;
        }
        count++;
        if (num ==1) 
        {
        break;
        }
    
    }

    printf(" 1\n %d is the length of the Hailstone sequence before reaching 1\n", count);
    return 0;
    

}
