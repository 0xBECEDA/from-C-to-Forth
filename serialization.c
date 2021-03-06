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


void  * serialization (struct test_str * input, int count)
{
    /* умножаем количество байт в структуре на box_size и кладем результат в memsize*/
    int memsize = sizeof(struct test_str)*BOX_SIZE;

    /*выделяем память на размер memsize и возвращаем нетипизированный указатель на него */
    void * pnt = malloc(memsize);
    void * serial_ret = pnt;
    printf("allocate %d bytes on addr %p\n", memsize, pnt);

    /* до тех пор, пока i < BOX_SIZE, выполняем цикл */

    for(int i=0; i<count; i++) {
        /*содержимое поля структуры кладем в разыменованный, приведенный
          к типу int указатель*/
        /*Подозреваю, что здесь идет запись в выделенную память. Мы привели
          указатель к типу инт, потому что поле структуры  - это инт.
          Затем разименовали его,получив указатель на инт.
          И дальше скопировали в него значение поля структуры*/

        *(int *)pnt = input[i].c;
        /* Я так понимаю, что таким образом мы двигаем указатель
           на следующие пустые 4 байта
        */
        pnt += sizeof(int);
        /*аналогично*/
        *(int *)pnt = input[i].d;
        pnt += sizeof(int);
    }
    return serial_ret;
}

/* Я попытаюсь взять содержимое в выделенной памяти и
   перезаписать в структуру.
   Функция принимает указатель на сериализованные данные и счетчик
   и возвращает указатель на десериализованную структуру
*/
void * deserialization (void * serial_buf, int cnt)
{
    /*копируем указатель*/
    void *p = serial_buf;

    /*выделем память для десериализованных данных*/
    int mem = sizeof(struct test_str)*BOX_SIZE;
    void * deserial_buf = malloc(mem);

    /* пока newpnt не изменился формируем возвращаемый указатель*/
    struct test_str * ret = (struct test_str *)deserial_buf;

    for(int i=0; i<cnt; i++) {
        *(int *)deserial_buf = *(int *)p;
        //   printf("%2d: %2X\n", i, *(int *)deserial_buf);
        p += sizeof(int);
        deserial_buf += sizeof(int);
        *(int *)deserial_buf = *(int *)p;
        // printf("%2d: %2X\n", i, *(int *)deserial_buf);
        p += sizeof(int);
        deserial_buf += sizeof(int);
    }

    return ret;
}

int main( int argc, char* args[] )
{
    printf("=========\n");
    /*инициализация массива со структурами test_str
      в массиве будет 3 структуры*/
    struct test_str test_box[BOX_SIZE];

    /*выводится указатель на массив, который положили в стек*/
    printf("test_box placed in the stack, addr is %p\n", (void *)test_box);

    /* указатель в виде счетчика
       нет, это просто значение, которое будет увеличиваться
       на 1 каждую итерацию, т.е. счетчик (но не цикла)
    */
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

    /*передаем функции массив структур, указатель на выделенную память и box_size */
    void *mempnt = serialization(test_box, BOX_SIZE);


    /* после возврата из функции идем сюда*/
    for(int i=0; i<sizeof(test_box); i++) {
        /*вывод указателя на каждый байт в mempnt
          и содержимого этого байта (?)
          да
        */
        printf("%2d: %p : %2hhX \n", i, (void *)(mempnt+i), *(char* )(void *)(mempnt+i));
    }


   void * deserial =  deserialization(mempnt, BOX_SIZE);

   for(int i=0; i<6; i++) {
       printf(" After all %2d: %p : %2X \n", i, (deserial+(4*i)),
              *(int* )(deserial+(4*i)));
   }
}
