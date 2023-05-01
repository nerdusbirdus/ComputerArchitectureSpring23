//example function caller c program from dive into systems 7.5
#include <stdio.h>
int assign(void)
{ 
    int y= 40;
    return y;
}
int adder(void) 
{
    int a;
    return a + 2;
}
int main(void)
{
    int x;
    assign();
    x = adder();
    printf("x is: %d\n", x);
    return 0;
}