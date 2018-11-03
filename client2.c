#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
//char message[] = "Hello there!\n";

// буфер, откуда сокет возьмет данные
//char buf[sizeof(message)];

char buf[1024];
void  main()
{
/*
  int i = 10;
  while(i = 10) {
  //printf("Buf before scanf: %s\n", buf);
  scanf("%s", buf);
  //fflush (stdout);
  printf("Buf after scanf: %s\n", buf);
  //fflush (stdout);
  }
*/


    //объявляем сокет
    int sock;
    // выделяем ему адрс в структуре socaddr_in (?)
    struct sockaddr_in addr;

    // инициализируем сокет

    //Он сетевой, стриминговый, протокол по умолчанию
    sock = socket(AF_INET, SOCK_STREAM, 0);
    //если возвращаемый дескриптор < 0, печатаем сообщение об ошибке
    if(sock < 0)
    {
        perror("socket");
        exit(1);
    }

    //инициализируем struct sockaddr_in

    // семейство адресов AF_INET. Зачем писать еще раз, если уже
    // указывали в строке 21?
    addr.sin_family = AF_INET;
    //присваиваем порт
    addr.sin_port = htons(3425);
    //говорим, что сервер и клиент буду на одной машине
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

    // пробуем соединиться

    //передаем дескриптор сокета, указатель на структуру
    //с адресом сервера, длинну структуры (зачем длинна?)
    if(connect(sock, (struct sockaddr *)&addr,
               sizeof(addr)) < 0)


    {
        perror("connect");
        exit(2);
    }

    // отправляем
    scanf("%s", buf);

    //передаем дескриптор сокета, указатель на буфер с данными (?!)
    //длинну буфера в байтах, флаги
    // send возвращает кол-во отправленных байтов
    send(sock, buf, sizeof(buf), 0);

    // читаем данные (их прислал сервер?), параметры аналогичны
    //recv(sock, buf, sizeof(message), 0);
    recv(sock, buf, sizeof(buf), 0);

    //печатаем сообщение
    printf("Server message: %s\n", buf);
    //закрываем сокет

    close(sock);


}
