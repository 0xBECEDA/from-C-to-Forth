#include <unistd.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <string.h>

#define SIZE 1024

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

void fromPipe(int outPipe[], int len, char retval[])
{
    char buf[SIZE];
    memset(buf, 0, SIZE);
    int cnt = read(outPipe[0], buf, len);
    if (-1 == cnt) {
        perror("read from pipe");
        exit(-1);
    }
    printf(":: %d [child out]\n%s\n", cnt, buf);
    fflush(stdout);
    if (NULL != retval) {
        if (SIZE <= len) {
            printf("out of buf");
            fflush(stdout);
            exit(-1);
        }
        strncpy(retval, buf, len);
    }
}

int main(int argc, char *argv[])
{
    int pid;
    int in, out, cnt;

    int inPipe[2], outPipe[2];
    /* The first integer in the array (element 0)
       is set up and opened for reading,
       while the second integer (element 1) is
       set up and opened for writing.
    */
    if (pipe(inPipe)==-1)
    {
        perror("Pipe Failed");
        return -1;
    }
    if (pipe(outPipe)==-1)
    {
        perror("Pipe Failed");
        return -1;
    }

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

    char result[SIZE];

    fromPipe(outPipe, 30, NULL);
    toPipe(inPipe, "5\n");
    fromPipe(outPipe, 30, NULL);
    toPipe(inPipe, "7\n");
    fromPipe(outPipe, 30, result);
    toPipe(inPipe, "y\n");

    int pos = strcspn(result, "\n");
    *(result+pos) = 0;
    fromPipe(outPipe, 30, NULL);

    printf("Result is [%s]\n", result);
    fflush(stdout);

    return 0;
}
