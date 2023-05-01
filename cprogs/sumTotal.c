//Lab handout calls it sumTotal but it should be sumUpArray, IMO
//sumUpArray.c takes an initial count and calculates the sum total of the loop indices from the count to zero
#include <stdio.h>

//#The following symbol table would make it start at 0 and loop 3x:
int total = 0;
int count = 3;

void start() {
  while (count >= 0) {
    total += count;
    count--;
  }
}

int main() {
  start();
  printf("The sum of the loop indices is: %d\n", total);
  return 0;
}