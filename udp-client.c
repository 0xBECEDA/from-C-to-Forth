// Client side implementation of UDP client-server model
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <time.h>

#define PORT     8080
#define MAXLINE 1024

// Driver code
int main() {
    int sockfd;
    char buffer[MAXLINE];
    char hello[20] = "Hello from other client";
    struct sockaddr_in  servaddr;

    // Создаем сокет. Должны в случае успеха получить его дескриптор
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    //тут заполняем блок памяти данными сервера
    memset(&servaddr, 0, sizeof(servaddr));

    // заполняем данные о сервере
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(PORT);
    servaddr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

    int n, len;
    len = sizeof(servaddr);
    /*получаем идентификатор*/
    srand(time(NULL));
    int ident = rand() % 500;
    printf("ident is %d\n", ident);
    int *p = &ident;
    char buf[2000];
    char *pnt = buf;
    /*сериализуем данные*/
    memcpy(pnt, p, 4);
    pnt += sizeof(ident);
    memcpy(pnt, hello, 20);
    //отправляем пакет
    pnt -= sizeof(ident);
    int i = *(int *)pnt;
    printf("ident in int is %d\n", i);
    // парамеры: дескриптор сокета, с кторого отправляем, указатель на
    // буфер с данными, длинну данных, флаги, указатель на структуру,
    // содержащую данные сервера, размер структуры
    while (1) {
    sendto(sockfd, buf,  sizeof(buf),
           MSG_CONFIRM, (const struct sockaddr *) &servaddr,
           sizeof(servaddr));

    //получаем пакет

    // в случае получения должны вернется кол-во принятых байт
    // параметры: дескриптор сокета, который отправил пакет(?),
    // указатель на буфер, заполненный данными, длину буфера
    // флаги, указатель на структуру с данными сервера, ссылку на
    // длинну структуры сервера
    n = recvfrom(sockfd, (char *)buffer, MAXLINE,
                 MSG_WAITALL, (struct sockaddr *) &servaddr,
                 &len);

    //buffer[n] = '\0';
    /*выводится ерунда, потому что данные не десериализованны*/
    printf("Server : %s\n", buffer);
    }
    close(sockfd);
    return 0;
}
