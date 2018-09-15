	.file	"01_hello_SDL.cpp"
	.text
.Ltext0:
	.globl	gWindow
	.bss
	.align 4
	.type	gWindow, @object
	.size	gWindow, 4
gWindow:
	.zero	4
	.globl	surface
	.align 4
	.type	surface, @object
	.size	surface, 4
surface:
	.zero	4
	.globl	event
	.align 32
	.type	event, @object
	.size	event, 56
event:
	.zero	56
	.globl	SCREEN_WIDTH
	.data
	.align 4
	.type	SCREEN_WIDTH, @object
	.size	SCREEN_WIDTH, 4
SCREEN_WIDTH:
	.long	480
	.globl	SCREEN_HEIGHT
	.align 4
	.type	SCREEN_HEIGHT, @object
	.size	SCREEN_HEIGHT, 4
SCREEN_HEIGHT:
	.long	520
	.globl	i
	.bss
	.align 4
	.type	i, @object
	.size	i, 4
i:
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
	.file 1 "01_hello_SDL.cpp"
	.loc 1 16 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 18 0
	movb	$1, -9(%ebp)
	.loc 1 22 0
	subl	$12, %esp
	pushl	$32
	call	SDL_Init
	addl	$16, %esp
	shrl	$31, %eax
	testb	%al, %al
	je	.L2
	.loc 1 23 0
	call	SDL_GetError
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
.L2:
	.loc 1 26 0
	movzbl	-9(%ebp), %eax
	.loc 1 27 0
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
	.text
	.globl	_Z6createv
	.type	_Z6createv, @function
_Z6createv:
.LFB12:
	.loc 1 29 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 31 0
	movb	$1, -9(%ebp)
	.loc 1 32 0
	movl	SCREEN_HEIGHT, %edx
	movl	SCREEN_WIDTH, %eax
	subl	$8, %esp
	pushl	$4
	pushl	%edx
	pushl	%eax
	pushl	$536805376
	pushl	$536805376
	pushl	$.LC1
	call	SDL_CreateWindow
	addl	$32, %esp
	movl	%eax, gWindow
	.loc 1 33 0
	movzbl	-9(%ebp), %eax
	.loc 1 34 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	_Z6createv, .-_Z6createv
	.section	.rodata
	.align 4
.LC2:
	.string	"Didn't create surface! SDL_Error: %s\n"
	.text
	.globl	_Z14surface_createv
	.type	_Z14surface_createv, @function
_Z14surface_createv:
.LFB13:
	.loc 1 38 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 39 0
	movb	$1, -9(%ebp)
	.loc 1 41 0
	movl	gWindow, %eax
	subl	$12, %esp
	pushl	%eax
	call	SDL_GetWindowSurface
	addl	$16, %esp
	movl	%eax, surface
	.loc 1 43 0
	movl	surface, %eax
	testl	%eax, %eax
	jne	.L7
	.loc 1 44 0
	call	SDL_GetError
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC2
	call	printf
	addl	$16, %esp
.L7:
	.loc 1 46 0
	movzbl	-9(%ebp), %eax
	.loc 1 47 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	_Z14surface_createv, .-_Z14surface_createv
	.section	.rodata
.LC3:
	.string	"SDL_FIRSTEVENT is %d\n"
.LC4:
	.string	"SDL_QUIT is %d\n"
.LC5:
	.string	"SDL_APP_TERMINATING is %d\n"
.LC6:
	.string	"SDL_APP_LOWMEMORY is %d\n"
	.align 4
.LC7:
	.string	"SDL_APP_WILLENTERBACKGROUND is %d\n"
	.align 4
.LC8:
	.string	"SDL_APP_DIDENTERBACKGROUND is %d\n"
	.align 4
.LC9:
	.string	"SDL_APP_WILLENTERFOREGROUND is %d\n"
	.align 4
.LC10:
	.string	"SDL_APP_DIDENTERFOREGROUND is %d\n"
.LC11:
	.string	"SDL_WINDOWEVENT is %d\n"
.LC12:
	.string	"SDL_SYSWMEVENT is %d\n"
.LC13:
	.string	"SDL_KEYDOWN is %d\n"
.LC14:
	.string	"SDL_KEYUP is %d\n"
.LC15:
	.string	"SDL_TEXTEDITING is %d\n"
.LC16:
	.string	"SDL_TEXTINPUT is %d\n"
.LC17:
	.string	"SDL_KEYMAPCHANGED is %d\n"
.LC18:
	.string	"SDL_MOUSEMOTION is %d\n"
.LC19:
	.string	"SDL_MOUSEBUTTONDOWN is %d\n"
.LC20:
	.string	"SDL_MOUSEBUTTONUP is %d\n"
.LC21:
	.string	"SDL_MOUSEWHEEL is %d\n"
.LC22:
	.string	"SDL_JOYAXISMOTION is %d\n"
.LC23:
	.string	"SDL_JOYBALLMOTION is %d\n"
.LC24:
	.string	"SDL_JOYHATMOTION is %d\n"
.LC25:
	.string	"SDL_JOYBUTTONDOWN is %d\n"
.LC26:
	.string	"SDL_JOYBUTTONUP is %d\n"
.LC27:
	.string	"SDL_JOYDEVICEADDED is %d\n"
.LC28:
	.string	"SDL_JOYDEVICEREMOVED is %d\n"
	.align 4
.LC29:
	.string	"SDL_CONTROLLERAXISMOTION is %d\n"
	.align 4
.LC30:
	.string	"SDL_CONTROLLERBUTTONDOWN is %d\n"
.LC31:
	.string	"SDL_CONTROLLERBUTTONUP is %d\n"
	.align 4
.LC32:
	.string	"SDL_CONTROLLERDEVICEADDED is %d\n"
	.align 4
.LC33:
	.string	"SDL_CONTROLLERDEVICEREMOVED is %d\n"
	.align 4
.LC34:
	.string	"SDL_CONTROLLERDEVICEREMAPPED is %d\n"
.LC35:
	.string	"SDL_FINGERDOWN is %d\n"
.LC36:
	.string	"SDL_FINGERUP is %d\n"
.LC37:
	.string	"SDL_FINGERMOTION is %d\n"
.LC38:
	.string	"SDL_DOLLARGESTURE is %d\n"
.LC39:
	.string	"SDL_DOLLARRECORD is %d\n"
.LC40:
	.string	"SDL_MULTIGESTURE is %d\n"
.LC41:
	.string	"SDL_CLIPBOARDUPDATE is %d\n"
.LC42:
	.string	"SDL_DROPFILE is %d\n"
.LC43:
	.string	"SDL_AUDIODEVICEADDED is %d\n"
.LC44:
	.string	"SDL_AUDIODEVICEREMOVED is %d\n"
	.align 4
.LC45:
	.string	"SDL_RENDER_TARGETS_RESET is %d\n"
	.align 4
.LC46:
	.string	"SDL_RENDER_DEVICE_RESET is %d\n"
.LC47:
	.string	"SDL_USEREVENT is %d\n"
.LC48:
	.string	"SDL_LASTEVENT is %d\n"
	.text
	.globl	_Z14PrintAllEventsv
	.type	_Z14PrintAllEventsv, @function
_Z14PrintAllEventsv:
.LFB14:
	.loc 1 51 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 52 0
	subl	$8, %esp
	pushl	$0
	pushl	$.LC3
	call	printf
	addl	$16, %esp
	.loc 1 53 0
	subl	$8, %esp
	pushl	$256
	pushl	$.LC4
	call	printf
	addl	$16, %esp
	.loc 1 54 0
	subl	$8, %esp
	pushl	$257
	pushl	$.LC5
	call	printf
	addl	$16, %esp
	.loc 1 55 0
	subl	$8, %esp
	pushl	$258
	pushl	$.LC6
	call	printf
	addl	$16, %esp
	.loc 1 56 0
	subl	$8, %esp
	pushl	$259
	pushl	$.LC7
	call	printf
	addl	$16, %esp
	.loc 1 57 0
	subl	$8, %esp
	pushl	$260
	pushl	$.LC8
	call	printf
	addl	$16, %esp
	.loc 1 58 0
	subl	$8, %esp
	pushl	$261
	pushl	$.LC9
	call	printf
	addl	$16, %esp
	.loc 1 59 0
	subl	$8, %esp
	pushl	$262
	pushl	$.LC10
	call	printf
	addl	$16, %esp
	.loc 1 60 0
	subl	$8, %esp
	pushl	$512
	pushl	$.LC11
	call	printf
	addl	$16, %esp
	.loc 1 61 0
	subl	$8, %esp
	pushl	$513
	pushl	$.LC12
	call	printf
	addl	$16, %esp
	.loc 1 62 0
	subl	$8, %esp
	pushl	$768
	pushl	$.LC13
	call	printf
	addl	$16, %esp
	.loc 1 63 0
	subl	$8, %esp
	pushl	$769
	pushl	$.LC14
	call	printf
	addl	$16, %esp
	.loc 1 64 0
	subl	$8, %esp
	pushl	$770
	pushl	$.LC15
	call	printf
	addl	$16, %esp
	.loc 1 65 0
	subl	$8, %esp
	pushl	$771
	pushl	$.LC16
	call	printf
	addl	$16, %esp
	.loc 1 66 0
	subl	$8, %esp
	pushl	$772
	pushl	$.LC17
	call	printf
	addl	$16, %esp
	.loc 1 67 0
	subl	$8, %esp
	pushl	$1024
	pushl	$.LC18
	call	printf
	addl	$16, %esp
	.loc 1 68 0
	subl	$8, %esp
	pushl	$1025
	pushl	$.LC19
	call	printf
	addl	$16, %esp
	.loc 1 69 0
	subl	$8, %esp
	pushl	$1026
	pushl	$.LC20
	call	printf
	addl	$16, %esp
	.loc 1 70 0
	subl	$8, %esp
	pushl	$1027
	pushl	$.LC21
	call	printf
	addl	$16, %esp
	.loc 1 71 0
	subl	$8, %esp
	pushl	$1536
	pushl	$.LC22
	call	printf
	addl	$16, %esp
	.loc 1 72 0
	subl	$8, %esp
	pushl	$1537
	pushl	$.LC23
	call	printf
	addl	$16, %esp
	.loc 1 73 0
	subl	$8, %esp
	pushl	$1538
	pushl	$.LC24
	call	printf
	addl	$16, %esp
	.loc 1 74 0
	subl	$8, %esp
	pushl	$1539
	pushl	$.LC25
	call	printf
	addl	$16, %esp
	.loc 1 75 0
	subl	$8, %esp
	pushl	$1540
	pushl	$.LC26
	call	printf
	addl	$16, %esp
	.loc 1 76 0
	subl	$8, %esp
	pushl	$1541
	pushl	$.LC27
	call	printf
	addl	$16, %esp
	.loc 1 77 0
	subl	$8, %esp
	pushl	$1542
	pushl	$.LC28
	call	printf
	addl	$16, %esp
	.loc 1 78 0
	subl	$8, %esp
	pushl	$1616
	pushl	$.LC29
	call	printf
	addl	$16, %esp
	.loc 1 79 0
	subl	$8, %esp
	pushl	$1617
	pushl	$.LC30
	call	printf
	addl	$16, %esp
	.loc 1 80 0
	subl	$8, %esp
	pushl	$1618
	pushl	$.LC31
	call	printf
	addl	$16, %esp
	.loc 1 81 0
	subl	$8, %esp
	pushl	$1619
	pushl	$.LC32
	call	printf
	addl	$16, %esp
	.loc 1 82 0
	subl	$8, %esp
	pushl	$1620
	pushl	$.LC33
	call	printf
	addl	$16, %esp
	.loc 1 83 0
	subl	$8, %esp
	pushl	$1621
	pushl	$.LC34
	call	printf
	addl	$16, %esp
	.loc 1 84 0
	subl	$8, %esp
	pushl	$1792
	pushl	$.LC35
	call	printf
	addl	$16, %esp
	.loc 1 85 0
	subl	$8, %esp
	pushl	$1793
	pushl	$.LC36
	call	printf
	addl	$16, %esp
	.loc 1 86 0
	subl	$8, %esp
	pushl	$1794
	pushl	$.LC37
	call	printf
	addl	$16, %esp
	.loc 1 87 0
	subl	$8, %esp
	pushl	$2048
	pushl	$.LC38
	call	printf
	addl	$16, %esp
	.loc 1 88 0
	subl	$8, %esp
	pushl	$2049
	pushl	$.LC39
	call	printf
	addl	$16, %esp
	.loc 1 89 0
	subl	$8, %esp
	pushl	$2050
	pushl	$.LC40
	call	printf
	addl	$16, %esp
	.loc 1 90 0
	subl	$8, %esp
	pushl	$2304
	pushl	$.LC41
	call	printf
	addl	$16, %esp
	.loc 1 91 0
	subl	$8, %esp
	pushl	$4096
	pushl	$.LC42
	call	printf
	addl	$16, %esp
	.loc 1 97 0
	subl	$8, %esp
	pushl	$4352
	pushl	$.LC43
	call	printf
	addl	$16, %esp
	.loc 1 98 0
	subl	$8, %esp
	pushl	$4353
	pushl	$.LC44
	call	printf
	addl	$16, %esp
	.loc 1 99 0
	subl	$8, %esp
	pushl	$8192
	pushl	$.LC45
	call	printf
	addl	$16, %esp
	.loc 1 100 0
	subl	$8, %esp
	pushl	$8193
	pushl	$.LC46
	call	printf
	addl	$16, %esp
	.loc 1 102 0
	subl	$8, %esp
	pushl	$32768
	pushl	$.LC47
	call	printf
	addl	$16, %esp
	.loc 1 103 0
	subl	$8, %esp
	pushl	$65535
	pushl	$.LC48
	call	printf
	addl	$16, %esp
	.loc 1 104 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	_Z14PrintAllEventsv, .-_Z14PrintAllEventsv
	.section	.rodata
.LC49:
	.string	"Window %d shown"
.LC50:
	.string	"Window %d hidden"
.LC51:
	.string	"Window %d exposed"
.LC52:
	.string	"Window %d moved to %d,%d"
.LC53:
	.string	"Window %d resized to %dx%d"
	.align 4
.LC54:
	.string	"Window %d size changed to %dx%d"
.LC55:
	.string	"Window %d minimized"
.LC56:
	.string	"Window %d maximized"
.LC57:
	.string	"Window %d restored"
.LC58:
	.string	"Mouse entered window %d"
.LC59:
	.string	"Mouse left window %d"
	.align 4
.LC60:
	.string	"Window %d gained keyboard focus"
.LC61:
	.string	"Window %d lost keyboard focus"
.LC62:
	.string	"Window %d closed"
	.align 4
.LC63:
	.string	"Window %d got unknown event %d"
	.text
	.globl	_Z10PrintEventP9SDL_Event
	.type	_Z10PrintEventP9SDL_Event, @function
_Z10PrintEventP9SDL_Event:
.LFB15:
	.loc 1 108 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 109 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$512, %eax
	jne	.L29
	.loc 1 110 0
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movzbl	%al, %eax
	cmpl	$14, %eax
	ja	.L12
	movl	.L14(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L14:
	.long	.L12
	.long	.L13
	.long	.L15
	.long	.L16
	.long	.L17
	.long	.L18
	.long	.L19
	.long	.L20
	.long	.L21
	.long	.L22
	.long	.L23
	.long	.L24
	.long	.L25
	.long	.L26
	.long	.L27
	.text
.L13:
	.loc 1 112 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC49
	call	printf
	addl	$16, %esp
	.loc 1 113 0
	jmp	.L11
.L15:
	.loc 1 115 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC50
	call	printf
	addl	$16, %esp
	.loc 1 116 0
	jmp	.L11
.L16:
	.loc 1 118 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC51
	call	printf
	addl	$16, %esp
	.loc 1 119 0
	jmp	.L11
.L17:
	.loc 1 121 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 123 0
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	$.LC52
	call	printf
	addl	$16, %esp
	.loc 1 124 0
	jmp	.L11
.L18:
	.loc 1 126 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 128 0
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	$.LC53
	call	printf
	addl	$16, %esp
	.loc 1 129 0
	jmp	.L11
.L19:
	.loc 1 131 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 133 0
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	$.LC54
	call	printf
	addl	$16, %esp
	.loc 1 134 0
	jmp	.L11
.L20:
	.loc 1 136 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC55
	call	printf
	addl	$16, %esp
	.loc 1 137 0
	jmp	.L11
.L21:
	.loc 1 139 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC56
	call	printf
	addl	$16, %esp
	.loc 1 140 0
	jmp	.L11
.L22:
	.loc 1 142 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC57
	call	printf
	addl	$16, %esp
	.loc 1 143 0
	jmp	.L11
.L23:
	.loc 1 145 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 146 0
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC58
	call	printf
	addl	$16, %esp
	.loc 1 147 0
	jmp	.L11
.L24:
	.loc 1 149 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC59
	call	printf
	addl	$16, %esp
	.loc 1 150 0
	jmp	.L11
.L25:
	.loc 1 152 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 153 0
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC60
	call	printf
	addl	$16, %esp
	.loc 1 154 0
	jmp	.L11
.L26:
	.loc 1 156 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 157 0
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC61
	call	printf
	addl	$16, %esp
	.loc 1 158 0
	jmp	.L11
.L27:
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC62
	call	printf
	addl	$16, %esp
	.loc 1 161 0
	jmp	.L11
.L12:
	.loc 1 172 0
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	.loc 1 171 0
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	.loc 1 172 0
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	$.LC63
	call	printf
	addl	$16, %esp
	.loc 1 173 0
	nop
.L11:
.L29:
	.loc 1 176 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	_Z10PrintEventP9SDL_Event, .-_Z10PrintEventP9SDL_Event
	.globl	_Z8getpixelP11SDL_Surfaceii
	.type	_Z8getpixelP11SDL_Surfaceii, @function
_Z8getpixelP11SDL_Surfaceii:
.LFB16:
	.loc 1 178 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 180 0
	subl	$12, %esp
	pushl	8(%ebp)
	call	SDL_LockSurface
	addl	$16, %esp
	.loc 1 182 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cltd
	idivl	-20(%ebp)
	movl	%eax, -16(%ebp)
	.loc 1 185 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	imull	-16(%ebp), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	%eax, %ecx
	movl	-20(%ebp), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 187 0
	movl	-20(%ebp), %eax
	cmpl	$2, %eax
	je	.L32
	cmpl	$2, %eax
	jg	.L33
	cmpl	$1, %eax
	je	.L34
	jmp	.L31
.L33:
	cmpl	$3, %eax
	je	.L35
	cmpl	$4, %eax
	je	.L36
	jmp	.L31
.L34:
	.loc 1 189 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	jmp	.L37
.L32:
	.loc 1 193 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	jmp	.L37
.L35:
	.loc 1 200 0
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
	jmp	.L37
.L36:
	.loc 1 204 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	jmp	.L37
.L31:
	.loc 1 208 0
	movl	$0, %eax
.L37:
	.loc 1 212 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	_Z8getpixelP11SDL_Surfaceii, .-_Z8getpixelP11SDL_Surfaceii
	.section	.rodata
.LC64:
	.string	"Failed to initialize SDL!"
.LC65:
	.string	"Failed to initialize window!"
.LC66:
	.string	"Failed to initialize surface!"
.LC67:
	.string	"We got a motion event."
	.align 4
.LC68:
	.string	"Current mouse position is: (%d, %d)\n"
.LC69:
	.string	"Key is pressed."
	.align 4
.LC70:
	.string	"Unhandled Event type is: ( %d) !\n"
.LC71:
	.string	"default case!"
.LC72:
	.string	"Event queue empty."
.LC73:
	.string	"Exit."
	.text
	.globl	main
	.type	main, @function
main:
.LFB17:
	.loc 1 216 0
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
	.loc 1 218 0
	call	_Z4initv
	xorl	$1, %eax
	testb	%al, %al
	je	.L39
	.loc 1 220 0
	subl	$12, %esp
	pushl	$.LC64
	call	puts
	addl	$16, %esp
.L39:
	.loc 1 223 0
	call	_Z6createv
	xorl	$1, %eax
	testb	%al, %al
	je	.L40
	.loc 1 225 0
	subl	$12, %esp
	pushl	$.LC65
	call	puts
	addl	$16, %esp
.L40:
	.loc 1 228 0
	call	_Z14surface_createv
	xorl	$1, %eax
	testb	%al, %al
	je	.L41
	.loc 1 230 0
	subl	$12, %esp
	pushl	$.LC66
	call	puts
	addl	$16, %esp
// цикл while
.L41:
	.loc 1 234 0
   // проверка условия
    movl	event, %eax
	cmpl	$256, %eax
    //выход из цикла
    je	.L42

    .loc 1 236 0
   // SDL_WaitEvent(& event);
    subl	$12, %esp // зачем?
    pushl	$event
	call	SDL_WaitEvent

    addl	$16, %esp // чтоб тут очистить 16 байт?
	.loc 1 237 0
	movl	event, %eax
    // нажали клавишу?
    cmpl	$768, %eax
	je	.L44
    // подвинули мышку?
	cmpl	$1024, %eax
	je	.L45
	cmpl	$512, %eax
	je	.L50
	jmp	.L49
// обработка движения мыши
.L45:
	.loc 1 239 0
	subl	$12, %esp
//  printf("We got a motion event.\n");
    pushl	$.LC67
	call	puts

	addl	$16, %esp
	.loc 1 240 0
    // printf("Current mouse position is: (%d, %d)\n",
    //         event.motion.x, event.motion.y);
    movl	event+24, %edx //отправляем x
	movl	event+20, %eax //отправляем y
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	$.LC68
	call	printf
	addl	$16, %esp
	.loc 1 241 0
	jmp	.L47
.L44:
	.loc 1 243 0
	subl	$12, %esp
	pushl	$.LC69
	call	puts
	addl	$16, %esp
	.loc 1 244 0
	jmp	.L47
.L49:
	.loc 1 249 0
	movl	event, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC70
	call	printf
	addl	$16, %esp
	.loc 1 250 0
	subl	$12, %esp
	pushl	$.LC71
	call	printf
	addl	$16, %esp
	.loc 1 251 0
	jmp	.L47
.L50:
	.loc 1 246 0
	nop
// повтор цикла
.L47:
	.loc 1 234 0 discriminator 1
	jmp	.L41
// выход их цикла
.L42:
	.loc 1 255 0
	subl	$12, %esp
	pushl	$.LC72
	call	puts
	addl	$16, %esp
	.loc 1 256 0
	subl	$12, %esp
	pushl	$.LC73
	call	puts
	addl	$16, %esp
	.loc 1 257 0
	movl	$0, %eax
	.loc 1 258 0
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/i386-linux-gnu/sys/types.h"
	.file 3 "/usr/include/stdint.h"
	.file 4 "/usr/include/SDL2/SDL_stdinc.h"
	.file 5 "/usr/include/SDL2/SDL_pixels.h"
	.file 6 "/usr/include/SDL2/SDL_rect.h"
	.file 7 "/usr/include/SDL2/SDL_surface.h"
	.file 8 "/usr/include/SDL2/SDL_video.h"
	.file 9 "/usr/include/SDL2/SDL_scancode.h"
	.file 10 "/usr/include/SDL2/SDL_keycode.h"
	.file 11 "/usr/include/SDL2/SDL_keyboard.h"
	.file 12 "/usr/include/SDL2/SDL_joystick.h"
	.file 13 "/usr/include/SDL2/SDL_touch.h"
	.file 14 "/usr/include/SDL2/SDL_gesture.h"
	.file 15 "/usr/include/SDL2/SDL_events.h"
	.file 16 "/usr/include/SDL2/SDL_messagebox.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b84
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF545
	.byte	0x4
	.long	.LASF546
	.long	.LASF547
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
	.long	.LASF11
	.byte	0x2
	.byte	0xc3
	.long	0x48
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0xc4
	.long	0x4f
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0xc5
	.long	0x56
	.uleb128 0x7
	.long	0x7a
	.long	0xb2
	.uleb128 0x8
	.long	0x6b
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0x30
	.long	0x25
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x31
	.long	0x2c
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x33
	.long	0x33
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF17
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF18
	.uleb128 0x6
	.long	.LASF19
	.byte	0x4
	.byte	0x8b
	.long	0xb2
	.uleb128 0x6
	.long	.LASF20
	.byte	0x4
	.byte	0x8f
	.long	0x81
	.uleb128 0x6
	.long	.LASF21
	.byte	0x4
	.byte	0x93
	.long	0xbd
	.uleb128 0x6
	.long	.LASF22
	.byte	0x4
	.byte	0x97
	.long	0x8c
	.uleb128 0x6
	.long	.LASF23
	.byte	0x4
	.byte	0x9b
	.long	0xc8
	.uleb128 0x6
	.long	.LASF24
	.byte	0x4
	.byte	0xa0
	.long	0x97
	.uleb128 0x5
	.byte	0x4
	.long	0xe1
	.uleb128 0x9
	.byte	0x4
	.long	0x33
	.byte	0x5
	.byte	0x33
	.long	0x17e
	.uleb128 0xa
	.long	.LASF25
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.uleb128 0xa
	.long	.LASF28
	.byte	0x3
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.uleb128 0xa
	.long	.LASF33
	.byte	0x8
	.uleb128 0xa
	.long	.LASF34
	.byte	0x9
	.uleb128 0xa
	.long	.LASF35
	.byte	0xa
	.uleb128 0xa
	.long	.LASF36
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x33
	.byte	0x5
	.byte	0x44
	.long	0x19d
	.uleb128 0xa
	.long	.LASF37
	.byte	0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.uleb128 0xa
	.long	.LASF39
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x33
	.byte	0x5
	.byte	0x4c
	.long	0x1e0
	.uleb128 0xa
	.long	.LASF40
	.byte	0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.uleb128 0xa
	.long	.LASF42
	.byte	0x2
	.uleb128 0xa
	.long	.LASF43
	.byte	0x3
	.uleb128 0xa
	.long	.LASF44
	.byte	0x4
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.uleb128 0xa
	.long	.LASF48
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x33
	.byte	0x5
	.byte	0x5c
	.long	0x217
	.uleb128 0xa
	.long	.LASF49
	.byte	0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x1
	.uleb128 0xa
	.long	.LASF51
	.byte	0x2
	.uleb128 0xa
	.long	.LASF52
	.byte	0x3
	.uleb128 0xa
	.long	.LASF53
	.byte	0x4
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.uleb128 0xa
	.long	.LASF55
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x33
	.byte	0x5
	.byte	0x68
	.long	0x25a
	.uleb128 0xa
	.long	.LASF56
	.byte	0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x1
	.uleb128 0xa
	.long	.LASF58
	.byte	0x2
	.uleb128 0xa
	.long	.LASF59
	.byte	0x3
	.uleb128 0xa
	.long	.LASF60
	.byte	0x4
	.uleb128 0xa
	.long	.LASF61
	.byte	0x5
	.uleb128 0xa
	.long	.LASF62
	.byte	0x6
	.uleb128 0xa
	.long	.LASF63
	.byte	0x7
	.uleb128 0xa
	.long	.LASF64
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF65
	.byte	0x4
	.byte	0x5
	.value	0x117
	.long	0x294
	.uleb128 0xc
	.string	"r"
	.byte	0x5
	.value	0x119
	.long	0xe1
	.byte	0
	.uleb128 0xc
	.string	"g"
	.byte	0x5
	.value	0x11a
	.long	0xe1
	.byte	0x1
	.uleb128 0xc
	.string	"b"
	.byte	0x5
	.value	0x11b
	.long	0xe1
	.byte	0x2
	.uleb128 0xc
	.string	"a"
	.byte	0x5
	.value	0x11c
	.long	0xe1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF65
	.byte	0x5
	.value	0x11d
	.long	0x25a
	.uleb128 0xb
	.long	.LASF66
	.byte	0x10
	.byte	0x5
	.value	0x120
	.long	0x2e2
	.uleb128 0xe
	.long	.LASF67
	.byte	0x5
	.value	0x122
	.long	0x4f
	.byte	0
	.uleb128 0xe
	.long	.LASF68
	.byte	0x5
	.value	0x123
	.long	0x2e2
	.byte	0x4
	.uleb128 0xe
	.long	.LASF69
	.byte	0x5
	.value	0x124
	.long	0x10d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF70
	.byte	0x5
	.value	0x125
	.long	0x4f
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x294
	.uleb128 0xd
	.long	.LASF66
	.byte	0x5
	.value	0x126
	.long	0x2a0
	.uleb128 0xb
	.long	.LASF71
	.byte	0x2c
	.byte	0x5
	.value	0x12b
	.long	0x3f9
	.uleb128 0xe
	.long	.LASF72
	.byte	0x5
	.value	0x12d
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF73
	.byte	0x5
	.value	0x12e
	.long	0x3f9
	.byte	0x4
	.uleb128 0xe
	.long	.LASF74
	.byte	0x5
	.value	0x12f
	.long	0xe1
	.byte	0x8
	.uleb128 0xe
	.long	.LASF75
	.byte	0x5
	.value	0x130
	.long	0xe1
	.byte	0x9
	.uleb128 0xe
	.long	.LASF76
	.byte	0x5
	.value	0x131
	.long	0x3ff
	.byte	0xa
	.uleb128 0xe
	.long	.LASF77
	.byte	0x5
	.value	0x132
	.long	0x10d
	.byte	0xc
	.uleb128 0xe
	.long	.LASF78
	.byte	0x5
	.value	0x133
	.long	0x10d
	.byte	0x10
	.uleb128 0xe
	.long	.LASF79
	.byte	0x5
	.value	0x134
	.long	0x10d
	.byte	0x14
	.uleb128 0xe
	.long	.LASF80
	.byte	0x5
	.value	0x135
	.long	0x10d
	.byte	0x18
	.uleb128 0xe
	.long	.LASF81
	.byte	0x5
	.value	0x136
	.long	0xe1
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF82
	.byte	0x5
	.value	0x137
	.long	0xe1
	.byte	0x1d
	.uleb128 0xe
	.long	.LASF83
	.byte	0x5
	.value	0x138
	.long	0xe1
	.byte	0x1e
	.uleb128 0xe
	.long	.LASF84
	.byte	0x5
	.value	0x139
	.long	0xe1
	.byte	0x1f
	.uleb128 0xe
	.long	.LASF85
	.byte	0x5
	.value	0x13a
	.long	0xe1
	.byte	0x20
	.uleb128 0xe
	.long	.LASF86
	.byte	0x5
	.value	0x13b
	.long	0xe1
	.byte	0x21
	.uleb128 0xe
	.long	.LASF87
	.byte	0x5
	.value	0x13c
	.long	0xe1
	.byte	0x22
	.uleb128 0xe
	.long	.LASF88
	.byte	0x5
	.value	0x13d
	.long	0xe1
	.byte	0x23
	.uleb128 0xe
	.long	.LASF70
	.byte	0x5
	.value	0x13e
	.long	0x4f
	.byte	0x24
	.uleb128 0xe
	.long	.LASF89
	.byte	0x5
	.value	0x13f
	.long	0x40f
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x2e8
	.uleb128 0x7
	.long	0xe1
	.long	0x40f
	.uleb128 0x8
	.long	0x6b
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x2f4
	.uleb128 0xd
	.long	.LASF71
	.byte	0x5
	.value	0x140
	.long	0x2f4
	.uleb128 0xf
	.long	.LASF90
	.byte	0x10
	.byte	0x6
	.byte	0x40
	.long	0x456
	.uleb128 0x10
	.string	"x"
	.byte	0x6
	.byte	0x42
	.long	0x4f
	.byte	0
	.uleb128 0x10
	.string	"y"
	.byte	0x6
	.byte	0x42
	.long	0x4f
	.byte	0x4
	.uleb128 0x10
	.string	"w"
	.byte	0x6
	.byte	0x43
	.long	0x4f
	.byte	0x8
	.uleb128 0x10
	.string	"h"
	.byte	0x6
	.byte	0x43
	.long	0x4f
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	.LASF90
	.byte	0x6
	.byte	0x44
	.long	0x421
	.uleb128 0xf
	.long	.LASF91
	.byte	0x3c
	.byte	0x7
	.byte	0x45
	.long	0x4fa
	.uleb128 0x11
	.long	.LASF92
	.byte	0x7
	.byte	0x47
	.long	0x10d
	.byte	0
	.uleb128 0x11
	.long	.LASF72
	.byte	0x7
	.byte	0x48
	.long	0x4fa
	.byte	0x4
	.uleb128 0x10
	.string	"w"
	.byte	0x7
	.byte	0x49
	.long	0x4f
	.byte	0x8
	.uleb128 0x10
	.string	"h"
	.byte	0x7
	.byte	0x49
	.long	0x4f
	.byte	0xc
	.uleb128 0x11
	.long	.LASF93
	.byte	0x7
	.byte	0x4a
	.long	0x4f
	.byte	0x10
	.uleb128 0x11
	.long	.LASF94
	.byte	0x7
	.byte	0x4b
	.long	0x72
	.byte	0x14
	.uleb128 0x11
	.long	.LASF95
	.byte	0x7
	.byte	0x4e
	.long	0x72
	.byte	0x18
	.uleb128 0x11
	.long	.LASF96
	.byte	0x7
	.byte	0x51
	.long	0x4f
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF97
	.byte	0x7
	.byte	0x52
	.long	0x72
	.byte	0x20
	.uleb128 0x11
	.long	.LASF98
	.byte	0x7
	.byte	0x55
	.long	0x456
	.byte	0x24
	.uleb128 0x10
	.string	"map"
	.byte	0x7
	.byte	0x58
	.long	0x505
	.byte	0x34
	.uleb128 0x11
	.long	.LASF70
	.byte	0x7
	.byte	0x5b
	.long	0x4f
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x415
	.uleb128 0x12
	.long	.LASF100
	.uleb128 0x5
	.byte	0x4
	.long	0x500
	.uleb128 0x6
	.long	.LASF91
	.byte	0x7
	.byte	0x5c
	.long	0x461
	.uleb128 0x6
	.long	.LASF99
	.byte	0x8
	.byte	0x59
	.long	0x521
	.uleb128 0x12
	.long	.LASF99
	.uleb128 0x13
	.byte	0x4
	.long	0x33
	.byte	0x8
	.byte	0x61
	.long	.LASF117
	.long	0x598
	.uleb128 0xa
	.long	.LASF101
	.byte	0x1
	.uleb128 0xa
	.long	.LASF102
	.byte	0x2
	.uleb128 0xa
	.long	.LASF103
	.byte	0x4
	.uleb128 0xa
	.long	.LASF104
	.byte	0x8
	.uleb128 0xa
	.long	.LASF105
	.byte	0x10
	.uleb128 0xa
	.long	.LASF106
	.byte	0x20
	.uleb128 0xa
	.long	.LASF107
	.byte	0x40
	.uleb128 0xa
	.long	.LASF108
	.byte	0x80
	.uleb128 0x14
	.long	.LASF109
	.value	0x100
	.uleb128 0x14
	.long	.LASF110
	.value	0x200
	.uleb128 0x14
	.long	.LASF111
	.value	0x400
	.uleb128 0x14
	.long	.LASF112
	.value	0x1001
	.uleb128 0x14
	.long	.LASF113
	.value	0x800
	.uleb128 0x14
	.long	.LASF114
	.value	0x2000
	.uleb128 0x14
	.long	.LASF115
	.value	0x4000
	.byte	0
	.uleb128 0x6
	.long	.LASF116
	.byte	0x8
	.byte	0x71
	.long	0x526
	.uleb128 0x13
	.byte	0x4
	.long	0x33
	.byte	0x8
	.byte	0x89
	.long	.LASF118
	.long	0x60e
	.uleb128 0xa
	.long	.LASF119
	.byte	0
	.uleb128 0xa
	.long	.LASF120
	.byte	0x1
	.uleb128 0xa
	.long	.LASF121
	.byte	0x2
	.uleb128 0xa
	.long	.LASF122
	.byte	0x3
	.uleb128 0xa
	.long	.LASF123
	.byte	0x4
	.uleb128 0xa
	.long	.LASF124
	.byte	0x5
	.uleb128 0xa
	.long	.LASF125
	.byte	0x6
	.uleb128 0xa
	.long	.LASF126
	.byte	0x7
	.uleb128 0xa
	.long	.LASF127
	.byte	0x8
	.uleb128 0xa
	.long	.LASF128
	.byte	0x9
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.uleb128 0xa
	.long	.LASF130
	.byte	0xb
	.uleb128 0xa
	.long	.LASF131
	.byte	0xc
	.uleb128 0xa
	.long	.LASF132
	.byte	0xd
	.uleb128 0xa
	.long	.LASF133
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.long	.LASF134
	.byte	0x8
	.byte	0x9f
	.long	0x5a3
	.uleb128 0x5
	.byte	0x4
	.long	0x516
	.uleb128 0x13
	.byte	0x4
	.long	0x33
	.byte	0x9
	.byte	0x2c
	.long	.LASF135
	.long	0xbf9
	.uleb128 0xa
	.long	.LASF136
	.byte	0
	.uleb128 0xa
	.long	.LASF137
	.byte	0x4
	.uleb128 0xa
	.long	.LASF138
	.byte	0x5
	.uleb128 0xa
	.long	.LASF139
	.byte	0x6
	.uleb128 0xa
	.long	.LASF140
	.byte	0x7
	.uleb128 0xa
	.long	.LASF141
	.byte	0x8
	.uleb128 0xa
	.long	.LASF142
	.byte	0x9
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.uleb128 0xa
	.long	.LASF144
	.byte	0xb
	.uleb128 0xa
	.long	.LASF145
	.byte	0xc
	.uleb128 0xa
	.long	.LASF146
	.byte	0xd
	.uleb128 0xa
	.long	.LASF147
	.byte	0xe
	.uleb128 0xa
	.long	.LASF148
	.byte	0xf
	.uleb128 0xa
	.long	.LASF149
	.byte	0x10
	.uleb128 0xa
	.long	.LASF150
	.byte	0x11
	.uleb128 0xa
	.long	.LASF151
	.byte	0x12
	.uleb128 0xa
	.long	.LASF152
	.byte	0x13
	.uleb128 0xa
	.long	.LASF153
	.byte	0x14
	.uleb128 0xa
	.long	.LASF154
	.byte	0x15
	.uleb128 0xa
	.long	.LASF155
	.byte	0x16
	.uleb128 0xa
	.long	.LASF156
	.byte	0x17
	.uleb128 0xa
	.long	.LASF157
	.byte	0x18
	.uleb128 0xa
	.long	.LASF158
	.byte	0x19
	.uleb128 0xa
	.long	.LASF159
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF160
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF161
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF162
	.byte	0x1d
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF164
	.byte	0x1f
	.uleb128 0xa
	.long	.LASF165
	.byte	0x20
	.uleb128 0xa
	.long	.LASF166
	.byte	0x21
	.uleb128 0xa
	.long	.LASF167
	.byte	0x22
	.uleb128 0xa
	.long	.LASF168
	.byte	0x23
	.uleb128 0xa
	.long	.LASF169
	.byte	0x24
	.uleb128 0xa
	.long	.LASF170
	.byte	0x25
	.uleb128 0xa
	.long	.LASF171
	.byte	0x26
	.uleb128 0xa
	.long	.LASF172
	.byte	0x27
	.uleb128 0xa
	.long	.LASF173
	.byte	0x28
	.uleb128 0xa
	.long	.LASF174
	.byte	0x29
	.uleb128 0xa
	.long	.LASF175
	.byte	0x2a
	.uleb128 0xa
	.long	.LASF176
	.byte	0x2b
	.uleb128 0xa
	.long	.LASF177
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF178
	.byte	0x2d
	.uleb128 0xa
	.long	.LASF179
	.byte	0x2e
	.uleb128 0xa
	.long	.LASF180
	.byte	0x2f
	.uleb128 0xa
	.long	.LASF181
	.byte	0x30
	.uleb128 0xa
	.long	.LASF182
	.byte	0x31
	.uleb128 0xa
	.long	.LASF183
	.byte	0x32
	.uleb128 0xa
	.long	.LASF184
	.byte	0x33
	.uleb128 0xa
	.long	.LASF185
	.byte	0x34
	.uleb128 0xa
	.long	.LASF186
	.byte	0x35
	.uleb128 0xa
	.long	.LASF187
	.byte	0x36
	.uleb128 0xa
	.long	.LASF188
	.byte	0x37
	.uleb128 0xa
	.long	.LASF189
	.byte	0x38
	.uleb128 0xa
	.long	.LASF190
	.byte	0x39
	.uleb128 0xa
	.long	.LASF191
	.byte	0x3a
	.uleb128 0xa
	.long	.LASF192
	.byte	0x3b
	.uleb128 0xa
	.long	.LASF193
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF194
	.byte	0x3d
	.uleb128 0xa
	.long	.LASF195
	.byte	0x3e
	.uleb128 0xa
	.long	.LASF196
	.byte	0x3f
	.uleb128 0xa
	.long	.LASF197
	.byte	0x40
	.uleb128 0xa
	.long	.LASF198
	.byte	0x41
	.uleb128 0xa
	.long	.LASF199
	.byte	0x42
	.uleb128 0xa
	.long	.LASF200
	.byte	0x43
	.uleb128 0xa
	.long	.LASF201
	.byte	0x44
	.uleb128 0xa
	.long	.LASF202
	.byte	0x45
	.uleb128 0xa
	.long	.LASF203
	.byte	0x46
	.uleb128 0xa
	.long	.LASF204
	.byte	0x47
	.uleb128 0xa
	.long	.LASF205
	.byte	0x48
	.uleb128 0xa
	.long	.LASF206
	.byte	0x49
	.uleb128 0xa
	.long	.LASF207
	.byte	0x4a
	.uleb128 0xa
	.long	.LASF208
	.byte	0x4b
	.uleb128 0xa
	.long	.LASF209
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF210
	.byte	0x4d
	.uleb128 0xa
	.long	.LASF211
	.byte	0x4e
	.uleb128 0xa
	.long	.LASF212
	.byte	0x4f
	.uleb128 0xa
	.long	.LASF213
	.byte	0x50
	.uleb128 0xa
	.long	.LASF214
	.byte	0x51
	.uleb128 0xa
	.long	.LASF215
	.byte	0x52
	.uleb128 0xa
	.long	.LASF216
	.byte	0x53
	.uleb128 0xa
	.long	.LASF217
	.byte	0x54
	.uleb128 0xa
	.long	.LASF218
	.byte	0x55
	.uleb128 0xa
	.long	.LASF219
	.byte	0x56
	.uleb128 0xa
	.long	.LASF220
	.byte	0x57
	.uleb128 0xa
	.long	.LASF221
	.byte	0x58
	.uleb128 0xa
	.long	.LASF222
	.byte	0x59
	.uleb128 0xa
	.long	.LASF223
	.byte	0x5a
	.uleb128 0xa
	.long	.LASF224
	.byte	0x5b
	.uleb128 0xa
	.long	.LASF225
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF226
	.byte	0x5d
	.uleb128 0xa
	.long	.LASF227
	.byte	0x5e
	.uleb128 0xa
	.long	.LASF228
	.byte	0x5f
	.uleb128 0xa
	.long	.LASF229
	.byte	0x60
	.uleb128 0xa
	.long	.LASF230
	.byte	0x61
	.uleb128 0xa
	.long	.LASF231
	.byte	0x62
	.uleb128 0xa
	.long	.LASF232
	.byte	0x63
	.uleb128 0xa
	.long	.LASF233
	.byte	0x64
	.uleb128 0xa
	.long	.LASF234
	.byte	0x65
	.uleb128 0xa
	.long	.LASF235
	.byte	0x66
	.uleb128 0xa
	.long	.LASF236
	.byte	0x67
	.uleb128 0xa
	.long	.LASF237
	.byte	0x68
	.uleb128 0xa
	.long	.LASF238
	.byte	0x69
	.uleb128 0xa
	.long	.LASF239
	.byte	0x6a
	.uleb128 0xa
	.long	.LASF240
	.byte	0x6b
	.uleb128 0xa
	.long	.LASF241
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF242
	.byte	0x6d
	.uleb128 0xa
	.long	.LASF243
	.byte	0x6e
	.uleb128 0xa
	.long	.LASF244
	.byte	0x6f
	.uleb128 0xa
	.long	.LASF245
	.byte	0x70
	.uleb128 0xa
	.long	.LASF246
	.byte	0x71
	.uleb128 0xa
	.long	.LASF247
	.byte	0x72
	.uleb128 0xa
	.long	.LASF248
	.byte	0x73
	.uleb128 0xa
	.long	.LASF249
	.byte	0x74
	.uleb128 0xa
	.long	.LASF250
	.byte	0x75
	.uleb128 0xa
	.long	.LASF251
	.byte	0x76
	.uleb128 0xa
	.long	.LASF252
	.byte	0x77
	.uleb128 0xa
	.long	.LASF253
	.byte	0x78
	.uleb128 0xa
	.long	.LASF254
	.byte	0x79
	.uleb128 0xa
	.long	.LASF255
	.byte	0x7a
	.uleb128 0xa
	.long	.LASF256
	.byte	0x7b
	.uleb128 0xa
	.long	.LASF257
	.byte	0x7c
	.uleb128 0xa
	.long	.LASF258
	.byte	0x7d
	.uleb128 0xa
	.long	.LASF259
	.byte	0x7e
	.uleb128 0xa
	.long	.LASF260
	.byte	0x7f
	.uleb128 0xa
	.long	.LASF261
	.byte	0x80
	.uleb128 0xa
	.long	.LASF262
	.byte	0x81
	.uleb128 0xa
	.long	.LASF263
	.byte	0x85
	.uleb128 0xa
	.long	.LASF264
	.byte	0x86
	.uleb128 0xa
	.long	.LASF265
	.byte	0x87
	.uleb128 0xa
	.long	.LASF266
	.byte	0x88
	.uleb128 0xa
	.long	.LASF267
	.byte	0x89
	.uleb128 0xa
	.long	.LASF268
	.byte	0x8a
	.uleb128 0xa
	.long	.LASF269
	.byte	0x8b
	.uleb128 0xa
	.long	.LASF270
	.byte	0x8c
	.uleb128 0xa
	.long	.LASF271
	.byte	0x8d
	.uleb128 0xa
	.long	.LASF272
	.byte	0x8e
	.uleb128 0xa
	.long	.LASF273
	.byte	0x8f
	.uleb128 0xa
	.long	.LASF274
	.byte	0x90
	.uleb128 0xa
	.long	.LASF275
	.byte	0x91
	.uleb128 0xa
	.long	.LASF276
	.byte	0x92
	.uleb128 0xa
	.long	.LASF277
	.byte	0x93
	.uleb128 0xa
	.long	.LASF278
	.byte	0x94
	.uleb128 0xa
	.long	.LASF279
	.byte	0x95
	.uleb128 0xa
	.long	.LASF280
	.byte	0x96
	.uleb128 0xa
	.long	.LASF281
	.byte	0x97
	.uleb128 0xa
	.long	.LASF282
	.byte	0x98
	.uleb128 0xa
	.long	.LASF283
	.byte	0x99
	.uleb128 0xa
	.long	.LASF284
	.byte	0x9a
	.uleb128 0xa
	.long	.LASF285
	.byte	0x9b
	.uleb128 0xa
	.long	.LASF286
	.byte	0x9c
	.uleb128 0xa
	.long	.LASF287
	.byte	0x9d
	.uleb128 0xa
	.long	.LASF288
	.byte	0x9e
	.uleb128 0xa
	.long	.LASF289
	.byte	0x9f
	.uleb128 0xa
	.long	.LASF290
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF291
	.byte	0xa1
	.uleb128 0xa
	.long	.LASF292
	.byte	0xa2
	.uleb128 0xa
	.long	.LASF293
	.byte	0xa3
	.uleb128 0xa
	.long	.LASF294
	.byte	0xa4
	.uleb128 0xa
	.long	.LASF295
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF296
	.byte	0xb1
	.uleb128 0xa
	.long	.LASF297
	.byte	0xb2
	.uleb128 0xa
	.long	.LASF298
	.byte	0xb3
	.uleb128 0xa
	.long	.LASF299
	.byte	0xb4
	.uleb128 0xa
	.long	.LASF300
	.byte	0xb5
	.uleb128 0xa
	.long	.LASF301
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF302
	.byte	0xb7
	.uleb128 0xa
	.long	.LASF303
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF304
	.byte	0xb9
	.uleb128 0xa
	.long	.LASF305
	.byte	0xba
	.uleb128 0xa
	.long	.LASF306
	.byte	0xbb
	.uleb128 0xa
	.long	.LASF307
	.byte	0xbc
	.uleb128 0xa
	.long	.LASF308
	.byte	0xbd
	.uleb128 0xa
	.long	.LASF309
	.byte	0xbe
	.uleb128 0xa
	.long	.LASF310
	.byte	0xbf
	.uleb128 0xa
	.long	.LASF311
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF312
	.byte	0xc1
	.uleb128 0xa
	.long	.LASF313
	.byte	0xc2
	.uleb128 0xa
	.long	.LASF314
	.byte	0xc3
	.uleb128 0xa
	.long	.LASF315
	.byte	0xc4
	.uleb128 0xa
	.long	.LASF316
	.byte	0xc5
	.uleb128 0xa
	.long	.LASF317
	.byte	0xc6
	.uleb128 0xa
	.long	.LASF318
	.byte	0xc7
	.uleb128 0xa
	.long	.LASF319
	.byte	0xc8
	.uleb128 0xa
	.long	.LASF320
	.byte	0xc9
	.uleb128 0xa
	.long	.LASF321
	.byte	0xca
	.uleb128 0xa
	.long	.LASF322
	.byte	0xcb
	.uleb128 0xa
	.long	.LASF323
	.byte	0xcc
	.uleb128 0xa
	.long	.LASF324
	.byte	0xcd
	.uleb128 0xa
	.long	.LASF325
	.byte	0xce
	.uleb128 0xa
	.long	.LASF326
	.byte	0xcf
	.uleb128 0xa
	.long	.LASF327
	.byte	0xd0
	.uleb128 0xa
	.long	.LASF328
	.byte	0xd1
	.uleb128 0xa
	.long	.LASF329
	.byte	0xd2
	.uleb128 0xa
	.long	.LASF330
	.byte	0xd3
	.uleb128 0xa
	.long	.LASF331
	.byte	0xd4
	.uleb128 0xa
	.long	.LASF332
	.byte	0xd5
	.uleb128 0xa
	.long	.LASF333
	.byte	0xd6
	.uleb128 0xa
	.long	.LASF334
	.byte	0xd7
	.uleb128 0xa
	.long	.LASF335
	.byte	0xd8
	.uleb128 0xa
	.long	.LASF336
	.byte	0xd9
	.uleb128 0xa
	.long	.LASF337
	.byte	0xda
	.uleb128 0xa
	.long	.LASF338
	.byte	0xdb
	.uleb128 0xa
	.long	.LASF339
	.byte	0xdc
	.uleb128 0xa
	.long	.LASF340
	.byte	0xdd
	.uleb128 0xa
	.long	.LASF341
	.byte	0xe0
	.uleb128 0xa
	.long	.LASF342
	.byte	0xe1
	.uleb128 0xa
	.long	.LASF343
	.byte	0xe2
	.uleb128 0xa
	.long	.LASF344
	.byte	0xe3
	.uleb128 0xa
	.long	.LASF345
	.byte	0xe4
	.uleb128 0xa
	.long	.LASF346
	.byte	0xe5
	.uleb128 0xa
	.long	.LASF347
	.byte	0xe6
	.uleb128 0xa
	.long	.LASF348
	.byte	0xe7
	.uleb128 0x14
	.long	.LASF349
	.value	0x101
	.uleb128 0x14
	.long	.LASF350
	.value	0x102
	.uleb128 0x14
	.long	.LASF351
	.value	0x103
	.uleb128 0x14
	.long	.LASF352
	.value	0x104
	.uleb128 0x14
	.long	.LASF353
	.value	0x105
	.uleb128 0x14
	.long	.LASF354
	.value	0x106
	.uleb128 0x14
	.long	.LASF355
	.value	0x107
	.uleb128 0x14
	.long	.LASF356
	.value	0x108
	.uleb128 0x14
	.long	.LASF357
	.value	0x109
	.uleb128 0x14
	.long	.LASF358
	.value	0x10a
	.uleb128 0x14
	.long	.LASF359
	.value	0x10b
	.uleb128 0x14
	.long	.LASF360
	.value	0x10c
	.uleb128 0x14
	.long	.LASF361
	.value	0x10d
	.uleb128 0x14
	.long	.LASF362
	.value	0x10e
	.uleb128 0x14
	.long	.LASF363
	.value	0x10f
	.uleb128 0x14
	.long	.LASF364
	.value	0x110
	.uleb128 0x14
	.long	.LASF365
	.value	0x111
	.uleb128 0x14
	.long	.LASF366
	.value	0x112
	.uleb128 0x14
	.long	.LASF367
	.value	0x113
	.uleb128 0x14
	.long	.LASF368
	.value	0x114
	.uleb128 0x14
	.long	.LASF369
	.value	0x115
	.uleb128 0x14
	.long	.LASF370
	.value	0x116
	.uleb128 0x14
	.long	.LASF371
	.value	0x117
	.uleb128 0x14
	.long	.LASF372
	.value	0x118
	.uleb128 0x14
	.long	.LASF373
	.value	0x119
	.uleb128 0x14
	.long	.LASF374
	.value	0x11a
	.uleb128 0x14
	.long	.LASF375
	.value	0x11b
	.uleb128 0x14
	.long	.LASF376
	.value	0x11c
	.uleb128 0x14
	.long	.LASF377
	.value	0x200
	.byte	0
	.uleb128 0xd
	.long	.LASF378
	.byte	0x9
	.value	0x18d
	.long	0x61f
	.uleb128 0x6
	.long	.LASF379
	.byte	0xa
	.byte	0x2a
	.long	0x102
	.uleb128 0xf
	.long	.LASF380
	.byte	0x10
	.byte	0xb
	.byte	0x2f
	.long	0xc4d
	.uleb128 0x11
	.long	.LASF381
	.byte	0xb
	.byte	0x31
	.long	0xbf9
	.byte	0
	.uleb128 0x10
	.string	"sym"
	.byte	0xb
	.byte	0x32
	.long	0xc05
	.byte	0x4
	.uleb128 0x10
	.string	"mod"
	.byte	0xb
	.byte	0x33
	.long	0xf7
	.byte	0x8
	.uleb128 0x11
	.long	.LASF382
	.byte	0xb
	.byte	0x34
	.long	0x10d
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	.LASF380
	.byte	0xb
	.byte	0x35
	.long	0xc10
	.uleb128 0x6
	.long	.LASF383
	.byte	0xc
	.byte	0x48
	.long	0x102
	.uleb128 0x6
	.long	.LASF384
	.byte	0xd
	.byte	0x29
	.long	0x118
	.uleb128 0x6
	.long	.LASF385
	.byte	0xd
	.byte	0x2a
	.long	0x118
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF386
	.uleb128 0x6
	.long	.LASF387
	.byte	0xe
	.byte	0x2c
	.long	0x118
	.uleb128 0x13
	.byte	0x4
	.long	0x33
	.byte	0xf
	.byte	0x38
	.long	.LASF388
	.long	0xddd
	.uleb128 0xa
	.long	.LASF389
	.byte	0
	.uleb128 0x14
	.long	.LASF390
	.value	0x100
	.uleb128 0x14
	.long	.LASF391
	.value	0x101
	.uleb128 0x14
	.long	.LASF392
	.value	0x102
	.uleb128 0x14
	.long	.LASF393
	.value	0x103
	.uleb128 0x14
	.long	.LASF394
	.value	0x104
	.uleb128 0x14
	.long	.LASF395
	.value	0x105
	.uleb128 0x14
	.long	.LASF396
	.value	0x106
	.uleb128 0x14
	.long	.LASF397
	.value	0x200
	.uleb128 0x14
	.long	.LASF398
	.value	0x201
	.uleb128 0x14
	.long	.LASF399
	.value	0x300
	.uleb128 0x14
	.long	.LASF400
	.value	0x301
	.uleb128 0x14
	.long	.LASF401
	.value	0x302
	.uleb128 0x14
	.long	.LASF402
	.value	0x303
	.uleb128 0x14
	.long	.LASF403
	.value	0x304
	.uleb128 0x14
	.long	.LASF404
	.value	0x400
	.uleb128 0x14
	.long	.LASF405
	.value	0x401
	.uleb128 0x14
	.long	.LASF406
	.value	0x402
	.uleb128 0x14
	.long	.LASF407
	.value	0x403
	.uleb128 0x14
	.long	.LASF408
	.value	0x600
	.uleb128 0x14
	.long	.LASF409
	.value	0x601
	.uleb128 0x14
	.long	.LASF410
	.value	0x602
	.uleb128 0x14
	.long	.LASF411
	.value	0x603
	.uleb128 0x14
	.long	.LASF412
	.value	0x604
	.uleb128 0x14
	.long	.LASF413
	.value	0x605
	.uleb128 0x14
	.long	.LASF414
	.value	0x606
	.uleb128 0x14
	.long	.LASF415
	.value	0x650
	.uleb128 0x14
	.long	.LASF416
	.value	0x651
	.uleb128 0x14
	.long	.LASF417
	.value	0x652
	.uleb128 0x14
	.long	.LASF418
	.value	0x653
	.uleb128 0x14
	.long	.LASF419
	.value	0x654
	.uleb128 0x14
	.long	.LASF420
	.value	0x655
	.uleb128 0x14
	.long	.LASF421
	.value	0x700
	.uleb128 0x14
	.long	.LASF422
	.value	0x701
	.uleb128 0x14
	.long	.LASF423
	.value	0x702
	.uleb128 0x14
	.long	.LASF424
	.value	0x800
	.uleb128 0x14
	.long	.LASF425
	.value	0x801
	.uleb128 0x14
	.long	.LASF426
	.value	0x802
	.uleb128 0x14
	.long	.LASF427
	.value	0x900
	.uleb128 0x14
	.long	.LASF428
	.value	0x1000
	.uleb128 0x14
	.long	.LASF429
	.value	0x1100
	.uleb128 0x14
	.long	.LASF430
	.value	0x1101
	.uleb128 0x14
	.long	.LASF431
	.value	0x2000
	.uleb128 0x14
	.long	.LASF432
	.value	0x2001
	.uleb128 0x14
	.long	.LASF433
	.value	0x8000
	.uleb128 0x14
	.long	.LASF434
	.value	0xffff
	.byte	0
	.uleb128 0x6
	.long	.LASF435
	.byte	0xf
	.byte	0x9d
	.long	0xc8b
	.uleb128 0xf
	.long	.LASF436
	.byte	0x8
	.byte	0xf
	.byte	0xa2
	.long	0xe0d
	.uleb128 0x11
	.long	.LASF437
	.byte	0xf
	.byte	0xa4
	.long	0x10d
	.byte	0
	.uleb128 0x11
	.long	.LASF438
	.byte	0xf
	.byte	0xa5
	.long	0x10d
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF436
	.byte	0xf
	.byte	0xa6
	.long	0xde8
	.uleb128 0xf
	.long	.LASF439
	.byte	0x18
	.byte	0xf
	.byte	0xab
	.long	0xe91
	.uleb128 0x11
	.long	.LASF437
	.byte	0xf
	.byte	0xad
	.long	0x10d
	.byte	0
	.uleb128 0x11
	.long	.LASF438
	.byte	0xf
	.byte	0xae
	.long	0x10d
	.byte	0x4
	.uleb128 0x11
	.long	.LASF440
	.byte	0xf
	.byte	0xaf
	.long	0x10d
	.byte	0x8
	.uleb128 0x11
	.long	.LASF441
	.byte	0xf
	.byte	0xb0
	.long	0xe1
	.byte	0xc
	.uleb128 0x11
	.long	.LASF442
	.byte	0xf
	.byte	0xb1
	.long	0xe1
	.byte	0xd
	.uleb128 0x11
	.long	.LASF443
	.byte	0xf
	.byte	0xb2
	.long	0xe1
	.byte	0xe
	.uleb128 0x11
	.long	.LASF444
	.byte	0xf
	.byte	0xb3
	.long	0xe1
	.byte	0xf
	.uleb128 0x11
	.long	.LASF445
	.byte	0xf
	.byte	0xb4
	.long	0x102
	.byte	0x10
	.uleb128 0x11
	.long	.LASF446
	.byte	0xf
	.byte	0xb5
	.long	0x102
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.long	.LASF439
	.byte	0xf
	.byte	0xb6
	.long	0xe18
	.uleb128 0xf
	.long	.LASF447
	.byte	0x20
	.byte	0xf
	.byte	0xbb
	.long	0xf09
	.uleb128 0x11
	.long	.LASF437
	.byte	0xf
	.byte	0xbd
	.long	0x10d
	.byte	0
	.uleb128 0x11
	.long	.LASF438
	.byte	0xf
	.byte	0xbe
	.long	0x10d
	.byte	0x4
	.uleb128 0x11
	.long	.LASF440
	.byte	0xf
	.byte	0xbf
	.long	0x10d
	.byte	0x8
	.uleb128 0x11
	.long	.LASF448
	.byte	0xf
	.byte	0xc0
	.long	0xe1
	.byte	0xc
	.uleb128 0x11
	.long	.LASF449
	.byte	0xf
	.byte	0xc1
	.long	0xe1
	.byte	0xd
	.uleb128 0x11
	.long	.LASF443
	.byte	0xf
	.byte	0xc2
	.long	0xe1
	.byte	0xe
	.uleb128 0x11
	.long	.LASF444
	.byte	0xf
	.byte	0xc3
	.long	0xe1
	.byte	0xf
	.uleb128 0x11
	.long	.LASF450
	.byte	0xf
	.byte	0xc4
	.long	0xc4d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF447
	.byte	0xf
	.byte	0xc5
	.long	0xe9c
	.uleb128 0xf
	.long	.LASF451
	.byte	0x34
	.byte	0xf
	.byte	0xcb
	.long	0xf69
	.uleb128 0x11
	.long	.LASF437
	.byte	0xf
	.byte	0xcd
	.long	0x10d
	.byte	0
	.uleb128 0x11
	.long	.LASF438
	.byte	0xf
	.byte	0xce
	.long	0x10d
	.byte	0x4
	.uleb128 0x11
	.long	.LASF440
	.byte	0xf
	.byte	0xcf
	.long	0x10d
	.byte	0x8
	.uleb128 0x11
	.long	.LASF452
	.byte	0xf
	.byte	0xd0
	.long	0xa2
	.byte	0xc
	.uleb128 0x11
	.long	.LASF453
	.byte	0xf
	.byte	0xd1
	.long	0x102
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF454
	.byte	0xf
	.byte	0xd2
	.long	0x102
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.long	.LASF451
	.byte	0xf
	.byte	0xd3
	.long	0xf14
	.uleb128 0xf
	.long	.LASF455
	.byte	0x2c
	.byte	0xf
	.byte	0xda
	.long	0xfb1
	.uleb128 0x11
	.long	.LASF437
	.byte	0xf
	.byte	0xdc
	.long	0x10d
	.byte	0
	.uleb128 0x11
	.long	.LASF438
	.byte	0xf
	.byte	0xdd
	.long	0x10d
	.byte	0x4
	.uleb128 0x11
	.long	.LASF440
	.byte	0xf
	.byte	0xde
	.long	0x10d
	.byte	0x8
	.uleb128 0x11
	.long	.LASF452
	.byte	0xf
	.byte	0xdf
	.long	0xa2
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	.LASF455
	.byte	0xf
	.byte	0xe0
	.long	0xf74
	.uleb128 0xf
	.long	.LASF456
	.byte	0x24
	.byte	0xf
	.byte	0xe5
	.long	0x1031
	.uleb128 0x11
	.long	.LASF437
	.byte	0xf
	.byte	0xe7
	.long	0x10d
	.byte	0
	.uleb128 0x11
	.long	.LASF438
	.byte	0xf
	.byte	0xe8
	.long	0x10d
	.byte	0x4
	.uleb128 0x11
	.long	.LASF440
	.byte	0xf
	.byte	0xe9
	.long	0x10d
	.byte	0x8
	.uleb128 0x11
	.long	.LASF457
	.byte	0xf
	.byte	0xea
	.long	0x10d
	.byte	0xc
	.uleb128 0x11
	.long	.LASF448
	.byte	0xf
	.byte	0xeb
	.long	0x10d
	.byte	0x10
	.uleb128 0x10
	.string	"x"
	.byte	0xf
	.byte	0xec
	.long	0x102
	.byte	0x14
	.uleb128 0x10
	.string	"y"
	.byte	0xf
	.byte	0xed
	.long	0x102
	.byte	0x18
	.uleb128 0x11
	.long	.LASF458
	.byte	0xf
	.byte	0xee
	.long	0x102
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF459
	.byte	0xf
	.byte	0xef
	.long	0x102
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF456
	.byte	0xf
	.byte	0xf0
	.long	0xfbc
	.uleb128 0xf
	.long	.LASF460
	.byte	0x1c
	.byte	0xf
	.byte	0xf5
	.long	0x10be
	.uleb128 0x11
	.long	.LASF437
	.byte	0xf
	.byte	0xf7
	.long	0x10d
	.byte	0
	.uleb128 0x11
	.long	.LASF438
	.byte	0xf
	.byte	0xf8
	.long	0x10d
	.byte	0x4
	.uleb128 0x11
	.long	.LASF440
	.byte	0xf
	.byte	0xf9
	.long	0x10d
	.byte	0x8
	.uleb128 0x11
	.long	.LASF457
	.byte	0xf
	.byte	0xfa
	.long	0x10d
	.byte	0xc
	.uleb128 0x11
	.long	.LASF461
	.byte	0xf
	.byte	0xfb
	.long	0xe1
	.byte	0x10
	.uleb128 0x11
	.long	.LASF448
	.byte	0xf
	.byte	0xfc
	.long	0xe1
	.byte	0x11
	.uleb128 0x11
	.long	.LASF462
	.byte	0xf
	.byte	0xfd
	.long	0xe1
	.byte	0x12
	.uleb128 0x11
	.long	.LASF442
	.byte	0xf
	.byte	0xfe
	.long	0xe1
	.byte	0x13
	.uleb128 0x10
	.string	"x"
	.byte	0xf
	.byte	0xff
	.long	0x102
	.byte	0x14
	.uleb128 0xc
	.string	"y"
	.byte	0xf
	.value	0x100
	.long	0x102
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	.LASF460
	.byte	0xf
	.value	0x101
	.long	0x103c
	.uleb128 0xb
	.long	.LASF463
	.byte	0x1c
	.byte	0xf
	.value	0x106
	.long	0x112f
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x108
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x109
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF440
	.byte	0xf
	.value	0x10a
	.long	0x10d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x10b
	.long	0x10d
	.byte	0xc
	.uleb128 0xc
	.string	"x"
	.byte	0xf
	.value	0x10c
	.long	0x102
	.byte	0x10
	.uleb128 0xc
	.string	"y"
	.byte	0xf
	.value	0x10d
	.long	0x102
	.byte	0x14
	.uleb128 0xe
	.long	.LASF464
	.byte	0xf
	.value	0x10e
	.long	0x10d
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	.LASF463
	.byte	0xf
	.value	0x10f
	.long	0x10ca
	.uleb128 0xb
	.long	.LASF465
	.byte	0x14
	.byte	0xf
	.value	0x114
	.long	0x11be
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x116
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x117
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x118
	.long	0xc58
	.byte	0x8
	.uleb128 0xe
	.long	.LASF466
	.byte	0xf
	.value	0x119
	.long	0xe1
	.byte	0xc
	.uleb128 0xe
	.long	.LASF442
	.byte	0xf
	.value	0x11a
	.long	0xe1
	.byte	0xd
	.uleb128 0xe
	.long	.LASF443
	.byte	0xf
	.value	0x11b
	.long	0xe1
	.byte	0xe
	.uleb128 0xe
	.long	.LASF444
	.byte	0xf
	.value	0x11c
	.long	0xe1
	.byte	0xf
	.uleb128 0xe
	.long	.LASF467
	.byte	0xf
	.value	0x11d
	.long	0xec
	.byte	0x10
	.uleb128 0xe
	.long	.LASF468
	.byte	0xf
	.value	0x11e
	.long	0xf7
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.long	.LASF465
	.byte	0xf
	.value	0x11f
	.long	0x113b
	.uleb128 0xb
	.long	.LASF469
	.byte	0x14
	.byte	0xf
	.value	0x124
	.long	0x124d
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x126
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x127
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x128
	.long	0xc58
	.byte	0x8
	.uleb128 0xe
	.long	.LASF470
	.byte	0xf
	.value	0x129
	.long	0xe1
	.byte	0xc
	.uleb128 0xe
	.long	.LASF442
	.byte	0xf
	.value	0x12a
	.long	0xe1
	.byte	0xd
	.uleb128 0xe
	.long	.LASF443
	.byte	0xf
	.value	0x12b
	.long	0xe1
	.byte	0xe
	.uleb128 0xe
	.long	.LASF444
	.byte	0xf
	.value	0x12c
	.long	0xe1
	.byte	0xf
	.uleb128 0xe
	.long	.LASF458
	.byte	0xf
	.value	0x12d
	.long	0xec
	.byte	0x10
	.uleb128 0xe
	.long	.LASF459
	.byte	0xf
	.value	0x12e
	.long	0xec
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.long	.LASF469
	.byte	0xf
	.value	0x12f
	.long	0x11ca
	.uleb128 0xb
	.long	.LASF471
	.byte	0x10
	.byte	0xf
	.value	0x134
	.long	0x12c2
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x136
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x137
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x138
	.long	0xc58
	.byte	0x8
	.uleb128 0xc
	.string	"hat"
	.byte	0xf
	.value	0x139
	.long	0xe1
	.byte	0xc
	.uleb128 0xe
	.long	.LASF467
	.byte	0xf
	.value	0x13a
	.long	0xe1
	.byte	0xd
	.uleb128 0xe
	.long	.LASF442
	.byte	0xf
	.value	0x141
	.long	0xe1
	.byte	0xe
	.uleb128 0xe
	.long	.LASF443
	.byte	0xf
	.value	0x142
	.long	0xe1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	.LASF471
	.byte	0xf
	.value	0x143
	.long	0x1259
	.uleb128 0xb
	.long	.LASF472
	.byte	0x10
	.byte	0xf
	.value	0x148
	.long	0x1337
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x14a
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x14b
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x14c
	.long	0xc58
	.byte	0x8
	.uleb128 0xe
	.long	.LASF461
	.byte	0xf
	.value	0x14d
	.long	0xe1
	.byte	0xc
	.uleb128 0xe
	.long	.LASF448
	.byte	0xf
	.value	0x14e
	.long	0xe1
	.byte	0xd
	.uleb128 0xe
	.long	.LASF442
	.byte	0xf
	.value	0x14f
	.long	0xe1
	.byte	0xe
	.uleb128 0xe
	.long	.LASF443
	.byte	0xf
	.value	0x150
	.long	0xe1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	.LASF472
	.byte	0xf
	.value	0x151
	.long	0x12ce
	.uleb128 0xb
	.long	.LASF473
	.byte	0xc
	.byte	0xf
	.value	0x156
	.long	0x1378
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x158
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x159
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x15a
	.long	0x102
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF473
	.byte	0xf
	.value	0x15b
	.long	0x1343
	.uleb128 0xb
	.long	.LASF474
	.byte	0x14
	.byte	0xf
	.value	0x161
	.long	0x1407
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x163
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x164
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x165
	.long	0xc58
	.byte	0x8
	.uleb128 0xe
	.long	.LASF466
	.byte	0xf
	.value	0x166
	.long	0xe1
	.byte	0xc
	.uleb128 0xe
	.long	.LASF442
	.byte	0xf
	.value	0x167
	.long	0xe1
	.byte	0xd
	.uleb128 0xe
	.long	.LASF443
	.byte	0xf
	.value	0x168
	.long	0xe1
	.byte	0xe
	.uleb128 0xe
	.long	.LASF444
	.byte	0xf
	.value	0x169
	.long	0xe1
	.byte	0xf
	.uleb128 0xe
	.long	.LASF467
	.byte	0xf
	.value	0x16a
	.long	0xec
	.byte	0x10
	.uleb128 0xe
	.long	.LASF468
	.byte	0xf
	.value	0x16b
	.long	0xf7
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.long	.LASF474
	.byte	0xf
	.value	0x16c
	.long	0x1384
	.uleb128 0xb
	.long	.LASF475
	.byte	0x10
	.byte	0xf
	.value	0x172
	.long	0x147c
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x174
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x175
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x176
	.long	0xc58
	.byte	0x8
	.uleb128 0xe
	.long	.LASF461
	.byte	0xf
	.value	0x177
	.long	0xe1
	.byte	0xc
	.uleb128 0xe
	.long	.LASF448
	.byte	0xf
	.value	0x178
	.long	0xe1
	.byte	0xd
	.uleb128 0xe
	.long	.LASF442
	.byte	0xf
	.value	0x179
	.long	0xe1
	.byte	0xe
	.uleb128 0xe
	.long	.LASF443
	.byte	0xf
	.value	0x17a
	.long	0xe1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	.LASF475
	.byte	0xf
	.value	0x17b
	.long	0x1413
	.uleb128 0xb
	.long	.LASF476
	.byte	0xc
	.byte	0xf
	.value	0x181
	.long	0x14bd
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x183
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x184
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x185
	.long	0x102
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF476
	.byte	0xf
	.value	0x186
	.long	0x1488
	.uleb128 0xb
	.long	.LASF477
	.byte	0x10
	.byte	0xf
	.value	0x18b
	.long	0x1532
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x18d
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x18e
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF457
	.byte	0xf
	.value	0x18f
	.long	0x10d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF478
	.byte	0xf
	.value	0x190
	.long	0xe1
	.byte	0xc
	.uleb128 0xe
	.long	.LASF442
	.byte	0xf
	.value	0x191
	.long	0xe1
	.byte	0xd
	.uleb128 0xe
	.long	.LASF443
	.byte	0xf
	.value	0x192
	.long	0xe1
	.byte	0xe
	.uleb128 0xe
	.long	.LASF444
	.byte	0xf
	.value	0x193
	.long	0xe1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	.LASF477
	.byte	0xf
	.value	0x194
	.long	0x14c9
	.uleb128 0xb
	.long	.LASF479
	.byte	0x2c
	.byte	0xf
	.value	0x19a
	.long	0x15bb
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x19c
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x19d
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF480
	.byte	0xf
	.value	0x19e
	.long	0xc63
	.byte	0x8
	.uleb128 0xe
	.long	.LASF481
	.byte	0xf
	.value	0x19f
	.long	0xc6e
	.byte	0x10
	.uleb128 0xc
	.string	"x"
	.byte	0xf
	.value	0x1a0
	.long	0xc79
	.byte	0x18
	.uleb128 0xc
	.string	"y"
	.byte	0xf
	.value	0x1a1
	.long	0xc79
	.byte	0x1c
	.uleb128 0xc
	.string	"dx"
	.byte	0xf
	.value	0x1a2
	.long	0xc79
	.byte	0x20
	.uleb128 0xc
	.string	"dy"
	.byte	0xf
	.value	0x1a3
	.long	0xc79
	.byte	0x24
	.uleb128 0xe
	.long	.LASF482
	.byte	0xf
	.value	0x1a4
	.long	0xc79
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.long	.LASF479
	.byte	0xf
	.value	0x1a5
	.long	0x153e
	.uleb128 0xb
	.long	.LASF483
	.byte	0x24
	.byte	0xf
	.value	0x1ab
	.long	0x1646
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x1ad
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x1ae
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF480
	.byte	0xf
	.value	0x1af
	.long	0xc63
	.byte	0x8
	.uleb128 0xe
	.long	.LASF484
	.byte	0xf
	.value	0x1b0
	.long	0xc79
	.byte	0x10
	.uleb128 0xe
	.long	.LASF485
	.byte	0xf
	.value	0x1b1
	.long	0xc79
	.byte	0x14
	.uleb128 0xc
	.string	"x"
	.byte	0xf
	.value	0x1b2
	.long	0xc79
	.byte	0x18
	.uleb128 0xc
	.string	"y"
	.byte	0xf
	.value	0x1b3
	.long	0xc79
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF486
	.byte	0xf
	.value	0x1b4
	.long	0xf7
	.byte	0x20
	.uleb128 0xe
	.long	.LASF76
	.byte	0xf
	.value	0x1b5
	.long	0xf7
	.byte	0x22
	.byte	0
	.uleb128 0xd
	.long	.LASF483
	.byte	0xf
	.value	0x1b6
	.long	0x15c7
	.uleb128 0xb
	.long	.LASF487
	.byte	0x28
	.byte	0xf
	.value	0x1bc
	.long	0x16c4
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x1be
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x1bf
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF480
	.byte	0xf
	.value	0x1c0
	.long	0xc63
	.byte	0x8
	.uleb128 0xe
	.long	.LASF488
	.byte	0xf
	.value	0x1c1
	.long	0xc80
	.byte	0x10
	.uleb128 0xe
	.long	.LASF486
	.byte	0xf
	.value	0x1c2
	.long	0x10d
	.byte	0x18
	.uleb128 0xe
	.long	.LASF489
	.byte	0xf
	.value	0x1c3
	.long	0xc79
	.byte	0x1c
	.uleb128 0xc
	.string	"x"
	.byte	0xf
	.value	0x1c4
	.long	0xc79
	.byte	0x20
	.uleb128 0xc
	.string	"y"
	.byte	0xf
	.value	0x1c5
	.long	0xc79
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.long	.LASF487
	.byte	0xf
	.value	0x1c6
	.long	0x1652
	.uleb128 0xb
	.long	.LASF490
	.byte	0xc
	.byte	0xf
	.value	0x1ce
	.long	0x1705
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x1d0
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x1d1
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF491
	.byte	0xf
	.value	0x1d2
	.long	0x74
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF490
	.byte	0xf
	.value	0x1d3
	.long	0x16d0
	.uleb128 0xb
	.long	.LASF492
	.byte	0x8
	.byte	0xf
	.value	0x1d9
	.long	0x1739
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x1db
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x1dc
	.long	0x10d
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF492
	.byte	0xf
	.value	0x1dd
	.long	0x1711
	.uleb128 0xb
	.long	.LASF493
	.byte	0x18
	.byte	0xf
	.value	0x1eb
	.long	0x17a1
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x1ed
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x1ee
	.long	0x10d
	.byte	0x4
	.uleb128 0xe
	.long	.LASF440
	.byte	0xf
	.value	0x1ef
	.long	0x10d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF494
	.byte	0xf
	.value	0x1f0
	.long	0x102
	.byte	0xc
	.uleb128 0xe
	.long	.LASF445
	.byte	0xf
	.value	0x1f1
	.long	0x72
	.byte	0x10
	.uleb128 0xe
	.long	.LASF446
	.byte	0xf
	.value	0x1f2
	.long	0x72
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.long	.LASF493
	.byte	0xf
	.value	0x1f3
	.long	0x1745
	.uleb128 0xd
	.long	.LASF495
	.byte	0xf
	.value	0x1f7
	.long	0x17b9
	.uleb128 0x12
	.long	.LASF495
	.uleb128 0xb
	.long	.LASF496
	.byte	0xc
	.byte	0xf
	.value	0x1ff
	.long	0x17f3
	.uleb128 0xe
	.long	.LASF437
	.byte	0xf
	.value	0x201
	.long	0x10d
	.byte	0
	.uleb128 0xe
	.long	.LASF438
	.byte	0xf
	.value	0x202
	.long	0x10d
	.byte	0x4
	.uleb128 0xc
	.string	"msg"
	.byte	0xf
	.value	0x203
	.long	0x17f3
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x17ad
	.uleb128 0xd
	.long	.LASF496
	.byte	0xf
	.value	0x204
	.long	0x17be
	.uleb128 0x15
	.long	.LASF518
	.byte	0x38
	.byte	0xf
	.value	0x209
	.long	0x194b
	.uleb128 0x16
	.long	.LASF437
	.byte	0xf
	.value	0x20b
	.long	0x10d
	.uleb128 0x16
	.long	.LASF497
	.byte	0xf
	.value	0x20c
	.long	0xe0d
	.uleb128 0x16
	.long	.LASF498
	.byte	0xf
	.value	0x20d
	.long	0xe91
	.uleb128 0x17
	.string	"key"
	.byte	0xf
	.value	0x20e
	.long	0xf09
	.uleb128 0x16
	.long	.LASF499
	.byte	0xf
	.value	0x20f
	.long	0xf69
	.uleb128 0x16
	.long	.LASF452
	.byte	0xf
	.value	0x210
	.long	0xfb1
	.uleb128 0x16
	.long	.LASF500
	.byte	0xf
	.value	0x211
	.long	0x1031
	.uleb128 0x16
	.long	.LASF461
	.byte	0xf
	.value	0x212
	.long	0x10be
	.uleb128 0x16
	.long	.LASF501
	.byte	0xf
	.value	0x213
	.long	0x112f
	.uleb128 0x16
	.long	.LASF502
	.byte	0xf
	.value	0x214
	.long	0x11be
	.uleb128 0x16
	.long	.LASF503
	.byte	0xf
	.value	0x215
	.long	0x124d
	.uleb128 0x16
	.long	.LASF504
	.byte	0xf
	.value	0x216
	.long	0x12c2
	.uleb128 0x16
	.long	.LASF505
	.byte	0xf
	.value	0x217
	.long	0x1337
	.uleb128 0x16
	.long	.LASF506
	.byte	0xf
	.value	0x218
	.long	0x1378
	.uleb128 0x16
	.long	.LASF507
	.byte	0xf
	.value	0x219
	.long	0x1407
	.uleb128 0x16
	.long	.LASF508
	.byte	0xf
	.value	0x21a
	.long	0x147c
	.uleb128 0x16
	.long	.LASF509
	.byte	0xf
	.value	0x21b
	.long	0x14bd
	.uleb128 0x16
	.long	.LASF510
	.byte	0xf
	.value	0x21c
	.long	0x1532
	.uleb128 0x16
	.long	.LASF511
	.byte	0xf
	.value	0x21d
	.long	0x1739
	.uleb128 0x16
	.long	.LASF512
	.byte	0xf
	.value	0x21e
	.long	0x17a1
	.uleb128 0x16
	.long	.LASF513
	.byte	0xf
	.value	0x21f
	.long	0x17f9
	.uleb128 0x16
	.long	.LASF514
	.byte	0xf
	.value	0x220
	.long	0x15bb
	.uleb128 0x16
	.long	.LASF515
	.byte	0xf
	.value	0x221
	.long	0x1646
	.uleb128 0x16
	.long	.LASF516
	.byte	0xf
	.value	0x222
	.long	0x16c4
	.uleb128 0x16
	.long	.LASF517
	.byte	0xf
	.value	0x223
	.long	0x1705
	.uleb128 0x16
	.long	.LASF76
	.byte	0xf
	.value	0x22c
	.long	0x194b
	.byte	0
	.uleb128 0x7
	.long	0xe1
	.long	0x195b
	.uleb128 0x8
	.long	0x6b
	.byte	0x37
	.byte	0
	.uleb128 0xd
	.long	.LASF518
	.byte	0xf
	.value	0x22d
	.long	0x1805
	.uleb128 0x5
	.byte	0x4
	.long	0x195b
	.uleb128 0x13
	.byte	0x4
	.long	0x33
	.byte	0x10
	.byte	0x48
	.long	.LASF519
	.long	0x19a2
	.uleb128 0xa
	.long	.LASF520
	.byte	0
	.uleb128 0xa
	.long	.LASF521
	.byte	0x1
	.uleb128 0xa
	.long	.LASF522
	.byte	0x2
	.uleb128 0xa
	.long	.LASF523
	.byte	0x3
	.uleb128 0xa
	.long	.LASF524
	.byte	0x4
	.uleb128 0xa
	.long	.LASF525
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.long	.LASF526
	.byte	0x10
	.byte	0x4f
	.long	0x196d
	.uleb128 0x18
	.long	.LASF528
	.byte	0x1
	.byte	0xf
	.long	.LASF530
	.long	0x19d9
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d9
	.uleb128 0x19
	.long	.LASF532
	.byte	0x1
	.byte	0x12
	.long	0x19d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF527
	.uleb128 0x18
	.long	.LASF529
	.byte	0x1
	.byte	0x1d
	.long	.LASF531
	.long	0x19d9
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a0c
	.uleb128 0x19
	.long	.LASF532
	.byte	0x1
	.byte	0x1f
	.long	0x19d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x18
	.long	.LASF533
	.byte	0x1
	.byte	0x25
	.long	.LASF534
	.long	0x19d9
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a38
	.uleb128 0x19
	.long	.LASF532
	.byte	0x1
	.byte	0x27
	.long	0x19d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1a
	.long	.LASF548
	.byte	0x1
	.byte	0x32
	.long	.LASF549
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF538
	.byte	0x1
	.byte	0x6b
	.long	.LASF550
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a75
	.uleb128 0x1c
	.long	.LASF441
	.byte	0x1
	.byte	0x6b
	.long	0x1967
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.long	.LASF535
	.byte	0x1
	.byte	0xb2
	.long	.LASF536
	.long	0x10d
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ae1
	.uleb128 0x1c
	.long	.LASF537
	.byte	0x1
	.byte	0xb2
	.long	0x1ae1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0xb2
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0xb2
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.string	"bpp"
	.byte	0x1
	.byte	0xb6
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"ppr"
	.byte	0x1
	.byte	0xb8
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.byte	0xb9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x50b
	.uleb128 0x1f
	.long	.LASF539
	.byte	0x1
	.byte	0xd7
	.long	0x4f
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b1d
	.uleb128 0x1c
	.long	.LASF540
	.byte	0x1
	.byte	0xd7
	.long	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF541
	.byte	0x1
	.byte	0xd7
	.long	0x1b1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x74
	.uleb128 0x20
	.long	.LASF542
	.byte	0x1
	.byte	0x9
	.long	0x619
	.uleb128 0x5
	.byte	0x3
	.long	gWindow
	.uleb128 0x20
	.long	.LASF537
	.byte	0x1
	.byte	0xa
	.long	0x1ae1
	.uleb128 0x5
	.byte	0x3
	.long	surface
	.uleb128 0x20
	.long	.LASF441
	.byte	0x1
	.byte	0xb
	.long	0x195b
	.uleb128 0x5
	.byte	0x3
	.long	event
	.uleb128 0x20
	.long	.LASF543
	.byte	0x1
	.byte	0xc
	.long	0x4f
	.uleb128 0x5
	.byte	0x3
	.long	SCREEN_WIDTH
	.uleb128 0x20
	.long	.LASF544
	.byte	0x1
	.byte	0xd
	.long	0x4f
	.uleb128 0x5
	.byte	0x3
	.long	SCREEN_HEIGHT
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xe
	.long	0x4f
	.uleb128 0x5
	.byte	0x3
	.long	i
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x17
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
.LASF285:
	.string	"SDL_SCANCODE_CANCEL"
.LASF441:
	.string	"event"
.LASF181:
	.string	"SDL_SCANCODE_RIGHTBRACKET"
.LASF507:
	.string	"caxis"
.LASF522:
	.string	"SDL_MESSAGEBOX_COLOR_BUTTON_BORDER"
.LASF261:
	.string	"SDL_SCANCODE_VOLUMEUP"
.LASF436:
	.string	"SDL_CommonEvent"
.LASF416:
	.string	"SDL_CONTROLLERBUTTONDOWN"
.LASF479:
	.string	"SDL_TouchFingerEvent"
.LASF341:
	.string	"SDL_SCANCODE_LCTRL"
.LASF121:
	.string	"SDL_WINDOWEVENT_HIDDEN"
.LASF30:
	.string	"SDL_PIXELTYPE_PACKED16"
.LASF88:
	.string	"Ashift"
.LASF324:
	.string	"SDL_SCANCODE_KP_SPACE"
.LASF537:
	.string	"surface"
.LASF104:
	.string	"SDL_WINDOW_HIDDEN"
.LASF136:
	.string	"SDL_SCANCODE_UNKNOWN"
.LASF303:
	.string	"SDL_SCANCODE_KP_LEFTBRACE"
.LASF96:
	.string	"locked"
.LASF412:
	.string	"SDL_JOYBUTTONUP"
.LASF497:
	.string	"common"
.LASF535:
	.string	"getpixel"
.LASF485:
	.string	"dDist"
.LASF394:
	.string	"SDL_APP_DIDENTERBACKGROUND"
.LASF504:
	.string	"jhat"
.LASF269:
	.string	"SDL_SCANCODE_INTERNATIONAL5"
.LASF505:
	.string	"jbutton"
.LASF31:
	.string	"SDL_PIXELTYPE_PACKED32"
.LASF15:
	.string	"uint16_t"
.LASF348:
	.string	"SDL_SCANCODE_RGUI"
.LASF542:
	.string	"gWindow"
.LASF26:
	.string	"SDL_PIXELTYPE_INDEX1"
.LASF89:
	.string	"next"
.LASF27:
	.string	"SDL_PIXELTYPE_INDEX4"
.LASF28:
	.string	"SDL_PIXELTYPE_INDEX8"
.LASF173:
	.string	"SDL_SCANCODE_RETURN"
.LASF429:
	.string	"SDL_AUDIODEVICEADDED"
.LASF234:
	.string	"SDL_SCANCODE_APPLICATION"
.LASF317:
	.string	"SDL_SCANCODE_KP_GREATER"
.LASF389:
	.string	"SDL_FIRSTEVENT"
.LASF80:
	.string	"Amask"
.LASF378:
	.string	"SDL_Scancode"
.LASF403:
	.string	"SDL_KEYMAPCHANGED"
.LASF64:
	.string	"SDL_PACKEDLAYOUT_1010102"
.LASF527:
	.string	"bool"
.LASF127:
	.string	"SDL_WINDOWEVENT_MAXIMIZED"
.LASF128:
	.string	"SDL_WINDOWEVENT_RESTORED"
.LASF355:
	.string	"SDL_SCANCODE_MEDIASELECT"
.LASF498:
	.string	"window"
.LASF12:
	.string	"int32_t"
.LASF35:
	.string	"SDL_PIXELTYPE_ARRAYF16"
.LASF75:
	.string	"BytesPerPixel"
.LASF203:
	.string	"SDL_SCANCODE_PRINTSCREEN"
.LASF431:
	.string	"SDL_RENDER_TARGETS_RESET"
.LASF214:
	.string	"SDL_SCANCODE_DOWN"
.LASF38:
	.string	"SDL_BITMAPORDER_4321"
.LASF363:
	.string	"SDL_SCANCODE_AC_FORWARD"
.LASF398:
	.string	"SDL_SYSWMEVENT"
.LASF352:
	.string	"SDL_SCANCODE_AUDIOSTOP"
.LASF293:
	.string	"SDL_SCANCODE_CRSEL"
.LASF210:
	.string	"SDL_SCANCODE_END"
.LASF25:
	.string	"SDL_PIXELTYPE_UNKNOWN"
.LASF249:
	.string	"SDL_SCANCODE_EXECUTE"
.LASF462:
	.string	"clicks"
.LASF235:
	.string	"SDL_SCANCODE_POWER"
.LASF36:
	.string	"SDL_PIXELTYPE_ARRAYF32"
.LASF319:
	.string	"SDL_SCANCODE_KP_DBLAMPERSAND"
.LASF349:
	.string	"SDL_SCANCODE_MODE"
.LASF506:
	.string	"jdevice"
.LASF290:
	.string	"SDL_SCANCODE_OUT"
.LASF67:
	.string	"ncolors"
.LASF191:
	.string	"SDL_SCANCODE_F1"
.LASF192:
	.string	"SDL_SCANCODE_F2"
.LASF193:
	.string	"SDL_SCANCODE_F3"
.LASF194:
	.string	"SDL_SCANCODE_F4"
.LASF195:
	.string	"SDL_SCANCODE_F5"
.LASF196:
	.string	"SDL_SCANCODE_F6"
.LASF197:
	.string	"SDL_SCANCODE_F7"
.LASF198:
	.string	"SDL_SCANCODE_F8"
.LASF199:
	.string	"SDL_SCANCODE_F9"
.LASF315:
	.string	"SDL_SCANCODE_KP_PERCENT"
.LASF101:
	.string	"SDL_WINDOW_FULLSCREEN"
.LASF344:
	.string	"SDL_SCANCODE_LGUI"
.LASF501:
	.string	"wheel"
.LASF56:
	.string	"SDL_PACKEDLAYOUT_NONE"
.LASF478:
	.string	"iscapture"
.LASF372:
	.string	"SDL_SCANCODE_KBDILLUMUP"
.LASF43:
	.string	"SDL_PACKEDORDER_ARGB"
.LASF359:
	.string	"SDL_SCANCODE_COMPUTER"
.LASF262:
	.string	"SDL_SCANCODE_VOLUMEDOWN"
.LASF60:
	.string	"SDL_PACKEDLAYOUT_5551"
.LASF358:
	.string	"SDL_SCANCODE_CALCULATOR"
.LASF500:
	.string	"motion"
.LASF502:
	.string	"jaxis"
.LASF437:
	.string	"type"
.LASF480:
	.string	"touchId"
.LASF109:
	.string	"SDL_WINDOW_INPUT_GRABBED"
.LASF94:
	.string	"pixels"
.LASF204:
	.string	"SDL_SCANCODE_SCROLLLOCK"
.LASF456:
	.string	"SDL_MouseMotionEvent"
.LASF133:
	.string	"SDL_WINDOWEVENT_CLOSE"
.LASF415:
	.string	"SDL_CONTROLLERAXISMOTION"
.LASF220:
	.string	"SDL_SCANCODE_KP_PLUS"
.LASF465:
	.string	"SDL_JoyAxisEvent"
.LASF380:
	.string	"SDL_Keysym"
.LASF76:
	.string	"padding"
.LASF187:
	.string	"SDL_SCANCODE_COMMA"
.LASF291:
	.string	"SDL_SCANCODE_OPER"
.LASF305:
	.string	"SDL_SCANCODE_KP_TAB"
.LASF44:
	.string	"SDL_PACKEDORDER_RGBA"
.LASF340:
	.string	"SDL_SCANCODE_KP_HEXADECIMAL"
.LASF518:
	.string	"SDL_Event"
.LASF464:
	.string	"direction"
.LASF190:
	.string	"SDL_SCANCODE_CAPSLOCK"
.LASF414:
	.string	"SDL_JOYDEVICEREMOVED"
.LASF515:
	.string	"mgesture"
.LASF0:
	.string	"unsigned char"
.LASF42:
	.string	"SDL_PACKEDORDER_RGBX"
.LASF435:
	.string	"SDL_EventType"
.LASF258:
	.string	"SDL_SCANCODE_PASTE"
.LASF401:
	.string	"SDL_TEXTEDITING"
.LASF399:
	.string	"SDL_KEYDOWN"
.LASF386:
	.string	"float"
.LASF400:
	.string	"SDL_KEYUP"
.LASF215:
	.string	"SDL_SCANCODE_UP"
.LASF511:
	.string	"quit"
.LASF216:
	.string	"SDL_SCANCODE_NUMLOCKCLEAR"
.LASF364:
	.string	"SDL_SCANCODE_AC_STOP"
.LASF323:
	.string	"SDL_SCANCODE_KP_HASH"
.LASF59:
	.string	"SDL_PACKEDLAYOUT_1555"
.LASF346:
	.string	"SDL_SCANCODE_RSHIFT"
.LASF83:
	.string	"Bloss"
.LASF29:
	.string	"SDL_PIXELTYPE_PACKED8"
.LASF397:
	.string	"SDL_WINDOWEVENT"
.LASF458:
	.string	"xrel"
.LASF65:
	.string	"SDL_Color"
.LASF41:
	.string	"SDL_PACKEDORDER_XRGB"
.LASF40:
	.string	"SDL_PACKEDORDER_NONE"
.LASF365:
	.string	"SDL_SCANCODE_AC_REFRESH"
.LASF81:
	.string	"Rloss"
.LASF528:
	.string	"init"
.LASF274:
	.string	"SDL_SCANCODE_LANG1"
.LASF275:
	.string	"SDL_SCANCODE_LANG2"
.LASF276:
	.string	"SDL_SCANCODE_LANG3"
.LASF277:
	.string	"SDL_SCANCODE_LANG4"
.LASF278:
	.string	"SDL_SCANCODE_LANG5"
.LASF279:
	.string	"SDL_SCANCODE_LANG6"
.LASF280:
	.string	"SDL_SCANCODE_LANG7"
.LASF281:
	.string	"SDL_SCANCODE_LANG8"
.LASF282:
	.string	"SDL_SCANCODE_LANG9"
.LASF50:
	.string	"SDL_ARRAYORDER_RGB"
.LASF481:
	.string	"fingerId"
.LASF55:
	.string	"SDL_ARRAYORDER_ABGR"
.LASF534:
	.string	"_Z14surface_createv"
.LASF396:
	.string	"SDL_APP_DIDENTERFOREGROUND"
.LASF321:
	.string	"SDL_SCANCODE_KP_DBLVERTICALBAR"
.LASF320:
	.string	"SDL_SCANCODE_KP_VERTICALBAR"
.LASF176:
	.string	"SDL_SCANCODE_TAB"
.LASF211:
	.string	"SDL_SCANCODE_PAGEDOWN"
.LASF300:
	.string	"SDL_SCANCODE_CURRENCYSUBUNIT"
.LASF393:
	.string	"SDL_APP_WILLENTERBACKGROUND"
.LASF132:
	.string	"SDL_WINDOWEVENT_FOCUS_LOST"
.LASF63:
	.string	"SDL_PACKEDLAYOUT_2101010"
.LASF338:
	.string	"SDL_SCANCODE_KP_OCTAL"
.LASF218:
	.string	"SDL_SCANCODE_KP_MULTIPLY"
.LASF292:
	.string	"SDL_SCANCODE_CLEARAGAIN"
.LASF368:
	.string	"SDL_SCANCODE_BRIGHTNESSUP"
.LASF509:
	.string	"cdevice"
.LASF71:
	.string	"SDL_PixelFormat"
.LASF449:
	.string	"repeat"
.LASF232:
	.string	"SDL_SCANCODE_KP_PERIOD"
.LASF520:
	.string	"SDL_MESSAGEBOX_COLOR_BACKGROUND"
.LASF106:
	.string	"SDL_WINDOW_RESIZABLE"
.LASF351:
	.string	"SDL_SCANCODE_AUDIOPREV"
.LASF107:
	.string	"SDL_WINDOW_MINIMIZED"
.LASF432:
	.string	"SDL_RENDER_DEVICE_RESET"
.LASF219:
	.string	"SDL_SCANCODE_KP_MINUS"
.LASF175:
	.string	"SDL_SCANCODE_BACKSPACE"
.LASF20:
	.string	"Sint16"
.LASF430:
	.string	"SDL_AUDIODEVICEREMOVED"
.LASF111:
	.string	"SDL_WINDOW_MOUSE_FOCUS"
.LASF347:
	.string	"SDL_SCANCODE_RALT"
.LASF472:
	.string	"SDL_JoyButtonEvent"
.LASF548:
	.string	"PrintAllEvents"
.LASF433:
	.string	"SDL_USEREVENT"
.LASF251:
	.string	"SDL_SCANCODE_MENU"
.LASF14:
	.string	"uint8_t"
.LASF517:
	.string	"drop"
.LASF259:
	.string	"SDL_SCANCODE_FIND"
.LASF382:
	.string	"unused"
.LASF339:
	.string	"SDL_SCANCODE_KP_DECIMAL"
.LASF22:
	.string	"Sint32"
.LASF113:
	.string	"SDL_WINDOW_FOREIGN"
.LASF460:
	.string	"SDL_MouseButtonEvent"
.LASF264:
	.string	"SDL_SCANCODE_KP_EQUALSAS400"
.LASF212:
	.string	"SDL_SCANCODE_RIGHT"
.LASF114:
	.string	"SDL_WINDOW_ALLOW_HIGHDPI"
.LASF73:
	.string	"palette"
.LASF418:
	.string	"SDL_CONTROLLERDEVICEADDED"
.LASF337:
	.string	"SDL_SCANCODE_KP_BINARY"
.LASF388:
	.string	"13SDL_EventType"
.LASF529:
	.string	"create"
.LASF499:
	.string	"edit"
.LASF361:
	.string	"SDL_SCANCODE_AC_HOME"
.LASF466:
	.string	"axis"
.LASF79:
	.string	"Bmask"
.LASF287:
	.string	"SDL_SCANCODE_PRIOR"
.LASF177:
	.string	"SDL_SCANCODE_SPACE"
.LASF491:
	.string	"file"
.LASF452:
	.string	"text"
.LASF494:
	.string	"code"
.LASF252:
	.string	"SDL_SCANCODE_SELECT"
.LASF77:
	.string	"Rmask"
.LASF85:
	.string	"Rshift"
.LASF354:
	.string	"SDL_SCANCODE_AUDIOMUTE"
.LASF350:
	.string	"SDL_SCANCODE_AUDIONEXT"
.LASF328:
	.string	"SDL_SCANCODE_KP_MEMRECALL"
.LASF24:
	.string	"Sint64"
.LASF118:
	.string	"17SDL_WindowEventID"
.LASF205:
	.string	"SDL_SCANCODE_PAUSE"
.LASF438:
	.string	"timestamp"
.LASF172:
	.string	"SDL_SCANCODE_0"
.LASF163:
	.string	"SDL_SCANCODE_1"
.LASF164:
	.string	"SDL_SCANCODE_2"
.LASF165:
	.string	"SDL_SCANCODE_3"
.LASF166:
	.string	"SDL_SCANCODE_4"
.LASF167:
	.string	"SDL_SCANCODE_5"
.LASF168:
	.string	"SDL_SCANCODE_6"
.LASF169:
	.string	"SDL_SCANCODE_7"
.LASF170:
	.string	"SDL_SCANCODE_8"
.LASF171:
	.string	"SDL_SCANCODE_9"
.LASF70:
	.string	"refcount"
.LASF467:
	.string	"value"
.LASF137:
	.string	"SDL_SCANCODE_A"
.LASF138:
	.string	"SDL_SCANCODE_B"
.LASF139:
	.string	"SDL_SCANCODE_C"
.LASF140:
	.string	"SDL_SCANCODE_D"
.LASF141:
	.string	"SDL_SCANCODE_E"
.LASF142:
	.string	"SDL_SCANCODE_F"
.LASF143:
	.string	"SDL_SCANCODE_G"
.LASF144:
	.string	"SDL_SCANCODE_H"
.LASF145:
	.string	"SDL_SCANCODE_I"
.LASF146:
	.string	"SDL_SCANCODE_J"
.LASF147:
	.string	"SDL_SCANCODE_K"
.LASF148:
	.string	"SDL_SCANCODE_L"
.LASF149:
	.string	"SDL_SCANCODE_M"
.LASF150:
	.string	"SDL_SCANCODE_N"
.LASF151:
	.string	"SDL_SCANCODE_O"
.LASF152:
	.string	"SDL_SCANCODE_P"
.LASF153:
	.string	"SDL_SCANCODE_Q"
.LASF154:
	.string	"SDL_SCANCODE_R"
.LASF155:
	.string	"SDL_SCANCODE_S"
.LASF156:
	.string	"SDL_SCANCODE_T"
.LASF157:
	.string	"SDL_SCANCODE_U"
.LASF158:
	.string	"SDL_SCANCODE_V"
.LASF159:
	.string	"SDL_SCANCODE_W"
.LASF160:
	.string	"SDL_SCANCODE_X"
.LASF161:
	.string	"SDL_SCANCODE_Y"
.LASF162:
	.string	"SDL_SCANCODE_Z"
.LASF135:
	.string	"12SDL_Scancode"
.LASF360:
	.string	"SDL_SCANCODE_AC_SEARCH"
.LASF434:
	.string	"SDL_LASTEVENT"
.LASF284:
	.string	"SDL_SCANCODE_SYSREQ"
.LASF379:
	.string	"SDL_Keycode"
.LASF54:
	.string	"SDL_ARRAYORDER_BGRA"
.LASF74:
	.string	"BitsPerPixel"
.LASF124:
	.string	"SDL_WINDOWEVENT_RESIZED"
.LASF302:
	.string	"SDL_SCANCODE_KP_RIGHTPAREN"
.LASF343:
	.string	"SDL_SCANCODE_LALT"
.LASF335:
	.string	"SDL_SCANCODE_KP_CLEAR"
.LASF93:
	.string	"pitch"
.LASF115:
	.string	"SDL_WINDOW_MOUSE_CAPTURE"
.LASF87:
	.string	"Bshift"
.LASF425:
	.string	"SDL_DOLLARRECORD"
.LASF306:
	.string	"SDL_SCANCODE_KP_BACKSPACE"
.LASF406:
	.string	"SDL_MOUSEBUTTONUP"
.LASF484:
	.string	"dTheta"
.LASF409:
	.string	"SDL_JOYBALLMOTION"
.LASF296:
	.string	"SDL_SCANCODE_KP_000"
.LASF295:
	.string	"SDL_SCANCODE_KP_00"
.LASF546:
	.string	"01_hello_SDL.cpp"
.LASF493:
	.string	"SDL_UserEvent"
.LASF95:
	.string	"userdata"
.LASF188:
	.string	"SDL_SCANCODE_PERIOD"
.LASF545:
	.string	"GNU C++ 5.4.0 20160609 -m32 -mtune=generic -march=i686 -g -fstack-protector-strong"
.LASF519:
	.string	"23SDL_MessageBoxColorType"
.LASF538:
	.string	"PrintEvent"
.LASF427:
	.string	"SDL_CLIPBOARDUPDATE"
.LASF129:
	.string	"SDL_WINDOWEVENT_ENTER"
.LASF424:
	.string	"SDL_DOLLARGESTURE"
.LASF503:
	.string	"jball"
.LASF366:
	.string	"SDL_SCANCODE_AC_BOOKMARKS"
.LASF297:
	.string	"SDL_SCANCODE_THOUSANDSSEPARATOR"
.LASF373:
	.string	"SDL_SCANCODE_EJECT"
.LASF547:
	.string	"/home/sonja/repo/from-C-to-Forth"
.LASF254:
	.string	"SDL_SCANCODE_AGAIN"
.LASF390:
	.string	"SDL_QUIT"
.LASF342:
	.string	"SDL_SCANCODE_LSHIFT"
.LASF9:
	.string	"sizetype"
.LASF257:
	.string	"SDL_SCANCODE_COPY"
.LASF457:
	.string	"which"
.LASF469:
	.string	"SDL_JoyBallEvent"
.LASF11:
	.string	"int16_t"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF426:
	.string	"SDL_MULTIGESTURE"
.LASF532:
	.string	"success"
.LASF453:
	.string	"start"
.LASF526:
	.string	"SDL_MessageBoxColorType"
.LASF236:
	.string	"SDL_SCANCODE_KP_EQUALS"
.LASF221:
	.string	"SDL_SCANCODE_KP_ENTER"
.LASF330:
	.string	"SDL_SCANCODE_KP_MEMADD"
.LASF488:
	.string	"gestureId"
.LASF395:
	.string	"SDL_APP_WILLENTERFOREGROUND"
.LASF33:
	.string	"SDL_PIXELTYPE_ARRAYU16"
.LASF508:
	.string	"cbutton"
.LASF381:
	.string	"scancode"
.LASF387:
	.string	"SDL_GestureID"
.LASF448:
	.string	"state"
.LASF490:
	.string	"SDL_DropEvent"
.LASF483:
	.string	"SDL_MultiGestureEvent"
.LASF525:
	.string	"SDL_MESSAGEBOX_COLOR_MAX"
.LASF316:
	.string	"SDL_SCANCODE_KP_LESS"
.LASF428:
	.string	"SDL_DROPFILE"
.LASF384:
	.string	"SDL_TouchID"
.LASF487:
	.string	"SDL_DollarGestureEvent"
.LASF463:
	.string	"SDL_MouseWheelEvent"
.LASF126:
	.string	"SDL_WINDOWEVENT_MINIMIZED"
.LASF524:
	.string	"SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED"
.LASF39:
	.string	"SDL_BITMAPORDER_1234"
.LASF34:
	.string	"SDL_PIXELTYPE_ARRAYU32"
.LASF57:
	.string	"SDL_PACKEDLAYOUT_332"
.LASF447:
	.string	"SDL_KeyboardEvent"
.LASF516:
	.string	"dgesture"
.LASF180:
	.string	"SDL_SCANCODE_LEFTBRACKET"
.LASF482:
	.string	"pressure"
.LASF8:
	.string	"long int"
.LASF369:
	.string	"SDL_SCANCODE_DISPLAYSWITCH"
.LASF72:
	.string	"format"
.LASF110:
	.string	"SDL_WINDOW_INPUT_FOCUS"
.LASF402:
	.string	"SDL_TEXTINPUT"
.LASF407:
	.string	"SDL_MOUSEWHEEL"
.LASF332:
	.string	"SDL_SCANCODE_KP_MEMMULTIPLY"
.LASF450:
	.string	"keysym"
.LASF16:
	.string	"uint32_t"
.LASF47:
	.string	"SDL_PACKEDORDER_ABGR"
.LASF208:
	.string	"SDL_SCANCODE_PAGEUP"
.LASF112:
	.string	"SDL_WINDOW_FULLSCREEN_DESKTOP"
.LASF294:
	.string	"SDL_SCANCODE_EXSEL"
.LASF17:
	.string	"long double"
.LASF375:
	.string	"SDL_SCANCODE_APP1"
.LASF376:
	.string	"SDL_SCANCODE_APP2"
.LASF3:
	.string	"long unsigned int"
.LASF420:
	.string	"SDL_CONTROLLERDEVICEREMAPPED"
.LASF182:
	.string	"SDL_SCANCODE_BACKSLASH"
.LASF32:
	.string	"SDL_PIXELTYPE_ARRAYU8"
.LASF117:
	.string	"15SDL_WindowFlags"
.LASF10:
	.string	"char"
.LASF19:
	.string	"Uint8"
.LASF353:
	.string	"SDL_SCANCODE_AUDIOPLAY"
.LASF206:
	.string	"SDL_SCANCODE_INSERT"
.LASF123:
	.string	"SDL_WINDOWEVENT_MOVED"
.LASF549:
	.string	"_Z14PrintAllEventsv"
.LASF299:
	.string	"SDL_SCANCODE_CURRENCYUNIT"
.LASF58:
	.string	"SDL_PACKEDLAYOUT_4444"
.LASF200:
	.string	"SDL_SCANCODE_F10"
.LASF201:
	.string	"SDL_SCANCODE_F11"
.LASF202:
	.string	"SDL_SCANCODE_F12"
.LASF237:
	.string	"SDL_SCANCODE_F13"
.LASF238:
	.string	"SDL_SCANCODE_F14"
.LASF239:
	.string	"SDL_SCANCODE_F15"
.LASF240:
	.string	"SDL_SCANCODE_F16"
.LASF241:
	.string	"SDL_SCANCODE_F17"
.LASF242:
	.string	"SDL_SCANCODE_F18"
.LASF243:
	.string	"SDL_SCANCODE_F19"
.LASF404:
	.string	"SDL_MOUSEMOTION"
.LASF470:
	.string	"ball"
.LASF99:
	.string	"SDL_Window"
.LASF178:
	.string	"SDL_SCANCODE_MINUS"
.LASF383:
	.string	"SDL_JoystickID"
.LASF244:
	.string	"SDL_SCANCODE_F20"
.LASF245:
	.string	"SDL_SCANCODE_F21"
.LASF246:
	.string	"SDL_SCANCODE_F22"
.LASF247:
	.string	"SDL_SCANCODE_F23"
.LASF248:
	.string	"SDL_SCANCODE_F24"
.LASF253:
	.string	"SDL_SCANCODE_STOP"
.LASF209:
	.string	"SDL_SCANCODE_DELETE"
.LASF336:
	.string	"SDL_SCANCODE_KP_CLEARENTRY"
.LASF100:
	.string	"SDL_BlitMap"
.LASF521:
	.string	"SDL_MESSAGEBOX_COLOR_TEXT"
.LASF536:
	.string	"_Z8getpixelP11SDL_Surfaceii"
.LASF179:
	.string	"SDL_SCANCODE_EQUALS"
.LASF231:
	.string	"SDL_SCANCODE_KP_0"
.LASF222:
	.string	"SDL_SCANCODE_KP_1"
.LASF223:
	.string	"SDL_SCANCODE_KP_2"
.LASF224:
	.string	"SDL_SCANCODE_KP_3"
.LASF225:
	.string	"SDL_SCANCODE_KP_4"
.LASF226:
	.string	"SDL_SCANCODE_KP_5"
.LASF227:
	.string	"SDL_SCANCODE_KP_6"
.LASF228:
	.string	"SDL_SCANCODE_KP_7"
.LASF229:
	.string	"SDL_SCANCODE_KP_8"
.LASF230:
	.string	"SDL_SCANCODE_KP_9"
.LASF474:
	.string	"SDL_ControllerAxisEvent"
.LASF307:
	.string	"SDL_SCANCODE_KP_A"
.LASF308:
	.string	"SDL_SCANCODE_KP_B"
.LASF309:
	.string	"SDL_SCANCODE_KP_C"
.LASF310:
	.string	"SDL_SCANCODE_KP_D"
.LASF311:
	.string	"SDL_SCANCODE_KP_E"
.LASF312:
	.string	"SDL_SCANCODE_KP_F"
.LASF174:
	.string	"SDL_SCANCODE_ESCAPE"
.LASF233:
	.string	"SDL_SCANCODE_NONUSBACKSLASH"
.LASF189:
	.string	"SDL_SCANCODE_SLASH"
.LASF45:
	.string	"SDL_PACKEDORDER_XBGR"
.LASF442:
	.string	"padding1"
.LASF443:
	.string	"padding2"
.LASF444:
	.string	"padding3"
.LASF468:
	.string	"padding4"
.LASF213:
	.string	"SDL_SCANCODE_LEFT"
.LASF98:
	.string	"clip_rect"
.LASF496:
	.string	"SDL_SysWMEvent"
.LASF119:
	.string	"SDL_WINDOWEVENT_NONE"
.LASF21:
	.string	"Uint16"
.LASF217:
	.string	"SDL_SCANCODE_KP_DIVIDE"
.LASF523:
	.string	"SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND"
.LASF53:
	.string	"SDL_ARRAYORDER_BGR"
.LASF13:
	.string	"int64_t"
.LASF413:
	.string	"SDL_JOYDEVICEADDED"
.LASF459:
	.string	"yrel"
.LASF325:
	.string	"SDL_SCANCODE_KP_AT"
.LASF66:
	.string	"SDL_Palette"
.LASF18:
	.string	"double"
.LASF408:
	.string	"SDL_JOYAXISMOTION"
.LASF283:
	.string	"SDL_SCANCODE_ALTERASE"
.LASF329:
	.string	"SDL_SCANCODE_KP_MEMCLEAR"
.LASF544:
	.string	"SCREEN_HEIGHT"
.LASF331:
	.string	"SDL_SCANCODE_KP_MEMSUBTRACT"
.LASF314:
	.string	"SDL_SCANCODE_KP_POWER"
.LASF492:
	.string	"SDL_QuitEvent"
.LASF513:
	.string	"syswm"
.LASF540:
	.string	"argc"
.LASF23:
	.string	"Uint32"
.LASF541:
	.string	"args"
.LASF48:
	.string	"SDL_PACKEDORDER_BGRA"
.LASF298:
	.string	"SDL_SCANCODE_DECIMALSEPARATOR"
.LASF371:
	.string	"SDL_SCANCODE_KBDILLUMDOWN"
.LASF486:
	.string	"numFingers"
.LASF445:
	.string	"data1"
.LASF446:
	.string	"data2"
.LASF46:
	.string	"SDL_PACKEDORDER_BGRX"
.LASF130:
	.string	"SDL_WINDOWEVENT_LEAVE"
.LASF105:
	.string	"SDL_WINDOW_BORDERLESS"
.LASF451:
	.string	"SDL_TextEditingEvent"
.LASF377:
	.string	"SDL_NUM_SCANCODES"
.LASF475:
	.string	"SDL_ControllerButtonEvent"
.LASF473:
	.string	"SDL_JoyDeviceEvent"
.LASF322:
	.string	"SDL_SCANCODE_KP_COLON"
.LASF68:
	.string	"colors"
.LASF510:
	.string	"adevice"
.LASF120:
	.string	"SDL_WINDOWEVENT_SHOWN"
.LASF471:
	.string	"SDL_JoyHatEvent"
.LASF385:
	.string	"SDL_FingerID"
.LASF495:
	.string	"SDL_SysWMmsg"
.LASF405:
	.string	"SDL_MOUSEBUTTONDOWN"
.LASF304:
	.string	"SDL_SCANCODE_KP_RIGHTBRACE"
.LASF286:
	.string	"SDL_SCANCODE_CLEAR"
.LASF550:
	.string	"_Z10PrintEventP9SDL_Event"
.LASF86:
	.string	"Gshift"
.LASF423:
	.string	"SDL_FINGERMOTION"
.LASF476:
	.string	"SDL_ControllerDeviceEvent"
.LASF184:
	.string	"SDL_SCANCODE_SEMICOLON"
.LASF82:
	.string	"Gloss"
.LASF37:
	.string	"SDL_BITMAPORDER_NONE"
.LASF7:
	.string	"long long unsigned int"
.LASF454:
	.string	"length"
.LASF61:
	.string	"SDL_PACKEDLAYOUT_565"
.LASF108:
	.string	"SDL_WINDOW_MAXIMIZED"
.LASF530:
	.string	"_Z4initv"
.LASF52:
	.string	"SDL_ARRAYORDER_ARGB"
.LASF422:
	.string	"SDL_FINGERUP"
.LASF313:
	.string	"SDL_SCANCODE_KP_XOR"
.LASF489:
	.string	"error"
.LASF263:
	.string	"SDL_SCANCODE_KP_COMMA"
.LASF125:
	.string	"SDL_WINDOWEVENT_SIZE_CHANGED"
.LASF122:
	.string	"SDL_WINDOWEVENT_EXPOSED"
.LASF357:
	.string	"SDL_SCANCODE_MAIL"
.LASF367:
	.string	"SDL_SCANCODE_BRIGHTNESSDOWN"
.LASF327:
	.string	"SDL_SCANCODE_KP_MEMSTORE"
.LASF97:
	.string	"lock_data"
.LASF207:
	.string	"SDL_SCANCODE_HOME"
.LASF410:
	.string	"SDL_JOYHATMOTION"
.LASF419:
	.string	"SDL_CONTROLLERDEVICEREMOVED"
.LASF417:
	.string	"SDL_CONTROLLERBUTTONUP"
.LASF374:
	.string	"SDL_SCANCODE_SLEEP"
.LASF392:
	.string	"SDL_APP_LOWMEMORY"
.LASF318:
	.string	"SDL_SCANCODE_KP_AMPERSAND"
.LASF51:
	.string	"SDL_ARRAYORDER_RGBA"
.LASF345:
	.string	"SDL_SCANCODE_RCTRL"
.LASF6:
	.string	"long long int"
.LASF301:
	.string	"SDL_SCANCODE_KP_LEFTPAREN"
.LASF250:
	.string	"SDL_SCANCODE_HELP"
.LASF183:
	.string	"SDL_SCANCODE_NONUSHASH"
.LASF455:
	.string	"SDL_TextInputEvent"
.LASF440:
	.string	"windowID"
.LASF255:
	.string	"SDL_SCANCODE_UNDO"
.LASF186:
	.string	"SDL_SCANCODE_GRAVE"
.LASF102:
	.string	"SDL_WINDOW_OPENGL"
.LASF512:
	.string	"user"
.LASF333:
	.string	"SDL_SCANCODE_KP_MEMDIVIDE"
.LASF134:
	.string	"SDL_WindowEventID"
.LASF411:
	.string	"SDL_JOYBUTTONDOWN"
.LASF185:
	.string	"SDL_SCANCODE_APOSTROPHE"
.LASF116:
	.string	"SDL_WindowFlags"
.LASF533:
	.string	"surface_create"
.LASF514:
	.string	"tfinger"
.LASF531:
	.string	"_Z6createv"
.LASF103:
	.string	"SDL_WINDOW_SHOWN"
.LASF439:
	.string	"SDL_WindowEvent"
.LASF265:
	.string	"SDL_SCANCODE_INTERNATIONAL1"
.LASF266:
	.string	"SDL_SCANCODE_INTERNATIONAL2"
.LASF267:
	.string	"SDL_SCANCODE_INTERNATIONAL3"
.LASF268:
	.string	"SDL_SCANCODE_INTERNATIONAL4"
.LASF49:
	.string	"SDL_ARRAYORDER_NONE"
.LASF270:
	.string	"SDL_SCANCODE_INTERNATIONAL6"
.LASF271:
	.string	"SDL_SCANCODE_INTERNATIONAL7"
.LASF272:
	.string	"SDL_SCANCODE_INTERNATIONAL8"
.LASF273:
	.string	"SDL_SCANCODE_INTERNATIONAL9"
.LASF131:
	.string	"SDL_WINDOWEVENT_FOCUS_GAINED"
.LASF326:
	.string	"SDL_SCANCODE_KP_EXCLAM"
.LASF334:
	.string	"SDL_SCANCODE_KP_PLUSMINUS"
.LASF539:
	.string	"main"
.LASF84:
	.string	"Aloss"
.LASF69:
	.string	"version"
.LASF78:
	.string	"Gmask"
.LASF356:
	.string	"SDL_SCANCODE_WWW"
.LASF2:
	.string	"unsigned int"
.LASF421:
	.string	"SDL_FINGERDOWN"
.LASF391:
	.string	"SDL_APP_TERMINATING"
.LASF543:
	.string	"SCREEN_WIDTH"
.LASF5:
	.string	"short int"
.LASF362:
	.string	"SDL_SCANCODE_AC_BACK"
.LASF62:
	.string	"SDL_PACKEDLAYOUT_8888"
.LASF288:
	.string	"SDL_SCANCODE_RETURN2"
.LASF91:
	.string	"SDL_Surface"
.LASF461:
	.string	"button"
.LASF90:
	.string	"SDL_Rect"
.LASF260:
	.string	"SDL_SCANCODE_MUTE"
.LASF92:
	.string	"flags"
.LASF370:
	.string	"SDL_SCANCODE_KBDILLUMTOGGLE"
.LASF256:
	.string	"SDL_SCANCODE_CUT"
.LASF477:
	.string	"SDL_AudioDeviceEvent"
.LASF289:
	.string	"SDL_SCANCODE_SEPARATOR"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
