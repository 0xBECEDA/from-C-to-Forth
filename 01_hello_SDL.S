	.file	"01_hello_SDL.cpp"
	.text
.Ltext0:
	.globl	gScreenSurface
	.bss
	.align 4
	.type	gScreenSurface, @object
	.size	gScreenSurface, 4
gScreenSurface:
	.zero	4
	.globl	gWindow
	.align 4
	.type	gWindow, @object
	.size	gWindow, 4
gWindow:
	.zero	4
	.section	.rodata
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
.LC0:
	.string	"SDL could not initialize! SDL_Error: %s\n"
	.text
	.globl	_Z4initv
	.type	_Z4initv, @function
_Z4initv:
.LFB11:
	.file 1 "01_hello_SDL.cpp"
	.loc 1 18 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 20 0
	movb	$1, -9(%ebp)
	.loc 1 23 0
	subl	$12, %esp
	pushl	$32
	call	SDL_Init
	addl	$16, %esp
	shrl	$31, %eax
	testb	%al, %al
	je	.L2
	.loc 1 24 0
	call	SDL_GetError
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
.L2:
	.loc 1 27 0
	movzbl	-9(%ebp), %eax
	.loc 1 28 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	_Z4initv, .-_Z4initv
	.section	.rodata
.LC1:
	.string	"SDL Tutorial"
	.align 4
.LC2:
	.string	"Didn't create window! SDL_Error: %s\n"
	.text
	.globl	_Z6windowv
	.type	_Z6windowv, @function
_Z6windowv:
.LFB12:
	.loc 1 31 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 32 0
	movb	$1, -9(%ebp)
	.loc 1 34 0
	subl	$8, %esp
	pushl	$4
	pushl	$480
	pushl	$640
	pushl	$536805376
	pushl	$536805376
	pushl	$.LC1
	call	SDL_CreateWindow
	addl	$32, %esp
	movl	%eax, gWindow
	.loc 1 35 0
	movl	gWindow, %eax
	testl	%eax, %eax
	jne	.L5
	.loc 1 36 0
	call	SDL_GetError
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC2
	call	printf
	addl	$16, %esp
.L5:
	.loc 1 38 0
	movzbl	-9(%ebp), %eax
	.loc 1 39 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	_Z6windowv, .-_Z6windowv
	.section	.rodata
	.align 4
.LC3:
	.string	"Didn't create surface! SDL_Error: %s\n"
	.text
	.globl	_Z7surfacev
	.type	_Z7surfacev, @function
_Z7surfacev:
.LFB13:
	.loc 1 42 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 43 0
	movb	$1, -9(%ebp)
	.loc 1 45 0
	movl	gWindow, %eax
	subl	$12, %esp
	pushl	%eax
	call	SDL_GetWindowSurface
	addl	$16, %esp
	movl	%eax, gScreenSurface
	.loc 1 47 0
	movl	gScreenSurface, %eax
	testl	%eax, %eax
	jne	.L8
	.loc 1 48 0
	call	SDL_GetError
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC3
	call	printf
	addl	$16, %esp
.L8:
	.loc 1 50 0
	movzbl	-9(%ebp), %eax
	.loc 1 51 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	_Z7surfacev, .-_Z7surfacev
	.globl	_Z8getpixelP11SDL_Surfaceii
	.type	_Z8getpixelP11SDL_Surfaceii, @function
_Z8getpixelP11SDL_Surfaceii:
.LFB14:
	.loc 1 53 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 55 0
	movl	gScreenSurface, %eax
	subl	$12, %esp
	pushl	%eax
	call	SDL_LockSurface
	addl	$16, %esp
	.loc 1 57 0
	movl	gScreenSurface, %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 59 0
//  Uint32 ppr = gScreenSurface->pitch/bpp;
	movl	gScreenSurface, %eax
	movl	16(%eax), %eax    //  gScreenSurface->pitch
  	cltd                      // преведение к типу, кажется
	idivl	-20(%ebp)         // gScreenSurface->pitch/bpp
	movl	%eax, -16(%ebp)   // сохранили

    .loc 1 60 0
	movl	gScreenSurface, %eax
	movl	20(%eax), %edx   //gScreenSurface->pixels
	movl	16(%ebp), %eax  // y
	imull	-16(%ebp), %eax // y * ppr
	movl	%eax, %ecx      // сохранили
	movl	12(%ebp), %eax  // x
	addl	%eax, %ecx      // (y * ppr + x )
	movl	-20(%ebp), %eax // bpp
	imull	%ecx, %eax      //(y * ppr + x )* bpp;
	addl	%edx, %eax // gScreenSurface->pixels + (y * ppr + x )* bpp
	movl	%eax, -12(%ebp) //save
	.loc 1 62 0
	movl	-20(%ebp), %eax
	cmpl	$2, %eax
	je	.L12
	cmpl	$2, %eax
	jg	.L13
	cmpl	$1, %eax
	je	.L14
	jmp	.L11
.L13:
	cmpl	$3, %eax
	je	.L15
	cmpl	$4, %eax
	je	.L16
	jmp	.L11
.L14:
	.loc 1 64 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	.L17
.L12:
	.loc 1 68 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	jmp	.L17
.L15:
	.loc 1 75 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	-12(%ebp), %edx
	addl	$1, %edx
	movzbl	(%edx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%edx, %eax
	jmp	.L17
.L16:
	.loc 1 79 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	jmp	.L17
.L11:
	.loc 1 83 0
	movl	$0, %eax
.L17:
	.loc 1 86 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	_Z8getpixelP11SDL_Surfaceii, .-_Z8getpixelP11SDL_Surfaceii
	.globl	_Z9DrawPixelP11SDL_Surfaceiihhh
	.type	_Z9DrawPixelP11SDL_Surfaceiihhh, @function
_Z9DrawPixelP11SDL_Surfaceiihhh:
.LFB15:
	.loc 1 90 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	20(%ebp), %ecx
	movl	24(%ebp), %edx
	movl	28(%ebp), %eax
	movb	%cl, -44(%ebp)
	movb	%dl, -48(%ebp)
	movb	%al, -52(%ebp)
	.loc 1 91 0
	movzbl	-52(%ebp), %ebx
	movzbl	-48(%ebp), %ecx
	movzbl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	SDL_MapRGB
	addl	$16, %esp
	movl	%eax, -36(%ebp)
	.loc 1 95 0
// int bpp =  gScreenSurface->format->BytesPerPixel
	movl	gScreenSurface, %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp) // -32(%ebp) = bpp
	.loc 1 96 0

	movl	gScreenSurface, %eax
	movl	16(%eax), %eax
	cltd
	idivl	-32(%ebp)
	movl	%eax, -28(%ebp) // -28(%ebp) = ppr
.LBB2:
	.loc 1 99 0
     //switch (bpp)
    movl	-32(%ebp), %eax
	cmpl	$2, %eax
	je	.L20
	cmpl	$2, %eax
	jg	.L21
	cmpl	$1, %eax
	je	.L22
.LBE2:
	.loc 1 153 0
	jmp	.L25
.L21:
.LBB8:
	.loc 1 99 0
	cmpl	$3, %eax
	je	.L23
	cmpl	$4, %eax
	je	.L24
.LBE8:
	.loc 1 153 0
	jmp	.L25
.L22:
.LBB9:
.LBB3:
.LBB4:
	.loc 1 106 0
	movl	gScreenSurface, %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	%eax, %ecx
	movl	-32(%ebp), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 111 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movb	%dl, (%eax)
.LBE4:
	.loc 1 113 0
	jmp	.L19

// case 2
.L20:
.LBB5:
	.loc 1 116 0
	movl	gScreenSurface, %eax
	movl	20(%eax), %edx // gScreenSurface->pixels
	movl	16(%ebp), %eax // y
	imull	-28(%ebp), %eax // y * ppr
	movl	%eax, %ecx      // ecx = y * ppr
	movl	12(%ebp), %eax  // x
	addl	%ecx, %eax      //(y * ppr + x )
	addl	%eax, %eax      // (y * ppr + x ) + (y * ppr + x ) ???
	addl	%edx, %eax      // gScreenSurface->pixels + (y * ppr + x )
	movl	%eax, -20(%ebp) // -20(%ebp) = result
	.loc 1 121 0
	movl	-36(%ebp), %eax  // color
	movl	%eax, %edx
	movl	-20(%ebp), %eax  // *p
	movw	%dx, (%eax)      // *p = color
.LBE5:
	.loc 1 123 0
	jmp	.L19
.L23:
.LBB6:
	.loc 1 126 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	.loc 1 127 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	imull	16(%ebp), %eax
	movl	%eax, %ebx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	addl	%ecx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 131 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 132 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	-36(%ebp), %edx
	shrl	$8, %edx
	movb	%dl, (%eax)
	.loc 1 133 0
	movl	-16(%ebp), %eax
	addl	$2, %eax
	movl	-36(%ebp), %edx
	shrl	$16, %edx
	movb	%dl, (%eax)
.LBE6:
	.loc 1 140 0
	jmp	.L19
.L24:
.LBB7:
	.loc 1 144 0
	movl	gScreenSurface, %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 149 0
	movl	-12(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, (%eax)
.LBE7:
	.loc 1 151 0
	nop
.L19:
.L25:
.LBE3:
.LBE9:
	.loc 1 153 0
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	_Z9DrawPixelP11SDL_Surfaceiihhh, .-_Z9DrawPixelP11SDL_Surfaceiihhh
	.section	.rodata
.LC4:
	.string	"Failed to initialize!"
.LC5:
	.string	"Failed to create window!"
.LC6:
	.string	"Failed to create surface!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.loc 1 156 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$4, %esp
	.loc 1 157 0
	call	_Z4initv
	xorl	$1, %eax
	testb	%al, %al
	je	.L27
	.loc 1 158 0
	subl	$12, %esp
	pushl	$.LC4
	call	puts
	addl	$16, %esp
	jmp	.L28
.L27:
	.loc 1 161 0
	call	_Z6windowv
	xorl	$1, %eax
	testb	%al, %al
	je	.L29
	.loc 1 162 0
	subl	$12, %esp
	pushl	$.LC5
	call	puts
	addl	$16, %esp
	jmp	.L28
.L29:
	.loc 1 164 0
	call	_Z7surfacev
	xorl	$1, %eax
	testb	%al, %al
	je	.L28
	.loc 1 165 0
	subl	$12, %esp
	pushl	$.LC6
	call	puts
	addl	$16, %esp
.L28:
	.loc 1 168 0
	movl	gScreenSurface, %eax
	subl	$4, %esp
	pushl	$150
	pushl	$20
	pushl	%eax
	call	_Z8getpixelP11SDL_Surfaceii
	addl	$16, %esp
	.loc 1 171 0
	movl	gScreenSurface, %eax
	subl	$8, %esp
	pushl	$0
	pushl	$0
	pushl	$255
	pushl	$150
	pushl	$100
	pushl	%eax
	call	_Z9DrawPixelP11SDL_Surfaceiihhh
	addl	$32, %esp
	.loc 1 173 0
	movl	gWindow, %eax
	subl	$12, %esp
	pushl	%eax
	call	SDL_UpdateWindowSurface
	addl	$16, %esp
	.loc 1 175 0
	subl	$12, %esp
	pushl	$5000
	call	SDL_Delay
	addl	$16, %esp
	.loc 1 176 0
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/stdint.h"
	.file 3 "/usr/include/SDL2/SDL_stdinc.h"
	.file 4 "/usr/include/SDL2/SDL_pixels.h"
	.file 5 "/usr/include/SDL2/SDL_rect.h"
	.file 6 "/usr/include/SDL2/SDL_surface.h"
	.file 7 "/usr/include/SDL2/SDL_video.h"
	.file 8 "/usr/include/SDL2/SDL_scancode.h"
	.file 9 "/usr/include/SDL2/SDL_messagebox.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe01
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF385
	.byte	0x4
	.long	.LASF386
	.long	.LASF387
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0x7a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x6
	.long	0x4f
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0x30
	.long	0x25
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0x31
	.long	0x2c
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x33
	.long	0x33
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF15
	.uleb128 0x7
	.long	.LASF16
	.byte	0x3
	.byte	0x8b
	.long	0x86
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.byte	0x93
	.long	0x91
	.uleb128 0x7
	.long	.LASF18
	.byte	0x3
	.byte	0x9b
	.long	0x9c
	.uleb128 0x5
	.byte	0x4
	.long	0xb5
	.uleb128 0x8
	.byte	0x4
	.long	0x33
	.byte	0x4
	.byte	0x33
	.long	0x131
	.uleb128 0x9
	.long	.LASF19
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.uleb128 0x9
	.long	.LASF28
	.byte	0x9
	.uleb128 0x9
	.long	.LASF29
	.byte	0xa
	.uleb128 0x9
	.long	.LASF30
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x33
	.byte	0x4
	.byte	0x44
	.long	0x150
	.uleb128 0x9
	.long	.LASF31
	.byte	0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.uleb128 0x9
	.long	.LASF33
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x33
	.byte	0x4
	.byte	0x4c
	.long	0x193
	.uleb128 0x9
	.long	.LASF34
	.byte	0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.uleb128 0x9
	.long	.LASF36
	.byte	0x2
	.uleb128 0x9
	.long	.LASF37
	.byte	0x3
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x33
	.byte	0x4
	.byte	0x5c
	.long	0x1ca
	.uleb128 0x9
	.long	.LASF43
	.byte	0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x1
	.uleb128 0x9
	.long	.LASF45
	.byte	0x2
	.uleb128 0x9
	.long	.LASF46
	.byte	0x3
	.uleb128 0x9
	.long	.LASF47
	.byte	0x4
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.uleb128 0x9
	.long	.LASF49
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x33
	.byte	0x4
	.byte	0x68
	.long	0x20d
	.uleb128 0x9
	.long	.LASF50
	.byte	0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x1
	.uleb128 0x9
	.long	.LASF52
	.byte	0x2
	.uleb128 0x9
	.long	.LASF53
	.byte	0x3
	.uleb128 0x9
	.long	.LASF54
	.byte	0x4
	.uleb128 0x9
	.long	.LASF55
	.byte	0x5
	.uleb128 0x9
	.long	.LASF56
	.byte	0x6
	.uleb128 0x9
	.long	.LASF57
	.byte	0x7
	.uleb128 0x9
	.long	.LASF58
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x4
	.byte	0x4
	.value	0x117
	.long	0x247
	.uleb128 0xb
	.string	"r"
	.byte	0x4
	.value	0x119
	.long	0xb5
	.byte	0
	.uleb128 0xb
	.string	"g"
	.byte	0x4
	.value	0x11a
	.long	0xb5
	.byte	0x1
	.uleb128 0xb
	.string	"b"
	.byte	0x4
	.value	0x11b
	.long	0xb5
	.byte	0x2
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x11c
	.long	0xb5
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF59
	.byte	0x4
	.value	0x11d
	.long	0x20d
	.uleb128 0xa
	.long	.LASF60
	.byte	0x10
	.byte	0x4
	.value	0x120
	.long	0x295
	.uleb128 0xd
	.long	.LASF61
	.byte	0x4
	.value	0x122
	.long	0x4f
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0x4
	.value	0x123
	.long	0x295
	.byte	0x4
	.uleb128 0xd
	.long	.LASF63
	.byte	0x4
	.value	0x124
	.long	0xcb
	.byte	0x8
	.uleb128 0xd
	.long	.LASF64
	.byte	0x4
	.value	0x125
	.long	0x4f
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x247
	.uleb128 0xc
	.long	.LASF60
	.byte	0x4
	.value	0x126
	.long	0x253
	.uleb128 0xa
	.long	.LASF65
	.byte	0x2c
	.byte	0x4
	.value	0x12b
	.long	0x3ac
	.uleb128 0xd
	.long	.LASF66
	.byte	0x4
	.value	0x12d
	.long	0xcb
	.byte	0
	.uleb128 0xd
	.long	.LASF67
	.byte	0x4
	.value	0x12e
	.long	0x3ac
	.byte	0x4
	.uleb128 0xd
	.long	.LASF68
	.byte	0x4
	.value	0x12f
	.long	0xb5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF69
	.byte	0x4
	.value	0x130
	.long	0xb5
	.byte	0x9
	.uleb128 0xd
	.long	.LASF70
	.byte	0x4
	.value	0x131
	.long	0x3b2
	.byte	0xa
	.uleb128 0xd
	.long	.LASF71
	.byte	0x4
	.value	0x132
	.long	0xcb
	.byte	0xc
	.uleb128 0xd
	.long	.LASF72
	.byte	0x4
	.value	0x133
	.long	0xcb
	.byte	0x10
	.uleb128 0xd
	.long	.LASF73
	.byte	0x4
	.value	0x134
	.long	0xcb
	.byte	0x14
	.uleb128 0xd
	.long	.LASF74
	.byte	0x4
	.value	0x135
	.long	0xcb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF75
	.byte	0x4
	.value	0x136
	.long	0xb5
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF76
	.byte	0x4
	.value	0x137
	.long	0xb5
	.byte	0x1d
	.uleb128 0xd
	.long	.LASF77
	.byte	0x4
	.value	0x138
	.long	0xb5
	.byte	0x1e
	.uleb128 0xd
	.long	.LASF78
	.byte	0x4
	.value	0x139
	.long	0xb5
	.byte	0x1f
	.uleb128 0xd
	.long	.LASF79
	.byte	0x4
	.value	0x13a
	.long	0xb5
	.byte	0x20
	.uleb128 0xd
	.long	.LASF80
	.byte	0x4
	.value	0x13b
	.long	0xb5
	.byte	0x21
	.uleb128 0xd
	.long	.LASF81
	.byte	0x4
	.value	0x13c
	.long	0xb5
	.byte	0x22
	.uleb128 0xd
	.long	.LASF82
	.byte	0x4
	.value	0x13d
	.long	0xb5
	.byte	0x23
	.uleb128 0xd
	.long	.LASF64
	.byte	0x4
	.value	0x13e
	.long	0x4f
	.byte	0x24
	.uleb128 0xd
	.long	.LASF83
	.byte	0x4
	.value	0x13f
	.long	0x3c2
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x29b
	.uleb128 0xe
	.long	0xb5
	.long	0x3c2
	.uleb128 0xf
	.long	0x6b
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x2a7
	.uleb128 0xc
	.long	.LASF65
	.byte	0x4
	.value	0x140
	.long	0x2a7
	.uleb128 0x10
	.long	.LASF84
	.byte	0x10
	.byte	0x5
	.byte	0x40
	.long	0x409
	.uleb128 0x11
	.string	"x"
	.byte	0x5
	.byte	0x42
	.long	0x4f
	.byte	0
	.uleb128 0x11
	.string	"y"
	.byte	0x5
	.byte	0x42
	.long	0x4f
	.byte	0x4
	.uleb128 0x11
	.string	"w"
	.byte	0x5
	.byte	0x43
	.long	0x4f
	.byte	0x8
	.uleb128 0x11
	.string	"h"
	.byte	0x5
	.byte	0x43
	.long	0x4f
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF84
	.byte	0x5
	.byte	0x44
	.long	0x3d4
	.uleb128 0x10
	.long	.LASF85
	.byte	0x3c
	.byte	0x6
	.byte	0x45
	.long	0x4ad
	.uleb128 0x12
	.long	.LASF86
	.byte	0x6
	.byte	0x47
	.long	0xcb
	.byte	0
	.uleb128 0x12
	.long	.LASF66
	.byte	0x6
	.byte	0x48
	.long	0x4ad
	.byte	0x4
	.uleb128 0x11
	.string	"w"
	.byte	0x6
	.byte	0x49
	.long	0x4f
	.byte	0x8
	.uleb128 0x11
	.string	"h"
	.byte	0x6
	.byte	0x49
	.long	0x4f
	.byte	0xc
	.uleb128 0x12
	.long	.LASF87
	.byte	0x6
	.byte	0x4a
	.long	0x4f
	.byte	0x10
	.uleb128 0x12
	.long	.LASF88
	.byte	0x6
	.byte	0x4b
	.long	0x72
	.byte	0x14
	.uleb128 0x12
	.long	.LASF89
	.byte	0x6
	.byte	0x4e
	.long	0x72
	.byte	0x18
	.uleb128 0x12
	.long	.LASF90
	.byte	0x6
	.byte	0x51
	.long	0x4f
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF91
	.byte	0x6
	.byte	0x52
	.long	0x72
	.byte	0x20
	.uleb128 0x12
	.long	.LASF92
	.byte	0x6
	.byte	0x55
	.long	0x409
	.byte	0x24
	.uleb128 0x11
	.string	"map"
	.byte	0x6
	.byte	0x58
	.long	0x4b8
	.byte	0x34
	.uleb128 0x12
	.long	.LASF64
	.byte	0x6
	.byte	0x5b
	.long	0x4f
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3c8
	.uleb128 0x13
	.long	.LASF94
	.uleb128 0x5
	.byte	0x4
	.long	0x4b3
	.uleb128 0x7
	.long	.LASF85
	.byte	0x6
	.byte	0x5c
	.long	0x414
	.uleb128 0x7
	.long	.LASF93
	.byte	0x7
	.byte	0x59
	.long	0x4d4
	.uleb128 0x13
	.long	.LASF93
	.uleb128 0x14
	.byte	0x4
	.long	0x33
	.byte	0x7
	.byte	0x61
	.long	.LASF111
	.long	0x54b
	.uleb128 0x9
	.long	.LASF95
	.byte	0x1
	.uleb128 0x9
	.long	.LASF96
	.byte	0x2
	.uleb128 0x9
	.long	.LASF97
	.byte	0x4
	.uleb128 0x9
	.long	.LASF98
	.byte	0x8
	.uleb128 0x9
	.long	.LASF99
	.byte	0x10
	.uleb128 0x9
	.long	.LASF100
	.byte	0x20
	.uleb128 0x9
	.long	.LASF101
	.byte	0x40
	.uleb128 0x9
	.long	.LASF102
	.byte	0x80
	.uleb128 0x15
	.long	.LASF103
	.value	0x100
	.uleb128 0x15
	.long	.LASF104
	.value	0x200
	.uleb128 0x15
	.long	.LASF105
	.value	0x400
	.uleb128 0x15
	.long	.LASF106
	.value	0x1001
	.uleb128 0x15
	.long	.LASF107
	.value	0x800
	.uleb128 0x15
	.long	.LASF108
	.value	0x2000
	.uleb128 0x15
	.long	.LASF109
	.value	0x4000
	.byte	0
	.uleb128 0x7
	.long	.LASF110
	.byte	0x7
	.byte	0x71
	.long	0x4d9
	.uleb128 0x5
	.byte	0x4
	.long	0x4c9
	.uleb128 0x14
	.byte	0x4
	.long	0x33
	.byte	0x8
	.byte	0x2c
	.long	.LASF112
	.long	0xb36
	.uleb128 0x9
	.long	.LASF113
	.byte	0
	.uleb128 0x9
	.long	.LASF114
	.byte	0x4
	.uleb128 0x9
	.long	.LASF115
	.byte	0x5
	.uleb128 0x9
	.long	.LASF116
	.byte	0x6
	.uleb128 0x9
	.long	.LASF117
	.byte	0x7
	.uleb128 0x9
	.long	.LASF118
	.byte	0x8
	.uleb128 0x9
	.long	.LASF119
	.byte	0x9
	.uleb128 0x9
	.long	.LASF120
	.byte	0xa
	.uleb128 0x9
	.long	.LASF121
	.byte	0xb
	.uleb128 0x9
	.long	.LASF122
	.byte	0xc
	.uleb128 0x9
	.long	.LASF123
	.byte	0xd
	.uleb128 0x9
	.long	.LASF124
	.byte	0xe
	.uleb128 0x9
	.long	.LASF125
	.byte	0xf
	.uleb128 0x9
	.long	.LASF126
	.byte	0x10
	.uleb128 0x9
	.long	.LASF127
	.byte	0x11
	.uleb128 0x9
	.long	.LASF128
	.byte	0x12
	.uleb128 0x9
	.long	.LASF129
	.byte	0x13
	.uleb128 0x9
	.long	.LASF130
	.byte	0x14
	.uleb128 0x9
	.long	.LASF131
	.byte	0x15
	.uleb128 0x9
	.long	.LASF132
	.byte	0x16
	.uleb128 0x9
	.long	.LASF133
	.byte	0x17
	.uleb128 0x9
	.long	.LASF134
	.byte	0x18
	.uleb128 0x9
	.long	.LASF135
	.byte	0x19
	.uleb128 0x9
	.long	.LASF136
	.byte	0x1a
	.uleb128 0x9
	.long	.LASF137
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF138
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF139
	.byte	0x1d
	.uleb128 0x9
	.long	.LASF140
	.byte	0x1e
	.uleb128 0x9
	.long	.LASF141
	.byte	0x1f
	.uleb128 0x9
	.long	.LASF142
	.byte	0x20
	.uleb128 0x9
	.long	.LASF143
	.byte	0x21
	.uleb128 0x9
	.long	.LASF144
	.byte	0x22
	.uleb128 0x9
	.long	.LASF145
	.byte	0x23
	.uleb128 0x9
	.long	.LASF146
	.byte	0x24
	.uleb128 0x9
	.long	.LASF147
	.byte	0x25
	.uleb128 0x9
	.long	.LASF148
	.byte	0x26
	.uleb128 0x9
	.long	.LASF149
	.byte	0x27
	.uleb128 0x9
	.long	.LASF150
	.byte	0x28
	.uleb128 0x9
	.long	.LASF151
	.byte	0x29
	.uleb128 0x9
	.long	.LASF152
	.byte	0x2a
	.uleb128 0x9
	.long	.LASF153
	.byte	0x2b
	.uleb128 0x9
	.long	.LASF154
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF155
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF156
	.byte	0x2e
	.uleb128 0x9
	.long	.LASF157
	.byte	0x2f
	.uleb128 0x9
	.long	.LASF158
	.byte	0x30
	.uleb128 0x9
	.long	.LASF159
	.byte	0x31
	.uleb128 0x9
	.long	.LASF160
	.byte	0x32
	.uleb128 0x9
	.long	.LASF161
	.byte	0x33
	.uleb128 0x9
	.long	.LASF162
	.byte	0x34
	.uleb128 0x9
	.long	.LASF163
	.byte	0x35
	.uleb128 0x9
	.long	.LASF164
	.byte	0x36
	.uleb128 0x9
	.long	.LASF165
	.byte	0x37
	.uleb128 0x9
	.long	.LASF166
	.byte	0x38
	.uleb128 0x9
	.long	.LASF167
	.byte	0x39
	.uleb128 0x9
	.long	.LASF168
	.byte	0x3a
	.uleb128 0x9
	.long	.LASF169
	.byte	0x3b
	.uleb128 0x9
	.long	.LASF170
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF171
	.byte	0x3d
	.uleb128 0x9
	.long	.LASF172
	.byte	0x3e
	.uleb128 0x9
	.long	.LASF173
	.byte	0x3f
	.uleb128 0x9
	.long	.LASF174
	.byte	0x40
	.uleb128 0x9
	.long	.LASF175
	.byte	0x41
	.uleb128 0x9
	.long	.LASF176
	.byte	0x42
	.uleb128 0x9
	.long	.LASF177
	.byte	0x43
	.uleb128 0x9
	.long	.LASF178
	.byte	0x44
	.uleb128 0x9
	.long	.LASF179
	.byte	0x45
	.uleb128 0x9
	.long	.LASF180
	.byte	0x46
	.uleb128 0x9
	.long	.LASF181
	.byte	0x47
	.uleb128 0x9
	.long	.LASF182
	.byte	0x48
	.uleb128 0x9
	.long	.LASF183
	.byte	0x49
	.uleb128 0x9
	.long	.LASF184
	.byte	0x4a
	.uleb128 0x9
	.long	.LASF185
	.byte	0x4b
	.uleb128 0x9
	.long	.LASF186
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF187
	.byte	0x4d
	.uleb128 0x9
	.long	.LASF188
	.byte	0x4e
	.uleb128 0x9
	.long	.LASF189
	.byte	0x4f
	.uleb128 0x9
	.long	.LASF190
	.byte	0x50
	.uleb128 0x9
	.long	.LASF191
	.byte	0x51
	.uleb128 0x9
	.long	.LASF192
	.byte	0x52
	.uleb128 0x9
	.long	.LASF193
	.byte	0x53
	.uleb128 0x9
	.long	.LASF194
	.byte	0x54
	.uleb128 0x9
	.long	.LASF195
	.byte	0x55
	.uleb128 0x9
	.long	.LASF196
	.byte	0x56
	.uleb128 0x9
	.long	.LASF197
	.byte	0x57
	.uleb128 0x9
	.long	.LASF198
	.byte	0x58
	.uleb128 0x9
	.long	.LASF199
	.byte	0x59
	.uleb128 0x9
	.long	.LASF200
	.byte	0x5a
	.uleb128 0x9
	.long	.LASF201
	.byte	0x5b
	.uleb128 0x9
	.long	.LASF202
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF203
	.byte	0x5d
	.uleb128 0x9
	.long	.LASF204
	.byte	0x5e
	.uleb128 0x9
	.long	.LASF205
	.byte	0x5f
	.uleb128 0x9
	.long	.LASF206
	.byte	0x60
	.uleb128 0x9
	.long	.LASF207
	.byte	0x61
	.uleb128 0x9
	.long	.LASF208
	.byte	0x62
	.uleb128 0x9
	.long	.LASF209
	.byte	0x63
	.uleb128 0x9
	.long	.LASF210
	.byte	0x64
	.uleb128 0x9
	.long	.LASF211
	.byte	0x65
	.uleb128 0x9
	.long	.LASF212
	.byte	0x66
	.uleb128 0x9
	.long	.LASF213
	.byte	0x67
	.uleb128 0x9
	.long	.LASF214
	.byte	0x68
	.uleb128 0x9
	.long	.LASF215
	.byte	0x69
	.uleb128 0x9
	.long	.LASF216
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF217
	.byte	0x6b
	.uleb128 0x9
	.long	.LASF218
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF219
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF220
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF221
	.byte	0x6f
	.uleb128 0x9
	.long	.LASF222
	.byte	0x70
	.uleb128 0x9
	.long	.LASF223
	.byte	0x71
	.uleb128 0x9
	.long	.LASF224
	.byte	0x72
	.uleb128 0x9
	.long	.LASF225
	.byte	0x73
	.uleb128 0x9
	.long	.LASF226
	.byte	0x74
	.uleb128 0x9
	.long	.LASF227
	.byte	0x75
	.uleb128 0x9
	.long	.LASF228
	.byte	0x76
	.uleb128 0x9
	.long	.LASF229
	.byte	0x77
	.uleb128 0x9
	.long	.LASF230
	.byte	0x78
	.uleb128 0x9
	.long	.LASF231
	.byte	0x79
	.uleb128 0x9
	.long	.LASF232
	.byte	0x7a
	.uleb128 0x9
	.long	.LASF233
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF234
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF235
	.byte	0x7d
	.uleb128 0x9
	.long	.LASF236
	.byte	0x7e
	.uleb128 0x9
	.long	.LASF237
	.byte	0x7f
	.uleb128 0x9
	.long	.LASF238
	.byte	0x80
	.uleb128 0x9
	.long	.LASF239
	.byte	0x81
	.uleb128 0x9
	.long	.LASF240
	.byte	0x85
	.uleb128 0x9
	.long	.LASF241
	.byte	0x86
	.uleb128 0x9
	.long	.LASF242
	.byte	0x87
	.uleb128 0x9
	.long	.LASF243
	.byte	0x88
	.uleb128 0x9
	.long	.LASF244
	.byte	0x89
	.uleb128 0x9
	.long	.LASF245
	.byte	0x8a
	.uleb128 0x9
	.long	.LASF246
	.byte	0x8b
	.uleb128 0x9
	.long	.LASF247
	.byte	0x8c
	.uleb128 0x9
	.long	.LASF248
	.byte	0x8d
	.uleb128 0x9
	.long	.LASF249
	.byte	0x8e
	.uleb128 0x9
	.long	.LASF250
	.byte	0x8f
	.uleb128 0x9
	.long	.LASF251
	.byte	0x90
	.uleb128 0x9
	.long	.LASF252
	.byte	0x91
	.uleb128 0x9
	.long	.LASF253
	.byte	0x92
	.uleb128 0x9
	.long	.LASF254
	.byte	0x93
	.uleb128 0x9
	.long	.LASF255
	.byte	0x94
	.uleb128 0x9
	.long	.LASF256
	.byte	0x95
	.uleb128 0x9
	.long	.LASF257
	.byte	0x96
	.uleb128 0x9
	.long	.LASF258
	.byte	0x97
	.uleb128 0x9
	.long	.LASF259
	.byte	0x98
	.uleb128 0x9
	.long	.LASF260
	.byte	0x99
	.uleb128 0x9
	.long	.LASF261
	.byte	0x9a
	.uleb128 0x9
	.long	.LASF262
	.byte	0x9b
	.uleb128 0x9
	.long	.LASF263
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF264
	.byte	0x9d
	.uleb128 0x9
	.long	.LASF265
	.byte	0x9e
	.uleb128 0x9
	.long	.LASF266
	.byte	0x9f
	.uleb128 0x9
	.long	.LASF267
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF268
	.byte	0xa1
	.uleb128 0x9
	.long	.LASF269
	.byte	0xa2
	.uleb128 0x9
	.long	.LASF270
	.byte	0xa3
	.uleb128 0x9
	.long	.LASF271
	.byte	0xa4
	.uleb128 0x9
	.long	.LASF272
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF273
	.byte	0xb1
	.uleb128 0x9
	.long	.LASF274
	.byte	0xb2
	.uleb128 0x9
	.long	.LASF275
	.byte	0xb3
	.uleb128 0x9
	.long	.LASF276
	.byte	0xb4
	.uleb128 0x9
	.long	.LASF277
	.byte	0xb5
	.uleb128 0x9
	.long	.LASF278
	.byte	0xb6
	.uleb128 0x9
	.long	.LASF279
	.byte	0xb7
	.uleb128 0x9
	.long	.LASF280
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF281
	.byte	0xb9
	.uleb128 0x9
	.long	.LASF282
	.byte	0xba
	.uleb128 0x9
	.long	.LASF283
	.byte	0xbb
	.uleb128 0x9
	.long	.LASF284
	.byte	0xbc
	.uleb128 0x9
	.long	.LASF285
	.byte	0xbd
	.uleb128 0x9
	.long	.LASF286
	.byte	0xbe
	.uleb128 0x9
	.long	.LASF287
	.byte	0xbf
	.uleb128 0x9
	.long	.LASF288
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF289
	.byte	0xc1
	.uleb128 0x9
	.long	.LASF290
	.byte	0xc2
	.uleb128 0x9
	.long	.LASF291
	.byte	0xc3
	.uleb128 0x9
	.long	.LASF292
	.byte	0xc4
	.uleb128 0x9
	.long	.LASF293
	.byte	0xc5
	.uleb128 0x9
	.long	.LASF294
	.byte	0xc6
	.uleb128 0x9
	.long	.LASF295
	.byte	0xc7
	.uleb128 0x9
	.long	.LASF296
	.byte	0xc8
	.uleb128 0x9
	.long	.LASF297
	.byte	0xc9
	.uleb128 0x9
	.long	.LASF298
	.byte	0xca
	.uleb128 0x9
	.long	.LASF299
	.byte	0xcb
	.uleb128 0x9
	.long	.LASF300
	.byte	0xcc
	.uleb128 0x9
	.long	.LASF301
	.byte	0xcd
	.uleb128 0x9
	.long	.LASF302
	.byte	0xce
	.uleb128 0x9
	.long	.LASF303
	.byte	0xcf
	.uleb128 0x9
	.long	.LASF304
	.byte	0xd0
	.uleb128 0x9
	.long	.LASF305
	.byte	0xd1
	.uleb128 0x9
	.long	.LASF306
	.byte	0xd2
	.uleb128 0x9
	.long	.LASF307
	.byte	0xd3
	.uleb128 0x9
	.long	.LASF308
	.byte	0xd4
	.uleb128 0x9
	.long	.LASF309
	.byte	0xd5
	.uleb128 0x9
	.long	.LASF310
	.byte	0xd6
	.uleb128 0x9
	.long	.LASF311
	.byte	0xd7
	.uleb128 0x9
	.long	.LASF312
	.byte	0xd8
	.uleb128 0x9
	.long	.LASF313
	.byte	0xd9
	.uleb128 0x9
	.long	.LASF314
	.byte	0xda
	.uleb128 0x9
	.long	.LASF315
	.byte	0xdb
	.uleb128 0x9
	.long	.LASF316
	.byte	0xdc
	.uleb128 0x9
	.long	.LASF317
	.byte	0xdd
	.uleb128 0x9
	.long	.LASF318
	.byte	0xe0
	.uleb128 0x9
	.long	.LASF319
	.byte	0xe1
	.uleb128 0x9
	.long	.LASF320
	.byte	0xe2
	.uleb128 0x9
	.long	.LASF321
	.byte	0xe3
	.uleb128 0x9
	.long	.LASF322
	.byte	0xe4
	.uleb128 0x9
	.long	.LASF323
	.byte	0xe5
	.uleb128 0x9
	.long	.LASF324
	.byte	0xe6
	.uleb128 0x9
	.long	.LASF325
	.byte	0xe7
	.uleb128 0x15
	.long	.LASF326
	.value	0x101
	.uleb128 0x15
	.long	.LASF327
	.value	0x102
	.uleb128 0x15
	.long	.LASF328
	.value	0x103
	.uleb128 0x15
	.long	.LASF329
	.value	0x104
	.uleb128 0x15
	.long	.LASF330
	.value	0x105
	.uleb128 0x15
	.long	.LASF331
	.value	0x106
	.uleb128 0x15
	.long	.LASF332
	.value	0x107
	.uleb128 0x15
	.long	.LASF333
	.value	0x108
	.uleb128 0x15
	.long	.LASF334
	.value	0x109
	.uleb128 0x15
	.long	.LASF335
	.value	0x10a
	.uleb128 0x15
	.long	.LASF336
	.value	0x10b
	.uleb128 0x15
	.long	.LASF337
	.value	0x10c
	.uleb128 0x15
	.long	.LASF338
	.value	0x10d
	.uleb128 0x15
	.long	.LASF339
	.value	0x10e
	.uleb128 0x15
	.long	.LASF340
	.value	0x10f
	.uleb128 0x15
	.long	.LASF341
	.value	0x110
	.uleb128 0x15
	.long	.LASF342
	.value	0x111
	.uleb128 0x15
	.long	.LASF343
	.value	0x112
	.uleb128 0x15
	.long	.LASF344
	.value	0x113
	.uleb128 0x15
	.long	.LASF345
	.value	0x114
	.uleb128 0x15
	.long	.LASF346
	.value	0x115
	.uleb128 0x15
	.long	.LASF347
	.value	0x116
	.uleb128 0x15
	.long	.LASF348
	.value	0x117
	.uleb128 0x15
	.long	.LASF349
	.value	0x118
	.uleb128 0x15
	.long	.LASF350
	.value	0x119
	.uleb128 0x15
	.long	.LASF351
	.value	0x11a
	.uleb128 0x15
	.long	.LASF352
	.value	0x11b
	.uleb128 0x15
	.long	.LASF353
	.value	0x11c
	.uleb128 0x15
	.long	.LASF354
	.value	0x200
	.byte	0
	.uleb128 0xc
	.long	.LASF355
	.byte	0x8
	.value	0x18d
	.long	0x55c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF356
	.uleb128 0x5
	.byte	0x4
	.long	0xc0
	.uleb128 0x14
	.byte	0x4
	.long	0x33
	.byte	0x9
	.byte	0x48
	.long	.LASF357
	.long	0xb84
	.uleb128 0x9
	.long	.LASF358
	.byte	0
	.uleb128 0x9
	.long	.LASF359
	.byte	0x1
	.uleb128 0x9
	.long	.LASF360
	.byte	0x2
	.uleb128 0x9
	.long	.LASF361
	.byte	0x3
	.uleb128 0x9
	.long	.LASF362
	.byte	0x4
	.uleb128 0x9
	.long	.LASF363
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF364
	.byte	0x9
	.byte	0x4f
	.long	0xb4f
	.uleb128 0x16
	.long	.LASF366
	.byte	0x1
	.byte	0x11
	.long	.LASF368
	.long	0xbbb
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xbbb
	.uleb128 0x17
	.long	.LASF370
	.byte	0x1
	.byte	0x14
	.long	0xbbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF365
	.uleb128 0x16
	.long	.LASF367
	.byte	0x1
	.byte	0x1e
	.long	.LASF369
	.long	0xbbb
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xbee
	.uleb128 0x17
	.long	.LASF370
	.byte	0x1
	.byte	0x20
	.long	0xbbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x16
	.long	.LASF371
	.byte	0x1
	.byte	0x29
	.long	.LASF372
	.long	0xbbb
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xc1a
	.uleb128 0x17
	.long	.LASF370
	.byte	0x1
	.byte	0x2b
	.long	0xbbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x16
	.long	.LASF373
	.byte	0x1
	.byte	0x35
	.long	.LASF374
	.long	0xcb
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xc86
	.uleb128 0x18
	.long	.LASF371
	.byte	0x1
	.byte	0x35
	.long	0xc86
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0x35
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.byte	0x35
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.string	"bpp"
	.byte	0x1
	.byte	0x39
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"ppr"
	.byte	0x1
	.byte	0x3b
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.byte	0x3c
	.long	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x4be
	.uleb128 0x1b
	.long	.LASF377
	.byte	0x1
	.byte	0x58
	.long	.LASF388
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xd7e
	.uleb128 0x18
	.long	.LASF375
	.byte	0x1
	.byte	0x58
	.long	0xc86
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0x58
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"y"
	.byte	0x1
	.byte	0x58
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.string	"R"
	.byte	0x1
	.byte	0x59
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.string	"G"
	.byte	0x1
	.byte	0x59
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"B"
	.byte	0x1
	.byte	0x59
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.long	.LASF376
	.byte	0x1
	.byte	0x5b
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"bpp"
	.byte	0x1
	.byte	0x5f
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"ppr"
	.byte	0x1
	.byte	0x60
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0xd33
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.byte	0x6a
	.long	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LBB5
	.long	.LBE5-.LBB5
	.long	0xd4d
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.byte	0x74
	.long	0xb49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.long	.LBB6
	.long	.LBE6-.LBB6
	.long	0xd67
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.byte	0x7e
	.long	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LBB7
	.long	.LBE7-.LBB7
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.byte	0x90
	.long	0xd7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xcb
	.uleb128 0x1e
	.long	.LASF378
	.byte	0x1
	.byte	0x9b
	.long	0x4f
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xdba
	.uleb128 0x18
	.long	.LASF379
	.byte	0x1
	.byte	0x9b
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF380
	.byte	0x1
	.byte	0x9b
	.long	0xdba
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x74
	.uleb128 0x1f
	.long	.LASF381
	.byte	0x1
	.byte	0x6
	.long	0xc86
	.uleb128 0x5
	.byte	0x3
	.long	gScreenSurface
	.uleb128 0x1f
	.long	.LASF382
	.byte	0x1
	.byte	0x8
	.long	0x556
	.uleb128 0x5
	.byte	0x3
	.long	gWindow
	.uleb128 0x17
	.long	.LASF383
	.byte	0x1
	.byte	0xe
	.long	0x81
	.uleb128 0x5
	.byte	0x3
	.long	_ZL12SCREEN_WIDTH
	.uleb128 0x17
	.long	.LASF384
	.byte	0x1
	.byte	0xf
	.long	0x81
	.uleb128 0x5
	.byte	0x3
	.long	_ZL13SCREEN_HEIGHT
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF387:
	.string	"/home/sonja/repo/from-C-to-Forth"
.LASF167:
	.string	"SDL_SCANCODE_CAPSLOCK"
.LASF221:
	.string	"SDL_SCANCODE_F20"
.LASF222:
	.string	"SDL_SCANCODE_F21"
.LASF298:
	.string	"SDL_SCANCODE_KP_DBLVERTICALBAR"
.LASF224:
	.string	"SDL_SCANCODE_F23"
.LASF382:
	.string	"gWindow"
.LASF35:
	.string	"SDL_PACKEDORDER_XRGB"
.LASF223:
	.string	"SDL_SCANCODE_F22"
.LASF296:
	.string	"SDL_SCANCODE_KP_DBLAMPERSAND"
.LASF225:
	.string	"SDL_SCANCODE_F24"
.LASF61:
	.string	"ncolors"
.LASF66:
	.string	"format"
.LASF108:
	.string	"SDL_WINDOW_ALLOW_HIGHDPI"
.LASF56:
	.string	"SDL_PACKEDLAYOUT_8888"
.LASF67:
	.string	"palette"
.LASF86:
	.string	"flags"
.LASF111:
	.string	"15SDL_WindowFlags"
.LASF301:
	.string	"SDL_SCANCODE_KP_SPACE"
.LASF17:
	.string	"Uint16"
.LASF78:
	.string	"Aloss"
.LASF68:
	.string	"BitsPerPixel"
.LASF83:
	.string	"next"
.LASF63:
	.string	"version"
.LASF93:
	.string	"SDL_Window"
.LASF384:
	.string	"SCREEN_HEIGHT"
.LASF361:
	.string	"SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND"
.LASF341:
	.string	"SDL_SCANCODE_AC_STOP"
.LASF87:
	.string	"pitch"
.LASF344:
	.string	"SDL_SCANCODE_BRIGHTNESSDOWN"
.LASF360:
	.string	"SDL_MESSAGEBOX_COLOR_BUTTON_BORDER"
.LASF212:
	.string	"SDL_SCANCODE_POWER"
.LASF91:
	.string	"lock_data"
.LASF263:
	.string	"SDL_SCANCODE_CLEAR"
.LASF5:
	.string	"short int"
.LASF151:
	.string	"SDL_SCANCODE_ESCAPE"
.LASF2:
	.string	"unsigned int"
.LASF346:
	.string	"SDL_SCANCODE_DISPLAYSWITCH"
.LASF377:
	.string	"DrawPixel"
.LASF306:
	.string	"SDL_SCANCODE_KP_MEMCLEAR"
.LASF232:
	.string	"SDL_SCANCODE_UNDO"
.LASF197:
	.string	"SDL_SCANCODE_KP_PLUS"
.LASF182:
	.string	"SDL_SCANCODE_PAUSE"
.LASF322:
	.string	"SDL_SCANCODE_RCTRL"
.LASF236:
	.string	"SDL_SCANCODE_FIND"
.LASF57:
	.string	"SDL_PACKEDLAYOUT_2101010"
.LASF353:
	.string	"SDL_SCANCODE_APP2"
.LASF342:
	.string	"SDL_SCANCODE_AC_REFRESH"
.LASF308:
	.string	"SDL_SCANCODE_KP_MEMSUBTRACT"
.LASF107:
	.string	"SDL_WINDOW_FOREIGN"
.LASF155:
	.string	"SDL_SCANCODE_MINUS"
.LASF375:
	.string	"screen"
.LASF348:
	.string	"SDL_SCANCODE_KBDILLUMDOWN"
.LASF227:
	.string	"SDL_SCANCODE_HELP"
.LASF273:
	.string	"SDL_SCANCODE_KP_000"
.LASF18:
	.string	"Uint32"
.LASF164:
	.string	"SDL_SCANCODE_COMMA"
.LASF13:
	.string	"uint32_t"
.LASF351:
	.string	"SDL_SCANCODE_SLEEP"
.LASF272:
	.string	"SDL_SCANCODE_KP_00"
.LASF16:
	.string	"Uint8"
.LASF76:
	.string	"Gloss"
.LASF88:
	.string	"pixels"
.LASF290:
	.string	"SDL_SCANCODE_KP_XOR"
.LASF101:
	.string	"SDL_WINDOW_MINIMIZED"
.LASF350:
	.string	"SDL_SCANCODE_EJECT"
.LASF268:
	.string	"SDL_SCANCODE_OPER"
.LASF373:
	.string	"getpixel"
.LASF314:
	.string	"SDL_SCANCODE_KP_BINARY"
.LASF299:
	.string	"SDL_SCANCODE_KP_COLON"
.LASF302:
	.string	"SDL_SCANCODE_KP_AT"
.LASF316:
	.string	"SDL_SCANCODE_KP_DECIMAL"
.LASF96:
	.string	"SDL_WINDOW_OPENGL"
.LASF64:
	.string	"refcount"
.LASF338:
	.string	"SDL_SCANCODE_AC_HOME"
.LASF327:
	.string	"SDL_SCANCODE_AUDIONEXT"
.LASF7:
	.string	"long long unsigned int"
.LASF85:
	.string	"SDL_Surface"
.LASF318:
	.string	"SDL_SCANCODE_LCTRL"
.LASF65:
	.string	"SDL_PixelFormat"
.LASF304:
	.string	"SDL_SCANCODE_KP_MEMSTORE"
.LASF276:
	.string	"SDL_SCANCODE_CURRENCYUNIT"
.LASF82:
	.string	"Ashift"
.LASF335:
	.string	"SDL_SCANCODE_CALCULATOR"
.LASF278:
	.string	"SDL_SCANCODE_KP_LEFTPAREN"
.LASF231:
	.string	"SDL_SCANCODE_AGAIN"
.LASF109:
	.string	"SDL_WINDOW_MOUSE_CAPTURE"
.LASF210:
	.string	"SDL_SCANCODE_NONUSBACKSLASH"
.LASF183:
	.string	"SDL_SCANCODE_INSERT"
.LASF233:
	.string	"SDL_SCANCODE_CUT"
.LASF321:
	.string	"SDL_SCANCODE_LGUI"
.LASF364:
	.string	"SDL_MessageBoxColorType"
.LASF92:
	.string	"clip_rect"
.LASF242:
	.string	"SDL_SCANCODE_INTERNATIONAL1"
.LASF243:
	.string	"SDL_SCANCODE_INTERNATIONAL2"
.LASF244:
	.string	"SDL_SCANCODE_INTERNATIONAL3"
.LASF245:
	.string	"SDL_SCANCODE_INTERNATIONAL4"
.LASF246:
	.string	"SDL_SCANCODE_INTERNATIONAL5"
.LASF247:
	.string	"SDL_SCANCODE_INTERNATIONAL6"
.LASF248:
	.string	"SDL_SCANCODE_INTERNATIONAL7"
.LASF249:
	.string	"SDL_SCANCODE_INTERNATIONAL8"
.LASF250:
	.string	"SDL_SCANCODE_INTERNATIONAL9"
.LASF211:
	.string	"SDL_SCANCODE_APPLICATION"
.LASF328:
	.string	"SDL_SCANCODE_AUDIOPREV"
.LASF62:
	.string	"colors"
.LASF74:
	.string	"Amask"
.LASF363:
	.string	"SDL_MESSAGEBOX_COLOR_MAX"
.LASF50:
	.string	"SDL_PACKEDLAYOUT_NONE"
.LASF283:
	.string	"SDL_SCANCODE_KP_BACKSPACE"
.LASF269:
	.string	"SDL_SCANCODE_CLEARAGAIN"
.LASF47:
	.string	"SDL_ARRAYORDER_BGR"
.LASF8:
	.string	"long int"
.LASF320:
	.string	"SDL_SCANCODE_LALT"
.LASF102:
	.string	"SDL_WINDOW_MAXIMIZED"
.LASF333:
	.string	"SDL_SCANCODE_WWW"
.LASF275:
	.string	"SDL_SCANCODE_DECIMALSEPARATOR"
.LASF293:
	.string	"SDL_SCANCODE_KP_LESS"
.LASF379:
	.string	"argc"
.LASF194:
	.string	"SDL_SCANCODE_KP_DIVIDE"
.LASF105:
	.string	"SDL_WINDOW_MOUSE_FOCUS"
.LASF237:
	.string	"SDL_SCANCODE_MUTE"
.LASF352:
	.string	"SDL_SCANCODE_APP1"
.LASF336:
	.string	"SDL_SCANCODE_COMPUTER"
.LASF354:
	.string	"SDL_NUM_SCANCODES"
.LASF281:
	.string	"SDL_SCANCODE_KP_RIGHTBRACE"
.LASF163:
	.string	"SDL_SCANCODE_GRAVE"
.LASF58:
	.string	"SDL_PACKEDLAYOUT_1010102"
.LASF315:
	.string	"SDL_SCANCODE_KP_OCTAL"
.LASF238:
	.string	"SDL_SCANCODE_VOLUMEUP"
.LASF75:
	.string	"Rloss"
.LASF89:
	.string	"userdata"
.LASF330:
	.string	"SDL_SCANCODE_AUDIOPLAY"
.LASF260:
	.string	"SDL_SCANCODE_ALTERASE"
.LASF204:
	.string	"SDL_SCANCODE_KP_6"
.LASF388:
	.string	"_Z9DrawPixelP11SDL_Surfaceiihhh"
.LASF112:
	.string	"12SDL_Scancode"
.LASF71:
	.string	"Rmask"
.LASF317:
	.string	"SDL_SCANCODE_KP_HEXADECIMAL"
.LASF207:
	.string	"SDL_SCANCODE_KP_9"
.LASF159:
	.string	"SDL_SCANCODE_BACKSLASH"
.LASF59:
	.string	"SDL_Color"
.LASF84:
	.string	"SDL_Rect"
.LASF347:
	.string	"SDL_SCANCODE_KBDILLUMTOGGLE"
.LASF291:
	.string	"SDL_SCANCODE_KP_POWER"
.LASF383:
	.string	"SCREEN_WIDTH"
.LASF10:
	.string	"char"
.LASF72:
	.string	"Gmask"
.LASF323:
	.string	"SDL_SCANCODE_RSHIFT"
.LASF235:
	.string	"SDL_SCANCODE_PASTE"
.LASF41:
	.string	"SDL_PACKEDORDER_ABGR"
.LASF355:
	.string	"SDL_Scancode"
.LASF142:
	.string	"SDL_SCANCODE_3"
.LASF144:
	.string	"SDL_SCANCODE_5"
.LASF99:
	.string	"SDL_WINDOW_BORDERLESS"
.LASF146:
	.string	"SDL_SCANCODE_7"
.LASF310:
	.string	"SDL_SCANCODE_KP_MEMDIVIDE"
.LASF49:
	.string	"SDL_ARRAYORDER_ABGR"
.LASF162:
	.string	"SDL_SCANCODE_APOSTROPHE"
.LASF20:
	.string	"SDL_PIXELTYPE_INDEX1"
.LASF21:
	.string	"SDL_PIXELTYPE_INDEX4"
.LASF309:
	.string	"SDL_SCANCODE_KP_MEMMULTIPLY"
.LASF22:
	.string	"SDL_PIXELTYPE_INDEX8"
.LASF11:
	.string	"uint8_t"
.LASF73:
	.string	"Bmask"
.LASF90:
	.string	"locked"
.LASF115:
	.string	"SDL_SCANCODE_B"
.LASF313:
	.string	"SDL_SCANCODE_KP_CLEARENTRY"
.LASF104:
	.string	"SDL_WINDOW_INPUT_FOCUS"
.LASF196:
	.string	"SDL_SCANCODE_KP_MINUS"
.LASF241:
	.string	"SDL_SCANCODE_KP_EQUALSAS400"
.LASF198:
	.string	"SDL_SCANCODE_KP_ENTER"
.LASF120:
	.string	"SDL_SCANCODE_G"
.LASF240:
	.string	"SDL_SCANCODE_KP_COMMA"
.LASF187:
	.string	"SDL_SCANCODE_END"
.LASF165:
	.string	"SDL_SCANCODE_PERIOD"
.LASF161:
	.string	"SDL_SCANCODE_SEMICOLON"
.LASF79:
	.string	"Rshift"
.LASF329:
	.string	"SDL_SCANCODE_AUDIOSTOP"
.LASF297:
	.string	"SDL_SCANCODE_KP_VERTICALBAR"
.LASF158:
	.string	"SDL_SCANCODE_RIGHTBRACKET"
.LASF94:
	.string	"SDL_BlitMap"
.LASF131:
	.string	"SDL_SCANCODE_R"
.LASF6:
	.string	"long long int"
.LASF367:
	.string	"window"
.LASF70:
	.string	"padding"
.LASF340:
	.string	"SDL_SCANCODE_AC_FORWARD"
.LASF186:
	.string	"SDL_SCANCODE_DELETE"
.LASF190:
	.string	"SDL_SCANCODE_LEFT"
.LASF365:
	.string	"bool"
.LASF295:
	.string	"SDL_SCANCODE_KP_AMPERSAND"
.LASF294:
	.string	"SDL_SCANCODE_KP_GREATER"
.LASF34:
	.string	"SDL_PACKEDORDER_NONE"
.LASF103:
	.string	"SDL_WINDOW_INPUT_GRABBED"
.LASF97:
	.string	"SDL_WINDOW_SHOWN"
.LASF27:
	.string	"SDL_PIXELTYPE_ARRAYU16"
.LASF337:
	.string	"SDL_SCANCODE_AC_SEARCH"
.LASF43:
	.string	"SDL_ARRAYORDER_NONE"
.LASF180:
	.string	"SDL_SCANCODE_PRINTSCREEN"
.LASF271:
	.string	"SDL_SCANCODE_EXSEL"
.LASF274:
	.string	"SDL_SCANCODE_THOUSANDSSEPARATOR"
.LASF374:
	.string	"_Z8getpixelP11SDL_Surfaceii"
.LASF14:
	.string	"long double"
.LASF110:
	.string	"SDL_WindowFlags"
.LASF19:
	.string	"SDL_PIXELTYPE_UNKNOWN"
.LASF153:
	.string	"SDL_SCANCODE_TAB"
.LASF226:
	.string	"SDL_SCANCODE_EXECUTE"
.LASF349:
	.string	"SDL_SCANCODE_KBDILLUMUP"
.LASF60:
	.string	"SDL_Palette"
.LASF359:
	.string	"SDL_MESSAGEBOX_COLOR_TEXT"
.LASF80:
	.string	"Gshift"
.LASF282:
	.string	"SDL_SCANCODE_KP_TAB"
.LASF357:
	.string	"23SDL_MessageBoxColorType"
.LASF311:
	.string	"SDL_SCANCODE_KP_PLUSMINUS"
.LASF343:
	.string	"SDL_SCANCODE_AC_BOOKMARKS"
.LASF371:
	.string	"surface"
.LASF113:
	.string	"SDL_SCANCODE_UNKNOWN"
.LASF380:
	.string	"args"
.LASF53:
	.string	"SDL_PACKEDLAYOUT_1555"
.LASF1:
	.string	"short unsigned int"
.LASF55:
	.string	"SDL_PACKEDLAYOUT_565"
.LASF228:
	.string	"SDL_SCANCODE_MENU"
.LASF184:
	.string	"SDL_SCANCODE_HOME"
.LASF181:
	.string	"SDL_SCANCODE_SCROLLLOCK"
.LASF12:
	.string	"uint16_t"
.LASF305:
	.string	"SDL_SCANCODE_KP_MEMRECALL"
.LASF200:
	.string	"SDL_SCANCODE_KP_2"
.LASF201:
	.string	"SDL_SCANCODE_KP_3"
.LASF185:
	.string	"SDL_SCANCODE_PAGEUP"
.LASF203:
	.string	"SDL_SCANCODE_KP_5"
.LASF149:
	.string	"SDL_SCANCODE_0"
.LASF140:
	.string	"SDL_SCANCODE_1"
.LASF141:
	.string	"SDL_SCANCODE_2"
.LASF44:
	.string	"SDL_ARRAYORDER_RGB"
.LASF143:
	.string	"SDL_SCANCODE_4"
.LASF0:
	.string	"unsigned char"
.LASF145:
	.string	"SDL_SCANCODE_6"
.LASF262:
	.string	"SDL_SCANCODE_CANCEL"
.LASF147:
	.string	"SDL_SCANCODE_8"
.LASF148:
	.string	"SDL_SCANCODE_9"
.LASF230:
	.string	"SDL_SCANCODE_STOP"
.LASF114:
	.string	"SDL_SCANCODE_A"
.LASF239:
	.string	"SDL_SCANCODE_VOLUMEDOWN"
.LASF116:
	.string	"SDL_SCANCODE_C"
.LASF117:
	.string	"SDL_SCANCODE_D"
.LASF118:
	.string	"SDL_SCANCODE_E"
.LASF119:
	.string	"SDL_SCANCODE_F"
.LASF229:
	.string	"SDL_SCANCODE_SELECT"
.LASF121:
	.string	"SDL_SCANCODE_H"
.LASF122:
	.string	"SDL_SCANCODE_I"
.LASF123:
	.string	"SDL_SCANCODE_J"
.LASF124:
	.string	"SDL_SCANCODE_K"
.LASF125:
	.string	"SDL_SCANCODE_L"
.LASF126:
	.string	"SDL_SCANCODE_M"
.LASF127:
	.string	"SDL_SCANCODE_N"
.LASF128:
	.string	"SDL_SCANCODE_O"
.LASF129:
	.string	"SDL_SCANCODE_P"
.LASF130:
	.string	"SDL_SCANCODE_Q"
.LASF277:
	.string	"SDL_SCANCODE_CURRENCYSUBUNIT"
.LASF132:
	.string	"SDL_SCANCODE_S"
.LASF133:
	.string	"SDL_SCANCODE_T"
.LASF134:
	.string	"SDL_SCANCODE_U"
.LASF135:
	.string	"SDL_SCANCODE_V"
.LASF136:
	.string	"SDL_SCANCODE_W"
.LASF137:
	.string	"SDL_SCANCODE_X"
.LASF138:
	.string	"SDL_SCANCODE_Y"
.LASF139:
	.string	"SDL_SCANCODE_Z"
.LASF23:
	.string	"SDL_PIXELTYPE_PACKED8"
.LASF42:
	.string	"SDL_PACKEDORDER_BGRA"
.LASF39:
	.string	"SDL_PACKEDORDER_XBGR"
.LASF334:
	.string	"SDL_SCANCODE_MAIL"
.LASF48:
	.string	"SDL_ARRAYORDER_BGRA"
.LASF385:
	.string	"GNU C++ 5.4.0 20160609 -m32 -mtune=generic -march=i686 -g -fstack-protector-strong"
.LASF24:
	.string	"SDL_PIXELTYPE_PACKED16"
.LASF40:
	.string	"SDL_PACKEDORDER_BGRX"
.LASF376:
	.string	"color"
.LASF77:
	.string	"Bloss"
.LASF95:
	.string	"SDL_WINDOW_FULLSCREEN"
.LASF381:
	.string	"gScreenSurface"
.LASF51:
	.string	"SDL_PACKEDLAYOUT_332"
.LASF152:
	.string	"SDL_SCANCODE_BACKSPACE"
.LASF331:
	.string	"SDL_SCANCODE_AUDIOMUTE"
.LASF69:
	.string	"BytesPerPixel"
.LASF325:
	.string	"SDL_SCANCODE_RGUI"
.LASF370:
	.string	"success"
.LASF29:
	.string	"SDL_PIXELTYPE_ARRAYF16"
.LASF368:
	.string	"_Z4initv"
.LASF100:
	.string	"SDL_WINDOW_RESIZABLE"
.LASF37:
	.string	"SDL_PACKEDORDER_ARGB"
.LASF106:
	.string	"SDL_WINDOW_FULLSCREEN_DESKTOP"
.LASF150:
	.string	"SDL_SCANCODE_RETURN"
.LASF46:
	.string	"SDL_ARRAYORDER_ARGB"
.LASF154:
	.string	"SDL_SCANCODE_SPACE"
.LASF366:
	.string	"init"
.LASF52:
	.string	"SDL_PACKEDLAYOUT_4444"
.LASF9:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF270:
	.string	"SDL_SCANCODE_CRSEL"
.LASF324:
	.string	"SDL_SCANCODE_RALT"
.LASF81:
	.string	"Bshift"
.LASF386:
	.string	"01_hello_SDL.cpp"
.LASF28:
	.string	"SDL_PIXELTYPE_ARRAYU32"
.LASF356:
	.string	"float"
.LASF312:
	.string	"SDL_SCANCODE_KP_CLEAR"
.LASF319:
	.string	"SDL_SCANCODE_LSHIFT"
.LASF307:
	.string	"SDL_SCANCODE_KP_MEMADD"
.LASF189:
	.string	"SDL_SCANCODE_RIGHT"
.LASF261:
	.string	"SDL_SCANCODE_SYSREQ"
.LASF160:
	.string	"SDL_SCANCODE_NONUSHASH"
.LASF188:
	.string	"SDL_SCANCODE_PAGEDOWN"
.LASF168:
	.string	"SDL_SCANCODE_F1"
.LASF169:
	.string	"SDL_SCANCODE_F2"
.LASF170:
	.string	"SDL_SCANCODE_F3"
.LASF171:
	.string	"SDL_SCANCODE_F4"
.LASF172:
	.string	"SDL_SCANCODE_F5"
.LASF173:
	.string	"SDL_SCANCODE_F6"
.LASF174:
	.string	"SDL_SCANCODE_F7"
.LASF175:
	.string	"SDL_SCANCODE_F8"
.LASF176:
	.string	"SDL_SCANCODE_F9"
.LASF25:
	.string	"SDL_PIXELTYPE_PACKED32"
.LASF98:
	.string	"SDL_WINDOW_HIDDEN"
.LASF192:
	.string	"SDL_SCANCODE_UP"
.LASF345:
	.string	"SDL_SCANCODE_BRIGHTNESSUP"
.LASF369:
	.string	"_Z6windowv"
.LASF265:
	.string	"SDL_SCANCODE_RETURN2"
.LASF33:
	.string	"SDL_BITMAPORDER_1234"
.LASF220:
	.string	"SDL_SCANCODE_F19"
.LASF358:
	.string	"SDL_MESSAGEBOX_COLOR_BACKGROUND"
.LASF157:
	.string	"SDL_SCANCODE_LEFTBRACKET"
.LASF38:
	.string	"SDL_PACKEDORDER_RGBA"
.LASF213:
	.string	"SDL_SCANCODE_KP_EQUALS"
.LASF31:
	.string	"SDL_BITMAPORDER_NONE"
.LASF30:
	.string	"SDL_PIXELTYPE_ARRAYF32"
.LASF300:
	.string	"SDL_SCANCODE_KP_HASH"
.LASF45:
	.string	"SDL_ARRAYORDER_RGBA"
.LASF177:
	.string	"SDL_SCANCODE_F10"
.LASF280:
	.string	"SDL_SCANCODE_KP_LEFTBRACE"
.LASF179:
	.string	"SDL_SCANCODE_F12"
.LASF36:
	.string	"SDL_PACKEDORDER_RGBX"
.LASF166:
	.string	"SDL_SCANCODE_SLASH"
.LASF372:
	.string	"_Z7surfacev"
.LASF4:
	.string	"signed char"
.LASF266:
	.string	"SDL_SCANCODE_SEPARATOR"
.LASF303:
	.string	"SDL_SCANCODE_KP_EXCLAM"
.LASF208:
	.string	"SDL_SCANCODE_KP_0"
.LASF199:
	.string	"SDL_SCANCODE_KP_1"
.LASF332:
	.string	"SDL_SCANCODE_MEDIASELECT"
.LASF267:
	.string	"SDL_SCANCODE_OUT"
.LASF202:
	.string	"SDL_SCANCODE_KP_4"
.LASF32:
	.string	"SDL_BITMAPORDER_4321"
.LASF326:
	.string	"SDL_SCANCODE_MODE"
.LASF205:
	.string	"SDL_SCANCODE_KP_7"
.LASF206:
	.string	"SDL_SCANCODE_KP_8"
.LASF54:
	.string	"SDL_PACKEDLAYOUT_5551"
.LASF378:
	.string	"main"
.LASF362:
	.string	"SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED"
.LASF284:
	.string	"SDL_SCANCODE_KP_A"
.LASF285:
	.string	"SDL_SCANCODE_KP_B"
.LASF286:
	.string	"SDL_SCANCODE_KP_C"
.LASF287:
	.string	"SDL_SCANCODE_KP_D"
.LASF288:
	.string	"SDL_SCANCODE_KP_E"
.LASF289:
	.string	"SDL_SCANCODE_KP_F"
.LASF15:
	.string	"double"
.LASF26:
	.string	"SDL_PIXELTYPE_ARRAYU8"
.LASF193:
	.string	"SDL_SCANCODE_NUMLOCKCLEAR"
.LASF178:
	.string	"SDL_SCANCODE_F11"
.LASF264:
	.string	"SDL_SCANCODE_PRIOR"
.LASF214:
	.string	"SDL_SCANCODE_F13"
.LASF215:
	.string	"SDL_SCANCODE_F14"
.LASF216:
	.string	"SDL_SCANCODE_F15"
.LASF217:
	.string	"SDL_SCANCODE_F16"
.LASF218:
	.string	"SDL_SCANCODE_F17"
.LASF219:
	.string	"SDL_SCANCODE_F18"
.LASF234:
	.string	"SDL_SCANCODE_COPY"
.LASF156:
	.string	"SDL_SCANCODE_EQUALS"
.LASF339:
	.string	"SDL_SCANCODE_AC_BACK"
.LASF251:
	.string	"SDL_SCANCODE_LANG1"
.LASF252:
	.string	"SDL_SCANCODE_LANG2"
.LASF253:
	.string	"SDL_SCANCODE_LANG3"
.LASF254:
	.string	"SDL_SCANCODE_LANG4"
.LASF255:
	.string	"SDL_SCANCODE_LANG5"
.LASF256:
	.string	"SDL_SCANCODE_LANG6"
.LASF257:
	.string	"SDL_SCANCODE_LANG7"
.LASF258:
	.string	"SDL_SCANCODE_LANG8"
.LASF259:
	.string	"SDL_SCANCODE_LANG9"
.LASF195:
	.string	"SDL_SCANCODE_KP_MULTIPLY"
.LASF191:
	.string	"SDL_SCANCODE_DOWN"
.LASF209:
	.string	"SDL_SCANCODE_KP_PERIOD"
.LASF292:
	.string	"SDL_SCANCODE_KP_PERCENT"
.LASF279:
	.string	"SDL_SCANCODE_KP_RIGHTPAREN"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
