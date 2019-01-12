#include <SDL2/SDL.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <signal.h>
#include <stdbool.h>
#include <time.h>
#include <unistd.h>
#include <linux/unistd.h>
#include <pthread.h>
#include <errno.h>
#include <fcntl.h>
#include <netinet/in.h>


SDL_Window* gWindow = NULL;
SDL_Surface* surface = NULL;
SDL_Event event;
SDL_Keysym keysym;
int SCREEN_WIDTH = 480;
int SCREEN_HEIGHT = 520;

bool init();
bool create();
bool surface_create();



void move_box( int &X, int &Y, int event);


int X = 0;
int Y = 0;

int pix_y = 10;
int pix_x = 10;




bool init()
{
if( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
        printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
        return false;
    }
    return true;
}

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

bool surface_create ()
{
    if ( !(surface = SDL_GetWindowSurface(gWindow)) ) {
        printf ("Didn't create surface! SDL_Error: %s\n", SDL_GetError());
        return false;
    }
    return true;
}



void DrawPixel(SDL_Surface *screen, int x, int y,
               Uint8 R, Uint8 G, Uint8 B)
{
    Uint32 color = SDL_MapRGB(surface->format, R, G, B);
    int bpp =  surface->format->BytesPerPixel;
    Uint32 ppr = surface->pitch/bpp;

    switch (bpp)
    {
    case 1:
    {

        Uint8 *p = (Uint8 *)surface->pixels + (y * ppr + x )* bpp;
        *p = color;
    }
    break;
    case 2:
    {
        Uint16 *p = (Uint16 *)surface->pixels + (y * ppr + x );
        *p = color;
    }
    break;
    case 3:
    {
        Uint8 *p = (Uint8 *)surface->pixels +
            y*surface->pitch + x * 3;
        if(SDL_BYTEORDER == SDL_LIL_ENDIAN)
        {
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
    case 4:
    {
        Uint32 *p = (Uint32 *)surface->pixels + (y * ppr + x );
               *p = color;
    }
    break;
    }
}



void show_box(int box_x, int box_y, int red, int green, int blue)
{

    SDL_LockSurface(surface);

    int cnt = 0;
    for ( int j = box_y; j<(box_y + pix_y); j++) {
        for ( int i = box_x; i<(box_x + pix_x); i++) {
            DrawPixel(surface, i, j, red, green, blue);
        }
    }

    SDL_UnlockSurface(surface);
    SDL_UpdateWindowSurface(gWindow);
}



void move_box( int &X, int &Y, int event)
{

    int event_type = event;

    if ( event_type == 3) {

        show_box(X, Y, 0, 0, 0);

        X++;

        // отрисовываю с новыми координатами
        show_box(X, Y, 255, 255, 255);
    }

    if ( event_type == 4) {

        show_box(X, Y, 0, 0, 0);

        X--;

        // отрисовываю с новыми координатами
        show_box(X, Y, 255, 255, 255);
    }

    if ( event_type == 5) {

        show_box(X, Y, 0, 0, 0);

        Y++;

        // отрисовываю с новыми координатами
        show_box(X, Y, 255, 255, 255);
    }

    if ( event_type == 6) {

        show_box(X, Y, 0, 0, 0);

        Y--;

        // отрисовываю с новыми координатами
        show_box(X, Y, 255, 255, 255);
    }

}



void Handle_Keydown(SDL_Keysym* keysym)
{
    SDL_Event event;
    switch(keysym->sym) {

    case SDLK_3:
        printf("3 is pressed\n");
        if (X != SCREEN_WIDTH - pix_x) {
            move_box(X,Y,3);
        }
        break;

    case SDLK_4:
        printf("4 is pressed\n");

        if (X != 0) {
            move_box(X,Y,4);
        }
        break;

    case SDLK_5:
        printf("5 is pressed\n");
        if (Y != SCREEN_HEIGHT - pix_y) {
            move_box(X,Y,5);
        }
        break;

    case SDLK_6:
        printf("6 is pressed\n");
        if (Y != 0) {
            move_box(X,Y,6);
        }
        break;

    default:
        printf("Can't find this key\n");
        break;
    }
}

 int main() {
   if( !init() ) {
 
       printf( "Failed to initialize SDL!\n" );
   }
   if( !create() ) {
 
       printf( "Failed to initialize window!\n" );
   }
 
   if( !surface_create() ) {
 
       printf( "Failed to initialize surface!\n" );
   }
 
   SDL_LockSurface(surface);
   srand(time(NULL));
   X = rand() % 500;
 
   show_box(X, Y, 255, 255, 255);
   SDL_UnlockSurface(surface);
   SDL_UpdateWindowSurface(gWindow);
 
   
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
   }
   
 
 }
