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
#include <fcntl.h>
#include <linux/unistd.h>

/* максимальное кол-во подключенных клиентов */
#define MAX_CLIENTS 2

/* порт сервера */
#define PORT     8080

/* максимальный размер датаграммы */
#define MAXLINE  1220

struct connection
{
    int thread;
    int ident;
    struct sockaddr_in *p;
    char *buf;
} clients[MAX_CLIENTS];

/* объявляем промежуточный буфер */
char buffer[MAXLINE];

/* sockaddr_in сервера */
struct sockaddr_in servaddr;

/* sockaddr_in клиента */
struct sockaddr_in cliaddr;

/*массив для хранения данных структур cliaddr*/
struct sockaddr_in dub_array[2];

int amount_of_clients = 0;


int sockfd;

void* send_data_thread(void* pointer) {

    if(amount_of_clients < 2) {
        printf("сплю\n");
        sleep(3);
    }

    struct sockaddr_in dub_client;

    /*заводим структуру, чтоб позже скопировать
      в нее данные клиента*/
    struct connection client;

    char *final_pointer;

    /* отправляем */
    while(1) {

//        usleep(10000);

        int identificator_client;

        int i = 0;

        while (i <= 1) {

            identificator_client = clients[i].ident;
            final_pointer = clients[i].buf;

            for(int a = 0; a <= 1; a++) {
                if ( identificator_client != clients[a].ident) {
                    client = clients[a];

                    dub_client = *client.p;


//                    printf("отправка final_pointer is %X, clients[%d].ident is %d, clients[%d].p is %X\n",
                    //                         final_pointer, a,
                    //     clients[a].ident,  a, clients[a].p);

                    int len = sizeof(cliaddr);
                    int num =  sendto(sockfd, final_pointer,
                                      MAXLINE,
                                      MSG_CONFIRM, (struct sockaddr *) &dub_client,
                                      sizeof(cliaddr));
                    i++;
                }
            }
        }
    }
}

int  main() {

    /* Создаем сокет.
       Должны в случае успеха получить его дескриптор */


    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    printf("sock created\n");
    fflush(stdout);

    // Переводим сокет в неблокирующий режим
    fcntl(sockfd, F_SETFL, O_NONBLOCK);

    /* заполняем данные о сервере */
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = INADDR_ANY;
    servaddr.sin_port = htons(PORT);

    memset(dub_array, 0, sizeof(dub_array));
    memset(clients, 0, sizeof(clients));

    /* привязываем сокет к адресу */
    if ( bind(sockfd, (const struct sockaddr *)&servaddr, sizeof(servaddr)) < 0 ) {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }


    /* создаем поток отправки*/

    pthread_t udp_thread;

    void *pointer = NULL;

    /* создаем поток отправки*/
    pthread_create(&udp_thread, NULL,
                   send_data_thread, pointer);

    struct sockaddr_in *pnt = dub_array;

    /* индекс для dub_array*/
    int cnt = 0;

    while(1) {

        //usleep(10000);

        /* Читаем датаграмму */
        int len = sizeof(cliaddr);
        int n = recvfrom(sockfd, buffer, MAXLINE,
                         MSG_WAITALL, ( struct sockaddr *) &cliaddr,
                         &len);

        if (n != -1) {
            int ident_client = *(int *)buffer;


            for(int i = 0; i<=1; i++) {

                int counter = 0;

                char *point;

                /* если идентификатор совпадает */
                if( clients[i].ident == ident_client) {

                    point = clients[i].buf;

                    memcpy(point, buffer, MAXLINE);
                    clients[i].buf = point;
                    counter++;
                    break;
                }


                /* если структура пустая и счетчик нулевой */
                if( ( clients[i].ident == 0) && (counter == 0) ) {

                    /* то записываем данные клиента в массив */
                    clients[i].ident = ident_client;

                    /* выделяем память по буфер и перезаписываем
                       туда данные */

                    char * new_pointer = malloc(MAXLINE);
                    memcpy(new_pointer, buffer, MAXLINE);
                    clients[i].buf = new_pointer;

                    /* копируем данные структуру клиента
                       в массив */
                    dub_array[cnt] = cliaddr;

                    clients[i].p = pnt;

                    //printf("новый клиент clients[%d].buf is %X, clients[%d].ident is %d, clients[%d].p is %X\n",
                    // i, clients[i].buf, i,
                    //   clients[i].ident,  i, clients[i].p);

                    pnt += 1;
                    cnt++;
                    amount_of_clients++;
                    break;
                }
            }
        }
    }
}
