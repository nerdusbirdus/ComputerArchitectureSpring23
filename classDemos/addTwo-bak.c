#include <stdio.h>
#include <stdlib.h>
//standard library in C has atoi tool in it
int main( int n, char* args[]);
 {
int num1, num2;
printf ("Number of command line arguments is %d\n", n);
num1 = atoi(args[1]);
num2 = atoi(args[2]);

printf ("The sum of %d and %d is %d\n", num1, num2, num1+ num2);
return 0;
//if you don't set a return Unix will do it for you

}
