#include<SDL2/SDL.h>
#include<stdio.h>

SDL_Surface* Surface = NULL;
SDL_Window*  Window = NULL;

bool init     ();
bool window   ();
bool surface  ();
Uint32 getpix ( SDL_Surface *surface, int x, int y );
void setpix   ( SDL_Surface *screen, int x, int y, Uint8 R, Uint8 G, Uint8 B );
int main      ( int argc, char* args[] );

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;


bool init()
{
    bool success = true;

    if ( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
        printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
    }

    return success;
}


bool window ()
{
    bool  success = true;

    Window = SDL_CreateWindow( "SDL Tutorial",
                               SDL_WINDOWPOS_UNDEFINED,
                               SDL_WINDOWPOS_UNDEFINED,
                               SCREEN_WIDTH,
                               SCREEN_HEIGHT,
                               SDL_WINDOW_SHOWN );
    if ( Window == NULL ) {
        printf ( "Didn't create window! SDL_Error: %s\n", SDL_GetError() );
    }

    return success;
}


bool surface ()
{
    bool success = true;

    Surface = SDL_GetWindowSurface( Window );

    if ( Surface == NULL ) {
        printf ("Didn't create surface! SDL_Error: %s\n", SDL_GetError());
    }

    return success;
}


Uint32 getpix( SDL_Surface *surface, int x, int y) {

    SDL_LockSurface(Surface);

    int bpp =  Surface->format->BytesPerPixel;

    Uint32 ppr = Surface->pitch/bpp;
    Uint8 *p = (Uint8 *)Surface->pixels + (y * ppr + x )* bpp;

    Uint32 retval = 0;

    switch(bpp) {
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
    SDL_UnlockSurface(Surface);

    return retval;
}

void setpix(SDL_Surface *screen, int x, int y,
            Uint8 R, Uint8 G, Uint8 B)
{
    Uint32 color = SDL_MapRGB(screen->format, R, G, B);

    int    bpp   = Surface->format->BytesPerPixel;
    Uint32 ppr   = Surface->pitch/bpp;

    Uint8 *bufp  = (Uint8 *)Surface->pixels + (y*ppr + x) * bpp;

    switch (bpp)
    {
    case 1: // Используем 8-bpp (бит на пиксель)
        *(Uint8 *)bufp = color;
        break;
    case 2: // Возможно 15-bpp или 16-bpp
        *(Uint16 *)bufp = color;
        break;
    case 3: // Медленный режим 24-bpp, обычно не применяется
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
        break;
    case 4:
        *(Uint32 *)bufp = color;
        break;
    }
}

int main( int argc, char* args[] )
{
    if( !init() ) {
        printf( "Failed to initialize!\n" );
    }

    else if ( !window() ) {
        printf ("Failed to create window!\n" );
    } else if ( !surface() ) {
        printf ("Failed to create surface!\n" );
    }

    getpix (Surface, 20, 150);

    setpix (Surface, 100, 150, 255, 0, 0);

    printf("= 0x%X\n", getpix (Surface, 100, 150));

    SDL_UpdateWindowSurface( Window );

    SDL_Delay( 5000 );
}
