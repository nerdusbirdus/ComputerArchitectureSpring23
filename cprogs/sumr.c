#include <stdio.h>
int sumr(int n) {
    if (n <= 0) {
        return 0;
    }
    int val = 0;
    val = n + sumr(n - 1);
    return val;
}

int main() {
    int n;
    scanf("%d", &n);
    int val = 0;
    val = sumr(n);
    printf("The sum of the first %d natural numbers is %d\n", n, val);
    return 0;
}