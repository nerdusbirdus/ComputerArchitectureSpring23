  UW PICO 5.09                                                                               File: addTwo.c                                                                                Modified  

#include <stdio.h>
#include <stdlib.h>
int main( int n, char* args[]);
{
int num1, num2;

printf ("Number of command line arguments is %d\n", n);

if (n !=2) {
printf ("usage: ./addTwo int int\n");
return -1;}
 
num1 = atoi(args[1]);
num2 = atoi(args[2]);

printf ("The sum of %d and %d is %d\n", num1, num2, num1 + num2);
return 0;
}
 



















^G Get Help                     ^O WriteOut                     ^R Read File                    ^Y Prev Pg                      ^K Cut Text                     ^C Cur Pos                      
^X Exit                         ^J Justify                      ^W Where is                     ^V Next Pg                      ^U UnCut Text                   ^T To Spell                     