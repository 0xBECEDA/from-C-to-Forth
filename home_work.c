#include <unistd.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <string.h>

int main(int argc, char *argv[]) {
/*инициализация массива,
  куда мы будем записывать дескрипторы */
    int myPipe[2];
    char str[20] =  "Hello!";
    //printf("Size of str %d", sizeof(str));
    if (pipe(myPipe)==-1)
    {
        perror("Pipe Failed");
        return -1;
    }
    int cnt = write(myPipe[1], str, sizeof(str));
    if (-1 == cnt) {
        perror("write to pipe");
        exit(-1);
    }
    char buf[sizeof(str)];

    int cont = read(myPipe[0], buf, sizeof(str));
    if (-1 == cont) {
        perror("read from pipe");
        exit(-1);
    }

    printf("Str is %s\n", buf);
}
