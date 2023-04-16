// WORKS
//I am impressed with myself for figuring this out
//I probably should not be, lol
//This program gets the number of arguments passed to it on the command line
//and assigns it to n
//then it prints a string literal and appends the decimal value of N within it
//then it exits
#include <stdio.h>
#include <stdlib.h>
int main (int numargs, char *argv[]) {
   int n;
n = numargs;
   printf ("Number of arguments = %d which is cool\n", n);
   return EXIT_SUCCESS;
} 