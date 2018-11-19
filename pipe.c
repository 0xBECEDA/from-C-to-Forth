#include <unistd.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <string.h>

#define SIZE 4

void toPipe (int inPipe[], char outstr[])
{
    int len = strlen(outstr);
    printf(":: strlen(outstr) = %d\n", len);
    fflush(stdout);
    int cnt = write(inPipe[1], outstr, len);
    if (-1 == cnt) {
        perror("write to pipe");
        exit(-1);
    }
}

void fromPipe(int outPipe[])
{
    char buf[SIZE] = "";
    int cnt = read(outPipe[0], buf, SIZE); /* read from pipe in */
    if (-1 == cnt) {
        perror("read from pipe");
        exit(-1);
    }
    printf(":: %d [child out]\n%s", cnt, buf);
    fflush(stdout);
}

int main(int argc, char *argv[])
{
    int pid;
    int in, out, cnt;

    int inPipe[2], outPipe[2];
    pipe(inPipe);
    pipe(outPipe);

    switch(fork()) {
    case -1:       /* error */
        perror("fork");
        return -1;
    case 0:        /* child process */
        /* close stdin & stdout */
        close(0);
        close(1);
        /* child stdin! ->  pipe in  */
        dup2(inPipe[0], 0);
        close(inPipe[1]);
        /* child stdout ->  pipe out */
        close(outPipe[0]);
        dup2(outPipe[1], 1);
        /* run program */
        execvp("./interact", argv);
        return 0;
    }

    /* parent process */
    printf(":: pid = %d\n", pid);
    fflush(stdout);

    toPipe(inPipe, "2\n");

    fromPipe(outPipe);

    return 0;
}
