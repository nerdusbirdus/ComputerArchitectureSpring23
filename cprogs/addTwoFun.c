#include <stdio.h>

//adds the parameters together and returns the sum of the two integer parameters
int addTwoFun(int a, int b) 
{
    return a + b;
}

int main(){
    int x = 10;
    int y = 7;
    printf("The sum of X and Y is: %d\n", addTwoFun(x,y));
}