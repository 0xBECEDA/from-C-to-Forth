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
            //  printf("Unhandled Event type is: ( %d) !\n", test_event.type);
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
            //   printf("SDL_DROPTEXT is %d\n", SDL_DROPTEXT);
            // printf("SDL_DROPBEGIN is %d\n", SDL_DROPBEGIN);
            //  printf("SDL_DROPCOMPLETE is %d\n", SDL_DROPCOMPLETE);
            printf("SDL_AUDIODEVICEADDED is %d\n", SDL_AUDIODEVICEADDED);
            printf("SDL_AUDIODEVICEREMOVED is %d\n", SDL_AUDIODEVICEREMOVED);
            printf("SDL_RENDER_TARGETS_RESET is %d\n", SDL_RENDER_TARGETS_RESET);
            printf("SDL_RENDER_DEVICE_RESET is %d\n", SDL_RENDER_DEVICE_RESET);
            // printf("SDL_RegisterEvents() is %d\n", SDL_RegisterEvents());
            printf("SDL_USEREVENT is %d\n", SDL_USEREVENT);
            printf("SDL_LASTEVENT is %d\n", SDL_LASTEVENT);
            break;
        }
    }
    printf("Event queue empty.\n");
    SDL_Delay(10000);
}
