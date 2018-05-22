/* g++ sdltest.c `pkg-config --cflags --libs sdl2` -o sdltest   */
/* https://github.com/mahiuchun/Snake-SDL */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <SDL2/SDL.h>

#include <stdbool.h>

#include "sdlwrap.h"
#include "asm.h"

/* глобальные переменные */
SDL_Surface* gScreenSurface = NULL;
SDL_Window* gWindow = NULL;

SDL_Texture*  fruit_texture = NULL;
SDL_Texture*  shead_texture = NULL;
SDL_Texture*  snake_texture = NULL;
SDL_Texture*  field_texture = NULL;

/* объявления функций */
bool init_sdl ();
bool window ();
bool surface ();
Uint32 getpixel ( SDL_Surface *surface, int x, int y );
void DrawPixel ( SDL_Surface *screen, int x, int y, Uint8 R, Uint8 G, Uint8 B );
void cppsdl ();
int main ( int argc, char* args[] );

/* инициализация SDL */
bool init_sdl ()
{
    bool success = true;

    if ( SDL_Init ( SDL_INIT_VIDEO ) < 0 ) {
        printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
    }

    return success;
}


/* создание окна */
bool window ()
{
    bool  success = true;

    gWindow = SDL_CreateWindow( "SDL Tutorial",
                                SDL_WINDOWPOS_UNDEFINED,
                                SDL_WINDOWPOS_UNDEFINED,
                                640, // SCREEN_WIDTH
                                480, // SCREEN_HEIGHT
                                SDL_WINDOW_SHOWN );
    if ( gWindow == NULL ) {
        printf ( "Didn't create window! SDL_Error: %s\n", SDL_GetError() );
    }

    return success;
}


/* создание поверхности окна */
bool surface ()
{
    bool success = true;

    gScreenSurface = SDL_GetWindowSurface( gWindow );

    if ( gScreenSurface == NULL ) {
        printf ("Didn't create surface! SDL_Error: %s\n", SDL_GetError());
    }

    return success;
}


/* получение пикселя */
Uint32 getpixel ( SDL_Surface *surface, int x, int y )
{
    SDL_LockSurface(gScreenSurface);

    int bpp =  gScreenSurface->format->BytesPerPixel;

    /* Here p is the address to the pixel we want to retrieve */
    Uint8 *p =
        (Uint8 *)gScreenSurface->pixels + y *  gScreenSurface->pitch + x * bpp;

    Uint32 retval = 0;

    switch ( bpp ) {
    case 1:
        retval = *p;
        break;

    case 2:
        retval = *(Uint16 *)p;
        break;

    case 3:
        if ( SDL_BYTEORDER == SDL_BIG_ENDIAN )
            retval = p[0] << 16 | p[1] << 8 | p[2];
        else
            retval = p[0] | p[1] << 8 | p[2] << 16;
        break;

    case 4:
        retval = *(Uint32 *)p;
        break;

    default:
        retval = 0;       /* shouldn't happen, but avoids warnings */
    }

    SDL_UnlockSurface( gScreenSurface );
    return retval;
}



/* запись пикселя */
void DrawPixel ( SDL_Surface *screen, int x, int y, Uint8 R, Uint8 G, Uint8 B )
{
    Uint32 color = SDL_MapRGB( screen->format, R, G, B );

    switch ( screen->format->BytesPerPixel )
    {
    case 1: /* Используем 8-bpp (бит на пиксель) */
    {
        Uint8 *bufp = (Uint8 *)screen->pixels + y*screen->pitch + x;
        /* pixels – указатель на начало области данных,
           описывающей состояние пикселей поверхности screen */
        /* pitch – количество байт, занимаемых данными
           о пикселях одной строки */
        *bufp = color;
    }
    break;

    case 2: /* Возможно 15-bpp или 16-bpp */
    {
        Uint16 *bufp = (Uint16 *)screen->pixels + y*screen->pitch/2 + x;
        /* Поскольку (Uint16 *)screen->pixels возвращает
           указатель на целое число, занимающее в памяти 2 байта,
           при вычислении смещения делим длину строки в байтах
           на 2 */
        *bufp = color;
    }
    break;

    case 3: /* Медленный режим 24-bpp, обычно не применяется */
    {
        Uint8 *bufp = (Uint8 *)screen->pixels + y*screen->pitch + x * 3;
        if ( SDL_BYTEORDER == SDL_LIL_ENDIAN ) {
            /* Учет возможного различия в порядке следования байт
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

    case 4: /* Возможно 32-bpp... */
    {
        Uint32 *bufp = (Uint32 *)screen->pixels + y*screen->pitch/4 + x;
        /* Поскольку (Uint32 *)screen->pixels возвращает
           указатель на целое число, занимающее в памяти 4 байта,
           при вычислении смещения делим длину строки в байтах
           на 4 */
        *bufp = color;
    }
    break;
    }
}


void cppsdl () {
    if ( false == init_sdl() ) {
        printf( "Failed to initialize!\n" );
    } else if ( !window() ) {
        printf ("Failed to create window!\n" );
    } else if ( !surface() ) {
        printf ("Failed to create surface!\n" );
    }

    getpixel ( gScreenSurface, 20, 150 );

    DrawPixel( gScreenSurface, 100, 150,
               255, 0, 0 );

    SDL_UpdateWindowSurface ( gWindow );

    SDL_Delay ( 5000 );

    SDL_Quit();
}


int main ( int argc, char* args[] )
{
    /*
    __asm("call forth_asm_start");
    */

    cppsdl();

    /* gameover_flag = 0; */
    /* int delay = 16; */
    /* init(); */
    /* render(); */
    /* for (;;) { */
    /*     input(); */
    /*     __asm("call forth_asm_start"); */
    /*     __asm("call update2"); */
    /*     /\* update(); *\/ */
    /*     if (gameover_flag) { */
    /*         gameover(); */
    /*     } */
    /*     __asm("call render"); */
    /*     /\* render(); *\/ */
    /*     SDL_Delay(delay * 10); */
    /* } */
    return 0;
}
