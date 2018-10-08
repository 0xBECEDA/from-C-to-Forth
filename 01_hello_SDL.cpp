#include<SDL2/SDL.h>
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <linux/unistd.h>
#include <pthread.h>
#include <signal.h>
#include <errno.h>

//#define size_x 10
//#define sizy_y 10

// включить SDL и сделать окно
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
void show_box (int box_x, int box_y, int red, int green, int blue);
void show_pixels();

//окно, которое мы показываем
SDL_Window* gWindow = NULL;
SDL_Surface* surface = NULL;
SDL_Event event;
SDL_Keysym keysym;
int SCREEN_WIDTH = 480;
int SCREEN_HEIGHT = 520;

//переменная отвечает за режим рисования
int paint_mode = 0;

// цвета
int R = 0;
int G = 0;
int B = 0;
int numpix = 0;
int RGBcolor = 0;
//координаты
int pix_y = 10;
int pix_x = 10;
//int l = 0;
//координаты для show_pixels и структур пикселей
int a = 0;
int b = 0;
//координаты, для функций с вадратом
int X = 0;
int Y = 0;

//объявление структуры и массива структуры для пикселей

struct pixel
{
    //  bool found = false;
    bool alive = false;
    int c;
    int d;
} pixels[100];
struct pixel concrete_pixel;

// струкутра для запоминания съеденных в будущем пикселей
struct pixel rem_pixel;

struct box
{
    int c;
    int d;
} pixels_box[100];

//структура для квадратика
struct box main_character;

//отражает кол-во найденных рандомно закрашенных пикселей
int ColorPixel = 0;

/* */
bool init()
{
    // инициализация флага (?) что это такое?
    bool success = true;
    // инициализация SDL

    // если SDL_Init c SDL_INIT VIDEO в качестве параметра меньше нуля,
    if( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
        printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
    }

    return success;
}


/* */
bool create() {

    bool success = true;
    gWindow = SDL_CreateWindow( "SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
    return success;
}

/* */
bool surface_create ()
{
    bool  success = true;
// создание поверхности окна
    surface = SDL_GetWindowSurface( gWindow );

    if ( surface == NULL ) {
        printf ("Didn't create surface! SDL_Error: %s\n", SDL_GetError());
    }
    return success;
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


/* находим пиксель */
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


/* */
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

void PixelArray () {
    //получаем координаты
    // printf("a is %d, b is %d\n", a, b);
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
        if(concrete_pixel.alive == false)
        {
            // заполняем структуру
            concrete_pixel.c = a;
            concrete_pixel.d = b;
            //printf("concrete_pixel.c is %d, concrete_pixel.d is %d\n",
            //concrete_pixel.c,
            // concrete_pixel.d);
            concrete_pixel.alive = true;
            //printf("concrete_pixel.alive is %d\n",
            //       concrete_pixel.alive);
            //возвращаем структуру в массив
            pixels[i] = concrete_pixel;
            // выход
            break;
        }
    }
    // Если после окончания цикла i равен максимальному значению
    // переменной цикла - значит весь массив перебрали, но не нашли
    // свободной структуры
    if (i == 100) {
        if (!no_more_space) {
            printf("::::::::::::::: No space found! \n");
            no_more_space = true;
        }
    }
}


void show_box(int box_x, int box_y, int red, int green, int blue)
{
    // printf ("-------------------------begin\n");
    //  printf("In show_box  X is %d; Y is %d\n", X, Y);
    for (int j = box_y; j<(Y + pix_y); j++) {
        for (int i = box_x; i<(X + pix_x); i++) {
            DrawPixel(surface, i, j, red, green, blue);
        }
    }
//    printf ("-------------------------end\n");
}

void show_pixels()
{
    int p = 0;
    int i = 0;
    SDL_LockSurface(surface);
    for (i; i <= 100; i++) {
        concrete_pixel = pixels[i];
        if (concrete_pixel.alive == true) {
            DrawPixel(surface, concrete_pixel.c,
                      concrete_pixel.d, R, G, B);
        }
    }
    SDL_UnlockSurface(surface);
    SDL_UpdateWindowSurface( gWindow );
}

//void time () {

/*
  time_t T = 0; // unixtime in 32-bits
  time(&T); // T != 0

  struct tm TM;
  struct tm *TM_pnt;

  TM_pnt = localtime(&T); // return pounter
  TM = *TM_pnt;

  или эквивалентно

  TM = *localtime(&T);
*/

//}
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
            concrete_pixel.alive = false;
            //загружаем структуру в массив
            pixels[i] =  concrete_pixel;

        }
    }
}

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
            concrete_pixel.alive = false;
            //загружаем структуру в массив
            pixels[i] =  concrete_pixel;

        }
    }
}

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
            concrete_pixel.alive = false;
            //загружаем структуру в массив
            pixels[i] =  concrete_pixel;

        }
    }

}
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
            concrete_pixel.alive = false;
            //загружаем структуру в массив
            pixels[i] =  concrete_pixel;

        }
    }
}

/*
void paint(SDL_Event* event)
{
    X = event->motion.x;
    Y = event->motion.y;

    getpixel (surface, X, Y);
    DrawPixel(surface, X, Y, R, G, B);
    SDL_UpdateWindowSurface( gWindow );
}
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
            check_pixels_right();
            move_box_right(X,Y);
        }
        // check_pixels(X, Y);
        break;
    case SDLK_4:
        printf("4 is pressed\n");
        //значение в doubles равно значению ИЗ GRB
        if (X != 0) {
            check_pixels_left();
            move_box_left(X,Y);
        }
        break;
    case SDLK_5:
        printf("5 is pressed\n");
        //значение в doubles равно значению ИЗ GRB
        if (Y != SCREEN_HEIGHT - pix_y) {
            check_pixels_down();
            move_box_down(X,Y);
        }
        break;
    case SDLK_6:
        printf("6 is pressed\n");
        //значение в doubles равно значению ИЗ GRB
        if (Y != 0) {
            check_pixels_up();
            move_box_up(X,Y);
        }
        break;
    case SDLK_r:
        printf("R is pressed\n");
        R = 255;
        G = 0;
        B = 0;
        break;
    case SDLK_b:
        printf("B is pressed\n");
        R = 0;
        G = 0;
        B = 255;
        break;
    case SDLK_w:
        printf("W is pressed\n");
        R = 255;
        G = 255;
        B = 255;
    default:
        printf("Can't find this key\n");
        break;
    }
}


// функция потока, в качестве параметра - нетипизированный указатель
void* threadFunc(void* thread_data)
{
    while (true) {
        // printf(".");
        fflush(stdout);
        show_pixels();
        usleep(10000); // sleep for 0.01 sec
    }
}


// void sigHandler( int signum )
// {
//     printf(":: caught signal %d\n", signum );
//     fflush(stdout);
//     show_pixels();
// }

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

    // нетипизированный указатель = NULL
    void* thread_data = NULL;

    //создаем идентификатор потока
    pthread_t thread;

    // создаем поток с помощью pthread_create
    // в качестве параметров: ссыка на идентификатор, значение
    // нетипизированного указателя, название создаваемого потока и
    // данные

    pthread_create(&thread, NULL, threadFunc, thread_data);

    //перевод потока в отсоединенное состояние (?)
    //pthread_detach(thread);

    // pthread_join(thread, NULL);
    // PrintAllEvents();

    // signal( SIGUSR2, sigHandler );

    // цикл, обрабатывающий события, пока не встретим событие "выход"
    while (256 != event.type) {
        SDL_WaitEventTimeout(& event, 100);
        // printf("%d\n", event.type);
        //fflush(stdout);

        // paint (& event);
        switch (event.type) {
        case SDL_MOUSEMOTION:
            // printf("We got a motion event.\n");

            // if  (paint_mode == 1) {
                // paint (& event);
            // }
            break;
        case SDL_KEYDOWN:
            Handle_Keydown(&event.key.keysym);
            break;
        case SDL_WINDOWEVENT:
            break;
        default:

            break;
        }
        PixelArray();

        // raise(12);
    }

    printf("Event queue empty.\n");
    printf("Exit.\n");
    return 0;
}
