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

} clients[10];
struct connection client;


// сюда будет записано кол-во прочитанных байтов
int bytes_read;

// наш новый поток
void* threadFunc(void* p)
{
    while (1) {
        sleep(3);
      (struct client *)p;
        printf("Deskriptor is %d\n", client.connection);
    }
}


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
        //если соединение установлено
        if(sock > 0)
        {
            printf("I got connection!\n ");

            // вытаскиваем структуру из массива
            client = clients[i];
            // записываем дескриптор соединения
            client.connection = sock;

            // нетипизированный указатель = NULL
            //void* thread_data = NULL;

            //создаем идентификатор потока
            pthread_t thread;

            // создаем поток с помощью pthread_create
            // в качестве параметров: ссыка на идентификатор,
            // текущая структура,
            // название создаваемого потока и указательна структуру

            void *p = &client;

            pthread_create(&thread, NULL, threadFunc, p);

            //записываем идентификатор потока в структуру
            client.thread = thread;
            // кладем структуру в массив
            clients[i] = client;

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
