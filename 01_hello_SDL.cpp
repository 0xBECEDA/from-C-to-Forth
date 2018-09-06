#include<SDL2/SDL.h>
#include <stdio.h>

// включить SDL и сделать окно
bool init();
bool create();
bool surface_create ();
void paint (SDL_Event* event);
void Handle_Keydown(SDL_Keysym* keysym);
//окно, которое мы показываем
SDL_Window* gWindow = NULL;
SDL_Surface* surface = NULL;
SDL_Event event;
SDL_Keysym keysym;
int SCREEN_WIDTH = 480;
int SCREEN_HEIGHT = 520;
//int paint_mode;
int paint_mode = 0;
bool init()
{

    //инициализация флага (?) что это такое?
    bool success = true;
    //инициализация SDL

    // если SDL_Init c SDL_INIT VIDEO в качестве параметра меньше нуля,
    if( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
        printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
    }

    return success;
}

bool create() {

    bool success = true;
  gWindow = SDL_CreateWindow( "SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
  return success;
}


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


// находим пиксель
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
        return *p;
        break;

    case 2:
        return *(Uint16 *)p;
        break;

    case 3:
        if(SDL_BYTEORDER == SDL_BIG_ENDIAN)
            return p[0] << 16 | p[1] << 8 | p[2];
        else
            return p[0] | p[1] << 8 | p[2] << 16;
        break;

    case 4:
        return *(Uint32 *)p;
        break;

    default:
        return 0;       /* shouldn't happen, but avoids warnings */
    }
    // разблокируем поверхность
    SDL_UnlockSurface(surface);
}

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

void paint(SDL_Event* event)
{
    int x;
    int y;
    x = event->motion.x;
    y = event->motion.y;

    getpixel (surface, x, y);
    DrawPixel(surface, x, y, 255, 255, 255);
    SDL_UpdateWindowSurface( gWindow );
}

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
    case SDLK_RIGHT:
        printf("RIGHT is pressed\n");
        break;

    default:
        printf("Can't find this key\n");
        break;
    }
}
int main( int argc, char* args[] )
{
    //включаем SDL
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
    /* PrintAllEvents(); */
    // цикл, обрабатывающий события, пока не встретим событие "выход"
    PrintAllEvents();

    while (256 != event.type) {
        //SDL_WaitEvent меньше нагружает комп
        SDL_WaitEvent(& event);
        // paint (& event);
        switch (event.type) {
        case SDL_MOUSEMOTION:
            //printf("We got a motion event.\n");
            printf("Current mouse position is: (%d, %d)\n", event.motion.x, event.motion.y);
            if  (paint_mode == 1) {
            paint (& event);
            }
            break;
        case SDL_KEYDOWN:
            Handle_Keydown(&event.key.keysym);
            break;
       case SDL_WINDOWEVENT:
            break;
        default:
            /* PrintEvent(&event); */
            printf("Unhandled Event type is: ( %d) !\n", event.type);
            printf ("default case!");
            break;
        }
    }

    printf("Event queue empty.\n");
    printf("Exit.\n");
    return 0;
 }
