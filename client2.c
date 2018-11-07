#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <fcntl.h>

char buf[1024];
void  main()
{
    int fd = 0; // stdin
    int flags = fcntl(fd, F_GETFL, 0);
    fcntl(fd, F_SETFL, flags | O_NONBLOCK);

    char buf_stdin[255];

    //объявляем сокет
    int sock;
    /* Выделяем память под структуру addr,
       которая имеет тип sockaddr_in */
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

    fcntl(sock, F_SETFL, O_NONBLOCK);
    //инициализируем struct sockaddr_in

    // семейство адресов AF_INET
    addr.sin_family = AF_INET;
    addr.sin_port = htons(3425); // присваиваем порт
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK); // 127.0.0.1

    // пробуем соединиться

    // передаем дескриптор сокета, указатель на структуру
    // с адресом сервера, длинну структуры (зачем длинна?)
    /* потому что на разных архитектурах и в разных ОС
       она может быть разной. Так что лучше пусть компилятор
       вычислит и подставит - погугли, что такое sizeof-макрос */
    int r = -1;
    while(r<0) {

        r = connect(sock, (struct sockaddr *)&addr,
                    sizeof(addr));
        if (r < 0) {

            perror("connect");

        }
    }

    while (1) {
        // отправляем
        /* вернее сначала читаем в буфер строку */

        int len = -1;

        sleep(3);
        len = read(fd, buf, sizeof(buf));

        // передаем дескриптор сокета, указатель на буфер с данными
        // длинну буфера в байтах, флаги
        // send возвращает кол-во отправленных байтов
        if (len > 0) {
            int  amount = send(sock, buf, sizeof(buf), 0);

            printf("amount %d\n", amount);
            fflush(stdout);

        }

        int bytes_read =  recv(sock, buf, sizeof(buf), 0);

        if (bytes_read > 0) {
            // печатаем сообщение
            printf("Client #2:   %s\n", buf);
            fflush(stdout);
        }
    }
    //закрываем сокет
    close(sock);
}
