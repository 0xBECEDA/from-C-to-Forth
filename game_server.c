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


/* Размер поля по горизонтали */
#define MAX_SIZE_X 500

/* Размер поля по вертикали */
#define MAX_SIZE_Y 500

/* максимальное кол-во пикселей еды на поле */
#define MAX_PIXELS 100

/* максимальное кол-во подключенных клиентов */
#define MAX_CLIENTS 2

/* порт сервера */
#define PORT     8080

/* максимальный размер датаграммы */
#define MAXLINE  1220


/* объявление структуры и массива пикселей */
struct pixel {
    char alive;
    int c;
    int d;
} pixels[MAX_PIXELS];

/* объявление структуры и массива клиентов */
struct connection
{
    int thread;
    int ident;
    struct sockaddr_in *p;
    char *buf;
} clients[MAX_CLIENTS];

/* индекс следующего клиента */
int new_client_idx = 0;

/* объявляем промежуточный буфер */
char buffer[MAXLINE];

/* sockaddr_in сервера */
struct sockaddr_in servaddr;

/* sockaddr_in клиента */
struct sockaddr_in cliaddr;


int sockfd;

int amount_of_clients = 0;
/*массив для хранения данных структур cliaddr*/
struct sockaddr_in dub_array[2];

void * serialization(char * input, int x, int y, int x_side,
                     int y_side);
//void deserialization (void * input, int x, int y, int x_side,
//                    int y_side);

int numpix = 0;


/* процедура генерации одного нового пикселя еды */
int PixelArray (struct pixel *p_pixels)
{
    /* счетчик цикла, объявляется вне цикла, чтобы проанализировать пройден ли весь массив */
     int i;
     for (i=0; i<MAX_PIXELS; i++) {
         if (0 == pixels[i].alive) {
             /*сгенерируем пиксели */

             int a;
             int b;
               generate_new_pixel:

                a = rand() % MAX_SIZE_X;
                b = rand() % MAX_SIZE_Y;

               if ((a == pixels[i].c) && (b == pixels[i].d)) {
                   goto generate_new_pixel;
               }

               pixels[i].c = a;
               pixels[i].d = b;
               pixels[i].alive = 1;
         }
     }

    /* Если после окончания цикла i равен максимальному значению
       переменной цикла - значит весь массив перебрали,
       но не нашли свободной структуры */
    if ( MAX_PIXELS >= i ) {
        return -1;
    } else {
        return 0;
    }
}

int deserialization(void * input) {

    int param;
    void * buffer = input;
    param = *(int *)buffer;

    return param;
}
void * serialization(char * input, int x, int y, int x_side,
                     int y_side) {

        /* сохраняем неизмененный указатель на буфер */
        char *pointer = input;
//        printf("pointer in serial %X\n", pointer);
        /*пропускаем идентификатор*/
        void *pnt =  (void*)input + sizeof(int);
        //      printf("pnt in serial %X\n", pnt);

        // printf("in Serial x %d, y %d, x_side %d, y_side %d\n",
        //       x, y, x_side, y_side);

        /*перезаписываем данные координат и сторон */
        memcpy(pnt, &x, sizeof(x));
        pnt += sizeof(x);
        memcpy(pnt, &y, sizeof(y));
        pnt += sizeof(y);

        memcpy(pnt, &x_side, sizeof(x_side));
        pnt += sizeof(x_side);
        memcpy(pnt, &y_side, sizeof(y_side));
        pnt += sizeof(y_side);

        return pointer;
    }


void * counter (char * input) {

    int x = 0;
    int y = 0;
    int x_side = 0;
    int y_side = 0;

    void  * buffer = (void *)input;

    //printf("buffer in counter %X\n", buffer);

    char *p = input;

    /* десериализуем данные */

    /* пропустим идентификатор */
    buffer += sizeof(int);

    x = deserialization(buffer);
    buffer += sizeof(int);
    y = deserialization(buffer);
    buffer += sizeof(int);
    x_side = deserialization(buffer);
    buffer += sizeof(int);
    y_side = deserialization(buffer);

    //printf("after DEserial x %d, y %d, x_side %d, y_side %d\n",
    //       x, y, x_side, y_side);

    for (int i= 0; i <= 99; i++) {
        /*если пиксель находится внутри квадрата*/
        if(pixels[i].c <= x + (x_side - 1) &&
           pixels[i].c > x &&
           pixels[i].d <= y + (y_side - 1) &&
           pixels[i].d >= y) {
            /*то мы объявляем его как съеденный*/
            pixels[i].alive = 0;
            //printf("pixels[%d].c %d, pixels[%d].d %d\n",
            //       i, pixels[i].c, i,  pixels[i].d);
            /*увеличиваем счетчик съеденных пикселей*/
            numpix++;

            /*на каждом третьем пикселе квадрат увеличивается
              Пора увеличить?*/
            int result =  numpix % 3;
            if (result == 0) {

                /* горизонталь и диагональ увеличиваются на 1*/
                x_side++;
                y_side++;

            }
        }
    }


    /*сериализуем обратно*/
    char * pnt;
    return pnt =  serialization(p, x, y, x_side, y_side);
    //printf("pnt in counter after all %X\n", pnt);
}


void* send_data_thread(void* pointer) {

    printf("поток отправки");
    fflush(stdout);

    if(amount_of_clients < 2) {
        sleep(3);
    }
    //printf("after recv\n");
    time_t send_start = 0;
    time_t send_end = 0;

    /* отправляем */
    while(1) {

        usleep(10000);
        send_start = time(NULL);

        char *p;

        /* обсчет */
        for(int i = 0; i < 2; i++) {

            p = clients[i].buf;

            /* проверяем, не стоит ли квадрат на
               одном из пикселей */
            char *bufer_pnt = counter(p);
            clients[i].buf = bufer_pnt;

            /*
              printf(" clients[%d].buf, clients.ident %d
              after all %X\n",
              i, clients[i].ident, clients[i].buf);
            */
        }

        /* записываем в буфер каждого клиента
           актуальное состояние пикселей*/

        for(int i = 0; i < 2; i++) {

            p = clients[i].buf;

            void *pnt = (void*)p;
            char *double_pnt = p;

            /* пропускаем идентификатор, координаты
               квадрата и размер его сторон*/

            pnt += sizeof(int) * 5;

            /*дополняем данными пикселей */
            for (int j = 0; j <=99; j++) {


                *(char*)pnt =  pixels[j].alive;
                pnt += sizeof(char);
                *(int*)pnt =  pixels[j].c;
                pnt += sizeof(int);
                *(int*)pnt =  pixels[j].d;
                pnt += sizeof(int);

            }

            clients[i].buf = double_pnt;
        }

        /* если прошла секунда или больше
           send_end = time(NULL);
           int time_send = difftime(send_end, send_start);
           if (  time_send >= 1 ) {
           /* выходим из цикла while и отправляем
           printf("time_send %d\n", time_send);
           break;
           }
        */


        struct sockaddr_in dub_client;

        /*заводим структуру, чтоб позже скопировать
          в нее данные клиента*/
        struct connection client;

        char *final_pointer;

        /* отправляем */

        /* вытаскиваем идентификатор */
        int identificator_client;

        /* */
        int i = 0;
        while (i <= 1) {

            identificator_client = clients[i].ident;
            final_pointer = clients[i].buf;
            //printf("clients[%d}.ident'from' %d\n",
            //       i, clients[i].ident);

            for(int a = 0; a <= 1; a++) {
                if ( identificator_client != clients[a].ident) {
                    client = clients[a];
                    //printf("clients[%d}.ident 'to' %d\n",
                    //       i, clients[i].ident);

                    dub_client = *client.p;

                    printf("отправка final_pointer is %X, clients[%d].ident is %d, clients[%d].p is %X\n",
                           final_pointer, a,
                           clients[a].ident,  a, clients[a].p);

                    fflush(stdout);


                    int n =  sendto(sockfd, final_pointer,
                                    MAXLINE,
                                    MSG_CONFIRM, (struct sockaddr *) &dub_client,
                                    sizeof(cliaddr));
                    i++;
                }
            }
        }
    }
}

int  main()
{

/* Создаем сокет.
   Должны в случае успеха получить его дескриптор */


    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    printf("sock created\n");
    fflush(stdout);

/* заполняем данные о сервере */
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = INADDR_ANY;
    servaddr.sin_port = htons(PORT);


    memset(dub_array, 0, sizeof(dub_array));
    memset(clients, 0, sizeof(clients));

    printf(" before bind\n");
    fflush(stdout);
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

    while (1) {

//printf("recv_and_send\n");
/* Создаем новые пиксели еды если есть возможность */

        PixelArray(&pixels);

/* передаем указатель на массив c
   данными структур cliaddr */
        struct sockaddr_in *pnt = dub_array;

/* переменные для отсчета времени */
        time_t recv_start = 0;
        time_t recv_end = 0;

/* индекс для dub_array*/
        int cnt = 0;

        while(1) {

            usleep(10000);
/* Читаем датаграмму */
            int len = sizeof(cliaddr);
            int n = recvfrom(sockfd, buffer, MAXLINE,
                             MSG_WAITALL, ( struct sockaddr *) &cliaddr,
                             &len);

/* Разбираем датаграмму и
   пересылаем изменения остальным клиентам */


/* вытаскиваем идентификатор */
            int ident_client = *(int *)buffer;


            for(int i = 0; i<=1; i++) {
                int counter = 0;

                char *point;

/* если идентификатор совпадает */
                if( clients[i].ident == ident_client) {

                    point = clients[i].buf;

/*
  printf(" совпал clients[%d].ident is %d\n", i,
  clients[i].ident);
*/
                    memcpy(point, buffer, MAXLINE);
                    clients[i].buf = point;

/*
  printf(" совпал clients[%d].buf is %X\n", i,
  clients[i].buf);
*/
                    counter++;
                    break;
                }


/*если структура пустая и счетчик нулевой*/
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

/*printf("новый клиент clients[%d].buf is %X, clients[%d].ident is %d, clients[%d].p is %X\n",
  i, clients[i].buf, i,
  clients[i].ident,  i, clients[i].p);

  fflush(stdout);
*/
                    pnt += 1;
                    cnt++;
                    amount_of_clients++;
                    break;
                }
            }
        }
    }
}
