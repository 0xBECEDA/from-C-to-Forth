#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, const char *argv[])
{
    int fd = 0; // stdin
    int flags = fcntl(fd, F_GETFL, 0);
    fcntl(fd, F_SETFL, flags | O_NONBLOCK);

    char buf[255];

    int len = -1;
    while (-1 == len) {
        sleep(3);
        len = read(fd, buf, sizeof(buf));
    }
    printf("len = %d\n", len);
}
