#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <pthread.h>
#include <signal.h>
#include <errno.h>
#include <linux/unistd.h>

int sock;
int i = 0;

// объявляем структуру и массив клиентов
struct connection
{
    int descriptor;
    char buf[1024];

} clients[1];
struct connection client;

// сюда будет записано кол-во прочитанных байтов
int bytes_read;
/*
// наш новый поток
void* threadFunc(void* thread_data)
{
    while (1) {
        printf(".");
        //fflush(stdout);
        usleep(10000); // sleep for 0.01 sec
        printf("Deskriptor is %d", sock);
    }
}
*/

void main()
{
    // объявляем слушающий сокет
    int listener;

    // опять эта непонятная структура
    struct sockaddr_in addr;

    int count = 0;

    // инициализируес слушающий сокет по аналогии с sock на клиенте
    listener = socket(AF_INET, SOCK_STREAM, 0);
    if(listener < 0)
    {
        perror("socket");
        exit(1);
    }

    // инициализируем struct sockaddr_in по аналогии с клиентом
    // (зачем?)
    addr.sin_family = AF_INET;
    addr.sin_port = htons(3425);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);

    // привязываем дескриптор сокета к адресу (зачем?)
    if(bind(listener, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        perror("bind");
        exit(2);
    }

    // Слушаем запросы. Передаетм дескриптор сокета и размер
    // очереди ожидания
    listen(listener, 1);

    // бесконечный цикл(?)
    while(1)
    {
        // возвращаем дескриптор соединения с конкретным сокетом
        sock = accept(listener, NULL, NULL);
        if(sock < 0)
        {
            perror("accept");
            exit(3);
        }

        printf("I got connection!");
        // вытаскиваем структуру из массива
        client = clients[i];
        // записываем дескриптор соединения
        client.descriptor = sock;

        //возвращаем структуру в массив
        clients[i] = client;

        i++;

        /*
        // нетипизированный указатель = NULL
        void* thread_data = NULL;

        //создаем идентификатор потока
        pthread_t thread;

        // создаем поток с помощью pthread_create
        // в качестве параметров: ссыка на идентификатор, значение
        // нетипизированного указателя, название создаваемого потока и
        // данные

        pthread_create(&thread, NULL, threadFunc, thread_data);

        */


        //если соединение установлено, получаем данные
        while(1)
        {
            client = clients[0];
            //читаем и записываем данные от первого клиента

            bytes_read = recv(client.descriptor,
                              client.buf, 1024, 0);
            // если какие-то байты бли прочитаны, отправляем
            // сообщние второму клиенту
            if (bytes_read < 0) {
                printf ("Error in 1st!");
            }

            if(bytes_read > 0) {
                //вытаскиваем дескриптор второго клиента
                client = clients[1];
              int second_decriptor = client.descriptor;
                //возвращаем структуру первого клиента
                client = clients[0];
                // таким образом отправляем данные из структуры
                // первого клиента по дескриптору второго
                send(second_decriptor, client.buf,
                     bytes_read, 0);
            }
            //проверяем, не пришло ли сообщение от второго клиента
            client = clients[1];
            bytes_read = recv(client.descriptor,
                              client.buf, 1024, 0);

            if (bytes_read < 0) {
                printf ("Error in 2nd!");
            }

            // если что-то было прочитано
            if(bytes_read > 0) {
                //вытаскиваем дескриптор первого клиента
                client = clients[0];
                int first_decriptor = client.descriptor;
                // возвращаем структуру второго клиента
                client = clients[1];
                // таким образом отправляем данные из структуры
                // второго клиента по дескриптору первого
                send(first_decriptor, client.buf,
                     bytes_read, 0);

            }

        }
    }
}
