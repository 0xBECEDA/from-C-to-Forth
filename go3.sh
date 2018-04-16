as --32 01_hello_SDL.S -o 01_hello_SDL.o
ld -static                          \
   -o  01_hello_SDL                    \
   -L`gcc -print-file-name=`        \
   /usr/lib/i386-linux-gnu/crt1.o   \
   /usr/lib/i386-linux-gnu/crti.o   \
    01_hello_SDL.o                     \
   /usr/lib/i386-linux-gnu/crtn.o   \
   --start-group -lc -lgcc -lgcc_eh --end-group
