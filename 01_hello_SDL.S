	.file	"01_hello_SDL.cpp"
	.globl	gWindow
	.bss
	.align 4
	.type	gWindow, @object
	.size	gWindow, 4
gWindow:
	.zero	4
	.section	.rodata
	.align 4
.LC0:
	.string	"SDL could not initialize! SDL_Error: %s\n"
	.text
	.globl	_Z4initv
	.type	_Z4initv, @function
_Z4initv:
.LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movb	$1, -9(%ebp)
	subl	$12, %esp
	pushl	$32
	call	SDL_Init
	addl	$16, %esp
	shrl	$31, %eax
	testb	%al, %al
	je	.L2
	call	SDL_GetError
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
.L2:
	movzbl	-9(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	_Z4initv, .-_Z4initv
	.section	.rodata
.LC1:
	.string	"Failed to initialize!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
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
	call	_Z4initv
	xorl	$1, %eax
	testb	%al, %al
	je	.L5
	subl	$12, %esp
	pushl	$.LC1
	call	puts
	addl	$16, %esp
.L5:
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
