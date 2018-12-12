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
#define MAXLINE  3000

struct connection
{
    int thread;
    int ident;
    struct sockaddr_in *p;
} clients[2];

/* зачем нужная эта переменная если есть массив выше? */
struct connection client;

/* объявляем промежуточный буфер */
char buffer[MAXLINE];

/* будущий дескриптор сокета */
int sockfd;

/* sockaddr_in сервера и клиента */
struct sockaddr_in servaddr, cliaddr;
struct sockaddr_in dub_array[2];

void* udp_socket(void* pointer)
{
    printf("Thread is going\n");
      while(1) {
        void *pnt = buffer;
        int ident = *(int *)pnt;
        struct sockaddr_in dub_client;
        //printf("ident in Thread is %d\n", ident);
        // printf("client[0].ident in thread %d\n", clients[0].ident);
        //printf("client[1].ident in thread %d\n", clients[1].ident);
        //printf("ident from buffer %d\n", ident);
        for (int i = 0; i <=1; i++) {
            //printf("ident is %d\n", ident);
            if (ident != clients[i].ident &&
                clients[i].ident != 0 ) {
                client = clients[i];
                dub_client = *client.p;
                /*отправляем пакет

                  парамеры: дескриптор сокета, с которого отправляем,
                  указатель на  буфер с данными,
                  длинну данных, флаги, указатель на структуру,
                  содержащую данные клиента, размер структуры */
                printf("...............\n");
                printf("ident in IF is %d\n", ident);
                printf("client[i].ident in IF %d\n",
                      clients[i].ident);

                int dub_sin_fam = dub_client.sin_family;
                printf("dub_client.sin_family %d\n",  dub_sin_fam);
                void *pnt = dub_client.sin_addr.s_addr;
                printf("dub_client.sin_addr.s_addr %X\n", pnt);
                int dub_port = dub_client.sin_port;
                printf("dub_port.sin_family %d\n", dub_port);

                fflush(stdout);
                //printf("ident in IF is %d\n", ident);
                //printf("client[i].ident in IF %d\n",
                //      clients[i].ident);

                int n =  sendto(sockfd, buffer, sizeof(buffer),
                                MSG_CONFIRM,
                                (struct sockaddr *) &dub_client,
                                sizeof(cliaddr));

                 printf("Num of sent bytes %d\n", n);
                 printf("...............\n");
            }
        }
    }
}

void print_struct(int cnt) {

    struct sockaddr_in dub_client;
    int i = cnt;
    dub_client = dub_array[i];
    printf("...............\n");
    printf("i is %d\n", i);
    int sin_fam = cliaddr.sin_family;
    printf("cliaddr.sin_family %d\n",  sin_fam);
    void *p = cliaddr.sin_addr.s_addr;
    printf("cliadd.sin_addr.s_addr %X\n", p);
    int port = cliaddr.sin_port;
    printf("cliaddr.sin_family %d\n", port);

    int dub_sin_fam = dub_client.sin_family;
    printf("dub_client.sin_family %d\n",  dub_sin_fam);
    void *pnt = dub_client.sin_addr.s_addr;
    printf("dub_client.sin_addr.s_addr %X\n", pnt);
    int dub_port = dub_client.sin_port;
    printf("dub_port.sin_family %d\n", dub_port);
    printf("...............\n");
    fflush(stdout);
}

// Driver code
void  main()
{
    struct sockaddr_in test[2];
    struct sockaddr_in *sockaddr_pnt = test;

    /* счетчик */
    int cnt = 0;

    /* создаем массив структур - зачем? */
    //   struct sockaddr_in dub_array[2];

    /* Создаем сокет. Должны в случае успеха
       получить его дескриптор */
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
              sizeof(servaddr)) < 0 ) {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }

    /*передаем указатель на массив структур с данными клиента*/
    struct sockaddr_in *pnt = dub_array;
    printf("pnt in beginning is %X\n", pnt);
    //получаем пакет от клиента

    // в случае получения должны вернется кол-во принятых байт
    // параметры: дескриптор сокета, который отправил пакет
    // указатель на буфер, заполненный данными, длину буфера
    // флаги, указатель на структуру с данными клиента, ссылку на
    // длинну структуры клиента

    while (1) {
        int len = sizeof(cliaddr);
        int n = recvfrom(sockfd, buffer, MAXLINE,
                     MSG_WAITALL, ( struct sockaddr *) &cliaddr,
                     &len);
        /* вытаскиваем идентификатор */
        int ident_client = *(int *)buffer;
        //printf("Num of receved bytes %d\n", n);
        //printf("in main ident_client is %d\n", ident_client);
        /*проверяем, не новый ди у нас клиент.
          Для этого проверяем идентификаторы клиентов и
          идентификатор из пакета*/

        for(int i = 0; i<=1; i++) {
            /* проверяем идентификатор на совпадение */
            int counter = 0;

            /*если идентификатор совпадает*/
            if( clients[i].ident == ident_client) {
                /*увеличиваем счетчик и выходим*/
                counter++;
                break;
            }
               /*если структура пустая и счетчик нулевой*/
               if( clients[i].ident == 0
                   && counter == 0) {
                /* то записываем данные клиента в массив */
                clients[i].ident = ident_client;

                /* зачем нужен pointer?
                 - а как я без него создам поток?
                 Последний параметр для него -
                 нетипизированный указатель.*/
                void* pointer = NULL;

                /* переменная для хранения идентификатора потока */
                pthread_t udp_thread;

                /* создаем поток */
                pthread_create(&udp_thread, NULL,
                               udp_socket, pointer);

                /* кладем идентификатор потока в структуру */
                clients[i].thread = udp_thread;

                /* копируем данные структуру клиента в массив */
                dub_array[cnt] = cliaddr;

                /*печатаем содержимое структур*/
                print_struct(cnt);

                   /*
                   - записываем в структуру client указатель
                   на конкретную структуру клиента типа sockaddr.
                   Так в одной структуре хранятся идентификатор
                   потока идентификатор клиента и ссылка
                   на структуру клиента, которая заполнена
                   данными типа семейства адресов и т.д.*/
                clients[i].p = pnt;
                printf("pnt of struct is %X\n", pnt);
                printf("clients[i].p is %X\n", clients[i].p);
                printf ("clients[i].ident is %d\n", clients[i].ident);
                fflush(stdout);
                pnt += 1;

                /* можно ли обойтись переменной цикла?
                 - нет, потому что переменная цикла отражает
                   проход по массиву вне условий, а cnt должна
                   увеличиться только при выполнении If.
                   В противном случае данные в dub_array
                   могут быть перезаписаны*/
                cnt++;

                break;
            }

        }

    }
}
