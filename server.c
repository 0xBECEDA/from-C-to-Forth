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
    int thread;
    int connection;
    char buf[1024];

} clients[1];


// наш новый поток
void* threadFunc(void* p)
{
    struct connection client = *(struct connection *)p;

    printf("Thread %X started with param %x!\n, Desсriptor is %d\n Bufer is %s\n", client.thread, p, client.connection, client.buf);
    fflush(stdout); /* Не забывай сливать за собой! */

    while (1) {
        sleep(3);
        //printf("Desсriptor is %d\n, Bufer is %s", client.connection);
        //fflush(stdout); /* Не забывай сливать за собой! */
/*
        int bytes_read = recv(client.connection,
                          client.buf, 1024, 0);

        if(bytes_read > 0 ) {
        send
        }
*/
    }
}


void main()
{
    // опять эта непонятная структура
    struct sockaddr_in addr;

    int count = 0;

    // объявляем и инициализируем слушающий серверный сокет
    int listener = socket(AF_INET, SOCK_STREAM, 0);
    if (listener < 0)
    {
        perror("invalid socket()");
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
        /* char *addr_client = inet_ntoa(client.sin_addr); */
        //если соединение установлено
        if(sock > 0)
        {

            // Выводим сообщение о успешном подключении
            printf("I got connection %d!\n", sock);
            printf("I am writing it to connection[%d]\n", i);
            fflush(stdout); /* Не забывай сливать за собой! */

            // вытаскиваем структуру из массива в ЛОКАЛЬНУЮ переменную
            struct connection client = clients[i];

            // записываем дескриптор соединения в структуру
            client.connection = sock;

            //создаем переменную для идентификатора потока
            pthread_t thread;

            // создаем поток с помощью pthread_create, которая получает:
            // - указатель на переменную потока, чтобы вернуть дескриптор потока
            // - атрибуты потока (по умолчанию: NULL)
            // - функция потока
            // - аргумент, передаваемый в функцию потока
            pthread_create(&thread, NULL, threadFunc, (void *)&client);

            //записываем идентификатор потока в структуру
            client.thread = thread;

            // кладем структуру из ЛОКАЛЬНОЙ переменной в массив
            clients[i] = client;

            // увеличиваем индекс в массиве
            i++;
        } else {
            perror("accept");
            exit(3);
            close(sock);
        }

        /*
        //если соединение установлено, получаем данные
        while(1)
        {
            client = clients[0];
            //читаем и записываем данные от первого клиента

            bytes_read = recv(client.connection,
                              client.buf, 1024, 0);
            // если какие-то байты бли прочитаны, отправляем
            // сообщние второму клиенту
            if (bytes_read < 0) {
                printf ("Error in 1st!");
            }

            if(bytes_read > 0) {
                //вытаскиваем дескриптор второго клиента
                client = clients[1];
                int second_decriptor = client.connection;
                //возвращаем структуру первого клиента
                client = clients[0];
                // таким образом отправляем данные из структуры
                // первого клиента по дескриптору второго
                send(second_decriptor, client.buf,
                     bytes_read, 0);
            }
            //проверяем, не пришло ли сообщение от второго клиента
            client = clients[1];
            bytes_read = recv(client.connection,
                              client.buf, 1024, 0);

            if (bytes_read < 0) {
                printf ("Error in 2nd!");
            }

            // если что-то было прочитано
            if(bytes_read > 0) {
                //вытаскиваем дескриптор первого клиента
                client = clients[0];
                int first_decriptor = client.connection;
                // возвращаем структуру второго клиента
                client = clients[1];
                // таким образом отправляем данные из структуры
                // второго клиента по дескриптору первого
                send(first_decriptor, client.buf,
                     bytes_read, 0);

            }

        }
        */
    }

}
