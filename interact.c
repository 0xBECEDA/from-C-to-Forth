#include <stdio.h>
#include <ctype.h>
#include <unistd.h>

#define SIZE 10

int main(int argc, char *argv[])
{
    int a, b, cnt, charInput, tmp;

    scanf("%d", &a);
    printf("abc\n");
    fflush(stdout);
    return 0;

re:
    printf("a=\n");
    scanf("%d", &a);
    printf("b=\n");
    scanf("%d", &b);
    printf("%d\n", a+b);

    printf("Exit (y/n)? \n");

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

    printf("bye!\n");
    return 0;
}
