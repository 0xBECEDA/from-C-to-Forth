#include<SDL2/SDL.h>
#include <stdio.h>

// включить SDL и сделать окно
bool init();
bool create();
//окно, которое мы показываем
SDL_Window* gWindow = NULL;

SDL_Event test_event;
int SCREEN_WIDTH = 480;
int SCREEN_HEIGHT = 520;

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

        //  создаем окно
  gWindow = SDL_CreateWindow( "SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
  return success;
}

int main( int argc, char* args[] )
{
    //включаем SDL и создаем окно
    // не знаю, что означает ! перед функциями, подозреваю, что так мы говорим "если функция такая-то не сработала",
    if( !init() ) {
        // печатаем сообщение об ошибке
        printf( "Failed to initialize!\n" );
    }
    create();

    while (SDL_PollEvent(&test_event)) {
        switch (test_event.type) {
        case SDL_MOUSEMOTION:
            printf("We got a motion event.\n");
            printf("Current mouse position is: (%d, %d)\n", test_event.motion.x, test_event.motion.y);
            break;
        case SDL_KEYDOWN:
            printf("Key is pressed.\n");
            break;
        default:
            printf("Unhandled Event!\n");
            break;
        }
    }
    printf("Event queue empty.\n");
    SDL_Delay(10000);
}
