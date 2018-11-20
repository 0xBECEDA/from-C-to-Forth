#include <stdio.h>
#include <ctype.h>
#include <unistd.h>

#define SIZE 10

int main(int argc, char *argv[])
{
    int a, b, cnt, charInput, tmp;

re:
    printf("a=\n"); fflush(stdout);
    scanf("%d", &a);
    printf("b=\n"); fflush(stdout);
    scanf("%d", &b);
    printf("%d\n", a+b); fflush(stdout);

    printf("Exit (y/n)? \n"); fflush(stdout);

    do {
        charInput = getchar();
        if (charInput==EOF)
            break;
        if (charInput=='\n')
            continue;
        do {
            tmp = getchar();
        } while(EOF != tmp && '\n' != tmp);
    } while (charInput != 'y' &&
             charInput != 'n' &&
             charInput != EOF);

    if ('n' == tolower(charInput)) {
        goto re;
    }

    printf("bye!\n"); fflush(stdout);
    return 0;
}
