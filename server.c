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


int conn_idx = 0;
// объявляем структуру и массив клиентов
struct connection
{
    int thread;
    int connection;
    char buf[1024];

} clients[1];

void test (cnt)
{
    // client = *(struct connection *)p;
    printf("\n| %10s | %10s | %10s |\n", "thread", "connection", "buf");
    for ( int i = 0; i <= cnt; i++ ) {
        struct connection client = clients[i];
        printf("| %10X | %10d | %10s |\n",
               client.thread, client.connection, client.buf);
        fflush(stdout); /* Не забывай сливать за собой! */
    }
}

// наш новый поток
void* threadFunc(void* p)
{
    struct connection client = *(struct connection *)p;
    test(2);
    while (1) {
        sleep(3);

        // читаем из соединения
        int bytes_read = recv(client.connection,
                              client.buf, 1024, 0);

        if(bytes_read > 0 ) {
            // проверка, что получили
            printf ("Message  is: %s, sock is %d\n", client.buf,
                    client.connection);
            fflush(stdout);
            //сохраняю дескриптор соединения в локальную переменную
            int descriptor = client.connection;
            //сохраняю указатель на буфер в локальную переменную
            int pointer = &client.buf;
            printf ("&client.buf is %X, int pointer is %X\n",
                    &client.buf, pointer);
            // ищем все структуры, чьи дескрипторы соединений
            // не совпадают с текущим
            for (int j = 0; j <= sizeof(clients); j++) {
                client = clients[j];
                // если нашли чужую структуру, отправляем данные
                if (client.connection != descriptor &&
                    client.connection != 0) {
                    printf("client.connection is %d, desc is %d, pointer is %X\n",
                           client.connection, descriptor, pointer);
                    // скорее всего все падает тут11
                    send(client.connection, pointer,
                         bytes_read, 0);

                }
            }
        }
    }
}


void main()
{
    // зачем тебе 2 структуры?
    struct sockaddr_in serv_in, clnt_in;

    int count = 0;

    // объявляем и инициализируем слушающий серверный сокет
    int listener = socket(AF_INET, SOCK_STREAM, 0);
    if (listener < 0)
    {
        perror("invalid socket()");
        exit(1);
    }

    // инициализируем struct sockaddr_in по аналогии с клиентом

    serv_in.sin_family = AF_INET;
    serv_in.sin_port = htons(3425);
    serv_in.sin_addr.s_addr = htonl(INADDR_ANY); /* inet_addr("127.0.0.1") */

    // привязываем дескриптор сокета к адресу
    // параметры: дескриптор слушающего сокета,
    // указатель на структуру сервера, размер структуры
    if(bind(listener, (struct sockaddr *)&serv_in, sizeof(serv_in)) < 0)
    {
        perror("bind() failed");
        exit(2);
    }

    // Слушаем запросы. Передаетм дескриптор сокета и размер
    // очереди ожидания
    listen(listener, 1);

    // бесконечный цикл
    while(1)
    {
        // возвращаем дескриптор соединения с конкретным сокетом
        // приравниваем размер структуры  в байтах к переменной (?)
        int c = sizeof(struct sockaddr_in);
        int sock = accept(listener, (struct sockaddr *)&clnt_in, (socklen_t *)&c);

        //если соединение установлено
        if(sock > 0)
        {
            // Выводим сообщение о успешном подключении
            printf("%d sock to connection[%d]\n", sock, conn_idx);
            fflush(stdout); /* Не забывай сливать за собой! */

            // вытаскиваем структуру из массива в ЛОКАЛЬНУЮ переменную
            struct connection client = clients[conn_idx];

            // записываем дескриптор соединения в структуру
            client.connection = sock;

            //создаем переменную для идентификатора потока
            pthread_t thread;

            // создаем поток с помощью pthread_create, которая получает:
            // - указатель на переменную потока, чтобы вернуть дескриптор потока
            // - атрибуты потока (по умолчанию: NULL)
            // - функция потока
            // - аргумент, передаваемый в функцию потока
            pthread_create(&thread, NULL, threadFunc,
                           (void *)&clients[conn_idx]);

            //записываем идентификатор потока в структуру
            client.thread = thread;

            // кладем структуру из ЛОКАЛЬНОЙ переменной в массив
            clients[conn_idx] = client;

            // увеличиваем индекс в массиве
            conn_idx++;

        } else {
            perror("accept");
            exit(3);
            close(sock);
        }

    }

}
