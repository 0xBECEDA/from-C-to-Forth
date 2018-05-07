#include<SDL2/SDL.h>
#include <stdio.h>



SDL_Surface* gScreenSurface = NULL;

SDL_Window* gWindow = NULL;

bool init();
bool window ();
bool surface ();
//параметры окна
const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

bool init()
{

    bool success = true;
    //инициализация SDL

    if( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
        printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
    }

    return success;
}

bool window ()
{
    bool  success = true;
// создание окна
    gWindow = SDL_CreateWindow( "SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
    if ( gWindow == NULL) {
        printf ( "Didn't create window! SDL_Error: %s\n", SDL_GetError() );
       }
    return success;
}

bool surface ()
{
    bool  success = true;
// создание поверхности окна
    gScreenSurface = SDL_GetWindowSurface( gWindow );

    if ( gScreenSurface == NULL ) {
        printf ("Didn't create surface! SDL_Error: %s\n", SDL_GetError());
    }
    return success;
}

Uint32 getpixel( SDL_Surface *surface, int x, int y) {

    SDL_LockSurface(gScreenSurface);

    int bpp =  gScreenSurface->format->BytesPerPixel;
    /* Here p is the address to the pixel we want to retrieve */
    Uint8 *p = (Uint8 *)gScreenSurface->pixels + y *  gScreenSurface->pitch + x * bpp;

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
    SDL_UnlockSurface(gScreenSurface);
}

void DrawPixel(SDL_Surface *screen, int x, int y,
               Uint8 R, Uint8 G, Uint8 B)
{
    Uint32 color = SDL_MapRGB(screen->format, R, G, B);
    switch (screen->format->BytesPerPixel)
    {
    case 1: // Используем 8-bpp (бит на пиксель)
    {
        Uint8 *bufp = (Uint8 *)screen->pixels +
            /* pixels – указатель на начало области данных,
               описывающей состояние пикселей поверхности screen */
            y*screen->pitch + x;
        /* pitch – количество байт, занимаемых данными
           о пикселях одной строки */      *bufp = color;
    }
    break;
    case 2: // Возможно 15-bpp или 16-bpp
    {
        Uint16 *bufp = (Uint16 *)screen->pixels +
            y*screen->pitch/2 + x;
        /* Поскольку (Uint16 *)screen->pixels возвращает
           указатель на целое число, занимающее в памяти 2 байта,
           при вычислении смещения делим длину строки в байтах
           на 2 */
        *bufp = color;
    }
    break;
    case 3: // Медленный режим 24-bpp, обычно не применяется
    {
        Uint8 *bufp = (Uint8 *)screen->pixels +
            y*screen->pitch + x * 3;
        if(SDL_BYTEORDER == SDL_LIL_ENDIAN)
        { /* Учет возможного различия в порядке следования байт
             в машинном слове различных процессорных архитектур */
            bufp[0] = color;
            bufp[1] = color >> 8;
            bufp[2] = color >> 16;
        } else {
            bufp[2] = color;
            bufp[1] = color >> 8;
            bufp[0] = color >> 16;
        }
    }
    break;
    case 4: // Возможно 32-bpp...
    {
        Uint32 *bufp = (Uint32 *)screen->pixels +
            y*screen->pitch/4 + x;
        /* Поскольку (Uint32 *)screen->pixels возвращает
           указатель на целое число, занимающее в памяти 4 байта,
           при вычислении смещения делим длину строки в байтах
           на 4 */
        *bufp = color;
    }
    break;
    }
}

int main( int argc, char* args[] )
{
    if ( !init() ) {
        printf( "Failed to initialize!\n" );
    } else if ( !window() ) {
        printf ("Failed to create window!\n" );
    } else if ( !surface() ) {
        printf ("Failed to create surface!\n" );
    }

    getpixel (gScreenSurface, 20, 150);

    DrawPixel(gScreenSurface, 100, 150,
                 255, 0, 0);

    SDL_UpdateWindowSurface( gWindow );

    SDL_Delay( 5000 );

    SDL_Quit();
}
