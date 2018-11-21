#include <unistd.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <string.h>

#define SIZE 1024

void toPipe (int inPipe[], char outstr[])
{
    /*len равна длине строки из массива outstr*/
    int len = strlen(outstr);
    /*выводим длину*/
    printf(":: strlen(outstr) = %d\n", len);
    fflush(stdout);
    /*записываем количество байтов len из outstr в inPipe[1] */
    int cnt = write(inPipe[1], outstr, len);
    /*если количество байт -1, возвращаем сообщение об ошибке*/
    if (-1 == cnt) {
        perror("write to pipe");
        exit(-1);
    }
}

/*функция принимает массив интов, длинну и массив чаров*/
void fromPipe(int outPipe[], int len, char retval[])
{
    /*объявляем массив на 1024 байта*/
    char buf[SIZE];
    /*заполняем массив нулями*/
    memset(buf, 0, SIZE);
    /*читаем в buf количество байт, равное len из канала,
      который находится в outPipe[0]*/
    int cnt = read(outPipe[0], buf, len);
    /*если количество байт -1, возвращаем ошибку*/
    if (-1 == cnt) {
        perror("read from pipe");
        exit(-1);
    }
    /*выводим количество прочитанныз байт из буфера (?)*/
    printf(":: %d [child out]\n%s\n", cnt, buf);
    fflush(stdout);
    /*если retval не равно нулю и при этом длина больше 1024 байт,
      то печатаем сообщение об ошибке*/
    if (NULL != retval) {
        if (SIZE <= len) {
            printf("out of buf");
            fflush(stdout);
            exit(-1);
        }
        /*в противном случае копируем в retval символы из buf,
          равные количеству len*/
        strncpy(retval, buf, len);
    }
}

int main(int argc, char *argv[])
{
    int pid;
    int in, out, cnt;
    /*инициализация двух массивов*/
    int inPipe[2], outPipe[2];
    /* The first integer in the array (element 0)
       is set up and opened for reading,
       while the second integer (element 1) is
       set up and opened for writing.
    */
    /*если канал с данными создать не удалось,
      то отправляем сообщение об ошибке*/
    if (pipe(inPipe)==-1)
    {
        perror("Pipe Failed");
        return -1;
    }
    /*аналогично*/
    if (pipe(outPipe)==-1)
    {
        perror("Pipe Failed");
        return -1;
    }
    /*создание нового процесса*/
    switch(fork()) {
    /*если -1, то возвращаем ошибку*/
    case -1:       /* error */
        perror("fork");
        return -1;

    case 0:        /* child process */
        /* close stdin & stdout */
        /*закрытие процессов по дескриптору(?)
          откуда взялись дескрипторы?*/
        close(0);
        close(1);
        /* child stdin! ->  pipe in  */
        /*создаем дубликат файлового дескриптора*/
        dup2(inPipe[0], 0);
        /*закрываем увнвл с данными*/
        close(inPipe[1]);
        /* child stdout ->  pipe out */
        /*аналогично*/
        close(outPipe[0]);
        /*дублируем дескриптор*/
        dup2(outPipe[1], 1);
        /* run program */
        /* запускаем новую программу вместо программы,
        которая ее вызвала. Старой программе недоступны сегменты
        памяти, перезаписанные новой программой*/
        execvp("./interact", argv);
        return 0;
    }

    /* parent process */
    /*не вижу инициализацию pid, соответственно не понимаю, что можно       там вывести кроме мусора или 0*/
    printf(":: pid = %d\n", pid);
    fflush(stdout);
    /*объявляем массив на 1024 байата*/
    char result[SIZE];

    fromPipe(outPipe, 30, NULL);
    toPipe(inPipe, "5\n");
    fromPipe(outPipe, 30, NULL);
    toPipe(inPipe, "7\n");
    fromPipe(outPipe, 30, result);
    toPipe(inPipe, "y\n");
    /*не понимаю, что это.
      Нагуглила, что strcspn ищет первое вхождение в строку. */
    int pos = strcspn(result, "\n");
    /*что это?*/
    *(result+pos) = 0;
    fromPipe(outPipe, 30, NULL);
    /*вывод результата*/
    printf("Result is [%s]\n", result);
    fflush(stdout);

    return 0;
}
