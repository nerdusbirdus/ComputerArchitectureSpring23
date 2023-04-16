//WORKS
//this program is a hello world
//this program prints the square root of 4 and the size of various data types in bytes
int main() {
    #include <stdio.h>
    #include <math.h>
    // statements end in a semicolon (;)
    printf("Hello World\n");
    printf("sqrt(4) is %f\n", sqrt(4));
    printf("number of bytes in an int: %lu\n", sizeof(int));
printf("number of bytes in a short: %lu\n", sizeof(short));
printf("number of bytes in a long long: %lu\n", sizeof(long long));

    return 0;  // main returns value 0
}

