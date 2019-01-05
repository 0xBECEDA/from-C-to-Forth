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
#define MAXLINE  1220

/* объявление мьютекса */
pthread_mutex_t mutex;

struct connection
{
    int thread;
    int ident;
    struct sockaddr_in *p;
    char *buf;
} clients[2];

struct connection client;

/* объявление структуры и массива структуры для пикселей */
struct pixel
{
    char alive;
    int c;
    int d;
} pixels[100];

struct pixel concrete_pixel;

/* объявляем промежуточный буфер */
char buffer[MAXLINE];

/* будущий дескриптор сокета */
int sockfd;

/* sockaddr_in сервера и клиента */
struct sockaddr_in servaddr, cliaddr;
struct sockaddr_in dub_array[2];

void * serialization(char * input, int x, int y, int x_side,
                     int y_side);
void deserialization (void * input, int x, int y, int x_side,
                      int y_side);
void * counter (char * input);

/*на входе получает адрес в памяти, в который пишет
 - на выходе возвращает тот же адрес */

void * serialization(char * input, int x, int y, int x_side,
                     int y_side) {
        /* сохраняем неизмененный указатель на буфер */
        char *pointer = input;
        printf("pointer in serial %X\n", pointer);
        /*пропускаем идентификатор*/
        void *pnt =  (void*)input + sizeof(int);
        printf("pnt in serial %X\n", pnt);
        int c = x;
        int d = y;

        int c_side = x_side;
        int d_side = d_side;

        printf("in Serial int c %d, int d %d, int c_side %d, int c_side %d\n", c, d, c_side, d_side);
        /*перезаписываем данные координат и сторон */
        memcpy(pnt, &c, sizeof(c));
        pnt += sizeof(c);
        memcpy(pnt, &d, sizeof(d));
        pnt += sizeof(d);

        memcpy(pnt, &c_side, sizeof(c_side));
        pnt += sizeof(c_side);
        memcpy(pnt, &d_side, sizeof(d_side));
        pnt += sizeof(d_side);

        /*дополняем данными пикселей*/
        for (int i = 0; i <=99; i++) {

            *(char*)pnt = pixels[i].alive;
            pnt += sizeof(char);
            *(int*)pnt = pixels[i].c;
            pnt += sizeof(int);
            *(int*)pnt = pixels[i].d;
            pnt += sizeof(int);
        }
        return pointer;
    }

int numpix = 0;

/* на входе получает буфер, и параметры, которые надо заполнить
  десериализует размер сторон квадрата и его координаты */
void deserialization(void * input, int x, int y, int x_side,
                     int y_side) {

    void * buffer = input;
    printf("buffer in deserial %p\n", buffer);
    /*пропускаем идентификатор*/
    buffer += sizeof(int);

    /*десериаизуем координаты*/
    int c = *(int *)buffer;
    // printf("in deserial int c %d\n", c);
    buffer += sizeof(int);
    int d =  *(int *)buffer;
    buffer += sizeof(int);

    /*десериализуем размер сторон*/
    int c_side = *(int *)buffer;
    buffer += sizeof(int);
    int d_side = *(int *)buffer;
    buffer += sizeof(int);
    printf("in deserial int c %d, int d %d, int c_side %d, int c_side %d\n", c, d, c_side, d_side);
    fflush(stdout);
}


/* функция должна изолированно посчитать координаты квадратов
- принимает адрес буфера
- возвращает адрес буфера */
void * counter (char * input) {

    int x = 0;
    int y = 0;
    int x_side = 0;
    int y_side = 0;

    void  * buffer = (void *)input;
    printf("buffer in counter %p\n", buffer);

    /*сохраняем неизмененный указатель*/
    char * p = input;
    printf("p in counter %p\n", p);

    /*десериализуем данные*/
    deserialization(buffer, &x, &y, &x_side, &y_side);
    printf("After deserial int x %d, int y %d, int x_side %d, int y_side %d\n", x, y, x_side, y_side);
    fflush(stdout);

    /*проверяем, не съели ли какой-то пиксель*/
    for (int i= 0; i <= 100; i++) {
        /*если пиксель находится внутри квадрата*/
        if(pixels[i].c <= x + (x_side - 1) &&
           pixels[i].c > x &&
           pixels[i].d <= y + (y_side - 1) &&
           pixels[i].d >= y) {
            /*то мы объявляем его как съеденный*/
            pixels[i].alive = 0;

            /*увеличиваем счетчик съеденных пикселей*/
            numpix++;

            /*на каждом третьем пикселе квадрат увеличивается
              Пора увеличить?*/
            int result =  numpix % 3;
            if (result == 0) {

                /* горизонталь и диагональ увеличиваются на 1*/
                x_side++;
                y_side++;

                //printf("in right pix_y is %d, pix_x is %d\n",
                //pix_y, pix_x);
            }

        }
    }
    /*сериализуем обратно*/
    char * pnt;
    return pnt =  serialization(p, &x, &y, &x_side, &y_side);
    printf("pnt in counter %X\n", pnt);
}


void* udp_socket(void* pointer)
{
    printf("Thread is going\n");
    while(1) {
        /*получаем идентификатор клиента*/
        void *pnt = buffer;
        int ident = *(int *)pnt;
        struct sockaddr_in dub_client;
        //printf("ident in Thread is %d\n", ident);
        // printf("client[0].ident in thread %d\n", clients[0].ident);
        //printf("client[1].ident in thread %d\n", clients[1].ident);
        //printf("ident from buffer %d\n", ident);
        for (int i = 0; i <=1; i++) {
            /*если идентификатор из буфера совпадает
              с идентификатором  клиента*/
            if (ident == clients[i].ident) {
                /*то вытаскиваем его буфер*/

                /*ЧТО-ТО ПРОИСХОДИТ ТУТ!*/
                char *p = clients[i].buf;
                printf("p in UDP %X\n", p);

                for (int i = 0; i <=1; i++) {
                    /*если идентификаторы разные,*/
                    if (ident != clients[i].ident &&
                        clients[i].ident != 0 ) {
                        /* то отправляем пакет*/
                        client = clients[i];
                        dub_client = *client.p;

                        /*дополняем данными

                          ЧТО-ТО ПРОИСХОДИТ ТУТ!*/
                        //printf("p in UDP %X\n", p);
                        printf("before counter\n");
                        fflush(stdout);
                        counter(p);
                        /*
                          парамеры: дескриптор сокета,
                          с которого отправляем,
                          указатель на  буфер с данными,
                          длинну данных, флаги, указатель на структуру                          содержащую данные клиента, размер структуры                                                                     */
                        // printf("...............\n");
                        //printf("ident in IF is %d\n", ident);
                        //printf("client[i].ident in IF %d\n",
                        //       clients[i].ident);
                           /*
                             int dub_sin_fam = dub_client.sin_family;
                             printf("dub_client.sin_family %d\n",
                             dub_sin_fam);
                             void *pnt = dub_client.sin_addr.s_addr;
                             printf("dub_client.sin_addr.s_addr %X\n",
                                                                pnt);
                             int dub_port = dub_client.sin_port;
                             printf("dub_port.sin_family %d\n",
                             dub_port);
                           */
                        // fflush(stdout);
                        //printf("ident in IF is %d\n", ident);
                        //printf("client[i].ident in IF %d\n",
                        //      clients[i].ident);

                        int n =  sendto(sockfd, p, MAXLINE,
                                        MSG_CONFIRM,
                                      (struct sockaddr *) &dub_client,
                                      sizeof(cliaddr));

                        //printf("Num of sent bytes %d\n", n);
                        //printf("...............\n");
                    }
                }
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
int a = 0;
int b = 0;

void PixelArray ()
{
    // printf("хочу залочить mutex в PixelArray\n");
    pthread_mutex_lock(&mutex);
    //printf("mutex в PixelArray залочен\n");
    //получаем координаты
    a = rand() % 500;
    b = rand() % 500;

    // Цикл, который перебирает массив. Если находит пустое место,
    // записывает структуру

    int i; // счетчик цикла
    for (i=0; i<=100; i++) {
        //printf("concrete_pixel.alive is %s\n",concrete_pixel.alive);
        //вытаскиваем структуру из массива
        concrete_pixel = pixels[i];
        //если alive = 0;
        if(concrete_pixel.alive == 0)
        {
            // заполняем структуру
            concrete_pixel.c = a;
            concrete_pixel.d = b;
            //printf("concrete_pixel.c is %d, concrete_pixel.d is %d\n",
            //concrete_pixel.c,
            // concrete_pixel.d);
            concrete_pixel.alive = 1;
            //printf("concrete_pixel.alive is %d\n",
            //       concrete_pixel.alive);
            //возвращаем структуру в массив
            pixels[i] = concrete_pixel;
            // выход
            break;
        }
    }
    /* Если после окончания цикла i равен максимальному значению
       переменной цикла - значит весь массив перебрали,
       но не нашли свободной структуры
    if (i == 100) {
        if (!no_more_space) {
            printf("::::::::::::::: No space found! \n");
            no_more_space = true;
        }
    }
    */
    pthread_mutex_unlock(&mutex);
    // printf("mutex в PixelArray разлочен\n");
}

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

        PixelArray();
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
                /*увеличиваем счетчик, переписываем данные и выходим*/
                char *p = clients[i].buf;
                memcpy(p, buffer, MAXLINE);

                counter++;
                break;
            }
               /*если структура пустая и счетчик нулевой*/
               if( clients[i].ident == 0
                   && counter == 0) {
                /* то записываем данные клиента в массив */
                clients[i].ident = ident_client;

                /*выдеяем память по буфер
                  и перезаписываем туда данные*/
                char *p = malloc(MAXLINE);
                memcpy(p, buffer, MAXLINE);
                clients[i].buf = p;

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
                //print_struct(cnt);

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

                /* можно ли обойтись переменной цикла
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
