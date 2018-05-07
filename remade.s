    .file   "01_hello_SDL.cpp"

    .globl	gScreenSurface
	.bss
	.align 4
	.type	gScreenSurface, @object
	.size	gScreenSurface, 4

gScreenSurface:
    .zero 4

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

    # sur_err string
sur_err:
	.string	"Didn't create surface! SDL_Error: %s\n"

    # text section ##############
	.text

    # ~~~~~~~~~~~~~~~~~~~~~~~~
    # function : bool surface()
    # ~~~~~~~~~~~~~~~~~~~~~~~~

    .globl	_Z7surfacev
	.type	_Z7surfacev, @function
_Z7surfacev:

	pushl	%ebp
	movl	%esp, %ebp

	movl	gWindow, %eax         # параметр для SDL_GetWindowSurface
	pushl	%eax
	call	SDL_GetWindowSurface

    movl	%eax, gScreenSurface  # получить полученный указатель
	testl	%eax, %eax            # удостовериться, что он не 0
	jne	success_sur               #-+
                                  # |
	call	SDL_GetError          # |
	                              # |
	pushl	%eax                  # |
	pushl	$sur_err              # |
	call	printf                # |
	addl	$12, %esp             # |
    jmp     sur_ret               #-----+
success_sur: # < -------------------+   |
	mov $1, %eax                  #     |
sur_ret:  # <---------------------------+
    leave
	ret
.LFE13:
	.size	_Z7surfacev, .-_Z7surfacev
	.section	.rodata

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
.globl	_Z8getpixelP11SDL_Surfaceii
.type	_Z8getpixelP11SDL_Surfaceii, @function

_Z8getpixelP11SDL_Surfaceii:

//пролог
	pushl	%ebp
	movl	%esp, %ebp

	subl	$16, %esp

	movl	gScreenSurface, %eax  # указатель на поверхность в eax
	pushl	%eax # указатель на поверхность в стеке
	call	SDL_LockSurface # залочили поверхность

    addl	$4, %esp

    movl	gScreenSurface, %eax # опять поместили указатель на поверхность в eax
	movl	4(%eax), %eax # gScreenSurface->format
	movzbl	9(%eax), %eax # видимо format->BytesPerPixel
	movzbl	%al, %eax # ? eax = bpp
	movl	%eax, -16(%ebp) # поместить адрес (байт?) на 16 выше ebp - это место где хранится bpp

	movl	gScreenSurface, %eax # поместить указатель на поверхность в eax
	movl	20(%eax), %edx  # - (Uint8 *)gScreenSurface->pixels

    movl	gScreenSurface, %eax # лишнее
	movl	16(%eax), %eax # получить адрес  pitch
	imull	16(%ebp), %eax # y *  gScreenSurface->pitch
	movl	%eax, %ecx # сохранить результат в ECX
	movl	12(%ebp), %eax # поместить адрес bpp
	imull	-16(%ebp), %eax  # x * bpp
	addl	%ecx, %eax # (y * gScreenSurface->pitch) + (x * bpp);
	addl	%edx, %eax # (Uint8 *)gScreenSurface->pixels + результат выше
	movl	%eax, -12(%ebp) # *p в стек (?)
	movl	-16(%ebp), %eax # поместить результат №197 в eax

// кейсы!
    cmpl	$2, %eax #  case 2 ?
	je	case2         # да
	cmpl	$2, %eax # case 2?
	jg	third_or_4  # нет, больше
	cmpl	$1, %eax # case 1?
	je	case1 # yes
	jmp	default

third_or_4:
	cmpl	$3, %eax # case 3?
	je	case3         # yes
	cmpl	$4, %eax # case 4?
	je	case4 # yes
	jmp	default

case1:
	movl	-12(%ebp), %eax # *p в eax
	movzbl	(%eax), %eax # достаем значение (формат пикселя)
	movzbl	%al, %eax # кладем в eax
	jmp	ret

case2:
	movl	-12(%ebp), %eax # *p в eax
	movzwl	(%eax), %eax # достаем значение (формат пикселя)
	movzwl	%ax, %eax # приводим к шестнадцатибитному пикселю
	jmp	ret
case3:
    # p[0]     p[1]     p[2]
    # |xxxxyyyy|zzzzvvvv|bbbbnnnn|
    # al       dl

	//     if(SDL_BYTEORDER == SDL_BIG_ENDIAN)
	movl	-12(%ebp), %eax  # *p в eax
	movzbl	(%eax), %eax # достаем значение (формат пикселя)
	movzbl	%al, %eax # p[0]
	movl	-12(%ebp), %edx  # *p в edx
	addl	$1, %edx # увеличиваем на 1
	movzbl	(%edx), %edx # достаем p[1]
	movzbl	%dl, %edx # кладем p[1] в edx


    # EDX = 00000000.00000000.00000000.zzzzvvvv
	sall	$8, %edx # p[1] << 8
    # EDX = 00000000.00000000.zzzzvvvv.00000000
    # EAX = 00000000.00000000.00000000.xxxxyyyy
	orl	%eax, %edx # установить в edx 1, если в edx или eax он был
    # EDX = 00000000.00000000.zzzzvvvv.xxxxyyyy

    movl	-12(%ebp), %eax  # *p в eax
	addl	$2, %eax # адрес + 2
	movzbl	(%eax), %eax
	movzbl	%al, %eax  # p[2] в eax
    # EDX = 00000000.zzzzvvvv.xxxxyyyy

    sall	$16, %eax # двигаем на 16 бит
	orl	%edx, %eax # если где-то 1, ставим 1 в eax
	jmp	ret

case4:
	movl	-12(%ebp), %eax  # *p в eax
	movl	(%eax), %eax # достаем значение
	jmp	ret

default:
	movl	$0, %eax #  ничего не подошло

unlock:
    movl gScreenSurface, %eax
    push %eax
    call SDL_UnlockSurface
    sub  $4, %esp
ret:
	leave
	ret

.LFE14:
	.size	_Z8getpixelP11SDL_Surfaceii, .-_Z8getpixelP11SDL_Surfaceii
	.globl	_Z9DrawPixelP11SDL_Surfaceiihhh
	.type	_Z9DrawPixelP11SDL_Surfaceiihhh, @function
_Z9DrawPixelP11SDL_Surfaceiihhh:
.LFB15:
// пролог
	pushl	%ebp
	movl	%esp, %ebp

	pushl	%ebx # screen ?
	subl	$52, %esp
//params
	movl	20(%ebp), %ecx #R
	movl	24(%ebp), %edx #G
	movl	28(%ebp), %eax #B

	movb	%cl, -44(%ebp)
	movb	%dl, -48(%ebp)
	movb	%al, -52(%ebp)

	movzbl	-52(%ebp), %ebx
	movzbl	-48(%ebp), %ecx
	movzbl	-44(%ebp), %edx

    movl	8(%ebp), %eax # screen
	movl	4(%eax), %eax # screen->format
	pushl	%ebx #B
	pushl	%ecx #G
	pushl	%edx #R
	pushl	%eax # screen->format

    call	SDL_MapRGB
	addl	$16, %esp
	movl	%eax, -28(%ebp)
.LBB2:

	movl	8(%ebp), %eax # screen
	movl	4(%eax), %eax # screen->format
	movzbl	9(%eax), %eax # format->BytesPerPixel
	movzbl	%al, %eax     # BytesPerPixel
//cases
    cmpl	$2, %eax
	je	case_2
	jg	third_or_fotrh

    cmpl	$1, %eax
	je	case_1

    jmp	ret_fr_cases

third_or_fotrh:

	cmpl	$3, %eax
	je	case_3
	jg	case_4

	jmp	ret_fr_cases
case_1:

	movl	8(%ebp), %eax  # screen
	movl	20(%eax), %edx # screen->pixels

	movl	8(%ebp), %eax  # лишнее
	movl	16(%eax), %eax # screen->pitch
	imull	16(%ebp), %eax # y * screen->pitch
	movl	%eax, %ecx     # save result
	movl	12(%ebp), %eax # x
	addl	%ecx, %eax     # (y*screen->pitch) + x
	addl	%edx, %eax     # screen->pixels +
                           # ((y*screen->pitch) + x)
	movl	%eax, -24(%ebp)# *bufp = result

	movl	-28(%ebp), %edx # color
	movl	-24(%ebp), %eax # *bufp
	movb	%dl, (%eax)     # *bufp = color
.LBE4:
	jmp	ret_fr_cases
case_2:
	movl	8(%ebp), %eax   # screen
	movl	20(%eax), %edx  # screen->pixels

	movl	8(%ebp), %eax   # лишнее
	movl	16(%eax), %eax  # screen->pitch
	imull	16(%ebp), %eax  # y * screen->pitch
	movl	%eax, %ecx      # save result
	shrl	$31, %ecx       # двигаем байт, чтоб сохранить знак
	addl	%ecx, %eax      # знак  + (y*screen->pitch)
	sarl	%eax            # (y*screen->pitch) / 2
	movl	%eax, %ecx      # save result
	movl	12(%ebp), %eax  # x
	addl	%ecx, %eax      # (y*screen->pitch/2) + x
	addl	%eax, %eax      # ?
	addl	%edx, %eax      #
	movl	%eax, -20(%ebp) # *bufp = save result

	movl	-28(%ebp), %eax # color
	movl	%eax, %edx      #
	movl	-20(%ebp), %eax # *bufp
	movw	%dx, (%eax)     # *bufp = color
.LBE5:
 	jmp	ret_fr_cases
case_3:
	movl	8(%ebp), %eax  #  screen
	movl	20(%eax), %ecx # screen->pixels
 	movl	8(%ebp), %eax  # лишнее
	movl	16(%eax), %eax # screen->pitch
	imull	16(%ebp), %eax #  y * screen->pitch
	movl	%eax, %ebx     # save result
	movl	12(%ebp), %edx # х
	movl	%edx, %eax     # x
	addl	%eax, %eax     # x + x
	addl	%edx, %eax     # 2x + x
	addl	%ebx, %eax     # saved result + 3x
	addl	%ecx, %eax     # screen->pixels + new result
	movl	%eax, -16(%ebp) # save

   //  if(SDL_BYTEORDER == SDL_LIL_ENDIAN)

	movl	-28(%ebp), %eax # color
	movl	%eax, %edx
	movl	-16(%ebp), %eax # *bufp
	movb	%dl, (%eax)     # bufp[0] = color

	movl	-16(%ebp), %eax # *bufp
	addl	$1, %eax        #  bufp[1]
	movl	-28(%ebp), %edx #  color
	shrl	$8, %edx        # color >> 8
	movb	%dl, (%eax)     # bufp[1] = color >> 8

	movl	-16(%ebp), %eax # bufp
	addl	$2, %eax        # bufp[2]
	movl	-28(%ebp), %edx # color
	shrl	$16, %edx       # color >> 16
	movb	%dl, (%eax)     #  bufp[2] = color >> 16
.LBE6:
 	jmp	ret_fr_cases
case_4:

	movl	8(%ebp), %eax   # screen
	movl	20(%eax), %edx  # screen->pixels

	movl	8(%ebp), %eax
	movl	16(%eax), %eax  # screen->pitch
	imull	16(%ebp), %eax  # y*screen->pitch
	leal	3(%eax), %ecx   # ?
	testl	%eax, %eax      # check
	cmovs	%ecx, %eax      # move r16,r/m16 if negative
	sarl	$2, %eax        # делим на 2
	movl	%eax, %ecx      # save
	movl	12(%ebp), %eax  # x
	addl	%ecx, %eax      # result + x
	sall	$2, %eax        # делим на 2
	addl	%edx, %eax      # screen->pixels + result
	movl	%eax, -12(%ebp) # save in bufp

	movl	-12(%ebp), %eax # bufp
	movl	-28(%ebp), %edx # color
	movl	%edx, (%eax)    # *bufp = color
.LBE7:
ret_fr_cases:
	movl	-4(%ebp), %ebx # ?
	leave
	ret

.LFE15:
	.size	_Z9DrawPixelP11SDL_Surfaceiihhh, .-_Z9DrawPixelP11SDL_Surfaceiihhh
    # rodata section ############
    .section    .rodata

error_main_init:
    .string "Failed to initialize!"
error_main_window:
    .string "Failed to create window!"
err_main_sur:
	.string	"Failed to create surface!"

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
    # success and check surface #  |     |
    call	_Z7surfacev         #  |     |
	xorl	$1, %eax            #  |     |
	testb	%al, %al            #  |     |
	jne	main_err_sur
    # success and get pixel
    movl	gScreenSurface, %eax
	pushl	$150
	pushl	$20
	pushl	%eax
	call	_Z8getpixelP11SDL_Surfaceii
    addl    $16, %esp
    # Draw pixel
    movl	gScreenSurface, %eax
	subl	$8, %esp
	pushl	$0
	pushl	$0
	pushl	$255
	pushl	$150
	pushl	$100
	pushl	%eax
	call	_Z9DrawPixelP11SDL_Surfaceiihhh
	addl    $32, %esp
    #update surface
    movl	gWindow, %eax
	pushl	%eax
	call	SDL_UpdateWindowSurface
    addl    $4, %esp            #------------+
delay:                          #  |     |   |
    pushl   $5000               #  |     |   |
    call    SDL_Delay
    addl    $4, %esp            #  |     |   |
    jmp exit                    #--|--+  |   |
    # ------------------------- #  |  |  |   |
main_err: # <----------------------|--|--+   |
    pushl   $error_main_init    #  |  |      |
    call    puts
    addl    $4, %esp            #  |  |      |
    jmp exit                    #--|--+      |
    # ------------------------- #  |  |      |
main_err_window: # <---------------+  |      |
    push $error_main_window     #     |      |
    call    puts
    addl    $4, %esp            #     |      |
    jmp exit                    #-----+      |
    #-------------------------- #     |      |
main_err_sur: # <---------------------|------+
    pushl	$err_main_sur       #     |
	call	puts                #     |
    addl    $4, %esp            #     |
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
