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
_Z4init_errmsg:
	.string	"SDL could not initialize! SDL_Error: %s\n"

	.text
	.globl	_Z4initv
	.type	_Z4initv, @function
_Z4initv:
    // prolog
	pushl	%ebp
	movl	%esp, %ebp
    // call SDL_Init & clear stack
    pushl	$32
	call	SDL_Init
    addl    $4, %esp
    // test (retval < 0)
	shrl	$31, %eax
    testb	%al, %al
	je	success
    // ----------------
    // show error message
_Z4initv_err:
    call	SDL_GetError
	pushl	%eax
	pushl	$_Z4init_errmsg
	call	printf
    addl    $8, %esp
    movl    $0, %eax
    jmp _Z4initv_ret
    // ----------------
    // return true
success:
	movl	$1, %eax
    // epilog
_Z4initv_ret:
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
    // prolog
	pushl	%ebp
	movl	%esp, %ebp
    // ?
	pushl	%ecx
    // call _Z4initv
	call	_Z4initv
    // test (!retval)
	xorl	$1, %eax
	testb	%al, %al
    // success
	je	exit
    // ----------------
main_err:
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
