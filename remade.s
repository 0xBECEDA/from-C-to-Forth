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
error:
	.string	"SDL could not initialize! SDL_Error: %s\n"
	.text
	.globl	_Z4initv
	.type	_Z4initv, @function
_Z4initv:
	pushl	%ebp
	movl	%esp, %ebp
	movb	$1, -9(%ebp)
	pushl	$32
	call	SDL_Init
	shrl	$31, %eax
    testb	%al, %al
	je	success
	call	SDL_GetError
	pushl	%eax
	pushl	$error
	call	printf
success:
	movzbl	-9(%ebp), %eax
	leave
	ret

.LFE11:
	.size	_Z4initv, .-_Z4initv
	.section	.rodata
error_main:
	.string	"Failed to initialize!"
	.text
	.globl	main
	.type	main, @function

main:
	leal	4(%esp), %ecx
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ecx
	call	_Z4initv
	xorl	$1, %eax
	testb	%al, %al
	je	exit
	pushl	$error_main
	call	puts
exit:
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	leave
	leal	-4(%ecx), %esp
	ret
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
