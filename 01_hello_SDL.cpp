#include<SDL2/SDL.h>
#include <stdio.h>

// включить SDL и сделать окно
bool init();
//окно, которое мы показываем
SDL_Window* gWindow = NULL;


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
// все плохо, установить false в success
        //  success = false;
        //  } else {
        // в противном случае создаем окно
        // gWindow (переменная, внутри которой указатель(?) на место, по которому лежит окно в памяти) приравнена к функции SDL_CreateWindow, которая \ должна создать окно (?)
        //  gWindow = SDL_CreateWindow( "SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WIND \
            //                              OW_SHOWN );

int main( int argc, char* args[] )
{
    //включаем SDL и создаем окно
    // не знаю, что означает ! перед функциями, подозреваю, что так мы говорим "если функция такая-то не сработала",
    if( !init() ) {
        // печатаем сообщение об ошибке
        printf( "Failed to initialize!\n" );
    }
}
