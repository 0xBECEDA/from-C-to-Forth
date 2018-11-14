#include<SDL2/SDL.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <signal.h>
#include <time.h>
#include <unistd.h>
#include <linux/unistd.h>
#include <pthread.h>
#include <errno.h>
#include <fcntl.h>
#include <netinet/in.h>

#define BOX_SIZE 3

struct test_str
{
    int c;
    int d;
};

void serialization (struct test_str * input, void * output, int count)
{
    void * pnt = output;
    for(int i=0; i<BOX_SIZE; i++) {
        *(int *)pnt = input[i].c;
        pnt += sizeof(int);
        *(int *)pnt = input[i].d;
        pnt += sizeof(int);
    }
}

void deserialization ()
{
    /* TODO please */
}


int main( int argc, char* args[] )
{
    printf("=========\n");

    struct test_str test_box[BOX_SIZE];
    printf("test_box placed in the stack, addr is %p\n", (void *)test_box);

    int counter = 0xABCDEF01;
    for(int i=0; i<BOX_SIZE; i++) {
        test_box[i].c = counter++;
        test_box[i].d = counter++;
        printf("initialization: %d : %X, %X\n", i, test_box[i].c, test_box[i].d);
    }

    int memsize = sizeof(struct test_str)*BOX_SIZE;
    void * mempnt = malloc(memsize);
    printf("allocate %d bytes on addr %p\n", memsize, mempnt);

    serialization(test_box, mempnt, BOX_SIZE);

    for(int i=0; i<sizeof(test_box); i++) {
        printf("%2d: %p : %2hhX \n", i, (void *)(mempnt+i), *(char* )(void *)(mempnt+i));
    }

    deserialization();
}
