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

bool init();
bool create();
bool surface_create();
void paint(SDL_Event* event);
void Handle_Keydown(SDL_Keysym* keysym);
void box( int &X, int &Y);
void move_box_left( int &X, int &Y);
void move_box_right( int &X, int &Y);
void move_box_down( int &X, int &Y);
void move_box_up( int &X, int &Y);
void delete_box( int &X, int &Y);
void show_box (int box_x, int box_y, int red,
               int green, int blue);
void show_pixels(int red, int green, int blue);
void deserialization(void * input);
void * serialization();

/* окно, которое мы показываем */
SDL_Window* gWindow = NULL;
SDL_Surface* surface = NULL;
SDL_Event event;
SDL_Keysym keysym;
int SCREEN_WIDTH = 480;
int SCREEN_HEIGHT = 520;

/* переменная отвечает за режим рисования */
int paint_mode = 0;

/*  цвета */
// int R = 0;
// int G = 0;
// int B = 0;

/* показывает, сколько пикселей съедено */
int numpix = 0;

int RGBcolor = 0;

/* размер сторон квадратика */
int pix_y = 10;
int pix_x = 10;

/* размер сторон врага */
int pix_y_enemy = 10;
int pix_x_enemy = 10;

/* координаты для show_pixels и структур пикселей */
int a = 0;
int b = 0;

/* координаты, для функций с квадратом */
int X = 0;
int Y = 0;

int X_enemy = 0;
int Y_enemy = 0;

/*идентификатор игрока-клиента*/
int identificator;

/* объявление структуры и массива структуры для пикселей */
struct pixel
{
    char alive = 0;
    int c;
    int d;
} pixels[100];
struct pixel concrete_pixel;

/*  струкутра для запоминания съеденных в будущем пикселей */
struct pixel rem_pixel;

struct box
{
    int c;
    int d;
};

/* массив для квадратика */
struct box pixels_box[100];

/* структура для квадратика */
struct box main_character;

/*  структура "врага" */
struct box enemy;
//struct box pixels_enemy[100];

/* дескриптор сокета и структура сервера */
int sockfd;
struct sockaddr_in servaddr;

/* отражает кол-во найденных рандомно закрашенных пикселей */
int ColorPixel = 0;

/* объявление мьютекса */
pthread_mutex_t mutex;

/* Инициализация SDL */
bool init()
{
    /* если SDL_Init c SDL_INIT VIDEO в
       качестве параметра меньше нуля, */
    if( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
        printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
        return false;
    }
    return true;
}

/*
  Cоздание окна
  Использует глобальные переменные:
  - surface
*/
bool create()
{
    if ( !(gWindow =
           SDL_CreateWindow("SDL Tutorial",
                            SDL_WINDOWPOS_UNDEFINED,
                            SDL_WINDOWPOS_UNDEFINED,
                            SCREEN_WIDTH,
                            SCREEN_HEIGHT,
                            SDL_WINDOW_SHOWN)) ) {
        printf( "SDL_CreateWindow() failed! SDL_Error: %s\n", SDL_GetError() );
        return false;
    }
    return true;
}

/*
   Cоздание поверхности окна
   Использует глобальные переменные:
   - surface
 */
bool surface_create ()
{
    /*  */
    if ( !(surface = SDL_GetWindowSurface(gWindow)) ) {
        printf ("Didn't create surface! SDL_Error: %s\n", SDL_GetError());
        return false;
    }
    return true;
}


void PrintAllEvents()
{
    printf("SDL_FIRSTEVENT is %d\n", SDL_FIRSTEVENT);
    printf("SDL_QUIT is %d\n", SDL_QUIT);
    printf("SDL_APP_TERMINATING is %d\n", SDL_APP_TERMINATING);
    printf("SDL_APP_LOWMEMORY is %d\n", SDL_APP_LOWMEMORY);
    printf("SDL_APP_WILLENTERBACKGROUND is %d\n", SDL_APP_WILLENTERBACKGROUND);
    printf("SDL_APP_DIDENTERBACKGROUND is %d\n", SDL_APP_DIDENTERBACKGROUND);
    printf("SDL_APP_WILLENTERFOREGROUND is %d\n", SDL_APP_WILLENTERFOREGROUND);
    printf("SDL_APP_DIDENTERFOREGROUND is %d\n", SDL_APP_DIDENTERFOREGROUND);
    printf("SDL_WINDOWEVENT is %d\n", SDL_WINDOWEVENT);
    printf("SDL_SYSWMEVENT is %d\n", SDL_SYSWMEVENT);
    printf("SDL_KEYDOWN is %d\n", SDL_KEYDOWN);
    printf("SDL_KEYUP is %d\n", SDL_KEYUP);
    printf("SDL_TEXTEDITING is %d\n", SDL_TEXTEDITING);
    printf("SDL_TEXTINPUT is %d\n", SDL_TEXTINPUT);
    printf("SDL_KEYMAPCHANGED is %d\n", SDL_KEYMAPCHANGED);
    printf("SDL_MOUSEMOTION is %d\n", SDL_MOUSEMOTION);
    printf("SDL_MOUSEBUTTONDOWN is %d\n", SDL_MOUSEBUTTONDOWN);
    printf("SDL_MOUSEBUTTONUP is %d\n", SDL_MOUSEBUTTONUP);
    printf("SDL_MOUSEWHEEL is %d\n", SDL_MOUSEWHEEL);
    printf("SDL_JOYAXISMOTION is %d\n", SDL_JOYAXISMOTION);
    printf("SDL_JOYBALLMOTION is %d\n", SDL_JOYBALLMOTION);
    printf("SDL_JOYHATMOTION is %d\n", SDL_JOYHATMOTION);
    printf("SDL_JOYBUTTONDOWN is %d\n", SDL_JOYBUTTONDOWN);
    printf("SDL_JOYBUTTONUP is %d\n", SDL_JOYBUTTONUP);
    printf("SDL_JOYDEVICEADDED is %d\n", SDL_JOYDEVICEADDED);
    printf("SDL_JOYDEVICEREMOVED is %d\n", SDL_JOYDEVICEREMOVED);
    printf("SDL_CONTROLLERAXISMOTION is %d\n", SDL_CONTROLLERAXISMOTION);
    printf("SDL_CONTROLLERBUTTONDOWN is %d\n", SDL_CONTROLLERBUTTONDOWN);
    printf("SDL_CONTROLLERBUTTONUP is %d\n", SDL_CONTROLLERBUTTONUP);
    printf("SDL_CONTROLLERDEVICEADDED is %d\n", SDL_CONTROLLERDEVICEADDED);
    printf("SDL_CONTROLLERDEVICEREMOVED is %d\n", SDL_CONTROLLERDEVICEREMOVED);
    printf("SDL_CONTROLLERDEVICEREMAPPED is %d\n", SDL_CONTROLLERDEVICEREMAPPED);
    printf("SDL_FINGERDOWN is %d\n", SDL_FINGERDOWN);
    printf("SDL_FINGERUP is %d\n", SDL_FINGERUP);
    printf("SDL_FINGERMOTION is %d\n", SDL_FINGERMOTION);
    printf("SDL_DOLLARGESTURE is %d\n", SDL_DOLLARGESTURE);
    printf("SDL_DOLLARRECORD is %d\n", SDL_DOLLARRECORD);
    printf("SDL_MULTIGESTURE is %d\n", SDL_MULTIGESTURE);
    printf("SDL_CLIPBOARDUPDATE is %d\n", SDL_CLIPBOARDUPDATE);
    printf("SDL_DROPFILE is %d\n", SDL_DROPFILE);
    /*
    // printf("SDL_DROPTEXT is %d\n", SDL_DROPTEXT);
    // printf("SDL_DROPBEGIN is %d\n", SDL_DROPBEGIN);
    // printf("SDL_DROPCOMPLETE is %d\n", SDL_DROPCOMPLETE);
    */
    printf("SDL_AUDIODEVICEADDED is %d\n", SDL_AUDIODEVICEADDED);
    printf("SDL_AUDIODEVICEREMOVED is %d\n", SDL_AUDIODEVICEREMOVED);
    printf("SDL_RENDER_TARGETS_RESET is %d\n", SDL_RENDER_TARGETS_RESET);
    printf("SDL_RENDER_DEVICE_RESET is %d\n", SDL_RENDER_DEVICE_RESET);
    /* printf("SDL_RegisterEvents() is %d\n", SDL_RegisterEvents()); */
    printf("SDL_USEREVENT is %d\n", SDL_USEREVENT);
    printf("SDL_LASTEVENT is %d\n", SDL_LASTEVENT);
}


/* */
void PrintEvent(SDL_Event * event)
{
    if (event->type == SDL_WINDOWEVENT) {
        switch (event->window.event) {
        case SDL_WINDOWEVENT_SHOWN:
            printf("Window %d shown", event->window.windowID);
            break;
        case SDL_WINDOWEVENT_HIDDEN:
            printf("Window %d hidden", event->window.windowID);
            break;
        case SDL_WINDOWEVENT_EXPOSED:
            printf("Window %d exposed", event->window.windowID);
            break;
        case SDL_WINDOWEVENT_MOVED:
            printf("Window %d moved to %d,%d",
                   event->window.windowID, event->window.data1,
                   event->window.data2);
            break;
        case SDL_WINDOWEVENT_RESIZED:
            printf("Window %d resized to %dx%d",
                   event->window.windowID, event->window.data1,
                   event->window.data2);
            break;
        case SDL_WINDOWEVENT_SIZE_CHANGED:
            printf("Window %d size changed to %dx%d",
                   event->window.windowID, event->window.data1,
                   event->window.data2);
            break;
        case SDL_WINDOWEVENT_MINIMIZED:
            printf("Window %d minimized", event->window.windowID);
            break;
        case SDL_WINDOWEVENT_MAXIMIZED:
            printf("Window %d maximized", event->window.windowID);
            break;
        case SDL_WINDOWEVENT_RESTORED:
            printf("Window %d restored", event->window.windowID);
            break;
        case SDL_WINDOWEVENT_ENTER:
            printf("Mouse entered window %d",
                   event->window.windowID);
            break;
        case SDL_WINDOWEVENT_LEAVE:
            printf("Mouse left window %d", event->window.windowID);
            break;
        case SDL_WINDOWEVENT_FOCUS_GAINED:
            printf("Window %d gained keyboard focus",
                   event->window.windowID);
            break;
        case SDL_WINDOWEVENT_FOCUS_LOST:
            printf("Window %d lost keyboard focus",
                   event->window.windowID);
            break;
        case SDL_WINDOWEVENT_CLOSE:
            printf("Window %d closed", event->window.windowID);
            break;
#if SDL_VERSION_ATLEAST(2, 0, 5)
        case SDL_WINDOWEVENT_TAKE_FOCUS:
            printf("Window %d is offered a focus", event->window.windowID);
            break;
        case SDL_WINDOWEVENT_HIT_TEST:
            printf("Window %d has a special hit test", event->window.windowID);
            break;
#endif
        default:
            printf("Window %d got unknown event %d",
                   event->window.windowID, event->window.event);
            break;
        }
    }
}


/*
   Получение значения пикселя
   Использует глобальные переменные:
   - surface
 */
Uint32 getpixel( SDL_Surface *surface, int x, int y) {
// заблокируем поверхность
    SDL_LockSurface(surface);
    //выясняем формат пикселя
    int bpp =  surface->format->BytesPerPixel;
    /* Here p is the address to the pixel we want to retrieve */
    Uint32 ppr = surface->pitch/bpp;
    Uint8 *p = (Uint8 *)surface->pixels + (y * ppr + x )* bpp;

    switch(bpp) {
    case 1:
        RGBcolor = *p;
        return RGBcolor;
        break;

    case 2:
        RGBcolor = *(Uint16 *)p;
        return RGBcolor;
        break;

    case 3:
        if(SDL_BYTEORDER == SDL_BIG_ENDIAN)
            return p[0] << 16 | p[1] << 8 | p[2];
        else
            return p[0] | p[1] << 8 | p[2] << 16;
        break;

    case 4:
        RGBcolor =  *(Uint32 *)p;
        return  RGBcolor;
        break;

    default:
        return 0;       /* shouldn't happen, but avoids warnings */
    }
    // разблокируем поверхность
    SDL_UnlockSurface(surface);
}


/*
   Отрисовка пикселя
   Использует глобальные переменные:
   - surface
 */
void DrawPixel(SDL_Surface *screen, int x, int y,
               Uint8 R, Uint8 G, Uint8 B)
{
    Uint32 color = SDL_MapRGB(surface->format, R, G, B);
    /* Here p is the address to the pixel we want to retrieve */
    int bpp =  surface->format->BytesPerPixel;
    Uint32 ppr = surface->pitch/bpp;

    switch (bpp)
    {
    case 1: // Используем 8-bpp (бит на пиксель)
    {

        Uint8 *p = (Uint8 *)surface->pixels + (y * ppr + x )* bpp;
        /* pixels – указатель на начало области данных,
           описывающей состояние пикселей поверхности screen */
        /* pitch – количество байт, занимаемых данными
           о пикселях одной строки */      *p = color;
    }
    break;
    case 2: // Возможно 15-bpp или 16-bpp
    {
        Uint16 *p = (Uint16 *)surface->pixels + (y * ppr + x );
        /* Поскольку (Uint16 *)screen->pixels возвращает
           указатель на целое число, занимающее в памяти 2 байта,
           при вычислении смещения делим длину строки в байтах
           на 2 */
        *p = color;
    }
    break;
    case 3: // Медленный режим 24-bpp, обычно не применяется
    {
        Uint8 *p = (Uint8 *)surface->pixels +
            y*surface->pitch + x * 3;
        if(SDL_BYTEORDER == SDL_LIL_ENDIAN)
        { /* Учет возможного различия в порядке следования байт
             в машинном слове различных процессорных архитектур */
            p[0] = color;
            p[1] = color >> 8;
            p[2] = color >> 16;
        } else {
            p[2] = color;
            p[1] = color >> 8;
            p[0] = color >> 16;
        }
    }
    break;
    case 4: // Возможно 32-bpp...
    {
        // Раз у нас есть формула, учитывающая кол-во байтов на пиксель, зачем посредник в виде bufp?
        Uint32 *p = (Uint32 *)surface->pixels + (y * ppr + x );
        /* Поскольку (Uint32 *)screen->pixels возвращает
           указатель на целое число, занимающее в памяти 4 байта,
           при вычислении смещения делим длину строки в байтах
           на 4 */
        *p = color;
    }
    break;
    }
}


/* не вызывается без соответствующей команды с клавы "3" */
void move_box_right ( int &X, int &Y)
{

    show_box(X, Y, 0, 0, 0);

    X++;

    // отрисовываю с новыми координатами
    show_box(X, Y, 255, 255, 255);


}

void move_box_left ( int &X, int &Y)
{

    show_box(X, Y, 0, 0, 0);

    X--;

    // отрисовываю с новыми координатами
    show_box(X, Y, 255, 255, 255);

}

void move_box_down ( int &X, int &Y)
{

    show_box(X, Y, 0, 0, 0);

    //двигаем квадратик вниз
     Y++;

    show_box(X, Y, 255, 255, 255);

}

void move_box_up ( int &X, int &Y)
{

    show_box(X, Y, 0, 0, 0);
    //двигаем квадратик вверх

    Y--;
    // отрисовываю с новыми координатами

    show_box(X, Y, 255, 255, 255);
}


//заполняет массив пикселей

// флаг сообщающий об исчерпании структур в массиве
// чтобы не выводить "No more space" раз за разом
bool no_more_space = false;

/*
   Заполнение массива пикслей по одному за каждый вызов
   Использует глобальные переменные:
   - pixels
   - no_more_space
 */
/*
void PixelArray ()
{
    // printf("хочу залочить mutex в PixelArray\n");
    pthread_mutex_lock(&mutex);
    //printf("mutex в PixelArray залочен\n");
    //получаем координаты
    a = rand() % 500;
    b = rand() % 500;

    // Цикл, который перебирает массив. Если находит пустое место,
    // записывает структуру

    int i; // счетчик цикла
    for (i=0; i<=100; i++) {
        //printf("concrete_pixel.alive is %s\n",concrete_pixel.alive);
        //вытаскиваем структуру из массива
        concrete_pixel = pixels[i];
        //если alive = 0;
        if(concrete_pixel.alive == 0)
        {
            // заполняем структуру
            concrete_pixel.c = a;
            concrete_pixel.d = b;
            //printf("concrete_pixel.c is %d, concrete_pixel.d is %d\n",
            //concrete_pixel.c,
            // concrete_pixel.d);
            concrete_pixel.alive = 1;
            //printf("concrete_pixel.alive is %d\n",
            //       concrete_pixel.alive);
            //возвращаем структуру в массив
            pixels[i] = concrete_pixel;
            // выход
            break;
        }
    }
    /* Если после окончания цикла i равен максимальному значению
       переменной цикла - значит весь массив перебрали,
       но не нашли свободной структуры
    if (i == 100) {
        if (!no_more_space) {
            printf("::::::::::::::: No space found! \n");
            no_more_space = true;
        }
    }
    pthread_mutex_unlock(&mutex);
    // printf("mutex в PixelArray разлочен\n");
}
*/
/*
   Отрисовка квадратика
   surface должна быть заблокирована до вызова этой функции
   и разблокирована после.
   Использует глобальные переменные:
   - surface
   - pixel_box
 */
void show_box(int box_x, int box_y, int red, int green, int blue)
{
    //printf("In show_box  X is %d; Y is %d\n", X, Y);
    int cnt = 0;
    for ( int j = box_y; j<(box_y + pix_y); j++) {
        for ( int i = box_x; i<(box_x + pix_x); i++) {
            DrawPixel(surface, i, j, red, green, blue);
        }
    }
}

void show_enemy(int box_x, int box_y, int red, int green, int blue)
{
    //printf("In show_box  X is %d; Y is %d\n", X, Y);
    int cnt = 0;
    for ( int j = box_y; j<(box_y + pix_y_enemy); j++) {
        for ( int i = box_x; i<(box_x + pix_x_enemy); i++) {
            DrawPixel(surface, i, j, red, green, blue);
        }
    }
}

/*
   Отрисовка экрана
   Проходит по массиву пикселей и отрисовывает каждый из них
   Также отрисовывает квадратики врага, но делает это неправильно
   Использует глобальные переменные:
   - gWindow
   - surface
   - pixels
   - pixels_enemy

 */
void show_pixels(int red, int green, int blue)
{
    int p = 0;
    int i = 0;
    SDL_LockSurface(surface);
    for (i; i <= 99; i++) {
        if (pixels[i].alive == 1) {
            DrawPixel(surface, pixels[i].c,
                      pixels[i].d, red, green, blue);
        }
    }
    SDL_UnlockSurface(surface);
    SDL_UpdateWindowSurface( gWindow );
}

/*
  Почему нужны 4 почти одинаковых функции?
  -
  В каждой из них прописано сложное условие +
  каждая функция вызывается в зависимости от того,
  какая клавиша была нажата.
*/
void check_pixels_right()
{
    int i = 0;
    printf(" numpix right is %d\n",  numpix);
    for (i; i <= 100; i++) {
        concrete_pixel = pixels[i];

        //если пиксель уже найден и его координаты находятся
        // "внутри" координат квадратика, то мы считаем, что он
        //  "съеден"

        if(   concrete_pixel.c <= X + (pix_x - 1) &&
              concrete_pixel.c > X &&
              concrete_pixel.d <= Y + (pix_y - 1) &&
              concrete_pixel.d >= Y)
        {
            //увеличиваем счетчик съеденных пикселей
            numpix++;
            int result =  numpix % 3;
            if (result == 0) {
                //горизонталь и вертикаль квадратика становится
                // больше на 1

                pix_y++;
                pix_x++;

                //printf("in right pix_y is %d, pix_x is %d\n",
                //pix_y, pix_x);
            }

            // помечаем структуру съеденного пикселя как пустую
            concrete_pixel.alive = 0;
            //загружаем структуру в массив
            pixels[i] =  concrete_pixel;

        }
    }
}

/*
   Почему нужны 4 почти одинаковых функции?
 */
void check_pixels_left()
{
    int i = 0;
    printf(" numpix left is %d\n",  numpix);
    for (i; i <= 100; i++) {
        concrete_pixel = pixels[i];


        //если координаты находятся
        // "внутри" координат квадратика, то мы считаем, что он
        //  "съеден"

        if (    concrete_pixel.c > X &&
                concrete_pixel.c <= X + (pix_x - 1) &&
                concrete_pixel.d <= Y + (pix_y - 1) &&
                concrete_pixel.d >= Y)
        {
            /*
              printf("concrete_pixel.c is %d, X is %d,
              concrete_pixel.d is %d, Y is %d, \n",
              concrete_pixel.c, X, concrete_pixel.d, Y);

            */

            //увеличиваем счетчик съеденных пикселей
            numpix++;
            int result =  numpix % 3;
            if (result == 0) {

                //горизонталь и вертикаль квадратика становится
                // больше на 1

                pix_y++;
                pix_x++;

                //printf("in left pix_y is %d, pix_x is %d\n",
                //pix_y, pix_x);
            }
            // помечаем структуру съеденного пикселя как пустую
            concrete_pixel.alive = 0;
            //загружаем структуру в массив
            pixels[i] =  concrete_pixel;

        }
    }
}

/*
   Почему нужны 4 почти одинаковых функции?
 */
void check_pixels_down()
{
    int i = 0;
    printf(" numpix down is %d\n",  numpix);

    for (i; i <= 100; i++) {
        concrete_pixel = pixels[i];

        //если пиксель уже найден и его координаты находятся
        // "внутри" координат квадратика, то мы считаем, что он
        //  "съеден"
        if ( concrete_pixel.c <= X + (pix_x - 1) &&
             concrete_pixel.c > X &&
             concrete_pixel.d <= Y + (pix_y - 1) &&
             concrete_pixel.d >= Y )
        {
            /*
              printf("concrete_pixel.c is %d, X is %d,
              concrete_pixel.d is %d, Y is %d, \n",
              concrete_pixel.c, X, concrete_pixel.d, Y);

            */
            //увеличиваем счетчик съеденных пикселей
            numpix++;
            int result =  numpix % 3;
            if (result == 0) {
                //горизонталь и вертикаль квадратика становится
                // больше на 1

                pix_y++;
                pix_x++;
                //printf("in down pix_y is %d, pix_x is %d\n",
                //pix_y, pix_x);
            }
            // помечаем структуру съеденного пикселя как пустую
            concrete_pixel.alive = 0;
            //загружаем структуру в массив
            pixels[i] =  concrete_pixel;

        }
    }

}

/*
   Функция, которая проверяет, находится ли пиксель
   внутри координат квадратика, и если это так
   "сьедает" его, деактивируя пиксель и увеличивая
   счетчик сьеденных пикселей.
   Использует глобальные переменные:
   - pixels
   - numpix
 */
void check_pixels_up()
{
    int i = 0;
    printf(" numpix up is %d\n",  numpix);
    for (i; i <= 100; i++) {
        concrete_pixel = pixels[i];
        //если пиксель уже найден и его координаты находятся
        // "внутри" координат квадратика, то мы считаем, что он
        //  "съеден"
        if ( concrete_pixel.c <= X + (pix_x - 1) &&
             concrete_pixel.c > X &&
             concrete_pixel.d <= Y + (pix_y - 1) &&
             concrete_pixel.d >= Y)
        {
            /*
              printf("concrete_pixel.c is %d, X is %d,
              concrete_pixel.d is %d, Y is %d, \n",
              concrete_pixel.c, X, concrete_pixel.d, Y);

            */
            //увеличиваем счетчик съеденных пикселей
            numpix++;
            int result =  numpix % 3;
            if (result == 0) {
                //горизонталь и вертикаль квадратика становится
                // больше на 1

                pix_y++;
                pix_x++;
                // printf("in up pix_y is %d, pix_x is %d\n",
                //pix_y, pix_x);
            }

            // помечаем структуру съеденного пикселя как пустую
            concrete_pixel.alive = 0;
            //загружаем структуру в массив
            pixels[i] =  concrete_pixel;
        }
    }
}


/*
   Функция обработки нажатий клавиш
 */
void Handle_Keydown(SDL_Keysym* keysym)
{
    SDL_Event event;
    switch(keysym->sym)
    {
    case SDLK_1:
        printf("1 is pressed\n");
        paint_mode = 1;
        break;
    case SDLK_0:
        printf("0 is pressed\n");
        paint_mode = 0;
        break;
    case SDLK_2:
        printf("2 is pressed\n");
        show_box( X,Y, 255, 255, 255);
        // getpixel(surface, X, Y);
        break;
    case SDLK_3:
        printf("3 is pressed\n");
        //значение в doubles равно значению ИЗ GRB
        if (X != SCREEN_WIDTH - pix_x) {
            //check_pixels_right();
            move_box_right(X,Y);
        }
        // check_pixels(X, Y);
        break;
    case SDLK_4:
        printf("4 is pressed\n");
        //значение в doubles равно значению ИЗ GRB
        if (X != 0) {
            //check_pixels_left();
            move_box_left(X,Y);
        }
        break;
    case SDLK_5:
        printf("5 is pressed\n");
        //значение в doubles равно значению ИЗ GRB
        if (Y != SCREEN_HEIGHT - pix_y) {
            //check_pixels_down();
            move_box_down(X,Y);
        }
        break;
    case SDLK_6:
        printf("6 is pressed\n");
        //значение в doubles равно значению ИЗ GRB
        if (Y != 0) {
            //      check_pixels_up();
            move_box_up(X,Y);
        }
        break;
    case SDLK_r:
        printf("R is pressed\n");
        // R = 255;
        // G = 0;
        // B = 0;
        break;
    case SDLK_b:
        printf("B is pressed\n");
        // R = 0;
        // G = 0;
        // B = 255;
        break;
    case SDLK_w:
        printf("W is pressed\n");
        // R = 255;
        // G = 255;
        // B = 255;
        break;
    default:
        printf("Can't find this key\n");
        break;
    }
}


void print_buffer(void *buf, int len)
{
    printf("[ ");
    for(int i=0; i<len; i++) {
        printf("%02hhX ", *(char* )(buf+i));
    }
    printf("]\n");
}

/*
   Функция потока отрисовки
   В бесконечном цикле он отрисовывает пиксели на экране,
   вызывая show_pixels()
 */
void* threadFunc(void* thread_data)
{
    while (true) {
        // printf(".");
        fflush(stdout);
        show_pixels(0, 0, 255);
        usleep(10000); // sleep for 0.01 sec
        //sleep(5);
    }
}

/*
   Функция потока, который создается в udp_init()
   В бесконечном цикле он сериализует/десериализует
   данные и отправляет/принимает пакеты
   Использует глобальные переменные:
   - counter_for_while
 */
int counter_for_while = 1;
void* udp_socket(void* pointer)
{
    while (true) {

        usleep(10000); // sleep for 0.01 sec
        //sleep(1);
        //printf("::udp_socket():: after sleep\n");

        /* сериализуем данные*/
        //printf("::udp_socket():: before serialization\n");
        void *buffer = serialization();

        socklen_t len = sizeof(servaddr);

        ssize_t sended =
            sendto(sockfd, buffer, 1212, MSG_CONFIRM,
                   (const struct sockaddr *) &servaddr,
                   sizeof(servaddr));
        if(-1 == sended) {
            printf("::udp_socket():: Error: Send datagramm\n");
            exit(EXIT_FAILURE);
        }
        // printf("::udp_socket():: пакет был отправлен %d bytes\n", (int)sended);
        /* получаем данные */
        ssize_t received =
            recvfrom(sockfd, buffer, 1212, MSG_WAITALL,
                     (struct sockaddr *) &servaddr,
                     (socklen_t *)&len);

        /* если пакеты получены */

        if(received != -1) {
            /*копируем старые данные врага*/
            int check_X = X_enemy;
            int check_Y = Y_enemy;
            /*десериализуем новые*/
            deserialization(buffer);
            /*проверяем, не изменились ли координаты*/
            if ( check_X != X_enemy || check_Y != Y_enemy) {
                /*если координаты изменились,
                  то отрисовываем старые координаты фоном*/
                show_enemy(check_X, check_Y, 0, 0, 0);
            }
            /*затем отрисовываем */
            show_enemy(X_enemy, Y_enemy, 255, 0, 255);
        }

// printf("::udp_socket():: цикл сериализовать-отправить-принять-десериализовать выполнен %d раз\n", counter_for_while);
        counter_for_while++;
    }
}


/*
   Инициализация сокета и создание потока udp_socket
   Использует глобальные переменные:
   - sockfd
   - servaddr
   Возвращает идентификатор созданного потока
 */
pthread_t udp_init()
{
    // Создаем сокет.
    // Должны в случае успеха получить его дескриптор
    // в глобальную переменную sockfd
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }
    // Переводим сокет в неблокирующий режим
    fcntl(sockfd, F_SETFL, O_NONBLOCK);
    // заполняем данные о сервере
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(8080);
    servaddr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

    // создаем новый поток
    pthread_t udp_thread;
    // Как тебе такой указатель, Илон Маск?
    void *(*thread_func)(void *) = udp_socket;
    // Ошибки надо обрабатывать
    if( 0 != pthread_create(&udp_thread, NULL, thread_func, NULL) ) {
        perror("thread_create failed");
        exit(EXIT_FAILURE);
    }
    return udp_thread;
}


/*
   Сериализует рандомный идентификатор, квадратик и pixels_box в
   буфер, который выделяет.
   Возвращает указатель на выделеный буфер
   Использует глобальные переменные: - udp_buffer
 */
void* serialization()
{
    /*выделяем память под буфер*/
    void * udp_buffer = malloc((sizeof(int) * 5) + sizeof(pixels));
    printf(" Size is %d\n", sizeof(int) * 5 + sizeof(pixels));
    /* сохраняем неизмененный указатель на буфер */
    void *pnt = udp_buffer;
    // printf("::serialization():: buffer in beginning serial is  0x%X\n", udp_buffer);

    /* сериализуем идентификатор квадратика */
    memcpy(udp_buffer, &identificator, sizeof(int));
    udp_buffer += sizeof(identificator);
    //printf("::serialization():: buffer after serial ident is  0x%X\n", udp_buffer);

    /*сериализуем координаты квадратика и его размер*/
    memcpy(udp_buffer, &X, sizeof(X));
    udp_buffer += sizeof(X);
    memcpy(udp_buffer, &Y, sizeof(Y));
    udp_buffer += sizeof(Y);

    memcpy(udp_buffer, &pix_y, sizeof(pix_y));
    udp_buffer += sizeof(pix_y);
    memcpy(udp_buffer, &pix_x, sizeof(pix_x));
    udp_buffer += sizeof(pix_x);

    //printf("::serialization():: buffer after serial pixels_box is  0x%X\n", udp_buffer);

    /* сериализуем pixels вручную

    void *p = udp_buffer;

    for (int i = 0; i <=99; i++) {

        *(char*)udp_buffer = pixels[i].alive;
        udp_buffer += sizeof(char);
        *(int*)udp_buffer = pixels[i].c;
        udp_buffer += sizeof(int);
        *(int*)udp_buffer = pixels[i].d;
        udp_buffer += sizeof(int);
    }
    /*
    //  printf("::serialization():: buffer after serial pixels is  0x%X\n", udp_buffer);

    /*возвращаем указатель на буфер*/
    return pnt;
}

void deserialization (void * input)
{
    //  printf("::deserialization():: mutex is %d\n", mutex);

    void * buffer = input;
    /*сохраняем неизмененный указатель*/
    void * pnt = input;
    //printf("::deserialization():: pointer-buffer in beginning of deserial is %X\n", buffer);
    int i = 0;
    /*пропускаем идентификатор, он нам не нужен*/
    int ident = *(int *)buffer;
    // printf("ident is %d\n", ident);
    buffer += sizeof(int);
    //printf("::deserialization():: buffer after  deserial ident is %X\n", buffer);

    /*десериализуем данные врага*/
    /* закрываем мьютекс здесь,
       т.к. это критическая секция кода*/
    pthread_mutex_lock(&mutex);
    X_enemy = *(int *)buffer;
    buffer += sizeof(int);
    Y_enemy  = *(int *)buffer;
    buffer += sizeof(int);

    pix_y_enemy = *(int *)buffer;
    buffer += sizeof(int);
    pix_x_enemy = *(int *)buffer;
    buffer += sizeof(int);
    //printf("X_enemy %d Y_enemy %d\n", X_enemy, Y_enemy);
    int j = 0;
    /* десериализуем пиксели */

    while (j <=99) {
        //printf("..........\n");
        pixels[j].alive = *(char *)buffer;
        buffer += sizeof(char);
        //printf("buffer in %d iteration is %X\n", j, buffer);
        pixels[j].c = *(int *)buffer;
        buffer += sizeof(int);
        //printf("buffer in %d iteration is %X\n", j, buffer);
        pixels[j].d = *(int *)buffer;
        buffer += sizeof(int);
        //printf("buffer in %d iteration is %X\n", j, buffer);
        j++;
    }

    /* откываем мьютекс после выхода из цикла*/
    pthread_mutex_unlock(&mutex);

    /* освобождаем место в памяти */
    free(pnt);

}


int main( int argc, char* args[] )
{
    srand(time(NULL));
    // включаем SDL
    if( !init() ) {
        // печатаем сообщение об ошибке, если инициализация не удалась
        printf( "Failed to initialize SDL!\n" );
    }
    // создаем окно
    if( !create() ) {
        // печатаем сообщение об ошибке, если инициализация не удалась
        printf( "Failed to initialize window!\n" );
    }
    //coздаем поверхность
    if( !surface_create() ) {
        // печатаем сообщение об ошибке, если инициализация не удалась
        printf( "Failed to initialize surface!\n" );
    }

    mutex = PTHREAD_MUTEX_INITIALIZER;

    /* вызываем квадратик */
    SDL_LockSurface(surface);

    /*так квадратик каждый раз будет появляться в разном месте*/
    srand(time(NULL));
    X = rand() % 500;

    show_box(X, Y, 255, 255, 255);
    SDL_UnlockSurface(surface);
    SDL_UpdateWindowSurface(gWindow);

    /*делаем пиксели белыми и вызываем их отрисовку*/
    show_pixels(255, 255, 255);

    /* создаем идентификатор */
    srand(time(NULL));
    identificator = rand() % 500;

    //создаем сокет
    udp_init();
    printf("инициализация udp прошла успешно\n");

    //создаем поток отрисовки
    pthread_t thread;
    // создаем поток с помощью pthread_create
    // в качестве параметров: ссылка на идентификатор, значение
    // нетипизированного указателя, название создаваемого потока и
    // данные
    if( 0 != pthread_create(&thread, NULL, threadFunc, NULL) ) {
        perror("thread create failed in main()");
        exit(EXIT_FAILURE);
    };

    // цикл, обрабатывающий события, пока не встретим событие "выход"
    while (256 != event.type) {
        SDL_WaitEventTimeout(& event, 100);
        switch (event.type) {
        case SDL_MOUSEMOTION:
            break;
        case SDL_KEYDOWN:
            Handle_Keydown(&event.key.keysym);
            break;
        case SDL_WINDOWEVENT:
            break;
        default:
            break;
        }
        //PixelArray();

    }

    printf("Event queue empty.\n");
    printf("Exit.\n");
    return 0;
}
