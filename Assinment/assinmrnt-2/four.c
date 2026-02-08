#include <stdio.h>

int main()
{
    int n, m;
    scanf("%d", &n);

    if(n % 2 == 0)
        printf("Even\n");
    else
        printf("Odd\n");

    scanf("%d", &m);
    switch(m)
    {
        case 1: printf("January"); break;
        case 2: printf("February"); break;
        default: printf("Invalid");
    }
    return 0;
}
