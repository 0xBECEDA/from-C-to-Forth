#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <inttypes.h>
#include "stdint.h"

/* Documentation: https://ru.wikipedia.org/wiki/BMP */


#define byte unsigned char /* 1 */

typedef union _word {
    char array[2];
    uint16_t all;
} _word;

typedef union _dword {
    char array[4];
    uint32_t all;
} _dword;

typedef struct TbitmapHeader {
    /* BitMapFileHeader */
    _word bfType;
    _dword bfSize;
    _word bfReserved1;
    _word bfReserved2;
    _dword bfOffBits;
    /* BitMapInfo */
    _dword biSize;
    _dword biWidth;
    _dword biHeight;
    _word biPlanes;
    _word biBitCount;
    _dword biCompression;
    _dword biSizeImage;
    _dword biXPelsPerMeter;
    _dword biYPelsPerMeter;
    _dword biClrUsed;
    _dword biClrImportant;
} __attribute__((packed)) TbitmapHeader; // WTF?

void print_hex_array(char *array, unsigned int size) {
    unsigned int i;
    printf("%p: ", array);
    for (i=0; i<size; i++) {
        printf("%02hhx",array[i]);
        if (i%2 == 1) printf(" ");
    }
    printf(" (%d byte)\n",size);
}

void print_bitmapHeader(struct TbitmapHeader *p) {
    printf("bfType ");
    print_hex_array(p->bfType.array, sizeof(p->bfType.array));

    printf("bfSize ");
    print_hex_array(p->bfSize.array, sizeof(p->bfSize.array));

    printf("RSVD1 ");
    print_hex_array((char *)&p->bfReserved1, sizeof(p->bfReserved1));

    printf("RSVD2 ");
    print_hex_array((char *)&p->bfReserved2, sizeof(p->bfReserved1));

    printf("Offset %d[%2.2x] - ",p->bfOffBits.all, p->bfOffBits.all);
    print_hex_array(p->bfOffBits.array, sizeof(p->bfOffBits.array));

    printf("biSize %8.8x (%d) - ", p->biSize.all, p->biSize.all);
    switch (p->biSize.all) {
    case 12:
        printf("BITMAPCOREHEADER v.CORE");
        break;
    case 40:
        printf("BITMAPINFOHEADER v.3");
        break;
    case 108:
        printf("BITMAPV4HEADER v.4");
        break;
    case 124:
        printf("BITMAPV5HEADER v.5");
        break;
    }
    printf(" - ");
    print_hex_array(p->biSize.array, sizeof(p->biSize.array));

    printf("biWidth %8.8x (%d) - ", p->biWidth.all, p->biWidth.all);
    print_hex_array(p->biWidth.array, sizeof(p->biWidth.array));

    printf("biHeight %8.8x (%d) - ", p->biHeight.all, p->biHeight.all);
    print_hex_array(p->biHeight.array, sizeof(p->biHeight.array));

    printf("biPlanes %4.4x (%d) - ", p->biPlanes.all, p->biPlanes.all);
    print_hex_array(p->biPlanes.array, sizeof(p->biPlanes.array));

    printf("biBitCount %4.4x (%d) - ", p->biBitCount.all, p->biBitCount.all);
    print_hex_array(p->biBitCount.array, sizeof(p->biBitCount.array));

    printf("biCompression %8.8x (%d) - ", p->biCompression.all, p->biCompression.all);
    print_hex_array(p->biCompression.array, sizeof(p->biCompression.array));

    printf("biSizeImage %8.8x (%d) - ", p->biSizeImage.all, p->biSizeImage.all);
    print_hex_array(p->biSizeImage.array, sizeof(p->biSizeImage.array));

    printf("biXPelsPerMeter %8.8x (%d) - ", p->biXPelsPerMeter.all, p->biXPelsPerMeter.all);
    print_hex_array(p->biXPelsPerMeter.array, sizeof(p->biXPelsPerMeter.array));

    printf("biYPelsPerMeter %8.8x (%d) - ", p->biYPelsPerMeter.all, p->biYPelsPerMeter.all);
    print_hex_array(p->biYPelsPerMeter.array, sizeof(p->biYPelsPerMeter.array));

    printf("biClrUsed %8.8x (%d) - ", p->biClrUsed.all, p->biClrUsed.all);
    print_hex_array(p->biClrUsed.array, sizeof(p->biClrUsed.array));

    printf("biClrImportant %8.8x (%d) - ", p->biClrImportant.all, p->biClrImportant.all);
    print_hex_array(p->biClrImportant.array, sizeof(p->biClrImportant.array));
}

int main(int argc, char *argv[])
{
    int fileInput;
    struct TbitmapHeader  *bitmapHeader;
    unsigned char array[sizeof(TbitmapHeader)];

    fileInput = open(argv[1], O_RDONLY);
    read(fileInput, array, sizeof(TbitmapHeader));
    printf("Readed %d.\n", (int)sizeof(TbitmapHeader));
    for (int i=0; i<sizeof(TbitmapHeader); i++ ) {
        printf("%02hhx", array[i]);
        if (i%2 == 1) printf(" ");
    }
    printf("\n");
    close(fileInput);

    bitmapHeader = (struct TbitmapHeader *)&array;
    print_bitmapHeader(bitmapHeader);

    return 0;
}
