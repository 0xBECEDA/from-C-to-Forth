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
    struct sockaddr_in *p;
} clients[2];
struct connection client;

/*инициализируем промежуточный буфер*/
char buffer[3500];

/*будущий дескриптор сокета*/
int sockfd;

struct sockaddr_in servaddr, cliaddr;

void* udp_socket(void* pointer)
{
    printf("Thread is going\n");
    void *pnt = buffer;
    int ident = *(int *)pnt;
    /*
    printf("ident in Thread is %d\n", ident);
    printf("client[0].ident in thread %d\n", clients[0].ident);
    printf("client[1].ident in thread %d\n", clients[1].ident);
    */
    for (int i = 0; i <=1; i++) {
        //printf("ident is %d\n", ident);
        if (ident != clients[i].ident &&
         clients[i].ident != 0 ) {
            client = clients[i];
            /*отправляем пакет

              парамеры: дескриптор сокета, с которого отправляем,
              указатель на  буфер с данными,
              длинну данных, флаги, указатель на структуру,
              содержащую данные клиента, размер структуры */
            /*
            printf("ident in IF is %d\n", ident);
            printf("client[i].ident in IF %d\n", clients[i].ident);
            */
            sendto(sockfd, buffer, sizeof(buffer),MSG_CONFIRM,
                   (const struct sockaddr *) client.p,
                   sizeof(cliaddr));
                   printf("message sent.\n");
        }
    }
}
// Driver code
void  main() {

    struct sockaddr_in test[2];
    struct sockaddr_in * sockaddr_pnt = test;
    /*счетчик*/
    int cnt = 0;

    /*создаем массив структур*/
    struct sockaddr_in dub_array[2];

    // Создаем сокет. Должны в случае успеха получить его дескриптор
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }


    memset(dub_array, 0, sizeof(dub_array));
    memset(clients, 0, sizeof(clients));

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
        void * pont = buffer;
        /*вытаскиваем идентификатор*/
        int ident_client = *(int *)pont;
        printf("in main ident_client is %d\n", ident_client);
        /*проверяем, не новый ди у нас клиент.
          Для этого проверяем идентификаторы клиентов и
          идентификатор из пакета*/
        int i = 0;
        for(int i = 0; i<=1; i++) {
            /*если нашли новыйидентификатор,
              то записываем данные клиента в массив*/

            if (clients[i].ident != ident_client
                && clients[i].ident == 0) {

                clients[i].ident = ident_client;
                printf(" in main client[i].ident %d\n",
                       clients[i].ident);
                void* pointer = NULL;

                pthread_t udp_thread;

                pthread_create(&udp_thread, NULL,
                               udp_socket, pointer);

                /*кладем идентификатор потока в структуру*/
                clients[i].thread = udp_thread;
                /*копируем данные клиента в структуру*/
                dub_array[cnt] = cliaddr;

                clients[i].p = pnt;

                //printf("clients[i].p is %X\n", clients[i].p);
                pnt += 1;
                //printf("pnt is %X\n", pnt);
                cnt++;
                break;
            }

        }

    }
}
