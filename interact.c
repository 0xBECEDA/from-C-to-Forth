#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[])
{
    int a, b, charInput, tmp;
re:
    printf("a=");
    scanf("%d", &a);
    printf("b=");
    scanf("%d", &b);
    printf("%d\n", a+b);

    printf("Exit (y/n)? ");

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
