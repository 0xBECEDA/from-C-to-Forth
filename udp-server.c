// Server side implementation of UDP client-server model
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>

#define PORT     8080
#define MAXLINE 1024

// Driver code
void  main() {
    int sockfd;
    char buffer[MAXLINE];
    char *hello = "Hello from server";
    struct sockaddr_in servaddr, cliaddr;

    // Создаем сокет. Должны в случае успеха получить его дескриптор
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    //тут заполняем блок памяти данными сервера
    memset(&servaddr, 0, sizeof(servaddr));

    //тут заполняем блок памяти данными клиента
    memset(&cliaddr, 0, sizeof(cliaddr));

    // заполняем данные о сервере
    servaddr.sin_family = AF_INET; // IPv4
    servaddr.sin_addr.s_addr = INADDR_ANY;
    servaddr.sin_port = htons(PORT);

    // привязываем сокет к адресу
    if ( bind(sockfd, (const struct sockaddr *)&servaddr,
              sizeof(servaddr)) < 0 )
    {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }

    int len, n;
    len = sizeof(cliaddr);
    //получаем пакет от клиента

    // в случае получения должны вернется кол-во принятых байт
    // параметры: дескриптор сокета, который отправил пакет(?),
    // указатель на буфер, заполненный данными, длину буфера
    // флаги, указатель на структуру с данными клиента, ссылку на
    // длинну структуры клиента

    n = recvfrom(sockfd, (char *)buffer, MAXLINE,
                 MSG_WAITALL, ( struct sockaddr *) &cliaddr,
                 &len);
    // зачем приравнивать буфер, равный теперь длинне сообщения из
    // recvfrom, к знаку окончания симфольной строки?
    //buffer[n] = '\0';

    printf("Client : %s\n", buffer);


    //отправляем пакет

    // парамеры: дескриптор сокета, с кторого отправляем, указатель на
    // буфер с данными, длинну данных, флаги, указатель на структуру,
    // содержащую данные клиента, размер структуры

    sendto(sockfd, (const char *)hello, strlen(hello),
           MSG_CONFIRM, (const struct sockaddr *) &cliaddr,
           len);
    printf("Hello message sent.\n");

}
