// Server side implementation of UDP client-server model
//#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <signal.h>
#include <stdbool.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <pthread.h>
#include <errno.h>
#include <linux/unistd.h>

#define PORT     8080
#define MAXLINE 1024

struct connection
{
    int thread;
    int ident;
    char buf[2000];
    struct sockaddr_in *p;
} clients[2];

void* udp_socket(void* pointer)
{
    printf("Thread is going\n");
}

// Driver code
void  main() {

    struct sockaddr_in test[2];
    struct sockaddr_in * sockaddr_pnt = test;
    printf("one 0x%X\n", sockaddr_pnt);
    sockaddr_pnt += 1;
    printf("two 0x%X\n", sockaddr_pnt);

    int cnt = 0;
    int sockfd;
    /*проблема в следующих двух строчках кода*/
    struct sockaddr_in servaddr, cliaddr, clidubble;
    /*создаем массив структур*/
    struct sockaddr_in dub_array[2];
    // Создаем сокет. Должны в случае успеха получить его дескриптор
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    /*тут заполняем блок памяти данными сервера*/
    memset(dub_array, 0, sizeof(dub_array));


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
    /*передаем указатель на структуру с данными клиента*/
    struct sockaddr_in *pnt = dub_array;
    /*инициализируем промежуточный буфер*/
    char buffer[2000];
    char *pont = buffer;

    //получаем пакет от клиента

    // в случае получения должны вернется кол-во принятых байт
    // параметры: дескриптор сокета, который отправил пакет
    // указатель на буфер, заполненный данными, длину буфера
    // флаги, указатель на структуру с данными клиента, ссылку на
    // длинну структуры клиента


    while (1) {
        n = recvfrom(sockfd, buffer, MAXLINE,
                     MSG_WAITALL, ( struct sockaddr *) &cliaddr,
                     &len);
        /*вытаскиваем идентификатор*/
        int ident_client = *(int *)pont;
        printf("ident_client is %d\n", ident_client);
        /*проверяем, не новый ди у нас клиент.
          Для этого проверяем идентификаторы клиентов и
          идентификатор из пакета*/
        int i = 0;
        for(int i = 0; i<=1; i++) {
            /*если нашли новыйидентификатор,
              то записываем данные клиента в массив*/

            if (clients[i].ident != ident_client
                && clients[i].ident == 0) {

                void* pointer = NULL;

                pthread_t udp_thread;
                /*Не забудь написать функцию потока!*/
                pthread_create(&udp_thread, NULL,
                               udp_socket, pointer);
                /*кладем идентификатор потока в структуру*/
                clients[i].thread = udp_thread;
                /*копируем данные клиента в структуру*/
                dub_array[cnt] = cliaddr;
                clients[i].p = pnt;
                printf("size of cliaddr %d\n", sizeof(cliaddr));
                printf("thread ident is %X\n",  clients[i].thread);
                printf("clients[i].p is %X\n", clients[i].p);
                pnt += sizeof(cliaddr);
                printf("pnt is %X\n", pnt);
                cnt++;
                break;
            }

        }

        //отправляем пакет

        // парамеры: дескриптор сокета, с кторого отправляем, указатель на
        // буфер с данными, длинну данных, флаги, указатель на структуру,
        // содержащую данные клиента, размер структуры
        /*
          sendto(sockfd, (const char *)hello, strlen(hello),
          MSG_CONFIRM, (const struct sockaddr *) &cliaddr,
          len);
          printf("Hello message sent.\n");
        */
    }
}
