#include <stdio.h> // need to include for user input/

int main() {
    int n, length = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &n);

    while (n != 1) {
        printf("%d, ", n);
        length++;
        if (n % 2 == 0) {
            n = n / 2;
        } else {
            n = 3 * n + 1;
        }
    }
    printf("1\n"); // print the last number in the sequence
    length++; // count the last number in the sequence
    printf("Length of the hailstone sequence: %d\n", length);
    return 0;
}
