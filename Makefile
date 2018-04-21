#OBJS specifies which files to compile as part of the project
OBJS = 01_hello_SDL.cpp
ASMOBJS = 01_hello_SDL.s
#CC specifies which compiler we're using
CC = gcc

#COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
COMPILER_FLAGS = -w

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -lSDL2 -lm

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = 01_hello_SDL
#This is the target that compiles our executable

INC = sdl

VPATH = make:sdl

CFLAGS  += -m32 -g
LDFLAGS += -m32 -g

CFLAGS  += $(shell pkg-config --cflags  sdl2)
LDFLAGS += $(shell pkg-config --libs    sdl2)

all : $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)
asm : $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) -S $(LINKER_FLAGS) $(CFLAGS) `pkg-config --cflags --libs sdl2` -o $(OBJ_NAME).S
sdlwrap.o: sdlwrap.c
	$(CC) -c $(CFLAGS) -I$(INC) $^ -o $@
asm_asm : $(ASMOBJS)
	gcc $(ASMOBJS) sdlwrap.o -m32 -g -lSDL2 -Isdl -o asm_hello_SDL
