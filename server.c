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

    //объявляем массив-буфер на 1024 байта
    char buf[1024];
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
        //создаем новый сокет, возвращаем дескриптор
        sock = accept(listener, NULL, NULL);
        if(sock < 0)
        {
            perror("accept");
            exit(3);
        }

        while(1)
        {
            //возвращаем кол-во прочитанных байтов
            bytes_read = recv(sock, buf, 1024, 0);
            //если меньше нуля, отправляем прочитанное клиенту (?)
            if(bytes_read <= 0) break;
            send(sock, buf,
                 bytes_read, 0);
        }
        //закрываем сокет
        close(sock);
    }

}
