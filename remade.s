    .file   "01_hello_SDL.cpp"

    # bss section ###############
    .bss
    # gWindow declaration
    .align 4
    .globl  gWindow
    .type   gWindow, @object
    .size   gWindow, 4
gWindow:
    .zero   4

    # rodata section ############
    .section    .rodata

    # SCREEN_WIDTH declaration
    .align 4
    .type   _ZL12SCREEN_WIDTH, @object
    .size   _ZL12SCREEN_WIDTH, 4
_ZL12SCREEN_WIDTH:
    .long   640

    # SCREEN_HEIGHT declaration
    .align 4
    .type   _ZL13SCREEN_HEIGHT, @object
    .size   _ZL13SCREEN_HEIGHT, 4
_ZL13SCREEN_HEIGHT:
    .long   480

    # header string
    .align 4
header:
    .string "SDL Tutorial"

    # window_err string
    .align 4
window_err:
    .string "Didn't create window! SDL_Error: %s\n"

    # text section ##############
    .text

    # ~~~~~~~~~~~~~~~~~~~~~~~~
    # function : bool window()
    # ~~~~~~~~~~~~~~~~~~~~~~~~
    .globl  _Z6windowv
    .type   _Z6windowv, @function
_Z6windowv:
    # prolog
    pushl   %ebp
    movl    %esp, %ebp
    # push params and call CreateWindow
    pushl   $4                  # SDL_WINDOW_SHOWN = 4
    pushl   $480                # SCREEN_HEIGHT = 480
    pushl   $640                # SCREEN_WIDTH = 640
    pushl   $536805376          # SDL_WINDOWPOS_UNDEFINED = 0x1FFF0000
    pushl   $536805376          # SDL_WINDOWPOS_UNDEFINED = 0x1FFF0000
    pushl   $header             # addr of "SDL Tutorial" string
    call    SDL_CreateWindow
    addl    $24, %esp           # clear stack 6*4 bytes
    movl    %eax, gWindow       # save retval to gWindow
    testl   %eax, %eax          # check retval by NULL
    jne ready_window            #--+
    # ------------------------- #  |
failed_window:                  #  |
    call    SDL_GetError        #  |
    pushl   %eax                #  |
    pushl   window_err          #  |
    call    printf              #  |
    addl    $8, %esp            #  |
    jmp window_ret              #--|--+
    # --------------------------#  |  |
ready_window: # <------------------+  |
    movl $1, %eax               #     |
window_ret:   # <---------------------+
    leave
    ret
.LFE10:
    .size   _Z6windowv, .-_Z6windowv

    # rodata section
    .section    .rodata

_Z4init_errmsg:
    .string "SDL could not initialize! SDL_Error: %s\n"

    # text section
    .text

    # ~~~~~~~~~~~~~~~~~~~~~~
    # function : bool init()
    # ~~~~~~~~~~~~~~~~~~~~~~
    .globl  _Z4initv
    .type   _Z4initv, @function
_Z4initv:
    # prolog
    pushl   %ebp
    movl    %esp, %ebp
    # call SDL_Init & clear stack
    pushl   $32                 # SDL_INIT_VIDEO = 32
    call    SDL_Init
    addl    $4, %esp            # clear stack
    # test (retval < 0)
    shrl    $31, %eax
    testb   %al, %al
    je  success_init            #--+
_Z4initv_err:                   #  |    # show error message
    call    SDL_GetError        #  |
    pushl   %eax                #  |
    pushl   $_Z4init_errmsg     #  |
    call    printf              #  |
    addl    $8, %esp            #  |
    movl    $0, %eax            #  |     # return false
    jmp _Z4initv_ret            #--|--+
    # ------------------------- #  |  |
success_init: # <------------------+  |
    movl    $1, %eax            #     |  # return true
_Z4initv_ret: # <---------------------+
    # epilog
    leave
    ret

.LFE11:
    .size   _Z4initv, .-_Z4initv

    # rodata section ############
    .section    .rodata

error_main_init:
    .string "Failed to initialize!"
error_main_window:
    .string "Failed to create window!"

    # text section ##############
    .text

    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # function : int main( int argc, char* args[] )
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    .globl  main
    .type   main, @function
main:
    leal    4(%esp), %ecx
    pushl   -4(%ecx)
    # prolog
    pushl   %ebp
    movl    %esp, %ebp
    # ?
    pushl   %ecx
    # call _Z4initv
    call    _Z4initv
    # test (!retval)
    xorl    $1, %eax
    testb   %al, %al
    jne main_err                #--------+
    # success and check window  #        |
    call   _Z6windowv           #        |
    xorl    $1, %eax            #        |
    testb   %al, %al            #        |
    # check                              |
    jne main_err_window         #--+     |
    # success                   #  |     |
show_window:                    #  |     |
    pushl   $5000               #  |     |
    call    SDL_Delay           #  |     |
    jmp exit                    #--|--+  |
    # ------------------------- #  |  |  |
main_err: # <----------------------|--|--+
    pushl   $error_main_init    #  |  |
    call    puts                #  |  |
    jmp exit                    #--|--+
    # ------------------------- #  |  |
main_err_window: # <---------------+  |
    push $error_main_window     #     |
    call    puts                #     |
exit: # <-----------------------------+
    movl    $0, %eax
    movl    -4(%ebp), %ecx
    leave
    leal    -4(%ecx), %esp
    ret
.LFE12:
    .size   main, .-main
    .ident  "GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
    .section    .note.GNU-stack,"",@progbits
