#include<SDL2/SDL.h>
#include <stdio.h>

SDL_Window* gWindow = NULL;

bool init();
bool window ();

//параметры окна
const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

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

bool window ()
{
    bool  success = true;

    gWindow = SDL_CreateWindow( "SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
    if ( gWindow == NULL) {
        printf ( "Didn't create window! SDL_Error: %s\n", SDL_GetError() );
       }
    return success;
}

int main( int argc, char* args[] )
{
       if( !init() ) {
        printf( "Failed to initialize!\n" );
    }

       else if ( !window() ) {
           printf ("Failed to create window!\n" );
    }
       SDL_Delay( 5000 );
}
