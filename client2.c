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
    //объявляем сокет
    int sock;
    // выделяем ему адрс в структуре socaddr_in (?)
    /* Выделяем память под структуру addr, которая имеет тип sockaddr_in */
    struct sockaddr_in addr;

    // инициализируем сокет

    //Он сетевой, стриминговый, протокол по умолчанию
    sock = socket(AF_INET, SOCK_STREAM, 0);
    //если возвращаемый дескриптор < 0, печатаем сообщение об ошибке
    if (sock < 0)
    {
        perror("socket");
        exit(1);
    }

    //инициализируем struct sockaddr_in

    // семейство адресов AF_INET. Зачем писать еще раз, если уже
    // указывали в строке 21?
    /* где эта строка 21? */
    addr.sin_family = AF_INET;
    addr.sin_port = htons(3425); // присваиваем порт
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK); // 127.0.0.1

    // пробуем соединиться

    // передаем дескриптор сокета, указатель на структуру
    // с адресом сервера, длинну структуры (зачем длинна?)
    /* потому что на разных архитектурах и в разных ОС
       она может быть разной. Так что лучше пусть компилятор
       вычислит и подставит - погугли, что такое sizeof-макрос */
    if (connect(sock, (struct sockaddr *)&addr,
                sizeof(addr)) < 0) {
        perror("connect");
        exit(2);
    }

    while (1) {
        // отправляем
        /* вернее сначала читаем в буфер строку */
        scanf("%s", buf);

        // передаем дескриптор сокета, указатель на буфер с данными
        // длинну буфера в байтах, флаги
        // send возвращает кол-во отправленных байтов
        send(sock, buf, sizeof(buf), 0);

        int bytes_read =  recv(sock, buf, sizeof(buf), 0);

        if (bytes_read > 0) {
        //печатаем сообщение
        printf("Server message: %s\n", buf);
        }
    }

    //закрываем сокет
    close(sock);
}
