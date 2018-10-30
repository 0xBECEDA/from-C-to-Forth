#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>

void main()
{
    //объявляем слушающий сокет
    int sock, listener;

    // опять эта непонятная структура
    struct sockaddr_in addr;


    int i = 1;
    //объявляем структуру и массив клиентов
    struct client
    {
        int descriptor;
        char buf[1024];

    } clients[i];
    //сюда будет записано кол-во прочитанных байтов (?)

    int bytes_read;

    // инициализируес слушающий сокет по аналогии с sock на клиенте
    listener = socket(AF_INET, SOCK_STREAM, 0);
    if(listener < 0)
    {
        perror("socket");
        exit(1);
    }

    //инициализируем struct sockaddr_in по аналогии с клиентом
    //(зачем?)
    addr.sin_family = AF_INET;
    addr.sin_port = htons(3425);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);

    //привязываем дескриптор сокета к адресу (зачем?)
    if(bind(listener, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        perror("bind");
        exit(2);
    }

    //Слушаем запросы. Передаетм дескриптор сокета и размер
    //очереди ожидания
    listen(listener, 1);

    //бесконечный цикл(?)
    while(1)
    {
        // возвращаем дескриптор соединения с конкретным сокетом
        sock = accept(listener, NULL, NULL);
        if(sock < 0)
        {
            perror("accept");
            exit(3);
        }

        // вытаскиваем структуру из массива
        client = clients[i];
        // записываем дескриптор соединения
        client.descriptor = sock;
        // возвращаем структуру в массив
        clients[i] = client;

        //если соединение установлено, получаем данные
        while(1)
        {
            //поиск того самого клиента
            for( i = 0; i <=1; i++) {
            // вытаскиваем структуру из массива
            client = clients[i];
            // если дескриптор соединения равен дексриптору клиента
            if (client.descriptor) {
            //читаем и записываем данные
                bytes_read = recv(client.descriptor,
                                  client.buf, 1024, 0);

            clients[i] = client;

            }


            //данные записаны, отправляем другому участнику
            /*
            //если меньше нуля, отправляем прочитанное клиенту (?)
            if(bytes_read <= 0) break;
            send(sock, buf,
                 bytes_read, 0);
            */
                 }
        //закрываем сокет
        close(sock);
    }

}
