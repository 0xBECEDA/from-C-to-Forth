#include<SDL2/SDL.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <signal.h>
#include <time.h>
#include <unistd.h>
#include <linux/unistd.h>
#include <pthread.h>
#include <errno.h>
#include <fcntl.h>
#include <netinet/in.h>

#define BOX_SIZE 3

struct test_str
{
    int c;
    int d;
};

/*функция принимает: указатель на структуру,
  указатель на вывод, счетчик */


void serialization (struct test_str * input, void * output, int count)
{
    /* объявление нетипизированного указателя, я так понимаю,
       что в pnt мы перезаписываем указатель на выделенную память*/
    void * pnt = output;

    /* до тех пор, пока i < BOX_SIZE, выполняем цикл */

    for(int i=0; i<BOX_SIZE; i++) {
        /*содержимое поля структуры кладем в разыменованный, приведенный
          к типу int указатель*/
        /*Подозреваю, что здесь идет запись в выделенную память. Мы привели
          указатель к типу инт, потому что поле структуры  - это инт.
          Затем разименовали его,получив сам пустой инт.
          И дальше скопировали в него значение поля структуры*/

        *(int *)pnt = input[i].c;
        /* говорим, что pnt равен по размеру int(?)
           зачем тогда +=?*/
        pnt += sizeof(int);
        /*аналогично*/
        *(int *)pnt = input[i].d;
        pnt += sizeof(int);
    }
}

void deserialization ()
{
    /* TODO please */
}


int main( int argc, char* args[] )
{
    printf("=========\n");
    /*инициализация массива со структурами test_str
      в массиве будет 3 структуры*/
    struct test_str test_box[BOX_SIZE];

    /*выводится указатель на массив, который положили в стек*/
    printf("test_box placed in the stack, addr is %p\n", (void *)test_box);

    /* указатель в виде счетчика */
    int counter = 0xABCDEF01;

    /* цикл выполняется 3 раза */
    for(int i=0; i<BOX_SIZE; i++) {

        /*сначала кладем указатель в после структуры по индексу, затем инкрементируем*/
        test_box[i].c = counter++;
        /*аналогично*/
        test_box[i].d = counter++;
        /*выводим номер итерации и содержимое полей структуры в каждой итерации */
        printf("initialization: %d : %X, %X\n", i, test_box[i].c, test_box[i].d);
    }

    /* умножаем количество байт в структуре на box_size и кладем результат в memsize*/
    int memsize = sizeof(struct test_str)*BOX_SIZE;

    /*выделяем память на размер memsize и возвращаем нетипизированный указатель на него */
    void * mempnt = malloc(memsize);
    printf("allocate %d bytes on addr %p\n", memsize, mempnt);

    /*передаем функции массив структур, указатель на выделенную память и box_size */
    serialization(test_box, mempnt, BOX_SIZE);

    for(int i=0; i<sizeof(test_box); i++) {
        printf("%2d: %p : %2hhX \n", i, (void *)(mempnt+i), *(char* )(void *)(mempnt+i));
    }

    deserialization();
}
