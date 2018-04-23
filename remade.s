    .file   "01_hello_SDL.cpp"
    .globl  gWindow
    .bss
    .align 4
    .type   gWindow, @object
    .size   gWindow, 4
gWindow:
    .zero   4
    .section    .rodata
    .align 4

	.type	_ZL12SCREEN_WIDTH, @object
	.size	_ZL12SCREEN_WIDTH, 4

_ZL12SCREEN_WIDTH:
	.long	640
	.align 4
	.type	_ZL13SCREEN_HEIGHT, @object
	.size	_ZL13SCREEN_HEIGHT, 4
_ZL13SCREEN_HEIGHT:
	.long	480
	.align 4

header:
	.string	"SDL Tutorial"
	.align 4

window_err:
	.string	"Didn't create window! SDL_Error: %s\n"

    .text
	.globl	_Z6windowv
	.type	_Z6windowv, @function

_Z6windowv:
    // prolog
	pushl	%ebp
	movl	%esp, %ebp
    // push params and call CreateWindow
    pushl	$4
	pushl	$480
	pushl	$640
	pushl	$536805376
	pushl	$536805376
	pushl	$header
	call	SDL_CreateWindow
    addl    $24, %esp
    //check
	movl	%eax, gWindow
	movl	gWindow, %eax
	testl	%eax, %eax
	jne	ready_window

failed_window:
  	call	SDL_GetError
	pushl	%eax
	pushl	window_err
	call	printf
    addl    $8, %esp
	jmp window_ret
//--------------------
ready_window:
    movl $1, %eax

window_ret:
    leave
	ret
.LFE10:
	.size	_Z6windowv, .-_Z6windowv
	.section	.rodata

_Z4init_errmsg:
    .string "SDL could not initialize! SDL_Error: %s\n"

    .text
    .globl  _Z4initv
    .type   _Z4initv, @function
_Z4initv:
    // prolog
    pushl   %ebp
    movl    %esp, %ebp
    // call SDL_Init & clear stack
    pushl   $32
    call    SDL_Init
    addl    $4, %esp
    // test (retval < 0)
    shrl    $31, %eax
    testb   %al, %al
    je  success_init
    // ----------------
    // show error message
_Z4initv_err:
    call    SDL_GetError
    pushl   %eax
    pushl   $_Z4init_errmsg
    call    printf
    addl    $8, %esp
    movl    $0, %eax
    jmp _Z4initv_ret
    // ----------------
    // return true
success_init:
    movl    $1, %eax
    // epilog
_Z4initv_ret:
    leave
    ret

.LFE11:
    .size   _Z4initv, .-_Z4initv
    .section    .rodata
error_main_init:
    .string "Failed to initialize!"
error_main_window:
	.string	"Failed to create window!"

    .text
    .globl  main
    .type   main, @function

main:
    leal    4(%esp), %ecx
    pushl   -4(%ecx)
    // prolog
    pushl   %ebp
    movl    %esp, %ebp
    // ?
    pushl   %ecx
    // call _Z4initv
    call    _Z4initv
    // test (!retval)
    xorl    $1, %eax
    testb   %al, %al
    // check
    jne main_err
    //success and check window
    call   _Z6windowv
    xorl	$1, %eax
	testb	%al, %al
    // check
    jne main_err_window
    //success
show_window:
    pushl	$5000
	call	SDL_Delay
    jmp exit

main_err:
    pushl   $error_main_init
    call    puts
    jmp exit

main_err_window:
    push $error_main_window
    call	puts
exit:
    movl    $0, %eax
    movl    -4(%ebp), %ecx
    leave
    leal    -4(%ecx), %esp
    ret
.LFE12:
    .size   main, .-main
    .ident  "GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
    .section    .note.GNU-stack,"",@progbits
