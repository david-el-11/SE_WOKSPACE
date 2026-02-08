#include <stdio.h>

int main()
{
    int a, b;
    printf("Enter two numbers: ");
    scanf("%d%d", &a, &b);

    printf("Sum: %d\n", a + b);
    printf("Greater: %d\n", a > b);
    printf("Logical AND: %d\n", a && b);

    return 0;
}
