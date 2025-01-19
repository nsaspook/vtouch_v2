# 1 "ringbufs.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 285 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/xc8/v3.00/pic/include/language_support.h" 1 3
# 46 "/opt/microchip/xc8/v3.00/pic/include/language_support.h" 3
extern char * __stack_lo;
extern char * __stack_hi;





extern char * __inthi_stack_lo;
extern char * __inthi_stack_hi;
extern char * __intlo_stack_lo;
extern char * __intlo_stack_hi;
# 2 "<built-in>" 2
# 1 "ringbufs.c" 2
# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/string.h" 1 3



# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/musl_xc8.h" 1 3
# 5 "/opt/microchip/xc8/v3.00/pic/include/c99/string.h" 2 3





# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/features.h" 1 3
# 11 "/opt/microchip/xc8/v3.00/pic/include/c99/string.h" 2 3
# 25 "/opt/microchip/xc8/v3.00/pic/include/c99/string.h" 3
# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 1 3
# 128 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 421 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 26 "/opt/microchip/xc8/v3.00/pic/include/c99/string.h" 2 3

void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);




char *strtok_r (char *restrict, const char *restrict, char **restrict);
int strerror_r (int, char *, size_t);
char *stpcpy(char *restrict, const char *restrict);
char *stpncpy(char *restrict, const char *restrict, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);




void *memccpy (void *restrict, const void *restrict, int, size_t);
# 2 "ringbufs.c" 2
# 1 "./ringbufs.h" 1
# 15 "./ringbufs.h"
# 1 "./vconfig.h" 1
# 17 "./vconfig.h"
# 1 "/opt/microchip/xc8/v3.00/pic/include/xc.h" 1 3
# 18 "/opt/microchip/xc8/v3.00/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/xc8debug.h" 1 3



# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/stdlib.h" 1 3
# 21 "/opt/microchip/xc8/v3.00/pic/include/c99/stdlib.h" 3
# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 1 3
# 24 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 22 "/opt/microchip/xc8/v3.00/pic/include/c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "/opt/microchip/xc8/v3.00/pic/include/c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "/opt/microchip/xc8/v3.00/pic/include/c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/opt/microchip/xc8/v3.00/pic/include/xc.h" 2 3
# 1 "/opt/microchip/xc8/v3.00/pic/include/builtins.h" 1 3



# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/stdint.h" 1 3
# 26 "/opt/microchip/xc8/v3.00/pic/include/c99/stdint.h" 3
# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 1 3
# 133 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned __int24 uintptr_t;
# 148 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef __int24 intptr_t;
# 164 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "/opt/microchip/xc8/v3.00/pic/include/c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "/opt/microchip/xc8/v3.00/pic/include/c99/stdint.h" 3
# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "/opt/microchip/xc8/v3.00/pic/include/c99/stdint.h" 2 3
# 5 "/opt/microchip/xc8/v3.00/pic/include/builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);

#pragma intrinsic(__nopf000)
extern void __nopf000(void);
#pragma intrinsic(__nopffff)
extern void __nopffff(void);
#pragma intrinsic(__nop0000)
extern void __nop0000(void);



#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "/opt/microchip/xc8/v3.00/pic/include/xc.h" 2 3








# 1 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18.h" 1 3




# 1 "/opt/microchip/xc8/v3.00/pic/include/htc.h" 1 3






# 1 "/opt/microchip/xc8/v3.00/pic/include/xc.h" 1 3
# 8 "/opt/microchip/xc8/v3.00/pic/include/htc.h" 2 3
# 6 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18.h" 2 3


# 1 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18_chip_select.h" 1 3
# 284 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18_chip_select.h" 3
# 1 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 1 3
# 44 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
# 1 "/opt/microchip/xc8/v3.00/pic/include/__at.h" 1 3
# 45 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 2 3
# 360 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char BOOTREG __attribute__((address(0x038)));

__asm("BOOTREG equ 038h");


typedef union {
    struct {
        unsigned B :6;
        unsigned BOOTDONE :1;
        unsigned BPOUT :1;
    };
} BOOTREGbits_t;
extern volatile BOOTREGbits_t BOOTREGbits __attribute__((address(0x038)));
# 392 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLKRCON __attribute__((address(0x039)));

__asm("CLKRCON equ 039h");


typedef union {
    struct {
        unsigned DIV :3;
        unsigned DC :2;
        unsigned :2;
        unsigned EN :1;
    };
    struct {
        unsigned CLKRDIV0 :1;
        unsigned CLKRDIV1 :1;
        unsigned CLKRDIV2 :1;
        unsigned CLKRDC0 :1;
        unsigned CLKRDC1 :1;
        unsigned :2;
        unsigned CLKREN :1;
    };
    struct {
        unsigned DIV0 :1;
        unsigned DIV1 :1;
        unsigned DIV2 :1;
        unsigned DC0 :1;
        unsigned DC1 :1;
    };
} CLKRCONbits_t;
extern volatile CLKRCONbits_t CLKRCONbits __attribute__((address(0x039)));
# 496 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLKRCLK __attribute__((address(0x03A)));

__asm("CLKRCLK equ 03Ah");


typedef union {
    struct {
        unsigned CLK :5;
    };
    struct {
        unsigned CLKRCLK0 :1;
        unsigned CLKRCLK1 :1;
        unsigned CLKRCLK2 :1;
        unsigned CLKRCLK3 :1;
        unsigned CLKRCLK4 :1;
    };
    struct {
        unsigned CLK0 :1;
        unsigned CLK1 :1;
        unsigned CLK2 :1;
        unsigned CLK3 :1;
        unsigned CLK4 :1;
    };
} CLKRCLKbits_t;
extern volatile CLKRCLKbits_t CLKRCLKbits __attribute__((address(0x03A)));
# 580 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NVMCON0 __attribute__((address(0x040)));

__asm("NVMCON0 equ 040h");


typedef union {
    struct {
        unsigned GO :1;
    };
    struct {
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned nDONE :1;
    };
} NVMCON0bits_t;
extern volatile NVMCON0bits_t NVMCON0bits __attribute__((address(0x040)));
# 616 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NVMCON1 __attribute__((address(0x041)));

__asm("NVMCON1 equ 041h");


typedef union {
    struct {
        unsigned CMD :3;
        unsigned :4;
        unsigned WRERR :1;
    };
    struct {
        unsigned NVMCMD :3;
    };
} NVMCON1bits_t;
extern volatile NVMCON1bits_t NVMCON1bits __attribute__((address(0x041)));
# 651 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NVMLOCK __attribute__((address(0x042)));

__asm("NVMLOCK equ 042h");


typedef union {
    struct {
        unsigned LOCK :8;
    };
} NVMLOCKbits_t;
extern volatile NVMLOCKbits_t NVMLOCKbits __attribute__((address(0x042)));
# 672 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 NVMADR __attribute__((address(0x043)));


__asm("NVMADR equ 043h");




extern volatile unsigned char NVMADRL __attribute__((address(0x043)));

__asm("NVMADRL equ 043h");


typedef union {
    struct {
        unsigned NVMADRL :8;
    };
    struct {
        unsigned NVMADR0 :1;
        unsigned NVMADR1 :1;
        unsigned NVMADR2 :1;
        unsigned NVMADR3 :1;
        unsigned NVMADR4 :1;
        unsigned NVMADR5 :1;
        unsigned NVMADR6 :1;
        unsigned NVMADR7 :1;
    };
} NVMADRLbits_t;
extern volatile NVMADRLbits_t NVMADRLbits __attribute__((address(0x043)));
# 750 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NVMADRH __attribute__((address(0x044)));

__asm("NVMADRH equ 044h");


typedef union {
    struct {
        unsigned NVMADRH :8;
    };
    struct {
        unsigned NVMADR8 :1;
        unsigned NVMADR9 :1;
        unsigned NVMADR10 :1;
        unsigned NVMADR11 :1;
        unsigned NVMADR12 :1;
        unsigned NVMADR13 :1;
        unsigned NVMADR14 :1;
        unsigned NVMADR15 :1;
    };
} NVMADRHbits_t;
extern volatile NVMADRHbits_t NVMADRHbits __attribute__((address(0x044)));
# 820 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NVMADRU __attribute__((address(0x045)));

__asm("NVMADRU equ 045h");


typedef union {
    struct {
        unsigned NVMADRU :6;
    };
    struct {
        unsigned NVMADR16 :1;
        unsigned NVMADR17 :1;
        unsigned NVMADR18 :1;
        unsigned NVMADR19 :1;
        unsigned NVMADR20 :1;
        unsigned NVMADR21 :1;
    };
} NVMADRUbits_t;
extern volatile NVMADRUbits_t NVMADRUbits __attribute__((address(0x045)));
# 878 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short NVMDAT __attribute__((address(0x046)));

__asm("NVMDAT equ 046h");




extern volatile unsigned char NVMDATL __attribute__((address(0x046)));

__asm("NVMDATL equ 046h");


typedef union {
    struct {
        unsigned NVMDATL :8;
    };
    struct {
        unsigned NVMDAT0 :1;
        unsigned NVMDAT1 :1;
        unsigned NVMDAT2 :1;
        unsigned NVMDAT3 :1;
        unsigned NVMDAT4 :1;
        unsigned NVMDAT5 :1;
        unsigned NVMDAT6 :1;
        unsigned NVMDAT7 :1;
    };
} NVMDATLbits_t;
extern volatile NVMDATLbits_t NVMDATLbits __attribute__((address(0x046)));
# 955 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NVMDATH __attribute__((address(0x047)));

__asm("NVMDATH equ 047h");


typedef union {
    struct {
        unsigned NVMDATH :8;
    };
    struct {
        unsigned NVMDAT8 :1;
        unsigned NVMDAT9 :1;
        unsigned NVMDAT10 :1;
        unsigned NVMDAT11 :1;
        unsigned NVMDAT12 :1;
        unsigned NVMDAT13 :1;
        unsigned NVMDAT14 :1;
        unsigned NVMDAT15 :1;
    };
} NVMDATHbits_t;
extern volatile NVMDATHbits_t NVMDATHbits __attribute__((address(0x047)));
# 1025 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char VREGCON __attribute__((address(0x048)));

__asm("VREGCON equ 048h");


typedef union {
    struct {
        unsigned VREGPM :2;
        unsigned :2;
        unsigned PMSYS :2;
    };
    struct {
        unsigned VREGPM0 :1;
        unsigned VREGPM1 :1;
        unsigned :2;
        unsigned PMSYS0 :1;
        unsigned PMSYS1 :1;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0x048)));
# 1079 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char BORCON __attribute__((address(0x049)));

__asm("BORCON equ 049h");


typedef union {
    struct {
        unsigned BORRDY :1;
        unsigned :6;
        unsigned SBOREN :1;
    };
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __attribute__((address(0x049)));
# 1106 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char HLVDCON0 __attribute__((address(0x04A)));

__asm("HLVDCON0 equ 04Ah");


typedef union {
    struct {
        unsigned INTL :1;
        unsigned INTH :1;
        unsigned :2;
        unsigned RDY :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned HLVDINTL :1;
        unsigned HLVDINTH :1;
        unsigned :2;
        unsigned HLVDRDY :1;
        unsigned HLVDOUT :1;
        unsigned :1;
        unsigned HLVDEN :1;
    };
} HLVDCON0bits_t;
extern volatile HLVDCON0bits_t HLVDCON0bits __attribute__((address(0x04A)));
# 1186 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char HLVDCON1 __attribute__((address(0x04B)));

__asm("HLVDCON1 equ 04Bh");


typedef union {
    struct {
        unsigned SEL :4;
    };
    struct {
        unsigned SEL0 :1;
        unsigned SEL1 :1;
        unsigned SEL2 :1;
        unsigned SEL3 :1;
    };
    struct {
        unsigned HLVDSEL0 :1;
        unsigned HLVDSEL1 :1;
        unsigned HLVDSEL2 :1;
        unsigned HLVDSEL3 :1;
    };
} HLVDCON1bits_t;
extern volatile HLVDCON1bits_t HLVDCON1bits __attribute__((address(0x04B)));
# 1258 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ZCDCON __attribute__((address(0x04C)));

__asm("ZCDCON equ 04Ch");


typedef union {
    struct {
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned :2;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned SEN :1;
    };
    struct {
        unsigned ZCDINTN :1;
        unsigned ZCDINTP :1;
        unsigned :2;
        unsigned ZCDPOL :1;
        unsigned ZCDOUT :1;
        unsigned :1;
        unsigned ZCDSEN :1;
    };
} ZCDCONbits_t;
extern volatile ZCDCONbits_t ZCDCONbits __attribute__((address(0x04C)));
# 1338 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD0 __attribute__((address(0x060)));

__asm("PMD0 equ 060h");


typedef union {
    struct {
        unsigned IOCMD :1;
        unsigned CLKRMD :1;
        unsigned :1;
        unsigned SCANMD :1;
        unsigned CRCMD :1;
        unsigned HLVDMD :1;
        unsigned FVRMD :1;
        unsigned SYSCMD :1;
    };
    struct {
        unsigned :5;
        unsigned LVDMD :1;
    };
} PMD0bits_t;
extern volatile PMD0bits_t PMD0bits __attribute__((address(0x060)));
# 1404 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD1 __attribute__((address(0x061)));

__asm("PMD1 equ 061h");


typedef union {
    struct {
        unsigned TMR0MD :1;
        unsigned TMR1MD :1;
        unsigned TMR2MD :1;
        unsigned TMR3MD :1;
        unsigned TMR4MD :1;
        unsigned TMR5MD :1;
        unsigned TMR6MD :1;
        unsigned SMT1MD :1;
    };
} PMD1bits_t;
extern volatile PMD1bits_t PMD1bits __attribute__((address(0x061)));
# 1466 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD2 __attribute__((address(0x062)));

__asm("PMD2 equ 062h");


typedef union {
    struct {
        unsigned TU16AMD :1;
        unsigned TU16BMD :1;
        unsigned :5;
        unsigned CANMD :1;
    };
    struct {
        unsigned TU1MD :1;
        unsigned TU2MD :1;
    };
} PMD2bits_t;
extern volatile PMD2bits_t PMD2bits __attribute__((address(0x062)));
# 1513 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD3 __attribute__((address(0x063)));

__asm("PMD3 equ 063h");


typedef union {
    struct {
        unsigned ZCDMD :1;
        unsigned CM1MD :1;
        unsigned CM2MD :1;
        unsigned :2;
        unsigned ADCMD :1;
        unsigned DACMD :1;
        unsigned ACTMD :1;
    };
} PMD3bits_t;
extern volatile PMD3bits_t PMD3bits __attribute__((address(0x063)));
# 1564 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD4 __attribute__((address(0x064)));

__asm("PMD4 equ 064h");


typedef union {
    struct {
        unsigned NCO1MD :1;
        unsigned NCO2MD :1;
        unsigned NCO3MD :1;
        unsigned DSM1MD :1;
        unsigned CWG1MD :1;
        unsigned CWG2MD :1;
        unsigned CWG3MD :1;
    };
} PMD4bits_t;
extern volatile PMD4bits_t PMD4bits __attribute__((address(0x064)));
# 1620 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD5 __attribute__((address(0x065)));

__asm("PMD5 equ 065h");


typedef union {
    struct {
        unsigned CCP1MD :1;
        unsigned CCP2MD :1;
        unsigned CCP3MD :1;
        unsigned :1;
        unsigned PWM1MD :1;
        unsigned PWM2MD :1;
        unsigned PWM3MD :1;
        unsigned PWM4MD :1;
    };
} PMD5bits_t;
extern volatile PMD5bits_t PMD5bits __attribute__((address(0x065)));
# 1677 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD6 __attribute__((address(0x066)));

__asm("PMD6 equ 066h");


typedef union {
    struct {
        unsigned I2C1MD :1;
        unsigned SPI1MD :1;
        unsigned SPI2MD :1;
        unsigned U1MD :1;
        unsigned U2MD :1;
        unsigned U3MD :1;
        unsigned U4MD :1;
        unsigned U5MD :1;
    };
} PMD6bits_t;
extern volatile PMD6bits_t PMD6bits __attribute__((address(0x066)));
# 1739 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD7 __attribute__((address(0x067)));

__asm("PMD7 equ 067h");


typedef union {
    struct {
        unsigned CLC1MD :1;
        unsigned CLC2MD :1;
        unsigned CLC3MD :1;
        unsigned CLC4MD :1;
        unsigned CLC5MD :1;
        unsigned CLC6MD :1;
        unsigned CLC7MD :1;
        unsigned CLC8MD :1;
    };
} PMD7bits_t;
extern volatile PMD7bits_t PMD7bits __attribute__((address(0x067)));
# 1801 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PMD8 __attribute__((address(0x068)));

__asm("PMD8 equ 068h");


typedef union {
    struct {
        unsigned DMA1MD :1;
        unsigned DMA2MD :1;
        unsigned DMA3MD :1;
        unsigned DMA4MD :1;
        unsigned DMA5MD :1;
        unsigned DMA6MD :1;
        unsigned DMA7MD :1;
        unsigned DMA8MD :1;
    };
} PMD8bits_t;
extern volatile PMD8bits_t PMD8bits __attribute__((address(0x068)));
# 1863 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MD1CON0 __attribute__((address(0x06A)));

__asm("MD1CON0 equ 06Ah");


typedef union {
    struct {
        unsigned BIT :1;
        unsigned :3;
        unsigned OPOL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MD1BIT :1;
        unsigned :3;
        unsigned MD1OPOL :1;
        unsigned MD1OUT :1;
        unsigned :1;
        unsigned MD1EN :1;
    };
} MD1CON0bits_t;
extern volatile MD1CON0bits_t MD1CON0bits __attribute__((address(0x06A)));
# 1931 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MD1CON1 __attribute__((address(0x06B)));

__asm("MD1CON1 equ 06Bh");


typedef union {
    struct {
        unsigned CLSYNC :1;
        unsigned CLPOL :1;
        unsigned :2;
        unsigned CHSYNC :1;
        unsigned CHPOL :1;
    };
    struct {
        unsigned MD1CLSYNC :1;
        unsigned MD1CLPOL :1;
        unsigned :2;
        unsigned MD1CHSYNC :1;
        unsigned MD1CHPOL :1;
    };
} MD1CON1bits_t;
extern volatile MD1CON1bits_t MD1CON1bits __attribute__((address(0x06B)));
# 1997 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MD1SRC __attribute__((address(0x06C)));

__asm("MD1SRC equ 06Ch");


typedef union {
    struct {
        unsigned MS :8;
    };
    struct {
        unsigned MS0 :1;
        unsigned MS1 :1;
        unsigned MS2 :1;
        unsigned MS3 :1;
        unsigned MS4 :1;
        unsigned MS5 :1;
    };
    struct {
        unsigned MD1MS :8;
    };
    struct {
        unsigned MD1MS0 :1;
        unsigned MD1MS1 :1;
        unsigned MD1MS2 :1;
        unsigned MD1MS3 :1;
        unsigned MD1MS4 :1;
        unsigned MD1MS5 :1;
    };
} MD1SRCbits_t;
extern volatile MD1SRCbits_t MD1SRCbits __attribute__((address(0x06C)));
# 2101 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MD1CARL __attribute__((address(0x06D)));

__asm("MD1CARL equ 06Dh");


typedef union {
    struct {
        unsigned CL :8;
    };
    struct {
        unsigned CL0 :1;
        unsigned CL1 :1;
        unsigned CL2 :1;
        unsigned CL3 :1;
        unsigned CL4 :1;
    };
    struct {
        unsigned MD1CL :8;
    };
    struct {
        unsigned MD1CL0 :1;
        unsigned MD1CL1 :1;
        unsigned MD1CL2 :1;
        unsigned MD1CL3 :1;
        unsigned MD1CL4 :1;
    };
} MD1CARLbits_t;
extern volatile MD1CARLbits_t MD1CARLbits __attribute__((address(0x06D)));
# 2193 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MD1CARH __attribute__((address(0x06E)));

__asm("MD1CARH equ 06Eh");


typedef union {
    struct {
        unsigned CH :8;
    };
    struct {
        unsigned CH0 :1;
        unsigned CH1 :1;
        unsigned CH2 :1;
        unsigned CH3 :1;
        unsigned CH4 :1;
    };
    struct {
        unsigned MD1CH :8;
    };
    struct {
        unsigned MD1CH0 :1;
        unsigned MD1CH1 :1;
        unsigned MD1CH2 :1;
        unsigned MD1CH3 :1;
        unsigned MD1CH4 :1;
    };
} MD1CARHbits_t;
extern volatile MD1CARHbits_t MD1CARHbits __attribute__((address(0x06E)));
# 2285 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CMOUT __attribute__((address(0x06F)));

__asm("CMOUT equ 06Fh");


typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x06F)));
# 2311 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0x070)));

__asm("CM1CON0 equ 070h");


typedef union {
    struct {
        unsigned SYNC :1;
        unsigned HYS :1;
        unsigned :2;
        unsigned POL :1;
        unsigned :1;
        unsigned OUT :1;
        unsigned EN :1;
    };
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned :2;
        unsigned C1POL :1;
        unsigned :1;
        unsigned C1OUT :1;
        unsigned C1EN :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x070)));
# 2391 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CM1CON1 __attribute__((address(0x071)));

__asm("CM1CON1 equ 071h");


typedef union {
    struct {
        unsigned INTN :1;
        unsigned INTP :1;
    };
    struct {
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x071)));
# 2431 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CM1NCH __attribute__((address(0x072)));

__asm("CM1NCH equ 072h");


typedef union {
    struct {
        unsigned NCH :3;
    };
    struct {
        unsigned NCH0 :1;
        unsigned NCH1 :1;
        unsigned NCH2 :1;
    };
    struct {
        unsigned C1NCH0 :1;
        unsigned C1NCH1 :1;
        unsigned C1NCH2 :1;
    };
} CM1NCHbits_t;
extern volatile CM1NCHbits_t CM1NCHbits __attribute__((address(0x072)));
# 2491 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CM1PCH __attribute__((address(0x073)));

__asm("CM1PCH equ 073h");


typedef union {
    struct {
        unsigned PCH :3;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
        unsigned PCH2 :1;
    };
    struct {
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
        unsigned C1PCH2 :1;
    };
} CM1PCHbits_t;
extern volatile CM1PCHbits_t CM1PCHbits __attribute__((address(0x073)));
# 2551 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0x074)));

__asm("CM2CON0 equ 074h");


typedef union {
    struct {
        unsigned SYNC :1;
        unsigned HYS :1;
        unsigned :2;
        unsigned POL :1;
        unsigned :1;
        unsigned OUT :1;
        unsigned EN :1;
    };
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned :2;
        unsigned C2POL :1;
        unsigned :1;
        unsigned C2OUT :1;
        unsigned C2EN :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x074)));
# 2631 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0x075)));

__asm("CM2CON1 equ 075h");


typedef union {
    struct {
        unsigned INTN :1;
        unsigned INTP :1;
    };
    struct {
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x075)));
# 2671 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CM2NCH __attribute__((address(0x076)));

__asm("CM2NCH equ 076h");


typedef union {
    struct {
        unsigned NCH :3;
    };
    struct {
        unsigned NCH0 :1;
        unsigned NCH1 :1;
        unsigned NCH2 :1;
    };
    struct {
        unsigned C2NCH0 :1;
        unsigned C2NCH1 :1;
        unsigned C2NCH2 :1;
    };
} CM2NCHbits_t;
extern volatile CM2NCHbits_t CM2NCHbits __attribute__((address(0x076)));
# 2731 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CM2PCH __attribute__((address(0x077)));

__asm("CM2PCH equ 077h");


typedef union {
    struct {
        unsigned PCH :3;
    };
    struct {
        unsigned PCH0 :1;
        unsigned PCH1 :1;
        unsigned PCH2 :1;
    };
    struct {
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
        unsigned C2PCH2 :1;
    };
} CM2PCHbits_t;
extern volatile CM2PCHbits_t CM2PCHbits __attribute__((address(0x077)));
# 2791 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WDTCON0 __attribute__((address(0x078)));

__asm("WDTCON0 equ 078h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned WDTPS :5;
    };
    struct {
        unsigned SWDTEN :1;
    };
    struct {
        unsigned WDTSEN :1;
    };
    struct {
        unsigned :1;
        unsigned WDTPS0 :1;
        unsigned WDTPS1 :1;
        unsigned WDTPS2 :1;
        unsigned WDTPS3 :1;
        unsigned WDTPS4 :1;
    };
} WDTCON0bits_t;
extern volatile WDTCON0bits_t WDTCON0bits __attribute__((address(0x078)));
# 2866 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WDTCON1 __attribute__((address(0x079)));

__asm("WDTCON1 equ 079h");


typedef union {
    struct {
        unsigned WINDOW :3;
        unsigned :1;
        unsigned WDTCS :3;
    };
    struct {
        unsigned WINDOW0 :1;
        unsigned WINDOW1 :1;
        unsigned WINDOW2 :1;
    };
    struct {
        unsigned WDTWINDOW :3;
    };
    struct {
        unsigned WDTWINDOW0 :1;
        unsigned WDTWINDOW1 :1;
        unsigned WDTWINDOW2 :1;
        unsigned :1;
        unsigned WDTCS0 :1;
        unsigned WDTCS1 :1;
        unsigned WDTCS2 :1;
    };
} WDTCON1bits_t;
extern volatile WDTCON1bits_t WDTCON1bits __attribute__((address(0x079)));
# 2960 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WDTPSL __attribute__((address(0x07A)));

__asm("WDTPSL equ 07Ah");


typedef union {
    struct {
        unsigned PSCNT :8;
    };
    struct {
        unsigned PSCNT0 :1;
        unsigned PSCNT1 :1;
        unsigned PSCNT2 :1;
        unsigned PSCNT3 :1;
        unsigned PSCNT4 :1;
        unsigned PSCNT5 :1;
        unsigned PSCNT6 :1;
        unsigned PSCNT7 :1;
    };
    struct {
        unsigned WDTPSCNT :8;
    };
    struct {
        unsigned WDTPSCNT0 :1;
        unsigned WDTPSCNT1 :1;
        unsigned WDTPSCNT2 :1;
        unsigned WDTPSCNT3 :1;
        unsigned WDTPSCNT4 :1;
        unsigned WDTPSCNT5 :1;
        unsigned WDTPSCNT6 :1;
        unsigned WDTPSCNT7 :1;
    };
} WDTPSLbits_t;
extern volatile WDTPSLbits_t WDTPSLbits __attribute__((address(0x07A)));
# 3088 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WDTPSH __attribute__((address(0x07B)));

__asm("WDTPSH equ 07Bh");


typedef union {
    struct {
        unsigned PSCNT :8;
    };
    struct {
        unsigned PSCNT8 :1;
        unsigned PSCNT9 :1;
        unsigned PSCNT10 :1;
        unsigned PSCNT11 :1;
        unsigned PSCNT12 :1;
        unsigned PSCNT13 :1;
        unsigned PSCNT14 :1;
        unsigned PSCNT15 :1;
    };
    struct {
        unsigned WDTPSCNT :8;
    };
    struct {
        unsigned WDTPSCNT8 :1;
        unsigned WDTPSCNT9 :1;
        unsigned WDTPSCNT10 :1;
        unsigned WDTPSCNT11 :1;
        unsigned WDTPSCNT12 :1;
        unsigned WDTPSCNT13 :1;
        unsigned WDTPSCNT14 :1;
        unsigned WDTPSCNT15 :1;
    };
} WDTPSHbits_t;
extern volatile WDTPSHbits_t WDTPSHbits __attribute__((address(0x07B)));
# 3216 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WDTTMR __attribute__((address(0x07C)));

__asm("WDTTMR equ 07Ch");


typedef union {
    struct {
        unsigned PSCNT16 :1;
        unsigned PSCNT17 :1;
        unsigned STATE :1;
        unsigned WDTTMR :5;
    };
    struct {
        unsigned WDTPSCNT16 :1;
        unsigned WDTPSCNT17 :1;
        unsigned WDTSTATE :1;
        unsigned WDTTMR0 :1;
        unsigned WDTTMR1 :1;
        unsigned WDTTMR2 :1;
        unsigned WDTTMR3 :1;
        unsigned WDTTMR4 :1;
    };
} WDTTMRbits_t;
extern volatile WDTTMRbits_t WDTTMRbits __attribute__((address(0x07C)));
# 3304 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DAC1DAT __attribute__((address(0x07D)));

__asm("DAC1DAT equ 07Dh");




extern volatile unsigned char DAC1DATL __attribute__((address(0x07D)));

__asm("DAC1DATL equ 07Dh");


typedef union {
    struct {
        unsigned DAC1R :8;
    };
    struct {
        unsigned DAC1R0 :1;
        unsigned DAC1R1 :1;
        unsigned DAC1R2 :1;
        unsigned DAC1R3 :1;
        unsigned DAC1R4 :1;
        unsigned DAC1R5 :1;
        unsigned DAC1R6 :1;
        unsigned DAC1R7 :1;
    };
    struct {
        unsigned DAC1RL :8;
    };
} DAC1DATLbits_t;
extern volatile DAC1DATLbits_t DAC1DATLbits __attribute__((address(0x07D)));
# 3389 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DAC1CON __attribute__((address(0x07F)));

__asm("DAC1CON equ 07Fh");


typedef union {
    struct {
        unsigned NSS :2;
        unsigned PSS :2;
        unsigned OE :3;
        unsigned EN :1;
    };
    struct {
        unsigned DAC1NSS :2;
        unsigned DAC1PSS0 :1;
        unsigned DAC1PSS1 :1;
        unsigned DAC1OE :3;
        unsigned DAC1EN :1;
    };
    struct {
        unsigned NSS0 :1;
        unsigned :1;
        unsigned PSS0 :1;
        unsigned PSS1 :1;
        unsigned OE0 :1;
        unsigned OE1 :1;
    };
} DAC1CONbits_t;
extern volatile DAC1CONbits_t DAC1CONbits __attribute__((address(0x07F)));
# 3492 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1RXB __attribute__((address(0x080)));

__asm("SPI1RXB equ 080h");


typedef union {
    struct {
        unsigned RXB :8;
    };
    struct {
        unsigned RXB0 :1;
        unsigned RXB1 :1;
        unsigned RXB2 :1;
        unsigned RXB3 :1;
        unsigned RXB4 :1;
        unsigned RXB5 :1;
        unsigned RXB6 :1;
        unsigned RXB7 :1;
    };
} SPI1RXBbits_t;
extern volatile SPI1RXBbits_t SPI1RXBbits __attribute__((address(0x080)));
# 3562 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1TXB __attribute__((address(0x081)));

__asm("SPI1TXB equ 081h");


typedef union {
    struct {
        unsigned TXB :8;
    };
    struct {
        unsigned TXB0 :1;
        unsigned TXB1 :1;
        unsigned TXB2 :1;
        unsigned TXB3 :1;
        unsigned TXB4 :1;
        unsigned TXB5 :1;
        unsigned TXB6 :1;
        unsigned TXB7 :1;
    };
} SPI1TXBbits_t;
extern volatile SPI1TXBbits_t SPI1TXBbits __attribute__((address(0x081)));
# 3632 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short SPI1TCNT __attribute__((address(0x082)));

__asm("SPI1TCNT equ 082h");




extern volatile unsigned char SPI1TCNTL __attribute__((address(0x082)));

__asm("SPI1TCNTL equ 082h");


typedef union {
    struct {
        unsigned TCNTL :8;
    };
} SPI1TCNTLbits_t;
extern volatile SPI1TCNTLbits_t SPI1TCNTLbits __attribute__((address(0x082)));
# 3659 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1TCNTH __attribute__((address(0x083)));

__asm("SPI1TCNTH equ 083h");


typedef union {
    struct {
        unsigned TCNTH :3;
    };
} SPI1TCNTHbits_t;
extern volatile SPI1TCNTHbits_t SPI1TCNTHbits __attribute__((address(0x083)));
# 3679 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1CON0 __attribute__((address(0x084)));

__asm("SPI1CON0 equ 084h");


typedef union {
    struct {
        unsigned BMODE :1;
        unsigned MST :1;
        unsigned LSBF :1;
        unsigned :4;
        unsigned EN :1;
    };
    struct {
        unsigned SPI1BMODE :1;
        unsigned SPI1MST :1;
        unsigned SPI1LSBF :1;
        unsigned :4;
        unsigned SPI1SPIEN :1;
    };
} SPI1CON0bits_t;
extern volatile SPI1CON0bits_t SPI1CON0bits __attribute__((address(0x084)));
# 3745 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1CON1 __attribute__((address(0x085)));

__asm("SPI1CON1 equ 085h");


typedef union {
    struct {
        unsigned SDOP :1;
        unsigned SDIP :1;
        unsigned SSP :1;
        unsigned :1;
        unsigned FST :1;
        unsigned CKP :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned SPI1SDOP :1;
        unsigned SPI1SDIP :1;
        unsigned SPI1SSP :1;
        unsigned :1;
        unsigned SPI1FST :1;
        unsigned SPI1CKP :1;
        unsigned SPI1CKE :1;
        unsigned SPI1SMP :1;
    };
} SPI1CON1bits_t;
extern volatile SPI1CON1bits_t SPI1CON1bits __attribute__((address(0x085)));
# 3847 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1CON2 __attribute__((address(0x086)));

__asm("SPI1CON2 equ 086h");


typedef union {
    struct {
        unsigned RXR :1;
        unsigned TXR :1;
        unsigned SSET :1;
        unsigned :3;
        unsigned SSFLT :1;
        unsigned BUSY :1;
    };
    struct {
        unsigned SPI1RXR :1;
        unsigned SPI1TXR :1;
        unsigned SPI1SSET :1;
        unsigned :3;
        unsigned SPI1SSFLT :1;
        unsigned SPI1BUSY :1;
    };
} SPI1CON2bits_t;
extern volatile SPI1CON2bits_t SPI1CON2bits __attribute__((address(0x086)));
# 3925 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1STATUS __attribute__((address(0x087)));

__asm("SPI1STATUS equ 087h");


typedef union {
    struct {
        unsigned RXBF :1;
        unsigned :1;
        unsigned CLRBF :1;
        unsigned RXRE :1;
        unsigned :1;
        unsigned TXBE :1;
        unsigned :1;
        unsigned TXWE :1;
    };
    struct {
        unsigned SPI1RXBF :1;
        unsigned :1;
        unsigned SPI1CLRBF :1;
        unsigned SPI1RXRE :1;
        unsigned :1;
        unsigned SPI1TXBE :1;
        unsigned :1;
        unsigned SPI1TXWE :1;
    };
} SPI1STATUSbits_t;
extern volatile SPI1STATUSbits_t SPI1STATUSbits __attribute__((address(0x087)));
# 4007 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1TWIDTH __attribute__((address(0x088)));

__asm("SPI1TWIDTH equ 088h");


typedef union {
    struct {
        unsigned TWIDTH :3;
    };
    struct {
        unsigned TWIDTH0 :1;
        unsigned TWIDTH1 :1;
        unsigned TWIDTH2 :1;
    };
} SPI1TWIDTHbits_t;
extern volatile SPI1TWIDTHbits_t SPI1TWIDTHbits __attribute__((address(0x088)));
# 4047 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1BAUD __attribute__((address(0x089)));

__asm("SPI1BAUD equ 089h");


typedef union {
    struct {
        unsigned BAUD :8;
    };
    struct {
        unsigned BAUD0 :1;
        unsigned BAUD1 :1;
        unsigned BAUD2 :1;
        unsigned BAUD3 :1;
        unsigned BAUD4 :1;
        unsigned BAUD5 :1;
        unsigned BAUD6 :1;
        unsigned BAUD7 :1;
    };
} SPI1BAUDbits_t;
extern volatile SPI1BAUDbits_t SPI1BAUDbits __attribute__((address(0x089)));
# 4117 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1INTF __attribute__((address(0x08A)));

__asm("SPI1INTF equ 08Ah");


typedef union {
    struct {
        unsigned :1;
        unsigned TXUIF :1;
        unsigned RXOIF :1;
        unsigned :1;
        unsigned EOSIF :1;
        unsigned SOSIF :1;
        unsigned TCZIF :1;
        unsigned SRMTIF :1;
    };
    struct {
        unsigned :1;
        unsigned SPI1TXUIF :1;
        unsigned SPI1RXOIF :1;
        unsigned :1;
        unsigned SPI1EOSIF :1;
        unsigned SPI1SOSIF :1;
        unsigned SPI1TCZIF :1;
        unsigned SPI1SRMTIF :1;
    };
} SPI1INTFbits_t;
extern volatile SPI1INTFbits_t SPI1INTFbits __attribute__((address(0x08A)));
# 4209 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1INTE __attribute__((address(0x08B)));

__asm("SPI1INTE equ 08Bh");


typedef union {
    struct {
        unsigned :1;
        unsigned TXUIE :1;
        unsigned RXOIE :1;
        unsigned :1;
        unsigned EOSIE :1;
        unsigned SOSIE :1;
        unsigned TCZIE :1;
        unsigned SRMTIE :1;
    };
    struct {
        unsigned :1;
        unsigned SPI1TXUIE :1;
        unsigned SPI1RXOIE :1;
        unsigned :1;
        unsigned SPI1EOSIE :1;
        unsigned SPI1SOSIE :1;
        unsigned SPI1TCZIE :1;
        unsigned SPI1SRMTIE :1;
    };
} SPI1INTEbits_t;
extern volatile SPI1INTEbits_t SPI1INTEbits __attribute__((address(0x08B)));
# 4301 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1CLK __attribute__((address(0x08C)));

__asm("SPI1CLK equ 08Ch");


typedef union {
    struct {
        unsigned CLKSEL :8;
    };
    struct {
        unsigned CLKSEL0 :1;
        unsigned CLKSEL1 :1;
        unsigned CLKSEL2 :1;
        unsigned CLKSEL3 :1;
        unsigned CLKSEL4 :1;
    };
    struct {
        unsigned SPI1CLKSEL :8;
    };
    struct {
        unsigned SPI1CLKSEL0 :1;
        unsigned SPI1CLKSEL1 :1;
        unsigned SPI1CLKSEL2 :1;
        unsigned SPI1CLKSEL3 :1;
        unsigned SPI1CLKSEL4 :1;
    };
} SPI1CLKbits_t;
extern volatile SPI1CLKbits_t SPI1CLKbits __attribute__((address(0x08C)));
# 4393 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2RXB __attribute__((address(0x08D)));

__asm("SPI2RXB equ 08Dh");


typedef union {
    struct {
        unsigned RXB :8;
    };
    struct {
        unsigned RXB0 :1;
        unsigned RXB1 :1;
        unsigned RXB2 :1;
        unsigned RXB3 :1;
        unsigned RXB4 :1;
        unsigned RXB5 :1;
        unsigned RXB6 :1;
        unsigned RXB7 :1;
    };
} SPI2RXBbits_t;
extern volatile SPI2RXBbits_t SPI2RXBbits __attribute__((address(0x08D)));
# 4463 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2TXB __attribute__((address(0x08E)));

__asm("SPI2TXB equ 08Eh");


typedef union {
    struct {
        unsigned TXB :8;
    };
    struct {
        unsigned TXB0 :1;
        unsigned TXB1 :1;
        unsigned TXB2 :1;
        unsigned TXB3 :1;
        unsigned TXB4 :1;
        unsigned TXB5 :1;
        unsigned TXB6 :1;
        unsigned TXB7 :1;
    };
} SPI2TXBbits_t;
extern volatile SPI2TXBbits_t SPI2TXBbits __attribute__((address(0x08E)));
# 4533 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short SPI2TCNT __attribute__((address(0x08F)));

__asm("SPI2TCNT equ 08Fh");




extern volatile unsigned char SPI2TCNTL __attribute__((address(0x08F)));

__asm("SPI2TCNTL equ 08Fh");


typedef union {
    struct {
        unsigned TCNTL :8;
    };
} SPI2TCNTLbits_t;
extern volatile SPI2TCNTLbits_t SPI2TCNTLbits __attribute__((address(0x08F)));
# 4560 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2TCNTH __attribute__((address(0x090)));

__asm("SPI2TCNTH equ 090h");


typedef union {
    struct {
        unsigned TCNTH :3;
    };
} SPI2TCNTHbits_t;
extern volatile SPI2TCNTHbits_t SPI2TCNTHbits __attribute__((address(0x090)));
# 4580 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2CON0 __attribute__((address(0x091)));

__asm("SPI2CON0 equ 091h");


typedef union {
    struct {
        unsigned BMODE :1;
        unsigned MST :1;
        unsigned LSBF :1;
        unsigned :4;
        unsigned EN :1;
    };
    struct {
        unsigned SPI2BMODE :1;
        unsigned SPI2MST :1;
        unsigned SPI2LSBF :1;
        unsigned :4;
        unsigned SPI2SPIEN :1;
    };
} SPI2CON0bits_t;
extern volatile SPI2CON0bits_t SPI2CON0bits __attribute__((address(0x091)));
# 4646 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2CON1 __attribute__((address(0x092)));

__asm("SPI2CON1 equ 092h");


typedef union {
    struct {
        unsigned SDOP :1;
        unsigned SDIP :1;
        unsigned SSP :1;
        unsigned :1;
        unsigned FST :1;
        unsigned CKP :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned SPI2SDOP :1;
        unsigned SPI2SDIP :1;
        unsigned SPI2SSP :1;
        unsigned :1;
        unsigned SPI2FST :1;
        unsigned SPI2CKP :1;
        unsigned SPI2CKE :1;
        unsigned SPI2SMP :1;
    };
} SPI2CON1bits_t;
extern volatile SPI2CON1bits_t SPI2CON1bits __attribute__((address(0x092)));
# 4748 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2CON2 __attribute__((address(0x093)));

__asm("SPI2CON2 equ 093h");


typedef union {
    struct {
        unsigned RXR :1;
        unsigned TXR :1;
        unsigned SSET :1;
        unsigned :3;
        unsigned SSFLT :1;
        unsigned BUSY :1;
    };
    struct {
        unsigned SPI2RXR :1;
        unsigned SPI2TXR :1;
        unsigned SPI2SSET :1;
        unsigned :3;
        unsigned SPI2SSFLT :1;
        unsigned SPI2BUSY :1;
    };
} SPI2CON2bits_t;
extern volatile SPI2CON2bits_t SPI2CON2bits __attribute__((address(0x093)));
# 4826 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2STATUS __attribute__((address(0x094)));

__asm("SPI2STATUS equ 094h");


typedef union {
    struct {
        unsigned RXBF :1;
        unsigned :1;
        unsigned CLRBF :1;
        unsigned RXRE :1;
        unsigned :1;
        unsigned TXBE :1;
        unsigned :1;
        unsigned TXWE :1;
    };
    struct {
        unsigned SPI2RXBF :1;
        unsigned :1;
        unsigned SPI2CLRBF :1;
        unsigned SPI2RXRE :1;
        unsigned :1;
        unsigned SPI2TXBE :1;
        unsigned :1;
        unsigned SPI2TXWE :1;
    };
} SPI2STATUSbits_t;
extern volatile SPI2STATUSbits_t SPI2STATUSbits __attribute__((address(0x094)));
# 4908 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2TWIDTH __attribute__((address(0x095)));

__asm("SPI2TWIDTH equ 095h");


typedef union {
    struct {
        unsigned TWIDTH :3;
    };
    struct {
        unsigned TWIDTH0 :1;
        unsigned TWIDTH1 :1;
        unsigned TWIDTH2 :1;
    };
} SPI2TWIDTHbits_t;
extern volatile SPI2TWIDTHbits_t SPI2TWIDTHbits __attribute__((address(0x095)));
# 4948 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2BAUD __attribute__((address(0x096)));

__asm("SPI2BAUD equ 096h");


typedef union {
    struct {
        unsigned BAUD :8;
    };
    struct {
        unsigned BAUD0 :1;
        unsigned BAUD1 :1;
        unsigned BAUD2 :1;
        unsigned BAUD3 :1;
        unsigned BAUD4 :1;
        unsigned BAUD5 :1;
        unsigned BAUD6 :1;
        unsigned BAUD7 :1;
    };
} SPI2BAUDbits_t;
extern volatile SPI2BAUDbits_t SPI2BAUDbits __attribute__((address(0x096)));
# 5018 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2INTF __attribute__((address(0x097)));

__asm("SPI2INTF equ 097h");


typedef union {
    struct {
        unsigned :1;
        unsigned TXUIF :1;
        unsigned RXOIF :1;
        unsigned :1;
        unsigned EOSIF :1;
        unsigned SOSIF :1;
        unsigned TCZIF :1;
        unsigned SRMTIF :1;
    };
    struct {
        unsigned :1;
        unsigned SPI2TXUIF :1;
        unsigned SPI2RXOIF :1;
        unsigned :1;
        unsigned SPI2EOSIF :1;
        unsigned SPI2SOSIF :1;
        unsigned SPI2TCZIF :1;
        unsigned SPI2SRMTIF :1;
    };
} SPI2INTFbits_t;
extern volatile SPI2INTFbits_t SPI2INTFbits __attribute__((address(0x097)));
# 5110 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2INTE __attribute__((address(0x098)));

__asm("SPI2INTE equ 098h");


typedef union {
    struct {
        unsigned :1;
        unsigned TXUIE :1;
        unsigned RXOIE :1;
        unsigned :1;
        unsigned EOSIE :1;
        unsigned SOSIE :1;
        unsigned TCZIE :1;
        unsigned SRMTIE :1;
    };
    struct {
        unsigned :1;
        unsigned SPI2TXUIE :1;
        unsigned SPI2RXOIE :1;
        unsigned :1;
        unsigned SPI2EOSIE :1;
        unsigned SPI2SOSIE :1;
        unsigned SPI2TCZIE :1;
        unsigned SPI2SRMTIE :1;
    };
} SPI2INTEbits_t;
extern volatile SPI2INTEbits_t SPI2INTEbits __attribute__((address(0x098)));
# 5202 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2CLK __attribute__((address(0x099)));

__asm("SPI2CLK equ 099h");


typedef union {
    struct {
        unsigned CLKSEL :8;
    };
    struct {
        unsigned CLKSEL0 :1;
        unsigned CLKSEL1 :1;
        unsigned CLKSEL2 :1;
        unsigned CLKSEL3 :1;
        unsigned CLKSEL4 :1;
    };
    struct {
        unsigned SPI2CLKSEL :8;
    };
    struct {
        unsigned SPI2CLKSEL0 :1;
        unsigned SPI2CLKSEL1 :1;
        unsigned SPI2CLKSEL2 :1;
        unsigned SPI2CLKSEL3 :1;
        unsigned SPI2CLKSEL4 :1;
    };
} SPI2CLKbits_t;
extern volatile SPI2CLKbits_t SPI2CLKbits __attribute__((address(0x099)));
# 5294 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ACTCON __attribute__((address(0x0AC)));

__asm("ACTCON equ 0ACh");


typedef union {
    struct {
        unsigned :1;
        unsigned ACTORS :1;
        unsigned :1;
        unsigned ACTLOCK :1;
        unsigned :2;
        unsigned ACTUD :1;
        unsigned ACTEN :1;
    };
} ACTCONbits_t;
extern volatile ACTCONbits_t ACTCONbits __attribute__((address(0x0AC)));
# 5335 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char OSCCON1 __attribute__((address(0x0AD)));

__asm("OSCCON1 equ 0ADh");


typedef union {
    struct {
        unsigned NDIV :4;
        unsigned NOSC :3;
    };
    struct {
        unsigned NDIV0 :1;
        unsigned NDIV1 :1;
        unsigned NDIV2 :1;
        unsigned NDIV3 :1;
        unsigned NOSC0 :1;
        unsigned NOSC1 :1;
        unsigned NOSC2 :1;
    };
} OSCCON1bits_t;
extern volatile OSCCON1bits_t OSCCON1bits __attribute__((address(0x0AD)));
# 5405 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char OSCCON2 __attribute__((address(0x0AE)));

__asm("OSCCON2 equ 0AEh");


typedef union {
    struct {
        unsigned CDIV :4;
        unsigned COSC :3;
    };
    struct {
        unsigned CDIV0 :1;
        unsigned CDIV1 :1;
        unsigned CDIV2 :1;
        unsigned CDIV3 :1;
        unsigned COSC0 :1;
        unsigned COSC1 :1;
        unsigned COSC2 :1;
    };
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __attribute__((address(0x0AE)));
# 5475 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char OSCCON3 __attribute__((address(0x0AF)));

__asm("OSCCON3 equ 0AFh");


typedef union {
    struct {
        unsigned :3;
        unsigned NOSCR :1;
        unsigned ORDY :1;
        unsigned :1;
        unsigned SOSCPWR :1;
        unsigned CSWHOLD :1;
    };
} OSCCON3bits_t;
extern volatile OSCCON3bits_t OSCCON3bits __attribute__((address(0x0AF)));
# 5515 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x0B0)));

__asm("OSCTUNE equ 0B0h");


typedef union {
    struct {
        unsigned TUN :6;
    };
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
        unsigned TUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x0B0)));
# 5573 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char OSCFRQ __attribute__((address(0x0B1)));

__asm("OSCFRQ equ 0B1h");


extern volatile unsigned char OSCFREQ __attribute__((address(0x0B1)));

__asm("OSCFREQ equ 0B1h");


typedef union {
    struct {
        unsigned HFFRQ :4;
    };
    struct {
        unsigned FRQ0 :1;
        unsigned FRQ1 :1;
        unsigned FRQ2 :1;
        unsigned FRQ3 :1;
    };
} OSCFRQbits_t;
extern volatile OSCFRQbits_t OSCFRQbits __attribute__((address(0x0B1)));
# 5622 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned HFFRQ :4;
    };
    struct {
        unsigned FRQ0 :1;
        unsigned FRQ1 :1;
        unsigned FRQ2 :1;
        unsigned FRQ3 :1;
    };
} OSCFREQbits_t;
extern volatile OSCFREQbits_t OSCFREQbits __attribute__((address(0x0B1)));
# 5663 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char OSCSTAT __attribute__((address(0x0B2)));

__asm("OSCSTAT equ 0B2h");


extern volatile unsigned char OSCSTAT1 __attribute__((address(0x0B2)));

__asm("OSCSTAT1 equ 0B2h");


typedef union {
    struct {
        unsigned PLLR :1;
        unsigned :1;
        unsigned ADOR :1;
        unsigned SOR :1;
        unsigned LFOR :1;
        unsigned MFOR :1;
        unsigned HFOR :1;
        unsigned EXTOR :1;
    };
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __attribute__((address(0x0B2)));
# 5723 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned PLLR :1;
        unsigned :1;
        unsigned ADOR :1;
        unsigned SOR :1;
        unsigned LFOR :1;
        unsigned MFOR :1;
        unsigned HFOR :1;
        unsigned EXTOR :1;
    };
} OSCSTAT1bits_t;
extern volatile OSCSTAT1bits_t OSCSTAT1bits __attribute__((address(0x0B2)));
# 5775 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char OSCEN __attribute__((address(0x0B3)));

__asm("OSCEN equ 0B3h");


typedef union {
    struct {
        unsigned PLLEN :1;
        unsigned :1;
        unsigned ADOEN :1;
        unsigned SOSCEN :1;
        unsigned LFOEN :1;
        unsigned MFOEN :1;
        unsigned HFOEN :1;
        unsigned EXTOEN :1;
    };
} OSCENbits_t;
extern volatile OSCENbits_t OSCENbits __attribute__((address(0x0B3)));
# 5832 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PRLOCK __attribute__((address(0x0B4)));

__asm("PRLOCK equ 0B4h");


typedef union {
    struct {
        unsigned PRLOCKED :1;
    };
} PRLOCKbits_t;
extern volatile PRLOCKbits_t PRLOCKbits __attribute__((address(0x0B4)));
# 5852 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SCANPR __attribute__((address(0x0B5)));

__asm("SCANPR equ 0B5h");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned SCANPR :3;
    };
    struct {
        unsigned SCANPR0 :1;
        unsigned SCANPR1 :1;
        unsigned SCANPR2 :1;
    };
} SCANPRbits_t;
extern volatile SCANPRbits_t SCANPRbits __attribute__((address(0x0B5)));
# 5920 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMA1PR __attribute__((address(0x0B6)));

__asm("DMA1PR equ 0B6h");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned DMA1PR :3;
    };
    struct {
        unsigned DMA1PR0 :1;
        unsigned DMA1PR1 :1;
        unsigned DMA1PR2 :1;
    };
} DMA1PRbits_t;
extern volatile DMA1PRbits_t DMA1PRbits __attribute__((address(0x0B6)));
# 5988 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMA2PR __attribute__((address(0x0B7)));

__asm("DMA2PR equ 0B7h");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned DMA2PR :3;
    };
    struct {
        unsigned DMA2PR0 :1;
        unsigned DMA2PR1 :1;
        unsigned DMA2PR2 :1;
    };
} DMA2PRbits_t;
extern volatile DMA2PRbits_t DMA2PRbits __attribute__((address(0x0B7)));
# 6056 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMA3PR __attribute__((address(0x0B8)));

__asm("DMA3PR equ 0B8h");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned DMA3PR :3;
    };
    struct {
        unsigned DMA3PR0 :1;
        unsigned DMA3PR1 :1;
        unsigned DMA3PR2 :1;
    };
} DMA3PRbits_t;
extern volatile DMA3PRbits_t DMA3PRbits __attribute__((address(0x0B8)));
# 6124 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMA4PR __attribute__((address(0x0B9)));

__asm("DMA4PR equ 0B9h");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned DMA4PR :3;
    };
    struct {
        unsigned DMA4PR0 :1;
        unsigned DMA4PR1 :1;
        unsigned DMA4PR2 :1;
    };
} DMA4PRbits_t;
extern volatile DMA4PRbits_t DMA4PRbits __attribute__((address(0x0B9)));
# 6192 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMA5PR __attribute__((address(0x0BA)));

__asm("DMA5PR equ 0BAh");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned DMA5PR :3;
    };
    struct {
        unsigned DMA5PR0 :1;
        unsigned DMA5PR1 :1;
        unsigned DMA5PR2 :1;
    };
} DMA5PRbits_t;
extern volatile DMA5PRbits_t DMA5PRbits __attribute__((address(0x0BA)));
# 6260 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMA6PR __attribute__((address(0x0BB)));

__asm("DMA6PR equ 0BBh");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned DMA6PR :3;
    };
    struct {
        unsigned DMA6PR0 :1;
        unsigned DMA6PR1 :1;
        unsigned DMA6PR2 :1;
    };
} DMA6PRbits_t;
extern volatile DMA6PRbits_t DMA6PRbits __attribute__((address(0x0BB)));
# 6328 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMA7PR __attribute__((address(0x0BC)));

__asm("DMA7PR equ 0BCh");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned DMA7PR :3;
    };
    struct {
        unsigned DMA7PR0 :1;
        unsigned DMA7PR1 :1;
        unsigned DMA7PR2 :1;
    };
} DMA7PRbits_t;
extern volatile DMA7PRbits_t DMA7PRbits __attribute__((address(0x0BC)));
# 6396 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMA8PR __attribute__((address(0x0BD)));

__asm("DMA8PR equ 0BDh");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned DMA8PR :3;
    };
    struct {
        unsigned DMA8PR0 :1;
        unsigned DMA8PR1 :1;
        unsigned DMA8PR2 :1;
    };
} DMA8PRbits_t;
extern volatile DMA8PRbits_t DMA8PRbits __attribute__((address(0x0BD)));
# 6464 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MAINPR __attribute__((address(0x0BE)));

__asm("MAINPR equ 0BEh");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned MAINPR :3;
    };
    struct {
        unsigned MAINPR0 :1;
        unsigned MAINPR1 :1;
        unsigned MAINPR2 :1;
    };
} MAINPRbits_t;
extern volatile MAINPRbits_t MAINPRbits __attribute__((address(0x0BE)));
# 6532 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ISRPR __attribute__((address(0x0BF)));

__asm("ISRPR equ 0BFh");


typedef union {
    struct {
        unsigned PR :3;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
    };
    struct {
        unsigned ISRPR :3;
    };
    struct {
        unsigned ISRPR0 :1;
        unsigned ISRPR1 :1;
        unsigned ISRPR2 :1;
    };
} ISRPRbits_t;
extern volatile ISRPRbits_t ISRPRbits __attribute__((address(0x0BF)));
# 6600 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCDATA __attribute__((address(0x0D4)));

__asm("CLCDATA equ 0D4h");


typedef union {
    struct {
        unsigned MCLC :8;
    };
    struct {
        unsigned MCLC0 :1;
        unsigned MCLC1 :1;
        unsigned MCLC2 :1;
        unsigned MCLC3 :1;
        unsigned MCLC4 :1;
        unsigned MCLC5 :1;
        unsigned MCLC6 :1;
        unsigned MCLC7 :1;
    };
    struct {
        unsigned CLC1OUT :1;
        unsigned CLC2OUT :1;
        unsigned CLC3OUT :1;
        unsigned CLC4OUT :1;
        unsigned CLC5OUT :1;
        unsigned CLC6OUT :1;
        unsigned CLC7OUT :1;
        unsigned CLC8OUT :1;
    };
} CLCDATAbits_t;
extern volatile CLCDATAbits_t CLCDATAbits __attribute__((address(0x0D4)));
# 6720 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCSELECT __attribute__((address(0x0D5)));

__asm("CLCSELECT equ 0D5h");


typedef union {
    struct {
        unsigned SLCT :8;
    };
    struct {
        unsigned SLCT0 :1;
        unsigned SLCT1 :1;
        unsigned SLCT2 :1;
    };
} CLCSELECTbits_t;
extern volatile CLCSELECTbits_t CLCSELECTbits __attribute__((address(0x0D5)));
# 6760 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnCON __attribute__((address(0x0D6)));

__asm("CLCnCON equ 0D6h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned INTN :1;
        unsigned INTP :1;
        unsigned OUT :1;
        unsigned OE :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} CLCnCONbits_t;
extern volatile CLCnCONbits_t CLCnCONbits __attribute__((address(0x0D6)));
# 6830 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnPOL __attribute__((address(0x0D7)));

__asm("CLCnPOL equ 0D7h");


typedef union {
    struct {
        unsigned G1POL :1;
        unsigned G2POL :1;
        unsigned G3POL :1;
        unsigned G4POL :1;
        unsigned :3;
        unsigned POL :1;
    };
} CLCnPOLbits_t;
extern volatile CLCnPOLbits_t CLCnPOLbits __attribute__((address(0x0D7)));
# 6875 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnSEL0 __attribute__((address(0x0D8)));

__asm("CLCnSEL0 equ 0D8h");


typedef union {
    struct {
        unsigned D1S :8;
    };
    struct {
        unsigned D1S0 :1;
        unsigned D1S1 :1;
        unsigned D1S2 :1;
        unsigned D1S3 :1;
        unsigned D1S4 :1;
        unsigned D1S5 :1;
        unsigned D1S6 :1;
        unsigned D1S7 :1;
    };
} CLCnSEL0bits_t;
extern volatile CLCnSEL0bits_t CLCnSEL0bits __attribute__((address(0x0D8)));
# 6945 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnSEL1 __attribute__((address(0x0D9)));

__asm("CLCnSEL1 equ 0D9h");


typedef union {
    struct {
        unsigned D2S :8;
    };
    struct {
        unsigned D2S0 :1;
        unsigned D2S1 :1;
        unsigned D2S2 :1;
        unsigned D2S3 :1;
        unsigned D2S4 :1;
        unsigned D2S5 :1;
        unsigned D2S6 :1;
        unsigned D2S7 :1;
    };
} CLCnSEL1bits_t;
extern volatile CLCnSEL1bits_t CLCnSEL1bits __attribute__((address(0x0D9)));
# 7015 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnSEL2 __attribute__((address(0x0DA)));

__asm("CLCnSEL2 equ 0DAh");


typedef union {
    struct {
        unsigned D3S :8;
    };
    struct {
        unsigned D3S0 :1;
        unsigned D3S1 :1;
        unsigned D3S2 :1;
        unsigned D3S3 :1;
        unsigned D3S4 :1;
        unsigned D3S5 :1;
        unsigned D3S6 :1;
        unsigned D3S7 :1;
    };
} CLCnSEL2bits_t;
extern volatile CLCnSEL2bits_t CLCnSEL2bits __attribute__((address(0x0DA)));
# 7085 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnSEL3 __attribute__((address(0x0DB)));

__asm("CLCnSEL3 equ 0DBh");


typedef union {
    struct {
        unsigned D4S :8;
    };
    struct {
        unsigned D4S0 :1;
        unsigned D4S1 :1;
        unsigned D4S2 :1;
        unsigned D4S3 :1;
        unsigned D4S4 :1;
        unsigned D4S5 :1;
        unsigned D4S6 :1;
        unsigned D4S7 :1;
    };
} CLCnSEL3bits_t;
extern volatile CLCnSEL3bits_t CLCnSEL3bits __attribute__((address(0x0DB)));
# 7155 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnGLS0 __attribute__((address(0x0DC)));

__asm("CLCnGLS0 equ 0DCh");


typedef union {
    struct {
        unsigned G1D1N :1;
        unsigned G1D1T :1;
        unsigned G1D2N :1;
        unsigned G1D2T :1;
        unsigned G1D3N :1;
        unsigned G1D3T :1;
        unsigned G1D4N :1;
        unsigned G1D4T :1;
    };
} CLCnGLS0bits_t;
extern volatile CLCnGLS0bits_t CLCnGLS0bits __attribute__((address(0x0DC)));
# 7217 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnGLS1 __attribute__((address(0x0DD)));

__asm("CLCnGLS1 equ 0DDh");


typedef union {
    struct {
        unsigned G2D1N :1;
        unsigned G2D1T :1;
        unsigned G2D2N :1;
        unsigned G2D2T :1;
        unsigned G2D3N :1;
        unsigned G2D3T :1;
        unsigned G2D4N :1;
        unsigned G2D4T :1;
    };
} CLCnGLS1bits_t;
extern volatile CLCnGLS1bits_t CLCnGLS1bits __attribute__((address(0x0DD)));
# 7279 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnGLS2 __attribute__((address(0x0DE)));

__asm("CLCnGLS2 equ 0DEh");


typedef union {
    struct {
        unsigned G3D1N :1;
        unsigned G3D1T :1;
        unsigned G3D2N :1;
        unsigned G3D2T :1;
        unsigned G3D3N :1;
        unsigned G3D3T :1;
        unsigned G3D4N :1;
        unsigned G3D4T :1;
    };
} CLCnGLS2bits_t;
extern volatile CLCnGLS2bits_t CLCnGLS2bits __attribute__((address(0x0DE)));
# 7341 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCnGLS3 __attribute__((address(0x0DF)));

__asm("CLCnGLS3 equ 0DFh");


typedef union {
    struct {
        unsigned G4D1N :1;
        unsigned G4D1T :1;
        unsigned G4D2N :1;
        unsigned G4D2T :1;
        unsigned G4D3N :1;
        unsigned G4D3T :1;
        unsigned G4D4N :1;
        unsigned G4D4T :1;
    };
} CLCnGLS3bits_t;
extern volatile CLCnGLS3bits_t CLCnGLS3bits __attribute__((address(0x0DF)));
# 7403 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMASELECT __attribute__((address(0x0E8)));

__asm("DMASELECT equ 0E8h");


typedef union {
    struct {
        unsigned SLCT :8;
    };
    struct {
        unsigned SLCT0 :1;
        unsigned SLCT1 :1;
        unsigned SLCT2 :1;
    };
} DMASELECTbits_t;
extern volatile DMASELECTbits_t DMASELECTbits __attribute__((address(0x0E8)));
# 7443 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnBUF __attribute__((address(0x0E9)));

__asm("DMAnBUF equ 0E9h");


typedef union {
    struct {
        unsigned BUF :8;
    };
    struct {
        unsigned BUF0 :1;
        unsigned BUF1 :1;
        unsigned BUF2 :1;
        unsigned BUF3 :1;
        unsigned BUF4 :1;
        unsigned BUF5 :1;
        unsigned BUF6 :1;
        unsigned BUF7 :1;
    };
} DMAnBUFbits_t;
extern volatile DMAnBUFbits_t DMAnBUFbits __attribute__((address(0x0E9)));
# 7513 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short DMAnDCNT __attribute__((address(0x0EA)));

__asm("DMAnDCNT equ 0EAh");




extern volatile unsigned char DMAnDCNTL __attribute__((address(0x0EA)));

__asm("DMAnDCNTL equ 0EAh");


typedef union {
    struct {
        unsigned DCNT :8;
    };
    struct {
        unsigned DCNT0 :1;
        unsigned DCNT1 :1;
        unsigned DCNT2 :1;
        unsigned DCNT3 :1;
        unsigned DCNT4 :1;
        unsigned DCNT5 :1;
        unsigned DCNT6 :1;
        unsigned DCNT7 :1;
    };
} DMAnDCNTLbits_t;
extern volatile DMAnDCNTLbits_t DMAnDCNTLbits __attribute__((address(0x0EA)));
# 7590 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnDCNTH __attribute__((address(0x0EB)));

__asm("DMAnDCNTH equ 0EBh");


typedef union {
    struct {
        unsigned DCNT :8;
    };
    struct {
        unsigned DCNT8 :1;
        unsigned DCNT9 :1;
        unsigned DCNT10 :1;
        unsigned DCNT11 :1;
    };
} DMAnDCNTHbits_t;
extern volatile DMAnDCNTHbits_t DMAnDCNTHbits __attribute__((address(0x0EB)));
# 7636 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short DMAnDPTR __attribute__((address(0x0EC)));

__asm("DMAnDPTR equ 0ECh");




extern volatile unsigned char DMAnDPTRL __attribute__((address(0x0EC)));

__asm("DMAnDPTRL equ 0ECh");


typedef union {
    struct {
        unsigned DPTR :8;
    };
    struct {
        unsigned DPTR0 :1;
        unsigned DPTR1 :1;
        unsigned DPTR2 :1;
        unsigned DPTR3 :1;
        unsigned DPTR4 :1;
        unsigned DPTR5 :1;
        unsigned DPTR6 :1;
        unsigned DPTR7 :1;
    };
} DMAnDPTRLbits_t;
extern volatile DMAnDPTRLbits_t DMAnDPTRLbits __attribute__((address(0x0EC)));
# 7713 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnDPTRH __attribute__((address(0x0ED)));

__asm("DMAnDPTRH equ 0EDh");


typedef union {
    struct {
        unsigned DPTR :8;
    };
    struct {
        unsigned DPTR8 :1;
        unsigned DPTR9 :1;
        unsigned DPTR10 :1;
        unsigned DPTR11 :1;
        unsigned DPTR12 :1;
        unsigned DPTR13 :1;
        unsigned DPTR14 :1;
        unsigned DPTR15 :1;
    };
} DMAnDPTRHbits_t;
extern volatile DMAnDPTRHbits_t DMAnDPTRHbits __attribute__((address(0x0ED)));
# 7783 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short DMAnDSZ __attribute__((address(0x0EE)));

__asm("DMAnDSZ equ 0EEh");




extern volatile unsigned char DMAnDSZL __attribute__((address(0x0EE)));

__asm("DMAnDSZL equ 0EEh");


typedef union {
    struct {
        unsigned DSZ :8;
    };
    struct {
        unsigned DSZ0 :1;
        unsigned DSZ1 :1;
        unsigned DSZ2 :1;
        unsigned DSZ3 :1;
        unsigned DSZ4 :1;
        unsigned DSZ5 :1;
        unsigned DSZ6 :1;
        unsigned DSZ7 :1;
    };
} DMAnDSZLbits_t;
extern volatile DMAnDSZLbits_t DMAnDSZLbits __attribute__((address(0x0EE)));
# 7860 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnDSZH __attribute__((address(0x0EF)));

__asm("DMAnDSZH equ 0EFh");


typedef union {
    struct {
        unsigned DSZ :8;
    };
    struct {
        unsigned DSZ8 :1;
        unsigned DSZ9 :1;
        unsigned DSZ10 :1;
        unsigned DSZ11 :1;
    };
} DMAnDSZHbits_t;
extern volatile DMAnDSZHbits_t DMAnDSZHbits __attribute__((address(0x0EF)));
# 7906 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short DMAnDSA __attribute__((address(0x0F0)));

__asm("DMAnDSA equ 0F0h");




extern volatile unsigned char DMAnDSAL __attribute__((address(0x0F0)));

__asm("DMAnDSAL equ 0F0h");


typedef union {
    struct {
        unsigned DSA :8;
    };
    struct {
        unsigned DSA0 :1;
        unsigned DSA1 :1;
        unsigned DSA2 :1;
        unsigned DSA3 :1;
        unsigned DSA4 :1;
        unsigned DSA5 :1;
        unsigned DSA6 :1;
        unsigned DSA7 :1;
    };
} DMAnDSALbits_t;
extern volatile DMAnDSALbits_t DMAnDSALbits __attribute__((address(0x0F0)));
# 7983 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnDSAH __attribute__((address(0x0F1)));

__asm("DMAnDSAH equ 0F1h");


typedef union {
    struct {
        unsigned DSA :8;
    };
    struct {
        unsigned DSA8 :1;
        unsigned DSA9 :1;
        unsigned DSA10 :1;
        unsigned DSA11 :1;
        unsigned DSA12 :1;
        unsigned DSA13 :1;
        unsigned DSA14 :1;
        unsigned DSA15 :1;
    };
} DMAnDSAHbits_t;
extern volatile DMAnDSAHbits_t DMAnDSAHbits __attribute__((address(0x0F1)));
# 8053 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short DMAnSCNT __attribute__((address(0x0F2)));

__asm("DMAnSCNT equ 0F2h");




extern volatile unsigned char DMAnSCNTL __attribute__((address(0x0F2)));

__asm("DMAnSCNTL equ 0F2h");


typedef union {
    struct {
        unsigned SCNT :8;
    };
    struct {
        unsigned SCNT0 :1;
        unsigned SCNT1 :1;
        unsigned SCNT2 :1;
        unsigned SCNT3 :1;
        unsigned SCNT4 :1;
        unsigned SCNT5 :1;
        unsigned SCNT6 :1;
        unsigned SCNT7 :1;
    };
} DMAnSCNTLbits_t;
extern volatile DMAnSCNTLbits_t DMAnSCNTLbits __attribute__((address(0x0F2)));
# 8130 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnSCNTH __attribute__((address(0x0F3)));

__asm("DMAnSCNTH equ 0F3h");


typedef union {
    struct {
        unsigned SCNT :8;
    };
    struct {
        unsigned SCNT8 :1;
        unsigned SCNT9 :1;
        unsigned SCNT10 :1;
        unsigned SCNT11 :1;
    };
} DMAnSCNTHbits_t;
extern volatile DMAnSCNTHbits_t DMAnSCNTHbits __attribute__((address(0x0F3)));
# 8177 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 DMAnSPTR __attribute__((address(0x0F4)));


__asm("DMAnSPTR equ 0F4h");




extern volatile unsigned char DMAnSPTRL __attribute__((address(0x0F4)));

__asm("DMAnSPTRL equ 0F4h");


typedef union {
    struct {
        unsigned SPTR :8;
    };
    struct {
        unsigned SPTR0 :1;
        unsigned SPTR1 :1;
        unsigned SPTR2 :1;
        unsigned SPTR3 :1;
        unsigned SPTR4 :1;
        unsigned SPTR5 :1;
        unsigned SPTR6 :1;
        unsigned SPTR7 :1;
    };
} DMAnSPTRLbits_t;
extern volatile DMAnSPTRLbits_t DMAnSPTRLbits __attribute__((address(0x0F4)));
# 8255 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnSPTRH __attribute__((address(0x0F5)));

__asm("DMAnSPTRH equ 0F5h");


typedef union {
    struct {
        unsigned SPTR :8;
    };
    struct {
        unsigned SPTR8 :1;
        unsigned SPTR9 :1;
        unsigned SPTR10 :1;
        unsigned SPTR11 :1;
        unsigned SPTR12 :1;
        unsigned SPTR13 :1;
        unsigned SPTR14 :1;
        unsigned SPTR15 :1;
    };
} DMAnSPTRHbits_t;
extern volatile DMAnSPTRHbits_t DMAnSPTRHbits __attribute__((address(0x0F5)));
# 8325 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnSPTRU __attribute__((address(0x0F6)));

__asm("DMAnSPTRU equ 0F6h");


typedef union {
    struct {
        unsigned SPTR :8;
    };
    struct {
        unsigned SPTR16 :1;
        unsigned SPTR17 :1;
        unsigned SPTR18 :1;
        unsigned SPTR19 :1;
        unsigned SPTR20 :1;
        unsigned SPTR21 :1;
    };
} DMAnSPTRUbits_t;
extern volatile DMAnSPTRUbits_t DMAnSPTRUbits __attribute__((address(0x0F6)));
# 8383 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short DMAnSSZ __attribute__((address(0x0F7)));

__asm("DMAnSSZ equ 0F7h");




extern volatile unsigned char DMAnSSZL __attribute__((address(0x0F7)));

__asm("DMAnSSZL equ 0F7h");


typedef union {
    struct {
        unsigned SSZ :8;
    };
    struct {
        unsigned SSZ0 :1;
        unsigned SSZ1 :1;
        unsigned SSZ2 :1;
        unsigned SSZ3 :1;
        unsigned SSZ4 :1;
        unsigned SSZ5 :1;
        unsigned SSZ6 :1;
        unsigned SSZ7 :1;
    };
} DMAnSSZLbits_t;
extern volatile DMAnSSZLbits_t DMAnSSZLbits __attribute__((address(0x0F7)));
# 8460 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnSSZH __attribute__((address(0x0F8)));

__asm("DMAnSSZH equ 0F8h");


typedef union {
    struct {
        unsigned SSZ :8;
    };
    struct {
        unsigned SSZ8 :1;
        unsigned SSZ9 :1;
        unsigned SSZ10 :1;
        unsigned SSZ11 :1;
    };
} DMAnSSZHbits_t;
extern volatile DMAnSSZHbits_t DMAnSSZHbits __attribute__((address(0x0F8)));
# 8507 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 DMAnSSA __attribute__((address(0x0F9)));


__asm("DMAnSSA equ 0F9h");




extern volatile unsigned char DMAnSSAL __attribute__((address(0x0F9)));

__asm("DMAnSSAL equ 0F9h");


typedef union {
    struct {
        unsigned SSA :8;
    };
    struct {
        unsigned SSA0 :1;
        unsigned SSA1 :1;
        unsigned SSA2 :1;
        unsigned SSA3 :1;
        unsigned SSA4 :1;
        unsigned SSA5 :1;
        unsigned SSA6 :1;
        unsigned SSA7 :1;
    };
} DMAnSSALbits_t;
extern volatile DMAnSSALbits_t DMAnSSALbits __attribute__((address(0x0F9)));
# 8585 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnSSAH __attribute__((address(0x0FA)));

__asm("DMAnSSAH equ 0FAh");


typedef union {
    struct {
        unsigned SSA :8;
    };
    struct {
        unsigned SSA8 :1;
        unsigned SSA9 :1;
        unsigned SSA10 :1;
        unsigned SSA11 :1;
        unsigned SSA12 :1;
        unsigned SSA13 :1;
        unsigned SSA14 :1;
        unsigned SSA15 :1;
    };
} DMAnSSAHbits_t;
extern volatile DMAnSSAHbits_t DMAnSSAHbits __attribute__((address(0x0FA)));
# 8655 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnSSAU __attribute__((address(0x0FB)));

__asm("DMAnSSAU equ 0FBh");


typedef union {
    struct {
        unsigned SSA :8;
    };
    struct {
        unsigned SSA16 :1;
        unsigned SSA17 :1;
        unsigned SSA18 :1;
        unsigned SSA19 :1;
        unsigned SSA20 :1;
        unsigned SSA21 :1;
    };
} DMAnSSAUbits_t;
extern volatile DMAnSSAUbits_t DMAnSSAUbits __attribute__((address(0x0FB)));
# 8713 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnCON0 __attribute__((address(0x0FC)));

__asm("DMAnCON0 equ 0FCh");


typedef union {
    struct {
        unsigned XIP :1;
        unsigned :1;
        unsigned AIRQEN :1;
        unsigned :2;
        unsigned DGO :1;
        unsigned SIRQEN :1;
        unsigned EN :1;
    };
} DMAnCON0bits_t;
extern volatile DMAnCON0bits_t DMAnCON0bits __attribute__((address(0x0FC)));
# 8759 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnCON1 __attribute__((address(0x0FD)));

__asm("DMAnCON1 equ 0FDh");


typedef union {
    struct {
        unsigned SSTP :1;
        unsigned SMODE :2;
        unsigned SMR :2;
        unsigned DSTP :1;
        unsigned DMODE :2;
    };
} DMAnCON1bits_t;
extern volatile DMAnCON1bits_t DMAnCON1bits __attribute__((address(0x0FD)));
# 8803 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnAIRQ __attribute__((address(0x0FE)));

__asm("DMAnAIRQ equ 0FEh");


typedef union {
    struct {
        unsigned AIRQ :8;
    };
    struct {
        unsigned AIRQ0 :1;
        unsigned AIRQ1 :1;
        unsigned AIRQ2 :1;
        unsigned AIRQ3 :1;
        unsigned AIRQ4 :1;
        unsigned AIRQ5 :1;
        unsigned AIRQ6 :1;
        unsigned AIRQ7 :1;
    };
} DMAnAIRQbits_t;
extern volatile DMAnAIRQbits_t DMAnAIRQbits __attribute__((address(0x0FE)));
# 8873 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char DMAnSIRQ __attribute__((address(0x0FF)));

__asm("DMAnSIRQ equ 0FFh");


typedef union {
    struct {
        unsigned SIRQ :8;
    };
    struct {
        unsigned SIRQ0 :1;
        unsigned SIRQ1 :1;
        unsigned SIRQ2 :1;
        unsigned SIRQ3 :1;
        unsigned SIRQ4 :1;
        unsigned SIRQ5 :1;
        unsigned SIRQ6 :1;
        unsigned SIRQ7 :1;
    };
} DMAnSIRQbits_t;
extern volatile DMAnSIRQbits_t DMAnSIRQbits __attribute__((address(0x0FF)));
# 8943 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1CONL __attribute__((address(0x100)));

__asm("C1CONL equ 0100h");


typedef union {
    struct {
        unsigned DNCNT :5;
        unsigned ISOCRCEN :1;
        unsigned PXEDIS :1;
        unsigned CLKSEL0 :1;
    };
    struct {
        unsigned DNCNT0 :1;
        unsigned DNCNT1 :1;
        unsigned DNCNT2 :1;
        unsigned DNCNT3 :1;
        unsigned DNCNT4 :1;
    };
} C1CONLbits_t;
extern volatile C1CONLbits_t C1CONLbits __attribute__((address(0x100)));
# 9013 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1CONH __attribute__((address(0x101)));

__asm("C1CONH equ 0101h");


typedef union {
    struct {
        unsigned WAKFIL :1;
        unsigned WFT :2;
        unsigned BUSY :1;
        unsigned BRSDIS :1;
        unsigned SIDL :1;
        unsigned FRZ :1;
        unsigned ON :1;
    };
    struct {
        unsigned :1;
        unsigned WFT0 :1;
        unsigned WFT1 :1;
    };
} C1CONHbits_t;
extern volatile C1CONHbits_t C1CONHbits __attribute__((address(0x101)));
# 9084 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1CONU __attribute__((address(0x102)));

__asm("C1CONU equ 0102h");


typedef union {
    struct {
        unsigned RTXAT :1;
        unsigned ESIGM :1;
        unsigned SERR2LOM :1;
        unsigned STEF :1;
        unsigned TXQEN :1;
        unsigned OPMOD :3;
    };
    struct {
        unsigned :5;
        unsigned OPMOD0 :1;
        unsigned OPMOD1 :1;
        unsigned OPMOD2 :1;
    };
} C1CONUbits_t;
extern volatile C1CONUbits_t C1CONUbits __attribute__((address(0x102)));
# 9155 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1CONT __attribute__((address(0x103)));

__asm("C1CONT equ 0103h");


typedef union {
    struct {
        unsigned REQOP :3;
        unsigned ABAT :1;
        unsigned TXBWS :4;
    };
    struct {
        unsigned REQOP0 :1;
        unsigned REQOP1 :1;
        unsigned REQOP2 :1;
        unsigned :1;
        unsigned TXBWS0 :1;
        unsigned TXBWS1 :1;
        unsigned TXBWS2 :1;
        unsigned TXBWS3 :1;
    };
} C1CONTbits_t;
extern volatile C1CONTbits_t C1CONTbits __attribute__((address(0x103)));
# 9232 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1NBTCFGL __attribute__((address(0x104)));

__asm("C1NBTCFGL equ 0104h");


typedef union {
    struct {
        unsigned SJW :7;
    };
    struct {
        unsigned SJW0 :1;
        unsigned SJW1 :1;
        unsigned SJW2 :1;
        unsigned SJW3 :1;
        unsigned SJW4 :1;
        unsigned SJW5 :1;
        unsigned SJW6 :1;
    };
} C1NBTCFGLbits_t;
extern volatile C1NBTCFGLbits_t C1NBTCFGLbits __attribute__((address(0x104)));
# 9296 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1NBTCFGH __attribute__((address(0x105)));

__asm("C1NBTCFGH equ 0105h");


typedef union {
    struct {
        unsigned TSEG2 :7;
    };
    struct {
        unsigned TSEG20 :1;
        unsigned TSEG21 :1;
        unsigned TSEG22 :1;
        unsigned TSEG23 :1;
        unsigned TSEG24 :1;
        unsigned TSEG25 :1;
        unsigned TSEG26 :1;
    };
} C1NBTCFGHbits_t;
extern volatile C1NBTCFGHbits_t C1NBTCFGHbits __attribute__((address(0x105)));
# 9360 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1NBTCFGU __attribute__((address(0x106)));

__asm("C1NBTCFGU equ 0106h");


typedef union {
    struct {
        unsigned TSEG1 :8;
    };
    struct {
        unsigned TSEG10 :1;
        unsigned TSEG11 :1;
        unsigned TSEG12 :1;
        unsigned TSEG13 :1;
        unsigned TSEG14 :1;
        unsigned TSEG15 :1;
        unsigned TSEG16 :1;
        unsigned TSEG17 :1;
    };
} C1NBTCFGUbits_t;
extern volatile C1NBTCFGUbits_t C1NBTCFGUbits __attribute__((address(0x106)));
# 9430 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1NBTCFGT __attribute__((address(0x107)));

__asm("C1NBTCFGT equ 0107h");


typedef union {
    struct {
        unsigned BRP :8;
    };
    struct {
        unsigned BRP0 :1;
        unsigned BRP1 :1;
        unsigned BRP2 :1;
        unsigned BRP3 :1;
        unsigned BRP4 :1;
        unsigned BRP5 :1;
        unsigned BRP6 :1;
        unsigned BRP7 :1;
    };
} C1NBTCFGTbits_t;
extern volatile C1NBTCFGTbits_t C1NBTCFGTbits __attribute__((address(0x107)));
# 9500 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1DBTCFGL __attribute__((address(0x108)));

__asm("C1DBTCFGL equ 0108h");


typedef union {
    struct {
        unsigned SJW :4;
    };
    struct {
        unsigned SJW0 :1;
        unsigned SJW1 :1;
        unsigned SJW2 :1;
        unsigned SJW3 :1;
    };
} C1DBTCFGLbits_t;
extern volatile C1DBTCFGLbits_t C1DBTCFGLbits __attribute__((address(0x108)));
# 9546 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1DBTCFGH __attribute__((address(0x109)));

__asm("C1DBTCFGH equ 0109h");


typedef union {
    struct {
        unsigned TSEG2 :4;
    };
    struct {
        unsigned TSEG20 :1;
        unsigned TSEG21 :1;
        unsigned TSEG22 :1;
        unsigned TSEG23 :1;
    };
} C1DBTCFGHbits_t;
extern volatile C1DBTCFGHbits_t C1DBTCFGHbits __attribute__((address(0x109)));
# 9592 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1DBTCFGU __attribute__((address(0x10A)));

__asm("C1DBTCFGU equ 010Ah");


typedef union {
    struct {
        unsigned TSEG1 :5;
    };
    struct {
        unsigned TSEG10 :1;
        unsigned TSEG11 :1;
        unsigned TSEG12 :1;
        unsigned TSEG13 :1;
        unsigned TSEG14 :1;
    };
} C1DBTCFGUbits_t;
extern volatile C1DBTCFGUbits_t C1DBTCFGUbits __attribute__((address(0x10A)));
# 9644 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1DBTCFGT __attribute__((address(0x10B)));

__asm("C1DBTCFGT equ 010Bh");


typedef union {
    struct {
        unsigned BRP :8;
    };
    struct {
        unsigned BRP0 :1;
        unsigned BRP1 :1;
        unsigned BRP2 :1;
        unsigned BRP3 :1;
        unsigned BRP4 :1;
        unsigned BRP5 :1;
        unsigned BRP6 :1;
        unsigned BRP7 :1;
    };
} C1DBTCFGTbits_t;
extern volatile C1DBTCFGTbits_t C1DBTCFGTbits __attribute__((address(0x10B)));
# 9714 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TDCL __attribute__((address(0x10C)));

__asm("C1TDCL equ 010Ch");


typedef union {
    struct {
        unsigned TDCV :6;
    };
    struct {
        unsigned TDCV0 :1;
        unsigned TDCV1 :1;
        unsigned TDCV2 :1;
        unsigned TDCV3 :1;
        unsigned TDCV4 :1;
        unsigned TDCV5 :1;
    };
} C1TDCLbits_t;
extern volatile C1TDCLbits_t C1TDCLbits __attribute__((address(0x10C)));
# 9772 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TDCH __attribute__((address(0x10D)));

__asm("C1TDCH equ 010Dh");


typedef union {
    struct {
        unsigned TDCO :7;
    };
    struct {
        unsigned TDCO0 :1;
        unsigned TDCO1 :1;
        unsigned TDCO2 :1;
        unsigned TDCO3 :1;
        unsigned TDCO4 :1;
        unsigned TDCO5 :1;
        unsigned TDCO6 :1;
    };
} C1TDCHbits_t;
extern volatile C1TDCHbits_t C1TDCHbits __attribute__((address(0x10D)));
# 9836 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TDCU __attribute__((address(0x10E)));

__asm("C1TDCU equ 010Eh");


typedef union {
    struct {
        unsigned TDCMOD :2;
    };
    struct {
        unsigned TDCMOD0 :1;
        unsigned TDCMOD1 :1;
    };
} C1TDCUbits_t;
extern volatile C1TDCUbits_t C1TDCUbits __attribute__((address(0x10E)));
# 9870 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TDCT __attribute__((address(0x10F)));

__asm("C1TDCT equ 010Fh");


typedef union {
    struct {
        unsigned SID11EN :1;
        unsigned EDGFLTEN :1;
    };
} C1TDCTbits_t;
extern volatile C1TDCTbits_t C1TDCTbits __attribute__((address(0x10F)));
# 9896 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1TBC __attribute__((address(0x110)));

__asm("C1TBC equ 0110h");




extern volatile unsigned char C1TBCL __attribute__((address(0x110)));

__asm("C1TBCL equ 0110h");


typedef union {
    struct {
        unsigned TBC :8;
    };
    struct {
        unsigned TBC0 :1;
        unsigned TBC1 :1;
        unsigned TBC2 :1;
        unsigned TBC3 :1;
        unsigned TBC4 :1;
        unsigned TBC5 :1;
        unsigned TBC6 :1;
        unsigned TBC7 :1;
    };
} C1TBCLbits_t;
extern volatile C1TBCLbits_t C1TBCLbits __attribute__((address(0x110)));
# 9973 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TBCH __attribute__((address(0x111)));

__asm("C1TBCH equ 0111h");


typedef union {
    struct {
        unsigned TBC :8;
    };
    struct {
        unsigned TBC8 :1;
        unsigned TBC9 :1;
        unsigned TBC10 :1;
        unsigned TBC11 :1;
        unsigned TBC12 :1;
        unsigned TBC13 :1;
        unsigned TBC14 :1;
        unsigned TBC15 :1;
    };
} C1TBCHbits_t;
extern volatile C1TBCHbits_t C1TBCHbits __attribute__((address(0x111)));
# 10043 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TBCU __attribute__((address(0x112)));

__asm("C1TBCU equ 0112h");


typedef union {
    struct {
        unsigned TBC :8;
    };
    struct {
        unsigned TBC16 :1;
        unsigned TBC17 :1;
        unsigned TBC18 :1;
        unsigned TBC19 :1;
        unsigned TBC20 :1;
        unsigned TBC21 :1;
        unsigned TBC22 :1;
        unsigned TBC23 :1;
    };
} C1TBCUbits_t;
extern volatile C1TBCUbits_t C1TBCUbits __attribute__((address(0x112)));
# 10113 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TBCT __attribute__((address(0x113)));

__asm("C1TBCT equ 0113h");


typedef union {
    struct {
        unsigned TBC :8;
    };
    struct {
        unsigned TBC24 :1;
        unsigned TBC25 :1;
        unsigned TBC26 :1;
        unsigned TBC27 :1;
        unsigned TBC28 :1;
        unsigned TBC29 :1;
        unsigned TBC30 :1;
        unsigned TBC31 :1;
    };
} C1TBCTbits_t;
extern volatile C1TBCTbits_t C1TBCTbits __attribute__((address(0x113)));
# 10183 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TSCONL __attribute__((address(0x114)));

__asm("C1TSCONL equ 0114h");


typedef union {
    struct {
        unsigned TBCPRE :8;
    };
    struct {
        unsigned TBCPRE0 :1;
        unsigned TBCPRE1 :1;
        unsigned TBCPRE2 :1;
        unsigned TBCPRE3 :1;
        unsigned TBCPRE4 :1;
        unsigned TBCPRE5 :1;
        unsigned TBCPRE6 :1;
        unsigned TBCPRE7 :1;
    };
} C1TSCONLbits_t;
extern volatile C1TSCONLbits_t C1TSCONLbits __attribute__((address(0x114)));
# 10253 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TSCONH __attribute__((address(0x115)));

__asm("C1TSCONH equ 0115h");


typedef union {
    struct {
        unsigned TBCPRE :2;
    };
    struct {
        unsigned TBCPRE8 :1;
        unsigned TBCPRE9 :1;
    };
} C1TSCONHbits_t;
extern volatile C1TSCONHbits_t C1TSCONHbits __attribute__((address(0x115)));
# 10287 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TSCONU __attribute__((address(0x116)));

__asm("C1TSCONU equ 0116h");


typedef union {
    struct {
        unsigned TBCEN :1;
        unsigned TSEOF :1;
        unsigned TSRES :1;
    };
} C1TSCONUbits_t;
extern volatile C1TSCONUbits_t C1TSCONUbits __attribute__((address(0x116)));
# 10319 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TSCONT __attribute__((address(0x117)));

__asm("C1TSCONT equ 0117h");




extern volatile unsigned char C1VECL __attribute__((address(0x118)));

__asm("C1VECL equ 0118h");


typedef union {
    struct {
        unsigned ICODE :7;
    };
} C1VECLbits_t;
extern volatile C1VECLbits_t C1VECLbits __attribute__((address(0x118)));
# 10346 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1VECH __attribute__((address(0x119)));

__asm("C1VECH equ 0119h");


typedef union {
    struct {
        unsigned FILHIT :5;
    };
} C1VECHbits_t;
extern volatile C1VECHbits_t C1VECHbits __attribute__((address(0x119)));
# 10366 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1VECU __attribute__((address(0x11A)));

__asm("C1VECU equ 011Ah");


typedef union {
    struct {
        unsigned TXCODE :7;
    };
} C1VECUbits_t;
extern volatile C1VECUbits_t C1VECUbits __attribute__((address(0x11A)));
# 10386 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1VECT __attribute__((address(0x11B)));

__asm("C1VECT equ 011Bh");


typedef union {
    struct {
        unsigned RXCODE :7;
    };
} C1VECTbits_t;
extern volatile C1VECTbits_t C1VECTbits __attribute__((address(0x11B)));
# 10406 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1INTL __attribute__((address(0x11C)));

__asm("C1INTL equ 011Ch");


typedef union {
    struct {
        unsigned TXIF :1;
        unsigned RXIF :1;
        unsigned TBCIF :1;
        unsigned MODIF :1;
        unsigned TEFIF :1;
    };
} C1INTLbits_t;
extern volatile C1INTLbits_t C1INTLbits __attribute__((address(0x11C)));
# 10450 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1INTH __attribute__((address(0x11D)));

__asm("C1INTH equ 011Dh");


typedef union {
    struct {
        unsigned :2;
        unsigned TXATIF :1;
        unsigned RXOVIF :1;
        unsigned SERRIF :1;
        unsigned CERRIF :1;
        unsigned WAKIF :1;
        unsigned IVMIF :1;
    };
} C1INTHbits_t;
extern volatile C1INTHbits_t C1INTHbits __attribute__((address(0x11D)));
# 10501 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1INTU __attribute__((address(0x11E)));

__asm("C1INTU equ 011Eh");


typedef union {
    struct {
        unsigned TXIE :1;
        unsigned RXIE :1;
        unsigned TBCIE :1;
        unsigned MODIE :1;
        unsigned TEFIE :1;
    };
} C1INTUbits_t;
extern volatile C1INTUbits_t C1INTUbits __attribute__((address(0x11E)));
# 10545 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1INTT __attribute__((address(0x11F)));

__asm("C1INTT equ 011Fh");


typedef union {
    struct {
        unsigned :2;
        unsigned TXATIE :1;
        unsigned RXOVIE :1;
        unsigned SERRIE :1;
        unsigned CERRIE :1;
        unsigned WAKIE :1;
        unsigned IVMIE :1;
    };
} C1INTTbits_t;
extern volatile C1INTTbits_t C1INTTbits __attribute__((address(0x11F)));
# 10596 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1RXIF __attribute__((address(0x120)));

__asm("C1RXIF equ 0120h");




extern volatile unsigned char C1RXIFL __attribute__((address(0x120)));

__asm("C1RXIFL equ 0120h");


typedef union {
    struct {
        unsigned :1;
        unsigned RFIF :7;
    };
    struct {
        unsigned :1;
        unsigned RFIF1 :1;
        unsigned RFIF2 :1;
        unsigned RFIF3 :1;
        unsigned RFIF4 :1;
        unsigned RFIF5 :1;
        unsigned RFIF6 :1;
        unsigned RFIF7 :1;
    };
} C1RXIFLbits_t;
extern volatile C1RXIFLbits_t C1RXIFLbits __attribute__((address(0x120)));
# 10669 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1RXIFH __attribute__((address(0x121)));

__asm("C1RXIFH equ 0121h");


typedef union {
    struct {
        unsigned RFIF :8;
    };
    struct {
        unsigned RFIF8 :1;
        unsigned RFIF9 :1;
        unsigned RFIF10 :1;
        unsigned RFIF11 :1;
        unsigned RFIF12 :1;
        unsigned RFIF13 :1;
        unsigned RFIF14 :1;
        unsigned RFIF15 :1;
    };
} C1RXIFHbits_t;
extern volatile C1RXIFHbits_t C1RXIFHbits __attribute__((address(0x121)));
# 10739 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1RXIFU __attribute__((address(0x122)));

__asm("C1RXIFU equ 0122h");


typedef union {
    struct {
        unsigned RFIF :8;
    };
    struct {
        unsigned RFIF16 :1;
        unsigned RFIF17 :1;
        unsigned RFIF18 :1;
        unsigned RFIF19 :1;
        unsigned RFIF20 :1;
        unsigned RFIF21 :1;
        unsigned RFIF22 :1;
        unsigned RFIF23 :1;
    };
} C1RXIFUbits_t;
extern volatile C1RXIFUbits_t C1RXIFUbits __attribute__((address(0x122)));
# 10809 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1RXIFT __attribute__((address(0x123)));

__asm("C1RXIFT equ 0123h");


typedef union {
    struct {
        unsigned RFIF :8;
    };
    struct {
        unsigned RFIF24 :1;
        unsigned RFIF25 :1;
        unsigned RFIF26 :1;
        unsigned RFIF27 :1;
        unsigned RFIF28 :1;
        unsigned RFIF29 :1;
        unsigned RFIF30 :1;
        unsigned RFIF31 :1;
    };
} C1RXIFTbits_t;
extern volatile C1RXIFTbits_t C1RXIFTbits __attribute__((address(0x123)));
# 10879 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short C1TXIF __attribute__((address(0x124)));

__asm("C1TXIF equ 0124h");




extern volatile unsigned char C1TXIFL __attribute__((address(0x124)));

__asm("C1TXIFL equ 0124h");


typedef union {
    struct {
        unsigned TFIF :8;
    };
    struct {
        unsigned TFIF0 :1;
        unsigned TFIF1 :1;
        unsigned TFIF2 :1;
        unsigned TFIF3 :1;
        unsigned TFIF4 :1;
        unsigned TFIF5 :1;
        unsigned TFIF6 :1;
        unsigned TFIF7 :1;
    };
} C1TXIFLbits_t;
extern volatile C1TXIFLbits_t C1TXIFLbits __attribute__((address(0x124)));
# 10956 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXIFH __attribute__((address(0x125)));

__asm("C1TXIFH equ 0125h");


typedef union {
    struct {
        unsigned TFIF :8;
    };
    struct {
        unsigned TFIF8 :1;
        unsigned TFIF9 :1;
        unsigned TFIF10 :1;
        unsigned TFIF11 :1;
        unsigned TFIF12 :1;
        unsigned TFIF13 :1;
        unsigned TFIF14 :1;
        unsigned TFIF15 :1;
    };
} C1TXIFHbits_t;
extern volatile C1TXIFHbits_t C1TXIFHbits __attribute__((address(0x125)));
# 11026 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXIFU __attribute__((address(0x126)));

__asm("C1TXIFU equ 0126h");


typedef union {
    struct {
        unsigned TFIF :8;
    };
    struct {
        unsigned TFIF16 :1;
        unsigned TFIF17 :1;
        unsigned TFIF18 :1;
        unsigned TFIF19 :1;
        unsigned TFIF20 :1;
        unsigned TFIF21 :1;
        unsigned TFIF22 :1;
        unsigned TFIF23 :1;
    };
} C1TXIFUbits_t;
extern volatile C1TXIFUbits_t C1TXIFUbits __attribute__((address(0x126)));
# 11096 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXIFT __attribute__((address(0x127)));

__asm("C1TXIFT equ 0127h");


typedef union {
    struct {
        unsigned TFIF :8;
    };
    struct {
        unsigned TFIF24 :1;
        unsigned TFIF25 :1;
        unsigned TFIF26 :1;
        unsigned TFIF27 :1;
        unsigned TFIF28 :1;
        unsigned TFIF29 :1;
        unsigned TFIF30 :1;
        unsigned TFIF31 :1;
    };
} C1TXIFTbits_t;
extern volatile C1TXIFTbits_t C1TXIFTbits __attribute__((address(0x127)));
# 11166 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1RXOVIF __attribute__((address(0x128)));

__asm("C1RXOVIF equ 0128h");




extern volatile unsigned char C1RXOVIFL __attribute__((address(0x128)));

__asm("C1RXOVIFL equ 0128h");


typedef union {
    struct {
        unsigned :1;
        unsigned RFOVIF :7;
    };
    struct {
        unsigned :1;
        unsigned RFOVIF1 :1;
        unsigned RFOVIF2 :1;
        unsigned RFOVIF3 :1;
        unsigned RFOVIF4 :1;
        unsigned RFOVIF5 :1;
        unsigned RFOVIF6 :1;
        unsigned RFOVIF7 :1;
    };
} C1RXOVIFLbits_t;
extern volatile C1RXOVIFLbits_t C1RXOVIFLbits __attribute__((address(0x128)));
# 11239 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1RXOVIFH __attribute__((address(0x129)));

__asm("C1RXOVIFH equ 0129h");


typedef union {
    struct {
        unsigned RFOVIF :8;
    };
    struct {
        unsigned RFOVIF8 :1;
        unsigned RFOVIF9 :1;
        unsigned RFOVIF10 :1;
        unsigned RFOVIF11 :1;
        unsigned RFOVIF12 :1;
        unsigned RFOVIF13 :1;
        unsigned RFOVIF14 :1;
        unsigned RFOVIF15 :1;
    };
} C1RXOVIFHbits_t;
extern volatile C1RXOVIFHbits_t C1RXOVIFHbits __attribute__((address(0x129)));
# 11309 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1RXOVIFU __attribute__((address(0x12A)));

__asm("C1RXOVIFU equ 012Ah");


typedef union {
    struct {
        unsigned RFOVIF :8;
    };
    struct {
        unsigned RFOVIF16 :1;
        unsigned RFOVIF17 :1;
        unsigned RFOVIF18 :1;
        unsigned RFOVIF19 :1;
        unsigned RFOVIF20 :1;
        unsigned RFOVIF21 :1;
        unsigned RFOVIF22 :1;
        unsigned RFOVIF23 :1;
    };
} C1RXOVIFUbits_t;
extern volatile C1RXOVIFUbits_t C1RXOVIFUbits __attribute__((address(0x12A)));
# 11379 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1RXOVIFT __attribute__((address(0x12B)));

__asm("C1RXOVIFT equ 012Bh");


typedef union {
    struct {
        unsigned RFOVIF :8;
    };
    struct {
        unsigned RFOVIF24 :1;
        unsigned RFOVIF25 :1;
        unsigned RFOVIF26 :1;
        unsigned RFOVIF27 :1;
        unsigned RFOVIF28 :1;
        unsigned RFOVIF29 :1;
        unsigned RFOVIF30 :1;
        unsigned RFOVIF31 :1;
    };
} C1RXOVIFTbits_t;
extern volatile C1RXOVIFTbits_t C1RXOVIFTbits __attribute__((address(0x12B)));
# 11449 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1TXATIF __attribute__((address(0x12C)));

__asm("C1TXATIF equ 012Ch");




extern volatile unsigned char C1TXATIFL __attribute__((address(0x12C)));

__asm("C1TXATIFL equ 012Ch");


typedef union {
    struct {
        unsigned TFATIF :8;
    };
    struct {
        unsigned TFATIF0 :1;
        unsigned TFATIF1 :1;
        unsigned TFATIF2 :1;
        unsigned TFATIF3 :1;
        unsigned TFATIF4 :1;
        unsigned TFATIF5 :1;
        unsigned TFATIF6 :1;
        unsigned TFATIF7 :1;
    };
} C1TXATIFLbits_t;
extern volatile C1TXATIFLbits_t C1TXATIFLbits __attribute__((address(0x12C)));
# 11526 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXATIFH __attribute__((address(0x12D)));

__asm("C1TXATIFH equ 012Dh");


typedef union {
    struct {
        unsigned TFATIF :8;
    };
    struct {
        unsigned TFATIF8 :1;
        unsigned TFATIF9 :1;
        unsigned TFATIF10 :1;
        unsigned TFATIF11 :1;
        unsigned TFATIF12 :1;
        unsigned TFATIF13 :1;
        unsigned TFATIF14 :1;
        unsigned TFATIF15 :1;
    };
} C1TXATIFHbits_t;
extern volatile C1TXATIFHbits_t C1TXATIFHbits __attribute__((address(0x12D)));
# 11596 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXATIFU __attribute__((address(0x12E)));

__asm("C1TXATIFU equ 012Eh");


typedef union {
    struct {
        unsigned TFATIF :8;
    };
    struct {
        unsigned TFATIF16 :1;
        unsigned TFATIF17 :1;
        unsigned TFATIF18 :1;
        unsigned TFATIF19 :1;
        unsigned TFATIF20 :1;
        unsigned TFATIF21 :1;
        unsigned TFATIF22 :1;
        unsigned TFATIF23 :1;
    };
} C1TXATIFUbits_t;
extern volatile C1TXATIFUbits_t C1TXATIFUbits __attribute__((address(0x12E)));
# 11666 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXATIFT __attribute__((address(0x12F)));

__asm("C1TXATIFT equ 012Fh");


typedef union {
    struct {
        unsigned TFATIF :8;
    };
    struct {
        unsigned TFATIF24 :1;
        unsigned TFATIF25 :1;
        unsigned TFATIF26 :1;
        unsigned TFATIF27 :1;
        unsigned TFATIF28 :1;
        unsigned TFATIF29 :1;
        unsigned TFATIF30 :1;
        unsigned TFATIF31 :1;
    };
} C1TXATIFTbits_t;
extern volatile C1TXATIFTbits_t C1TXATIFTbits __attribute__((address(0x12F)));
# 11736 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1TXREQ __attribute__((address(0x130)));

__asm("C1TXREQ equ 0130h");




extern volatile unsigned char C1TXREQL __attribute__((address(0x130)));

__asm("C1TXREQL equ 0130h");


typedef union {
    struct {
        unsigned TXREQ :8;
    };
    struct {
        unsigned TXREQ0 :1;
        unsigned TXREQ1 :1;
        unsigned TXREQ2 :1;
        unsigned TXREQ3 :1;
        unsigned TXREQ4 :1;
        unsigned TXREQ5 :1;
        unsigned TXREQ6 :1;
        unsigned TXREQ7 :1;
    };
} C1TXREQLbits_t;
extern volatile C1TXREQLbits_t C1TXREQLbits __attribute__((address(0x130)));
# 11813 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXREQH __attribute__((address(0x131)));

__asm("C1TXREQH equ 0131h");


typedef union {
    struct {
        unsigned TXREQ :8;
    };
    struct {
        unsigned TXREQ8 :1;
        unsigned TXREQ9 :1;
        unsigned TXREQ10 :1;
        unsigned TXREQ11 :1;
        unsigned TXREQ12 :1;
        unsigned TXREQ13 :1;
        unsigned TXREQ14 :1;
        unsigned TXREQ15 :1;
    };
} C1TXREQHbits_t;
extern volatile C1TXREQHbits_t C1TXREQHbits __attribute__((address(0x131)));
# 11883 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXREQU __attribute__((address(0x132)));

__asm("C1TXREQU equ 0132h");


typedef union {
    struct {
        unsigned TXREQ :8;
    };
    struct {
        unsigned TXREQ16 :1;
        unsigned TXREQ17 :1;
        unsigned TXREQ18 :1;
        unsigned TXREQ19 :1;
        unsigned TXREQ20 :1;
        unsigned TXREQ21 :1;
        unsigned TXREQ22 :1;
        unsigned TXREQ23 :1;
    };
} C1TXREQUbits_t;
extern volatile C1TXREQUbits_t C1TXREQUbits __attribute__((address(0x132)));
# 11953 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXREQT __attribute__((address(0x133)));

__asm("C1TXREQT equ 0133h");


typedef union {
    struct {
        unsigned TXREQ :8;
    };
    struct {
        unsigned TXREQ24 :1;
        unsigned TXREQ25 :1;
        unsigned TXREQ26 :1;
        unsigned TXREQ27 :1;
        unsigned TXREQ28 :1;
        unsigned TXREQ29 :1;
        unsigned TXREQ30 :1;
        unsigned TXREQ31 :1;
    };
} C1TXREQTbits_t;
extern volatile C1TXREQTbits_t C1TXREQTbits __attribute__((address(0x133)));
# 12023 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TRECL __attribute__((address(0x134)));

__asm("C1TRECL equ 0134h");


typedef union {
    struct {
        unsigned RERRCNT :8;
    };
    struct {
        unsigned RERRCNT0 :1;
        unsigned RERRCNT1 :1;
        unsigned RERRCNT2 :1;
        unsigned RERRCNT3 :1;
        unsigned RERRCNT4 :1;
        unsigned RERRCNT5 :1;
        unsigned RERRCNT6 :1;
        unsigned RERRCNT7 :1;
    };
} C1TRECLbits_t;
extern volatile C1TRECLbits_t C1TRECLbits __attribute__((address(0x134)));
# 12093 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TRECH __attribute__((address(0x135)));

__asm("C1TRECH equ 0135h");


typedef union {
    struct {
        unsigned TERRCNT :8;
    };
    struct {
        unsigned TERRCNT0 :1;
        unsigned TERRCNT1 :1;
        unsigned TERRCNT2 :1;
        unsigned TERRCNT3 :1;
        unsigned TERRCNT4 :1;
        unsigned TERRCNT5 :1;
        unsigned TERRCNT6 :1;
        unsigned TERRCNT7 :1;
    };
} C1TRECHbits_t;
extern volatile C1TRECHbits_t C1TRECHbits __attribute__((address(0x135)));
# 12163 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TRECU __attribute__((address(0x136)));

__asm("C1TRECU equ 0136h");


typedef union {
    struct {
        unsigned EWARN :1;
        unsigned RXWARN :1;
        unsigned TXWARN :1;
        unsigned RXBP :1;
        unsigned TXBP :1;
        unsigned TXBO :1;
    };
} C1TRECUbits_t;
extern volatile C1TRECUbits_t C1TRECUbits __attribute__((address(0x136)));
# 12213 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TRECT __attribute__((address(0x137)));

__asm("C1TRECT equ 0137h");




extern volatile unsigned char C1BDIAG0L __attribute__((address(0x138)));

__asm("C1BDIAG0L equ 0138h");


typedef union {
    struct {
        unsigned NRERRCNT :8;
    };
    struct {
        unsigned NRERRCNT0 :1;
        unsigned NRERRCNT1 :1;
        unsigned NRERRCNT2 :1;
        unsigned NRERRCNT3 :1;
        unsigned NRERRCNT4 :1;
        unsigned NRERRCNT5 :1;
        unsigned NRERRCNT6 :1;
        unsigned NRERRCNT7 :1;
    };
} C1BDIAG0Lbits_t;
extern volatile C1BDIAG0Lbits_t C1BDIAG0Lbits __attribute__((address(0x138)));
# 12290 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1BDIAG0H __attribute__((address(0x139)));

__asm("C1BDIAG0H equ 0139h");


typedef union {
    struct {
        unsigned NTERRCNT :8;
    };
    struct {
        unsigned NTERRCNT0 :1;
        unsigned NTERRCNT1 :1;
        unsigned NTERRCNT2 :1;
        unsigned NTERRCNT3 :1;
        unsigned NTERRCNT4 :1;
        unsigned NTERRCNT5 :1;
        unsigned NTERRCNT6 :1;
        unsigned NTERRCNT7 :1;
    };
} C1BDIAG0Hbits_t;
extern volatile C1BDIAG0Hbits_t C1BDIAG0Hbits __attribute__((address(0x139)));
# 12360 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1BDIAG0U __attribute__((address(0x13A)));

__asm("C1BDIAG0U equ 013Ah");


typedef union {
    struct {
        unsigned DRERRCNT :8;
    };
    struct {
        unsigned DRERRCNT0 :1;
        unsigned DRERRCNT1 :1;
        unsigned DRERRCNT2 :1;
        unsigned DRERRCNT3 :1;
        unsigned DRERRCNT4 :1;
        unsigned DRERRCNT5 :1;
        unsigned DRERRCNT6 :1;
        unsigned DRERRCNT7 :1;
    };
} C1BDIAG0Ubits_t;
extern volatile C1BDIAG0Ubits_t C1BDIAG0Ubits __attribute__((address(0x13A)));
# 12430 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1BDIAG0T __attribute__((address(0x13B)));

__asm("C1BDIAG0T equ 013Bh");


typedef union {
    struct {
        unsigned DTERRCNT :8;
    };
    struct {
        unsigned DTERRCNT0 :1;
        unsigned DTERRCNT1 :1;
        unsigned DTERRCNT2 :1;
        unsigned DTERRCNT3 :1;
        unsigned DTERRCNT4 :1;
        unsigned DTERRCNT5 :1;
        unsigned DTERRCNT6 :1;
        unsigned DTERRCNT7 :1;
    };
} C1BDIAG0Tbits_t;
extern volatile C1BDIAG0Tbits_t C1BDIAG0Tbits __attribute__((address(0x13B)));
# 12500 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1BDIAG1L __attribute__((address(0x13C)));

__asm("C1BDIAG1L equ 013Ch");


typedef union {
    struct {
        unsigned EFMSGCNT :8;
    };
    struct {
        unsigned EFMSGCNT0 :1;
        unsigned EFMSGCNT1 :1;
        unsigned EFMSGCNT2 :1;
        unsigned EFMSGCNT3 :1;
        unsigned EFMSGCNT4 :1;
        unsigned EFMSGCNT5 :1;
        unsigned EFMSGCNT6 :1;
        unsigned EFMSGCNT7 :1;
    };
} C1BDIAG1Lbits_t;
extern volatile C1BDIAG1Lbits_t C1BDIAG1Lbits __attribute__((address(0x13C)));
# 12570 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1BDIAG1H __attribute__((address(0x13D)));

__asm("C1BDIAG1H equ 013Dh");


typedef union {
    struct {
        unsigned EFMSGCNT :8;
    };
    struct {
        unsigned EFMSGCNT8 :1;
        unsigned EFMSGCNT9 :1;
        unsigned EFMSGCNT10 :1;
        unsigned EFMSGCNT11 :1;
        unsigned EFMSGCNT12 :1;
        unsigned EFMSGCNT13 :1;
        unsigned EFMSGCNT14 :1;
        unsigned EFMSGCNT15 :1;
    };
} C1BDIAG1Hbits_t;
extern volatile C1BDIAG1Hbits_t C1BDIAG1Hbits __attribute__((address(0x13D)));
# 12640 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1BDIAG1U __attribute__((address(0x13E)));

__asm("C1BDIAG1U equ 013Eh");


typedef union {
    struct {
        unsigned NBIT0ERR :1;
        unsigned NBIT1ERR :1;
        unsigned NACKERR :1;
        unsigned NFORMERR :1;
        unsigned NSTUFERR :1;
        unsigned NCRCERR :1;
        unsigned :1;
        unsigned TXBOERR :1;
    };
} C1BDIAG1Ubits_t;
extern volatile C1BDIAG1Ubits_t C1BDIAG1Ubits __attribute__((address(0x13E)));
# 12697 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1BDIAG1T __attribute__((address(0x13F)));

__asm("C1BDIAG1T equ 013Fh");


typedef union {
    struct {
        unsigned DBIT0ERR :1;
        unsigned DBIT1ERR :1;
        unsigned :1;
        unsigned DFORMERR :1;
        unsigned DSTUFERR :1;
        unsigned DCRCERR :1;
        unsigned ESI :1;
        unsigned DLCMM :1;
    };
} C1BDIAG1Tbits_t;
extern volatile C1BDIAG1Tbits_t C1BDIAG1Tbits __attribute__((address(0x13F)));
# 12754 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TEFCONL __attribute__((address(0x140)));

__asm("C1TEFCONL equ 0140h");


typedef union {
    struct {
        unsigned TEFNEIE :1;
        unsigned TEFHIE :1;
        unsigned TEFFIE :1;
        unsigned TEFOVIE :1;
        unsigned :1;
        unsigned TEFTSEN :1;
    };
} C1TEFCONLbits_t;
extern volatile C1TEFCONLbits_t C1TEFCONLbits __attribute__((address(0x140)));
# 12799 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TEFCONH __attribute__((address(0x141)));

__asm("C1TEFCONH equ 0141h");


typedef union {
    struct {
        unsigned UINC :1;
        unsigned :1;
        unsigned FRESET :1;
    };
} C1TEFCONHbits_t;
extern volatile C1TEFCONHbits_t C1TEFCONHbits __attribute__((address(0x141)));
# 12826 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TEFCONU __attribute__((address(0x142)));

__asm("C1TEFCONU equ 0142h");




extern volatile unsigned char C1TEFCONT __attribute__((address(0x143)));

__asm("C1TEFCONT equ 0143h");


typedef union {
    struct {
        unsigned FSIZE :5;
    };
    struct {
        unsigned FSIZE0 :1;
        unsigned FSIZE1 :1;
        unsigned FSIZE2 :1;
        unsigned FSIZE3 :1;
        unsigned FSIZE4 :1;
    };
} C1TEFCONTbits_t;
extern volatile C1TEFCONTbits_t C1TEFCONTbits __attribute__((address(0x143)));
# 12885 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TEFSTAL __attribute__((address(0x144)));

__asm("C1TEFSTAL equ 0144h");


typedef union {
    struct {
        unsigned TEFNEIF :1;
        unsigned TEFHIF :1;
        unsigned TEFFIF :1;
        unsigned TEFOVIF :1;
    };
} C1TEFSTALbits_t;
extern volatile C1TEFSTALbits_t C1TEFSTALbits __attribute__((address(0x144)));
# 12923 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TEFSTAH __attribute__((address(0x145)));

__asm("C1TEFSTAH equ 0145h");




extern volatile unsigned char C1TEFSTAU __attribute__((address(0x146)));

__asm("C1TEFSTAU equ 0146h");




extern volatile unsigned char C1TEFSTAT __attribute__((address(0x147)));

__asm("C1TEFSTAT equ 0147h");




extern volatile unsigned long C1TEFUA __attribute__((address(0x148)));

__asm("C1TEFUA equ 0148h");




extern volatile unsigned char C1TEFUAL __attribute__((address(0x148)));

__asm("C1TEFUAL equ 0148h");


typedef union {
    struct {
        unsigned TEFUA :8;
    };
    struct {
        unsigned TEFUA0 :1;
        unsigned TEFUA1 :1;
        unsigned TEFUA2 :1;
        unsigned TEFUA3 :1;
        unsigned TEFUA4 :1;
        unsigned TEFUA5 :1;
        unsigned TEFUA6 :1;
        unsigned TEFUA7 :1;
    };
} C1TEFUALbits_t;
extern volatile C1TEFUALbits_t C1TEFUALbits __attribute__((address(0x148)));
# 13021 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TEFUAH __attribute__((address(0x149)));

__asm("C1TEFUAH equ 0149h");


typedef union {
    struct {
        unsigned TEFUA :8;
    };
    struct {
        unsigned TEFUA8 :1;
        unsigned TEFUA9 :1;
        unsigned TEFUA10 :1;
        unsigned TEFUA11 :1;
        unsigned TEFUA12 :1;
        unsigned TEFUA13 :1;
        unsigned TEFUA14 :1;
        unsigned TEFUA15 :1;
    };
} C1TEFUAHbits_t;
extern volatile C1TEFUAHbits_t C1TEFUAHbits __attribute__((address(0x149)));
# 13091 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TEFUAU __attribute__((address(0x14A)));

__asm("C1TEFUAU equ 014Ah");


typedef union {
    struct {
        unsigned TEFUA :8;
    };
    struct {
        unsigned TEFUA16 :1;
        unsigned TEFUA17 :1;
        unsigned TEFUA18 :1;
        unsigned TEFUA19 :1;
        unsigned TEFUA20 :1;
        unsigned TEFUA21 :1;
        unsigned TEFUA22 :1;
        unsigned TEFUA23 :1;
    };
} C1TEFUAUbits_t;
extern volatile C1TEFUAUbits_t C1TEFUAUbits __attribute__((address(0x14A)));
# 13161 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TEFUAT __attribute__((address(0x14B)));

__asm("C1TEFUAT equ 014Bh");


typedef union {
    struct {
        unsigned TEFUA :8;
    };
    struct {
        unsigned TEFUA24 :1;
        unsigned TEFUA25 :1;
        unsigned TEFUA26 :1;
        unsigned TEFUA27 :1;
        unsigned TEFUA28 :1;
        unsigned TEFUA29 :1;
        unsigned TEFUA30 :1;
        unsigned TEFUA31 :1;
    };
} C1TEFUATbits_t;
extern volatile C1TEFUATbits_t C1TEFUATbits __attribute__((address(0x14B)));
# 13231 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FIFOBA __attribute__((address(0x14C)));

__asm("C1FIFOBA equ 014Ch");




extern volatile unsigned char C1FIFOBAL __attribute__((address(0x14C)));

__asm("C1FIFOBAL equ 014Ch");


typedef union {
    struct {
        unsigned FIFOBA :8;
    };
    struct {
        unsigned FIFOBA0 :1;
        unsigned FIFOBA1 :1;
        unsigned FIFOBA2 :1;
        unsigned FIFOBA3 :1;
        unsigned FIFOBA4 :1;
        unsigned FIFOBA5 :1;
        unsigned FIFOBA6 :1;
        unsigned FIFOBA7 :1;
    };
} C1FIFOBALbits_t;
extern volatile C1FIFOBALbits_t C1FIFOBALbits __attribute__((address(0x14C)));
# 13308 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOBAH __attribute__((address(0x14D)));

__asm("C1FIFOBAH equ 014Dh");


typedef union {
    struct {
        unsigned FIFOBA :8;
    };
    struct {
        unsigned FIFOBA8 :1;
        unsigned FIFOBA9 :1;
        unsigned FIFOBA10 :1;
        unsigned FIFOBA11 :1;
        unsigned FIFOBA12 :1;
        unsigned FIFOBA13 :1;
        unsigned FIFOBA14 :1;
        unsigned FIFOBA15 :1;
    };
} C1FIFOBAHbits_t;
extern volatile C1FIFOBAHbits_t C1FIFOBAHbits __attribute__((address(0x14D)));
# 13378 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOBAU __attribute__((address(0x14E)));

__asm("C1FIFOBAU equ 014Eh");


typedef union {
    struct {
        unsigned FIFOBA :8;
    };
    struct {
        unsigned FIFOBA16 :1;
        unsigned FIFOBA17 :1;
        unsigned FIFOBA18 :1;
        unsigned FIFOBA19 :1;
        unsigned FIFOBA20 :1;
        unsigned FIFOBA21 :1;
        unsigned FIFOBA22 :1;
        unsigned FIFOBA23 :1;
    };
} C1FIFOBAUbits_t;
extern volatile C1FIFOBAUbits_t C1FIFOBAUbits __attribute__((address(0x14E)));
# 13448 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOBAT __attribute__((address(0x14F)));

__asm("C1FIFOBAT equ 014Fh");


typedef union {
    struct {
        unsigned FIFOBA :8;
    };
    struct {
        unsigned FIFOBA24 :1;
        unsigned FIFOBA25 :1;
        unsigned FIFOBA26 :1;
        unsigned FIFOBA27 :1;
        unsigned FIFOBA28 :1;
        unsigned FIFOBA29 :1;
        unsigned FIFOBA30 :1;
        unsigned FIFOBA31 :1;
    };
} C1FIFOBATbits_t;
extern volatile C1FIFOBATbits_t C1FIFOBATbits __attribute__((address(0x14F)));
# 13518 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQCONL __attribute__((address(0x150)));

__asm("C1TXQCONL equ 0150h");


typedef union {
    struct {
        unsigned TXQNIE :1;
        unsigned :1;
        unsigned TXQEIE :1;
        unsigned :1;
        unsigned TXATIE :1;
        unsigned :2;
        unsigned TXEN :1;
    };
} C1TXQCONLbits_t;
extern volatile C1TXQCONLbits_t C1TXQCONLbits __attribute__((address(0x150)));
# 13559 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQCONH __attribute__((address(0x151)));

__asm("C1TXQCONH equ 0151h");


typedef union {
    struct {
        unsigned UINC :1;
        unsigned TXREQ :1;
        unsigned FRESET :1;
    };
} C1TXQCONHbits_t;
extern volatile C1TXQCONHbits_t C1TXQCONHbits __attribute__((address(0x151)));
# 13591 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQCONU __attribute__((address(0x152)));

__asm("C1TXQCONU equ 0152h");


typedef union {
    struct {
        unsigned TXPRI :5;
        unsigned TXAT :2;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned TXPRI2 :1;
        unsigned TXPRI3 :1;
        unsigned TXPRI4 :1;
        unsigned TXAT0 :1;
        unsigned TXAT1 :1;
    };
} C1TXQCONUbits_t;
extern volatile C1TXQCONUbits_t C1TXQCONUbits __attribute__((address(0x152)));
# 13661 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQCONT __attribute__((address(0x153)));

__asm("C1TXQCONT equ 0153h");


typedef union {
    struct {
        unsigned FSIZE :5;
        unsigned PLSIZE :3;
    };
    struct {
        unsigned FSIZE0 :1;
        unsigned FSIZE1 :1;
        unsigned FSIZE2 :1;
        unsigned FSIZE3 :1;
        unsigned FSIZE4 :1;
        unsigned PLSIZE0 :1;
        unsigned PLSIZE1 :1;
        unsigned PLSIZE2 :1;
    };
} C1TXQCONTbits_t;
extern volatile C1TXQCONTbits_t C1TXQCONTbits __attribute__((address(0x153)));
# 13737 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQSTAL __attribute__((address(0x154)));

__asm("C1TXQSTAL equ 0154h");


typedef union {
    struct {
        unsigned TXQNIF :1;
        unsigned :1;
        unsigned TXQEIF :1;
        unsigned :1;
        unsigned TXATIF :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
    };
} C1TXQSTALbits_t;
extern volatile C1TXQSTALbits_t C1TXQSTALbits __attribute__((address(0x154)));
# 13789 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQSTAH __attribute__((address(0x155)));

__asm("C1TXQSTAH equ 0155h");


typedef union {
    struct {
        unsigned TXQCI :5;
    };
    struct {
        unsigned TXQCI0 :1;
        unsigned TXQCI1 :1;
        unsigned TXQCI2 :1;
        unsigned TXQCI3 :1;
        unsigned TXQCI4 :1;
    };
} C1TXQSTAHbits_t;
extern volatile C1TXQSTAHbits_t C1TXQSTAHbits __attribute__((address(0x155)));
# 13841 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQSTAU __attribute__((address(0x156)));

__asm("C1TXQSTAU equ 0156h");




extern volatile unsigned char C1TXQSTAT __attribute__((address(0x157)));

__asm("C1TXQSTAT equ 0157h");




extern volatile unsigned long C1TXQUA __attribute__((address(0x158)));

__asm("C1TXQUA equ 0158h");




extern volatile unsigned char C1TXQUAL __attribute__((address(0x158)));

__asm("C1TXQUAL equ 0158h");


typedef union {
    struct {
        unsigned TXQUA :8;
    };
    struct {
        unsigned TXQUA0 :1;
        unsigned TXQUA1 :1;
        unsigned TXQUA2 :1;
        unsigned TXQUA3 :1;
        unsigned TXQUA4 :1;
        unsigned TXQUA5 :1;
        unsigned TXQUA6 :1;
        unsigned TXQUA7 :1;
    };
} C1TXQUALbits_t;
extern volatile C1TXQUALbits_t C1TXQUALbits __attribute__((address(0x158)));
# 13932 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQUAH __attribute__((address(0x159)));

__asm("C1TXQUAH equ 0159h");


typedef union {
    struct {
        unsigned TXQUA :8;
    };
    struct {
        unsigned TXQUA8 :1;
        unsigned TXQUA9 :1;
        unsigned TXQUA10 :1;
        unsigned TXQUA11 :1;
        unsigned TXQUA12 :1;
        unsigned TXQUA13 :1;
        unsigned TXQUA14 :1;
        unsigned TXQUA15 :1;
    };
} C1TXQUAHbits_t;
extern volatile C1TXQUAHbits_t C1TXQUAHbits __attribute__((address(0x159)));
# 14002 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQUAU __attribute__((address(0x15A)));

__asm("C1TXQUAU equ 015Ah");


typedef union {
    struct {
        unsigned TXQUA :8;
    };
    struct {
        unsigned TXQUA16 :1;
        unsigned TXQUA17 :1;
        unsigned TXQUA18 :1;
        unsigned TXQUA19 :1;
        unsigned TXQUA20 :1;
        unsigned TXQUA21 :1;
        unsigned TXQUA22 :1;
        unsigned TXQUA23 :1;
    };
} C1TXQUAUbits_t;
extern volatile C1TXQUAUbits_t C1TXQUAUbits __attribute__((address(0x15A)));
# 14072 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1TXQUAT __attribute__((address(0x15B)));

__asm("C1TXQUAT equ 015Bh");


typedef union {
    struct {
        unsigned TXQUA :8;
    };
    struct {
        unsigned TXQUA24 :1;
        unsigned TXQUA25 :1;
        unsigned TXQUA26 :1;
        unsigned TXQUA27 :1;
        unsigned TXQUA28 :1;
        unsigned TXQUA29 :1;
        unsigned TXQUA30 :1;
        unsigned TXQUA31 :1;
    };
} C1TXQUATbits_t;
extern volatile C1TXQUATbits_t C1TXQUATbits __attribute__((address(0x15B)));
# 14142 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FIFOCON1 __attribute__((address(0x15C)));

__asm("C1FIFOCON1 equ 015Ch");




extern volatile unsigned char C1FIFOCON1L __attribute__((address(0x15C)));

__asm("C1FIFOCON1L equ 015Ch");


typedef union {
    struct {
        unsigned TFNRFNIE :1;
        unsigned TFHRFHIE :1;
        unsigned TFERFFIE :1;
        unsigned RXOVIE :1;
        unsigned TXATIE :1;
        unsigned RXTSEN :1;
        unsigned RTREN :1;
        unsigned TXEN :1;
    };
} C1FIFOCON1Lbits_t;
extern volatile C1FIFOCON1Lbits_t C1FIFOCON1Lbits __attribute__((address(0x15C)));
# 14211 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON1H __attribute__((address(0x15D)));

__asm("C1FIFOCON1H equ 015Dh");


typedef union {
    struct {
        unsigned UINC :1;
        unsigned TXREQ :1;
        unsigned FRESET :1;
    };
} C1FIFOCON1Hbits_t;
extern volatile C1FIFOCON1Hbits_t C1FIFOCON1Hbits __attribute__((address(0x15D)));
# 14243 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON1U __attribute__((address(0x15E)));

__asm("C1FIFOCON1U equ 015Eh");


typedef union {
    struct {
        unsigned TXPRI :5;
        unsigned TXAT :2;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned TXPRI2 :1;
        unsigned TXPRI3 :1;
        unsigned TXPRI4 :1;
        unsigned TXAT0 :1;
        unsigned TXAT1 :1;
    };
} C1FIFOCON1Ubits_t;
extern volatile C1FIFOCON1Ubits_t C1FIFOCON1Ubits __attribute__((address(0x15E)));
# 14313 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON1T __attribute__((address(0x15F)));

__asm("C1FIFOCON1T equ 015Fh");


typedef union {
    struct {
        unsigned FSIZE :5;
        unsigned PLSIZE :3;
    };
    struct {
        unsigned FSIZE0 :1;
        unsigned FSIZE1 :1;
        unsigned FSIZE2 :1;
        unsigned FSIZE3 :1;
        unsigned FSIZE4 :1;
        unsigned PLSIZE0 :1;
        unsigned PLSIZE1 :1;
        unsigned PLSIZE2 :1;
    };
} C1FIFOCON1Tbits_t;
extern volatile C1FIFOCON1Tbits_t C1FIFOCON1Tbits __attribute__((address(0x15F)));
# 14389 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FIFOSTA1 __attribute__((address(0x160)));

__asm("C1FIFOSTA1 equ 0160h");




extern volatile unsigned char C1FIFOSTA1L __attribute__((address(0x160)));

__asm("C1FIFOSTA1L equ 0160h");


typedef union {
    struct {
        unsigned TFNRFNIF :1;
        unsigned TFHRFHIF :1;
        unsigned TFERFFIF :1;
        unsigned RXOVIF :1;
        unsigned TXATIF :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
    };
} C1FIFOSTA1Lbits_t;
extern volatile C1FIFOSTA1Lbits_t C1FIFOSTA1Lbits __attribute__((address(0x160)));
# 14458 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOSTA1H __attribute__((address(0x161)));

__asm("C1FIFOSTA1H equ 0161h");


typedef union {
    struct {
        unsigned FIFOCI :5;
    };
    struct {
        unsigned FIFOCI0 :1;
        unsigned FIFOCI1 :1;
        unsigned FIFOCI2 :1;
        unsigned FIFOCI3 :1;
        unsigned FIFOCI4 :1;
    };
} C1FIFOSTA1Hbits_t;
extern volatile C1FIFOSTA1Hbits_t C1FIFOSTA1Hbits __attribute__((address(0x161)));
# 14510 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOSTA1U __attribute__((address(0x162)));

__asm("C1FIFOSTA1U equ 0162h");




extern volatile unsigned char C1FIFOSTA1T __attribute__((address(0x163)));

__asm("C1FIFOSTA1T equ 0163h");




extern volatile unsigned long C1FIFOUA1 __attribute__((address(0x164)));

__asm("C1FIFOUA1 equ 0164h");




extern volatile unsigned char C1FIFOUA1L __attribute__((address(0x164)));

__asm("C1FIFOUA1L equ 0164h");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA0 :1;
        unsigned FIFOUA1 :1;
        unsigned FIFOUA2 :1;
        unsigned FIFOUA3 :1;
        unsigned FIFOUA4 :1;
        unsigned FIFOUA5 :1;
        unsigned FIFOUA6 :1;
        unsigned FIFOUA7 :1;
    };
} C1FIFOUA1Lbits_t;
extern volatile C1FIFOUA1Lbits_t C1FIFOUA1Lbits __attribute__((address(0x164)));
# 14601 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA1H __attribute__((address(0x165)));

__asm("C1FIFOUA1H equ 0165h");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA8 :1;
        unsigned FIFOUA9 :1;
        unsigned FIFOUA10 :1;
        unsigned FIFOUA11 :1;
        unsigned FIFOUA12 :1;
        unsigned FIFOUA13 :1;
        unsigned FIFOUA14 :1;
        unsigned FIFOUA15 :1;
    };
} C1FIFOUA1Hbits_t;
extern volatile C1FIFOUA1Hbits_t C1FIFOUA1Hbits __attribute__((address(0x165)));
# 14671 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA1U __attribute__((address(0x166)));

__asm("C1FIFOUA1U equ 0166h");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA16 :1;
        unsigned FIFOUA17 :1;
        unsigned FIFOUA18 :1;
        unsigned FIFOUA19 :1;
        unsigned FIFOUA20 :1;
        unsigned FIFOUA21 :1;
        unsigned FIFOUA22 :1;
        unsigned FIFOUA23 :1;
    };
} C1FIFOUA1Ubits_t;
extern volatile C1FIFOUA1Ubits_t C1FIFOUA1Ubits __attribute__((address(0x166)));
# 14741 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA1T __attribute__((address(0x167)));

__asm("C1FIFOUA1T equ 0167h");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA24 :1;
        unsigned FIFOUA25 :1;
        unsigned FIFOUA26 :1;
        unsigned FIFOUA27 :1;
        unsigned FIFOUA28 :1;
        unsigned FIFOUA29 :1;
        unsigned FIFOUA30 :1;
        unsigned FIFOUA31 :1;
    };
} C1FIFOUA1Tbits_t;
extern volatile C1FIFOUA1Tbits_t C1FIFOUA1Tbits __attribute__((address(0x167)));
# 14811 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FIFOCON2 __attribute__((address(0x168)));

__asm("C1FIFOCON2 equ 0168h");




extern volatile unsigned char C1FIFOCON2L __attribute__((address(0x168)));

__asm("C1FIFOCON2L equ 0168h");


typedef union {
    struct {
        unsigned TFNRFNIE :1;
        unsigned TFHRFHIE :1;
        unsigned TFERFFIE :1;
        unsigned RXOVIE :1;
        unsigned TXATIE :1;
        unsigned RXTSEN :1;
        unsigned RTREN :1;
        unsigned TXEN :1;
    };
} C1FIFOCON2Lbits_t;
extern volatile C1FIFOCON2Lbits_t C1FIFOCON2Lbits __attribute__((address(0x168)));
# 14880 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON2H __attribute__((address(0x169)));

__asm("C1FIFOCON2H equ 0169h");


typedef union {
    struct {
        unsigned UINC :1;
        unsigned TXREQ :1;
        unsigned FRESET :1;
    };
} C1FIFOCON2Hbits_t;
extern volatile C1FIFOCON2Hbits_t C1FIFOCON2Hbits __attribute__((address(0x169)));
# 14912 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON2U __attribute__((address(0x16A)));

__asm("C1FIFOCON2U equ 016Ah");


typedef union {
    struct {
        unsigned TXPRI :5;
        unsigned TXAT :2;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned TXPRI2 :1;
        unsigned TXPRI3 :1;
        unsigned TXPRI4 :1;
        unsigned TXAT0 :1;
        unsigned TXAT1 :1;
    };
} C1FIFOCON2Ubits_t;
extern volatile C1FIFOCON2Ubits_t C1FIFOCON2Ubits __attribute__((address(0x16A)));
# 14982 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON2T __attribute__((address(0x16B)));

__asm("C1FIFOCON2T equ 016Bh");


typedef union {
    struct {
        unsigned FSIZE :5;
        unsigned PLSIZE :3;
    };
    struct {
        unsigned FSIZE0 :1;
        unsigned FSIZE1 :1;
        unsigned FSIZE2 :1;
        unsigned FSIZE3 :1;
        unsigned FSIZE4 :1;
        unsigned PLSIZE0 :1;
        unsigned PLSIZE1 :1;
        unsigned PLSIZE2 :1;
    };
} C1FIFOCON2Tbits_t;
extern volatile C1FIFOCON2Tbits_t C1FIFOCON2Tbits __attribute__((address(0x16B)));
# 15058 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FIFOSTA2 __attribute__((address(0x16C)));

__asm("C1FIFOSTA2 equ 016Ch");




extern volatile unsigned char C1FIFOSTA2L __attribute__((address(0x16C)));

__asm("C1FIFOSTA2L equ 016Ch");


typedef union {
    struct {
        unsigned TFNRFNIF :1;
        unsigned TFHRFHIF :1;
        unsigned TFERFFIF :1;
        unsigned RXOVIF :1;
        unsigned TXATIF :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
    };
} C1FIFOSTA2Lbits_t;
extern volatile C1FIFOSTA2Lbits_t C1FIFOSTA2Lbits __attribute__((address(0x16C)));
# 15127 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOSTA2H __attribute__((address(0x16D)));

__asm("C1FIFOSTA2H equ 016Dh");


typedef union {
    struct {
        unsigned FIFOCI :5;
    };
    struct {
        unsigned FIFOCI0 :1;
        unsigned FIFOCI1 :1;
        unsigned FIFOCI2 :1;
        unsigned FIFOCI3 :1;
        unsigned FIFOCI4 :1;
    };
} C1FIFOSTA2Hbits_t;
extern volatile C1FIFOSTA2Hbits_t C1FIFOSTA2Hbits __attribute__((address(0x16D)));
# 15179 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOSTA2U __attribute__((address(0x16E)));

__asm("C1FIFOSTA2U equ 016Eh");




extern volatile unsigned char C1FIFOSTA2T __attribute__((address(0x16F)));

__asm("C1FIFOSTA2T equ 016Fh");




extern volatile unsigned long C1FIFOUA2 __attribute__((address(0x170)));

__asm("C1FIFOUA2 equ 0170h");




extern volatile unsigned char C1FIFOUA2L __attribute__((address(0x170)));

__asm("C1FIFOUA2L equ 0170h");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA0 :1;
        unsigned FIFOUA1 :1;
        unsigned FIFOUA2 :1;
        unsigned FIFOUA3 :1;
        unsigned FIFOUA4 :1;
        unsigned FIFOUA5 :1;
        unsigned FIFOUA6 :1;
        unsigned FIFOUA7 :1;
    };
} C1FIFOUA2Lbits_t;
extern volatile C1FIFOUA2Lbits_t C1FIFOUA2Lbits __attribute__((address(0x170)));
# 15270 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA2H __attribute__((address(0x171)));

__asm("C1FIFOUA2H equ 0171h");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA8 :1;
        unsigned FIFOUA9 :1;
        unsigned FIFOUA10 :1;
        unsigned FIFOUA11 :1;
        unsigned FIFOUA12 :1;
        unsigned FIFOUA13 :1;
        unsigned FIFOUA14 :1;
        unsigned FIFOUA15 :1;
    };
} C1FIFOUA2Hbits_t;
extern volatile C1FIFOUA2Hbits_t C1FIFOUA2Hbits __attribute__((address(0x171)));
# 15340 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA2U __attribute__((address(0x172)));

__asm("C1FIFOUA2U equ 0172h");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA16 :1;
        unsigned FIFOUA17 :1;
        unsigned FIFOUA18 :1;
        unsigned FIFOUA19 :1;
        unsigned FIFOUA20 :1;
        unsigned FIFOUA21 :1;
        unsigned FIFOUA22 :1;
        unsigned FIFOUA23 :1;
    };
} C1FIFOUA2Ubits_t;
extern volatile C1FIFOUA2Ubits_t C1FIFOUA2Ubits __attribute__((address(0x172)));
# 15410 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA2T __attribute__((address(0x173)));

__asm("C1FIFOUA2T equ 0173h");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA24 :1;
        unsigned FIFOUA25 :1;
        unsigned FIFOUA26 :1;
        unsigned FIFOUA27 :1;
        unsigned FIFOUA28 :1;
        unsigned FIFOUA29 :1;
        unsigned FIFOUA30 :1;
        unsigned FIFOUA31 :1;
    };
} C1FIFOUA2Tbits_t;
extern volatile C1FIFOUA2Tbits_t C1FIFOUA2Tbits __attribute__((address(0x173)));
# 15480 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FIFOCON3 __attribute__((address(0x174)));

__asm("C1FIFOCON3 equ 0174h");




extern volatile unsigned char C1FIFOCON3L __attribute__((address(0x174)));

__asm("C1FIFOCON3L equ 0174h");


typedef union {
    struct {
        unsigned TFNRFNIE :1;
        unsigned TFHRFHIE :1;
        unsigned TFERFFIE :1;
        unsigned RXOVIE :1;
        unsigned TXATIE :1;
        unsigned RXTSEN :1;
        unsigned RTREN :1;
        unsigned TXEN :1;
    };
} C1FIFOCON3Lbits_t;
extern volatile C1FIFOCON3Lbits_t C1FIFOCON3Lbits __attribute__((address(0x174)));
# 15549 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON3H __attribute__((address(0x175)));

__asm("C1FIFOCON3H equ 0175h");


typedef union {
    struct {
        unsigned UINC :1;
        unsigned TXREQ :1;
        unsigned FRESET :1;
    };
} C1FIFOCON3Hbits_t;
extern volatile C1FIFOCON3Hbits_t C1FIFOCON3Hbits __attribute__((address(0x175)));
# 15581 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON3U __attribute__((address(0x176)));

__asm("C1FIFOCON3U equ 0176h");


typedef union {
    struct {
        unsigned TXPRI :5;
        unsigned TXAT :2;
    };
    struct {
        unsigned TXPRI0 :1;
        unsigned TXPRI1 :1;
        unsigned TXPRI2 :1;
        unsigned TXPRI3 :1;
        unsigned TXPRI4 :1;
        unsigned TXAT0 :1;
        unsigned TXAT1 :1;
    };
} C1FIFOCON3Ubits_t;
extern volatile C1FIFOCON3Ubits_t C1FIFOCON3Ubits __attribute__((address(0x176)));
# 15651 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOCON3T __attribute__((address(0x177)));

__asm("C1FIFOCON3T equ 0177h");


typedef union {
    struct {
        unsigned FSIZE :5;
        unsigned PLSIZE :3;
    };
    struct {
        unsigned FSIZE0 :1;
        unsigned FSIZE1 :1;
        unsigned FSIZE2 :1;
        unsigned FSIZE3 :1;
        unsigned FSIZE4 :1;
        unsigned PLSIZE0 :1;
        unsigned PLSIZE1 :1;
        unsigned PLSIZE2 :1;
    };
} C1FIFOCON3Tbits_t;
extern volatile C1FIFOCON3Tbits_t C1FIFOCON3Tbits __attribute__((address(0x177)));
# 15727 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FIFOSTA3 __attribute__((address(0x178)));

__asm("C1FIFOSTA3 equ 0178h");




extern volatile unsigned char C1FIFOSTA3L __attribute__((address(0x178)));

__asm("C1FIFOSTA3L equ 0178h");


typedef union {
    struct {
        unsigned TFNRFNIF :1;
        unsigned TFHRFHIF :1;
        unsigned TFERFFIF :1;
        unsigned RXOVIF :1;
        unsigned TXATIF :1;
        unsigned TXERR :1;
        unsigned TXLARB :1;
        unsigned TXABT :1;
    };
} C1FIFOSTA3Lbits_t;
extern volatile C1FIFOSTA3Lbits_t C1FIFOSTA3Lbits __attribute__((address(0x178)));
# 15796 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOSTA3H __attribute__((address(0x179)));

__asm("C1FIFOSTA3H equ 0179h");


typedef union {
    struct {
        unsigned FIFOCI :5;
    };
    struct {
        unsigned FIFOCI0 :1;
        unsigned FIFOCI1 :1;
        unsigned FIFOCI2 :1;
        unsigned FIFOCI3 :1;
        unsigned FIFOCI4 :1;
    };
} C1FIFOSTA3Hbits_t;
extern volatile C1FIFOSTA3Hbits_t C1FIFOSTA3Hbits __attribute__((address(0x179)));
# 15848 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOSTA3U __attribute__((address(0x17A)));

__asm("C1FIFOSTA3U equ 017Ah");




extern volatile unsigned char C1FIFOSTA3T __attribute__((address(0x17B)));

__asm("C1FIFOSTA3T equ 017Bh");




extern volatile unsigned long C1FIFOUA3 __attribute__((address(0x17C)));

__asm("C1FIFOUA3 equ 017Ch");




extern volatile unsigned char C1FIFOUA3L __attribute__((address(0x17C)));

__asm("C1FIFOUA3L equ 017Ch");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA0 :1;
        unsigned FIFOUA1 :1;
        unsigned FIFOUA2 :1;
        unsigned FIFOUA3 :1;
        unsigned FIFOUA4 :1;
        unsigned FIFOUA5 :1;
        unsigned FIFOUA6 :1;
        unsigned FIFOUA7 :1;
    };
} C1FIFOUA3Lbits_t;
extern volatile C1FIFOUA3Lbits_t C1FIFOUA3Lbits __attribute__((address(0x17C)));
# 15939 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA3H __attribute__((address(0x17D)));

__asm("C1FIFOUA3H equ 017Dh");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA8 :1;
        unsigned FIFOUA9 :1;
        unsigned FIFOUA10 :1;
        unsigned FIFOUA11 :1;
        unsigned FIFOUA12 :1;
        unsigned FIFOUA13 :1;
        unsigned FIFOUA14 :1;
        unsigned FIFOUA15 :1;
    };
} C1FIFOUA3Hbits_t;
extern volatile C1FIFOUA3Hbits_t C1FIFOUA3Hbits __attribute__((address(0x17D)));
# 16009 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA3U __attribute__((address(0x17E)));

__asm("C1FIFOUA3U equ 017Eh");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA16 :1;
        unsigned FIFOUA17 :1;
        unsigned FIFOUA18 :1;
        unsigned FIFOUA19 :1;
        unsigned FIFOUA20 :1;
        unsigned FIFOUA21 :1;
        unsigned FIFOUA22 :1;
        unsigned FIFOUA23 :1;
    };
} C1FIFOUA3Ubits_t;
extern volatile C1FIFOUA3Ubits_t C1FIFOUA3Ubits __attribute__((address(0x17E)));
# 16079 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FIFOUA3T __attribute__((address(0x17F)));

__asm("C1FIFOUA3T equ 017Fh");


typedef union {
    struct {
        unsigned FIFOUA :8;
    };
    struct {
        unsigned FIFOUA24 :1;
        unsigned FIFOUA25 :1;
        unsigned FIFOUA26 :1;
        unsigned FIFOUA27 :1;
        unsigned FIFOUA28 :1;
        unsigned FIFOUA29 :1;
        unsigned FIFOUA30 :1;
        unsigned FIFOUA31 :1;
    };
} C1FIFOUA3Tbits_t;
extern volatile C1FIFOUA3Tbits_t C1FIFOUA3Tbits __attribute__((address(0x17F)));
# 16149 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON0L __attribute__((address(0x180)));

__asm("C1FLTCON0L equ 0180h");


typedef union {
    struct {
        unsigned F0BP :5;
        unsigned :2;
        unsigned FLTEN0 :1;
    };
    struct {
        unsigned F0BP0 :1;
        unsigned F0BP1 :1;
        unsigned F0BP2 :1;
        unsigned F0BP3 :1;
        unsigned F0BP4 :1;
    };
} C1FLTCON0Lbits_t;
extern volatile C1FLTCON0Lbits_t C1FLTCON0Lbits __attribute__((address(0x180)));
# 16208 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON0H __attribute__((address(0x181)));

__asm("C1FLTCON0H equ 0181h");


typedef union {
    struct {
        unsigned F1BP :5;
        unsigned :2;
        unsigned FLTEN1 :1;
    };
    struct {
        unsigned F1BP0 :1;
        unsigned F1BP1 :1;
        unsigned F1BP2 :1;
        unsigned F1BP3 :1;
        unsigned F1BP4 :1;
    };
} C1FLTCON0Hbits_t;
extern volatile C1FLTCON0Hbits_t C1FLTCON0Hbits __attribute__((address(0x181)));
# 16267 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON0U __attribute__((address(0x182)));

__asm("C1FLTCON0U equ 0182h");


typedef union {
    struct {
        unsigned F2BP :5;
        unsigned :2;
        unsigned FLTEN2 :1;
    };
    struct {
        unsigned F2BP0 :1;
        unsigned F2BP1 :1;
        unsigned F2BP2 :1;
        unsigned F2BP3 :1;
        unsigned F2BP4 :1;
    };
} C1FLTCON0Ubits_t;
extern volatile C1FLTCON0Ubits_t C1FLTCON0Ubits __attribute__((address(0x182)));
# 16326 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON0T __attribute__((address(0x183)));

__asm("C1FLTCON0T equ 0183h");


typedef union {
    struct {
        unsigned F3BP :5;
        unsigned :2;
        unsigned FLTEN3 :1;
    };
    struct {
        unsigned F3BP0 :1;
        unsigned F3BP1 :1;
        unsigned F3BP2 :1;
        unsigned F3BP3 :1;
        unsigned F3BP4 :1;
    };
} C1FLTCON0Tbits_t;
extern volatile C1FLTCON0Tbits_t C1FLTCON0Tbits __attribute__((address(0x183)));
# 16385 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON1L __attribute__((address(0x184)));

__asm("C1FLTCON1L equ 0184h");


typedef union {
    struct {
        unsigned F4BP :5;
        unsigned :2;
        unsigned FLTEN4 :1;
    };
    struct {
        unsigned F4BP0 :1;
        unsigned F4BP1 :1;
        unsigned F4BP2 :1;
        unsigned F4BP3 :1;
        unsigned F4BP4 :1;
    };
} C1FLTCON1Lbits_t;
extern volatile C1FLTCON1Lbits_t C1FLTCON1Lbits __attribute__((address(0x184)));
# 16444 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON1H __attribute__((address(0x185)));

__asm("C1FLTCON1H equ 0185h");


typedef union {
    struct {
        unsigned F5BP :5;
        unsigned :2;
        unsigned FLTEN5 :1;
    };
    struct {
        unsigned F5BP0 :1;
        unsigned F5BP1 :1;
        unsigned F5BP2 :1;
        unsigned F5BP3 :1;
        unsigned F5BP4 :1;
    };
} C1FLTCON1Hbits_t;
extern volatile C1FLTCON1Hbits_t C1FLTCON1Hbits __attribute__((address(0x185)));
# 16503 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON1U __attribute__((address(0x186)));

__asm("C1FLTCON1U equ 0186h");


typedef union {
    struct {
        unsigned F6BP :5;
        unsigned :2;
        unsigned FLTEN6 :1;
    };
    struct {
        unsigned F6BP0 :1;
        unsigned F6BP1 :1;
        unsigned F6BP2 :1;
        unsigned F6BP3 :1;
        unsigned F6BP4 :1;
    };
} C1FLTCON1Ubits_t;
extern volatile C1FLTCON1Ubits_t C1FLTCON1Ubits __attribute__((address(0x186)));
# 16562 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON1T __attribute__((address(0x187)));

__asm("C1FLTCON1T equ 0187h");


typedef union {
    struct {
        unsigned F7BP :5;
        unsigned :2;
        unsigned FLTEN7 :1;
    };
    struct {
        unsigned F7BP0 :1;
        unsigned F7BP1 :1;
        unsigned F7BP2 :1;
        unsigned F7BP3 :1;
        unsigned F7BP4 :1;
    };
} C1FLTCON1Tbits_t;
extern volatile C1FLTCON1Tbits_t C1FLTCON1Tbits __attribute__((address(0x187)));
# 16621 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON2L __attribute__((address(0x188)));

__asm("C1FLTCON2L equ 0188h");


typedef union {
    struct {
        unsigned F8BP :5;
        unsigned :2;
        unsigned FLTEN8 :1;
    };
    struct {
        unsigned F8BP0 :1;
        unsigned F8BP1 :1;
        unsigned F8BP2 :1;
        unsigned F8BP3 :1;
        unsigned F8BP4 :1;
    };
} C1FLTCON2Lbits_t;
extern volatile C1FLTCON2Lbits_t C1FLTCON2Lbits __attribute__((address(0x188)));
# 16680 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON2H __attribute__((address(0x189)));

__asm("C1FLTCON2H equ 0189h");


typedef union {
    struct {
        unsigned F9BP :5;
        unsigned :2;
        unsigned FLTEN9 :1;
    };
    struct {
        unsigned F9BP0 :1;
        unsigned F9BP1 :1;
        unsigned F9BP2 :1;
        unsigned F9BP3 :1;
        unsigned F9BP4 :1;
    };
} C1FLTCON2Hbits_t;
extern volatile C1FLTCON2Hbits_t C1FLTCON2Hbits __attribute__((address(0x189)));
# 16739 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON2U __attribute__((address(0x18A)));

__asm("C1FLTCON2U equ 018Ah");


typedef union {
    struct {
        unsigned F10BP :5;
        unsigned :2;
        unsigned FLTEN10 :1;
    };
    struct {
        unsigned F10BP0 :1;
        unsigned F10BP1 :1;
        unsigned F10BP2 :1;
        unsigned F10BP3 :1;
        unsigned F10BP4 :1;
    };
} C1FLTCON2Ubits_t;
extern volatile C1FLTCON2Ubits_t C1FLTCON2Ubits __attribute__((address(0x18A)));
# 16798 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTCON2T __attribute__((address(0x18B)));

__asm("C1FLTCON2T equ 018Bh");


typedef union {
    struct {
        unsigned F11BP :5;
        unsigned :2;
        unsigned FLTEN11 :1;
    };
    struct {
        unsigned F11BP0 :1;
        unsigned F11BP1 :1;
        unsigned F11BP2 :1;
        unsigned F11BP3 :1;
        unsigned F11BP4 :1;
    };
} C1FLTCON2Tbits_t;
extern volatile C1FLTCON2Tbits_t C1FLTCON2Tbits __attribute__((address(0x18B)));
# 16857 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ0 __attribute__((address(0x18C)));

__asm("C1FLTOBJ0 equ 018Ch");




extern volatile unsigned char C1FLTOBJ0L __attribute__((address(0x18C)));

__asm("C1FLTOBJ0L equ 018Ch");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ0Lbits_t;
extern volatile C1FLTOBJ0Lbits_t C1FLTOBJ0Lbits __attribute__((address(0x18C)));
# 16934 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ0H __attribute__((address(0x18D)));

__asm("C1FLTOBJ0H equ 018Dh");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ0Hbits_t;
extern volatile C1FLTOBJ0Hbits_t C1FLTOBJ0Hbits __attribute__((address(0x18D)));
# 17010 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ0U __attribute__((address(0x18E)));

__asm("C1FLTOBJ0U equ 018Eh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ0Ubits_t;
extern volatile C1FLTOBJ0Ubits_t C1FLTOBJ0Ubits __attribute__((address(0x18E)));
# 17080 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ0T __attribute__((address(0x18F)));

__asm("C1FLTOBJ0T equ 018Fh");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ0Tbits_t;
extern volatile C1FLTOBJ0Tbits_t C1FLTOBJ0Tbits __attribute__((address(0x18F)));
# 17144 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK0 __attribute__((address(0x190)));

__asm("C1MASK0 equ 0190h");




extern volatile unsigned char C1MASK0L __attribute__((address(0x190)));

__asm("C1MASK0L equ 0190h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK0Lbits_t;
extern volatile C1MASK0Lbits_t C1MASK0Lbits __attribute__((address(0x190)));
# 17221 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK0H __attribute__((address(0x191)));

__asm("C1MASK0H equ 0191h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK0Hbits_t;
extern volatile C1MASK0Hbits_t C1MASK0Hbits __attribute__((address(0x191)));
# 17297 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK0U __attribute__((address(0x192)));

__asm("C1MASK0U equ 0192h");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK0Ubits_t;
extern volatile C1MASK0Ubits_t C1MASK0Ubits __attribute__((address(0x192)));
# 17367 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK0T __attribute__((address(0x193)));

__asm("C1MASK0T equ 0193h");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK0Tbits_t;
extern volatile C1MASK0Tbits_t C1MASK0Tbits __attribute__((address(0x193)));
# 17431 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ1 __attribute__((address(0x194)));

__asm("C1FLTOBJ1 equ 0194h");




extern volatile unsigned char C1FLTOBJ1L __attribute__((address(0x194)));

__asm("C1FLTOBJ1L equ 0194h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ1Lbits_t;
extern volatile C1FLTOBJ1Lbits_t C1FLTOBJ1Lbits __attribute__((address(0x194)));
# 17508 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ1H __attribute__((address(0x195)));

__asm("C1FLTOBJ1H equ 0195h");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ1Hbits_t;
extern volatile C1FLTOBJ1Hbits_t C1FLTOBJ1Hbits __attribute__((address(0x195)));
# 17584 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ1U __attribute__((address(0x196)));

__asm("C1FLTOBJ1U equ 0196h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ1Ubits_t;
extern volatile C1FLTOBJ1Ubits_t C1FLTOBJ1Ubits __attribute__((address(0x196)));
# 17654 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ1T __attribute__((address(0x197)));

__asm("C1FLTOBJ1T equ 0197h");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ1Tbits_t;
extern volatile C1FLTOBJ1Tbits_t C1FLTOBJ1Tbits __attribute__((address(0x197)));
# 17718 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK1 __attribute__((address(0x198)));

__asm("C1MASK1 equ 0198h");




extern volatile unsigned char C1MASK1L __attribute__((address(0x198)));

__asm("C1MASK1L equ 0198h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK1Lbits_t;
extern volatile C1MASK1Lbits_t C1MASK1Lbits __attribute__((address(0x198)));
# 17795 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK1H __attribute__((address(0x199)));

__asm("C1MASK1H equ 0199h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK1Hbits_t;
extern volatile C1MASK1Hbits_t C1MASK1Hbits __attribute__((address(0x199)));
# 17871 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK1U __attribute__((address(0x19A)));

__asm("C1MASK1U equ 019Ah");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK1Ubits_t;
extern volatile C1MASK1Ubits_t C1MASK1Ubits __attribute__((address(0x19A)));
# 17941 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK1T __attribute__((address(0x19B)));

__asm("C1MASK1T equ 019Bh");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK1Tbits_t;
extern volatile C1MASK1Tbits_t C1MASK1Tbits __attribute__((address(0x19B)));
# 18005 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ2 __attribute__((address(0x19C)));

__asm("C1FLTOBJ2 equ 019Ch");




extern volatile unsigned char C1FLTOBJ2L __attribute__((address(0x19C)));

__asm("C1FLTOBJ2L equ 019Ch");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ2Lbits_t;
extern volatile C1FLTOBJ2Lbits_t C1FLTOBJ2Lbits __attribute__((address(0x19C)));
# 18082 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ2H __attribute__((address(0x19D)));

__asm("C1FLTOBJ2H equ 019Dh");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ2Hbits_t;
extern volatile C1FLTOBJ2Hbits_t C1FLTOBJ2Hbits __attribute__((address(0x19D)));
# 18158 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ2U __attribute__((address(0x19E)));

__asm("C1FLTOBJ2U equ 019Eh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ2Ubits_t;
extern volatile C1FLTOBJ2Ubits_t C1FLTOBJ2Ubits __attribute__((address(0x19E)));
# 18228 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ2T __attribute__((address(0x19F)));

__asm("C1FLTOBJ2T equ 019Fh");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ2Tbits_t;
extern volatile C1FLTOBJ2Tbits_t C1FLTOBJ2Tbits __attribute__((address(0x19F)));
# 18292 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK2 __attribute__((address(0x1A0)));

__asm("C1MASK2 equ 01A0h");




extern volatile unsigned char C1MASK2L __attribute__((address(0x1A0)));

__asm("C1MASK2L equ 01A0h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK2Lbits_t;
extern volatile C1MASK2Lbits_t C1MASK2Lbits __attribute__((address(0x1A0)));
# 18369 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK2H __attribute__((address(0x1A1)));

__asm("C1MASK2H equ 01A1h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK2Hbits_t;
extern volatile C1MASK2Hbits_t C1MASK2Hbits __attribute__((address(0x1A1)));
# 18445 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK2U __attribute__((address(0x1A2)));

__asm("C1MASK2U equ 01A2h");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK2Ubits_t;
extern volatile C1MASK2Ubits_t C1MASK2Ubits __attribute__((address(0x1A2)));
# 18515 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK2T __attribute__((address(0x1A3)));

__asm("C1MASK2T equ 01A3h");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK2Tbits_t;
extern volatile C1MASK2Tbits_t C1MASK2Tbits __attribute__((address(0x1A3)));
# 18579 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ3 __attribute__((address(0x1A4)));

__asm("C1FLTOBJ3 equ 01A4h");




extern volatile unsigned char C1FLTOBJ3L __attribute__((address(0x1A4)));

__asm("C1FLTOBJ3L equ 01A4h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ3Lbits_t;
extern volatile C1FLTOBJ3Lbits_t C1FLTOBJ3Lbits __attribute__((address(0x1A4)));
# 18656 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ3H __attribute__((address(0x1A5)));

__asm("C1FLTOBJ3H equ 01A5h");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ3Hbits_t;
extern volatile C1FLTOBJ3Hbits_t C1FLTOBJ3Hbits __attribute__((address(0x1A5)));
# 18732 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ3U __attribute__((address(0x1A6)));

__asm("C1FLTOBJ3U equ 01A6h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ3Ubits_t;
extern volatile C1FLTOBJ3Ubits_t C1FLTOBJ3Ubits __attribute__((address(0x1A6)));
# 18802 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ3T __attribute__((address(0x1A7)));

__asm("C1FLTOBJ3T equ 01A7h");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ3Tbits_t;
extern volatile C1FLTOBJ3Tbits_t C1FLTOBJ3Tbits __attribute__((address(0x1A7)));
# 18866 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK3 __attribute__((address(0x1A8)));

__asm("C1MASK3 equ 01A8h");




extern volatile unsigned char C1MASK3L __attribute__((address(0x1A8)));

__asm("C1MASK3L equ 01A8h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK3Lbits_t;
extern volatile C1MASK3Lbits_t C1MASK3Lbits __attribute__((address(0x1A8)));
# 18943 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK3H __attribute__((address(0x1A9)));

__asm("C1MASK3H equ 01A9h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK3Hbits_t;
extern volatile C1MASK3Hbits_t C1MASK3Hbits __attribute__((address(0x1A9)));
# 19019 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK3U __attribute__((address(0x1AA)));

__asm("C1MASK3U equ 01AAh");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK3Ubits_t;
extern volatile C1MASK3Ubits_t C1MASK3Ubits __attribute__((address(0x1AA)));
# 19089 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK3T __attribute__((address(0x1AB)));

__asm("C1MASK3T equ 01ABh");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK3Tbits_t;
extern volatile C1MASK3Tbits_t C1MASK3Tbits __attribute__((address(0x1AB)));
# 19153 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ4 __attribute__((address(0x1AC)));

__asm("C1FLTOBJ4 equ 01ACh");




extern volatile unsigned char C1FLTOBJ4L __attribute__((address(0x1AC)));

__asm("C1FLTOBJ4L equ 01ACh");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ4Lbits_t;
extern volatile C1FLTOBJ4Lbits_t C1FLTOBJ4Lbits __attribute__((address(0x1AC)));
# 19230 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ4H __attribute__((address(0x1AD)));

__asm("C1FLTOBJ4H equ 01ADh");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ4Hbits_t;
extern volatile C1FLTOBJ4Hbits_t C1FLTOBJ4Hbits __attribute__((address(0x1AD)));
# 19306 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ4U __attribute__((address(0x1AE)));

__asm("C1FLTOBJ4U equ 01AEh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ4Ubits_t;
extern volatile C1FLTOBJ4Ubits_t C1FLTOBJ4Ubits __attribute__((address(0x1AE)));
# 19376 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ4T __attribute__((address(0x1AF)));

__asm("C1FLTOBJ4T equ 01AFh");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ4Tbits_t;
extern volatile C1FLTOBJ4Tbits_t C1FLTOBJ4Tbits __attribute__((address(0x1AF)));
# 19440 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK4 __attribute__((address(0x1B0)));

__asm("C1MASK4 equ 01B0h");




extern volatile unsigned char C1MASK4L __attribute__((address(0x1B0)));

__asm("C1MASK4L equ 01B0h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK4Lbits_t;
extern volatile C1MASK4Lbits_t C1MASK4Lbits __attribute__((address(0x1B0)));
# 19517 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK4H __attribute__((address(0x1B1)));

__asm("C1MASK4H equ 01B1h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK4Hbits_t;
extern volatile C1MASK4Hbits_t C1MASK4Hbits __attribute__((address(0x1B1)));
# 19593 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK4U __attribute__((address(0x1B2)));

__asm("C1MASK4U equ 01B2h");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK4Ubits_t;
extern volatile C1MASK4Ubits_t C1MASK4Ubits __attribute__((address(0x1B2)));
# 19663 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK4T __attribute__((address(0x1B3)));

__asm("C1MASK4T equ 01B3h");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK4Tbits_t;
extern volatile C1MASK4Tbits_t C1MASK4Tbits __attribute__((address(0x1B3)));
# 19727 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ5 __attribute__((address(0x1B4)));

__asm("C1FLTOBJ5 equ 01B4h");




extern volatile unsigned char C1FLTOBJ5L __attribute__((address(0x1B4)));

__asm("C1FLTOBJ5L equ 01B4h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ5Lbits_t;
extern volatile C1FLTOBJ5Lbits_t C1FLTOBJ5Lbits __attribute__((address(0x1B4)));
# 19804 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ5H __attribute__((address(0x1B5)));

__asm("C1FLTOBJ5H equ 01B5h");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ5Hbits_t;
extern volatile C1FLTOBJ5Hbits_t C1FLTOBJ5Hbits __attribute__((address(0x1B5)));
# 19880 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ5U __attribute__((address(0x1B6)));

__asm("C1FLTOBJ5U equ 01B6h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ5Ubits_t;
extern volatile C1FLTOBJ5Ubits_t C1FLTOBJ5Ubits __attribute__((address(0x1B6)));
# 19950 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ5T __attribute__((address(0x1B7)));

__asm("C1FLTOBJ5T equ 01B7h");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ5Tbits_t;
extern volatile C1FLTOBJ5Tbits_t C1FLTOBJ5Tbits __attribute__((address(0x1B7)));
# 20014 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK5 __attribute__((address(0x1B8)));

__asm("C1MASK5 equ 01B8h");




extern volatile unsigned char C1MASK5L __attribute__((address(0x1B8)));

__asm("C1MASK5L equ 01B8h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK5Lbits_t;
extern volatile C1MASK5Lbits_t C1MASK5Lbits __attribute__((address(0x1B8)));
# 20091 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK5H __attribute__((address(0x1B9)));

__asm("C1MASK5H equ 01B9h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK5Hbits_t;
extern volatile C1MASK5Hbits_t C1MASK5Hbits __attribute__((address(0x1B9)));
# 20167 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK5U __attribute__((address(0x1BA)));

__asm("C1MASK5U equ 01BAh");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK5Ubits_t;
extern volatile C1MASK5Ubits_t C1MASK5Ubits __attribute__((address(0x1BA)));
# 20237 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK5T __attribute__((address(0x1BB)));

__asm("C1MASK5T equ 01BBh");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK5Tbits_t;
extern volatile C1MASK5Tbits_t C1MASK5Tbits __attribute__((address(0x1BB)));
# 20301 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ6 __attribute__((address(0x1BC)));

__asm("C1FLTOBJ6 equ 01BCh");




extern volatile unsigned char C1FLTOBJ6L __attribute__((address(0x1BC)));

__asm("C1FLTOBJ6L equ 01BCh");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ6Lbits_t;
extern volatile C1FLTOBJ6Lbits_t C1FLTOBJ6Lbits __attribute__((address(0x1BC)));
# 20378 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ6H __attribute__((address(0x1BD)));

__asm("C1FLTOBJ6H equ 01BDh");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ6Hbits_t;
extern volatile C1FLTOBJ6Hbits_t C1FLTOBJ6Hbits __attribute__((address(0x1BD)));
# 20454 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ6U __attribute__((address(0x1BE)));

__asm("C1FLTOBJ6U equ 01BEh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ6Ubits_t;
extern volatile C1FLTOBJ6Ubits_t C1FLTOBJ6Ubits __attribute__((address(0x1BE)));
# 20524 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ6T __attribute__((address(0x1BF)));

__asm("C1FLTOBJ6T equ 01BFh");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ6Tbits_t;
extern volatile C1FLTOBJ6Tbits_t C1FLTOBJ6Tbits __attribute__((address(0x1BF)));
# 20588 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK6 __attribute__((address(0x1C0)));

__asm("C1MASK6 equ 01C0h");




extern volatile unsigned char C1MASK6L __attribute__((address(0x1C0)));

__asm("C1MASK6L equ 01C0h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK6Lbits_t;
extern volatile C1MASK6Lbits_t C1MASK6Lbits __attribute__((address(0x1C0)));
# 20665 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK6H __attribute__((address(0x1C1)));

__asm("C1MASK6H equ 01C1h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK6Hbits_t;
extern volatile C1MASK6Hbits_t C1MASK6Hbits __attribute__((address(0x1C1)));
# 20741 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK6U __attribute__((address(0x1C2)));

__asm("C1MASK6U equ 01C2h");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK6Ubits_t;
extern volatile C1MASK6Ubits_t C1MASK6Ubits __attribute__((address(0x1C2)));
# 20811 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK6T __attribute__((address(0x1C3)));

__asm("C1MASK6T equ 01C3h");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK6Tbits_t;
extern volatile C1MASK6Tbits_t C1MASK6Tbits __attribute__((address(0x1C3)));
# 20875 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ7 __attribute__((address(0x1C4)));

__asm("C1FLTOBJ7 equ 01C4h");




extern volatile unsigned char C1FLTOBJ7L __attribute__((address(0x1C4)));

__asm("C1FLTOBJ7L equ 01C4h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ7Lbits_t;
extern volatile C1FLTOBJ7Lbits_t C1FLTOBJ7Lbits __attribute__((address(0x1C4)));
# 20952 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ7H __attribute__((address(0x1C5)));

__asm("C1FLTOBJ7H equ 01C5h");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ7Hbits_t;
extern volatile C1FLTOBJ7Hbits_t C1FLTOBJ7Hbits __attribute__((address(0x1C5)));
# 21028 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ7U __attribute__((address(0x1C6)));

__asm("C1FLTOBJ7U equ 01C6h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ7Ubits_t;
extern volatile C1FLTOBJ7Ubits_t C1FLTOBJ7Ubits __attribute__((address(0x1C6)));
# 21098 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ7T __attribute__((address(0x1C7)));

__asm("C1FLTOBJ7T equ 01C7h");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ7Tbits_t;
extern volatile C1FLTOBJ7Tbits_t C1FLTOBJ7Tbits __attribute__((address(0x1C7)));
# 21162 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK7 __attribute__((address(0x1C8)));

__asm("C1MASK7 equ 01C8h");




extern volatile unsigned char C1MASK7L __attribute__((address(0x1C8)));

__asm("C1MASK7L equ 01C8h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK7Lbits_t;
extern volatile C1MASK7Lbits_t C1MASK7Lbits __attribute__((address(0x1C8)));
# 21239 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK7H __attribute__((address(0x1C9)));

__asm("C1MASK7H equ 01C9h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK7Hbits_t;
extern volatile C1MASK7Hbits_t C1MASK7Hbits __attribute__((address(0x1C9)));
# 21315 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK7U __attribute__((address(0x1CA)));

__asm("C1MASK7U equ 01CAh");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK7Ubits_t;
extern volatile C1MASK7Ubits_t C1MASK7Ubits __attribute__((address(0x1CA)));
# 21385 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK7T __attribute__((address(0x1CB)));

__asm("C1MASK7T equ 01CBh");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK7Tbits_t;
extern volatile C1MASK7Tbits_t C1MASK7Tbits __attribute__((address(0x1CB)));
# 21449 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ8 __attribute__((address(0x1CC)));

__asm("C1FLTOBJ8 equ 01CCh");




extern volatile unsigned char C1FLTOBJ8L __attribute__((address(0x1CC)));

__asm("C1FLTOBJ8L equ 01CCh");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ8Lbits_t;
extern volatile C1FLTOBJ8Lbits_t C1FLTOBJ8Lbits __attribute__((address(0x1CC)));
# 21526 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ8H __attribute__((address(0x1CD)));

__asm("C1FLTOBJ8H equ 01CDh");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ8Hbits_t;
extern volatile C1FLTOBJ8Hbits_t C1FLTOBJ8Hbits __attribute__((address(0x1CD)));
# 21602 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ8U __attribute__((address(0x1CE)));

__asm("C1FLTOBJ8U equ 01CEh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ8Ubits_t;
extern volatile C1FLTOBJ8Ubits_t C1FLTOBJ8Ubits __attribute__((address(0x1CE)));
# 21672 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ8T __attribute__((address(0x1CF)));

__asm("C1FLTOBJ8T equ 01CFh");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ8Tbits_t;
extern volatile C1FLTOBJ8Tbits_t C1FLTOBJ8Tbits __attribute__((address(0x1CF)));
# 21736 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK8 __attribute__((address(0x1D0)));

__asm("C1MASK8 equ 01D0h");




extern volatile unsigned char C1MASK8L __attribute__((address(0x1D0)));

__asm("C1MASK8L equ 01D0h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK8Lbits_t;
extern volatile C1MASK8Lbits_t C1MASK8Lbits __attribute__((address(0x1D0)));
# 21813 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK8H __attribute__((address(0x1D1)));

__asm("C1MASK8H equ 01D1h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK8Hbits_t;
extern volatile C1MASK8Hbits_t C1MASK8Hbits __attribute__((address(0x1D1)));
# 21889 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK8U __attribute__((address(0x1D2)));

__asm("C1MASK8U equ 01D2h");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK8Ubits_t;
extern volatile C1MASK8Ubits_t C1MASK8Ubits __attribute__((address(0x1D2)));
# 21959 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK8T __attribute__((address(0x1D3)));

__asm("C1MASK8T equ 01D3h");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK8Tbits_t;
extern volatile C1MASK8Tbits_t C1MASK8Tbits __attribute__((address(0x1D3)));
# 22023 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ9 __attribute__((address(0x1D4)));

__asm("C1FLTOBJ9 equ 01D4h");




extern volatile unsigned char C1FLTOBJ9L __attribute__((address(0x1D4)));

__asm("C1FLTOBJ9L equ 01D4h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ9Lbits_t;
extern volatile C1FLTOBJ9Lbits_t C1FLTOBJ9Lbits __attribute__((address(0x1D4)));
# 22100 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ9H __attribute__((address(0x1D5)));

__asm("C1FLTOBJ9H equ 01D5h");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ9Hbits_t;
extern volatile C1FLTOBJ9Hbits_t C1FLTOBJ9Hbits __attribute__((address(0x1D5)));
# 22176 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ9U __attribute__((address(0x1D6)));

__asm("C1FLTOBJ9U equ 01D6h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ9Ubits_t;
extern volatile C1FLTOBJ9Ubits_t C1FLTOBJ9Ubits __attribute__((address(0x1D6)));
# 22246 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ9T __attribute__((address(0x1D7)));

__asm("C1FLTOBJ9T equ 01D7h");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ9Tbits_t;
extern volatile C1FLTOBJ9Tbits_t C1FLTOBJ9Tbits __attribute__((address(0x1D7)));
# 22310 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK9 __attribute__((address(0x1D8)));

__asm("C1MASK9 equ 01D8h");




extern volatile unsigned char C1MASK9L __attribute__((address(0x1D8)));

__asm("C1MASK9L equ 01D8h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK9Lbits_t;
extern volatile C1MASK9Lbits_t C1MASK9Lbits __attribute__((address(0x1D8)));
# 22387 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK9H __attribute__((address(0x1D9)));

__asm("C1MASK9H equ 01D9h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK9Hbits_t;
extern volatile C1MASK9Hbits_t C1MASK9Hbits __attribute__((address(0x1D9)));
# 22463 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK9U __attribute__((address(0x1DA)));

__asm("C1MASK9U equ 01DAh");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK9Ubits_t;
extern volatile C1MASK9Ubits_t C1MASK9Ubits __attribute__((address(0x1DA)));
# 22533 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK9T __attribute__((address(0x1DB)));

__asm("C1MASK9T equ 01DBh");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK9Tbits_t;
extern volatile C1MASK9Tbits_t C1MASK9Tbits __attribute__((address(0x1DB)));
# 22597 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ10 __attribute__((address(0x1DC)));

__asm("C1FLTOBJ10 equ 01DCh");




extern volatile unsigned char C1FLTOBJ10L __attribute__((address(0x1DC)));

__asm("C1FLTOBJ10L equ 01DCh");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ10Lbits_t;
extern volatile C1FLTOBJ10Lbits_t C1FLTOBJ10Lbits __attribute__((address(0x1DC)));
# 22674 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ10H __attribute__((address(0x1DD)));

__asm("C1FLTOBJ10H equ 01DDh");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ10Hbits_t;
extern volatile C1FLTOBJ10Hbits_t C1FLTOBJ10Hbits __attribute__((address(0x1DD)));
# 22750 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ10U __attribute__((address(0x1DE)));

__asm("C1FLTOBJ10U equ 01DEh");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ10Ubits_t;
extern volatile C1FLTOBJ10Ubits_t C1FLTOBJ10Ubits __attribute__((address(0x1DE)));
# 22820 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ10T __attribute__((address(0x1DF)));

__asm("C1FLTOBJ10T equ 01DFh");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ10Tbits_t;
extern volatile C1FLTOBJ10Tbits_t C1FLTOBJ10Tbits __attribute__((address(0x1DF)));
# 22884 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK10 __attribute__((address(0x1E0)));

__asm("C1MASK10 equ 01E0h");




extern volatile unsigned char C1MASK10L __attribute__((address(0x1E0)));

__asm("C1MASK10L equ 01E0h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK10Lbits_t;
extern volatile C1MASK10Lbits_t C1MASK10Lbits __attribute__((address(0x1E0)));
# 22961 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK10H __attribute__((address(0x1E1)));

__asm("C1MASK10H equ 01E1h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK10Hbits_t;
extern volatile C1MASK10Hbits_t C1MASK10Hbits __attribute__((address(0x1E1)));
# 23037 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK10U __attribute__((address(0x1E2)));

__asm("C1MASK10U equ 01E2h");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK10Ubits_t;
extern volatile C1MASK10Ubits_t C1MASK10Ubits __attribute__((address(0x1E2)));
# 23107 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK10T __attribute__((address(0x1E3)));

__asm("C1MASK10T equ 01E3h");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK10Tbits_t;
extern volatile C1MASK10Tbits_t C1MASK10Tbits __attribute__((address(0x1E3)));
# 23171 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1FLTOBJ11 __attribute__((address(0x1E4)));

__asm("C1FLTOBJ11 equ 01E4h");




extern volatile unsigned char C1FLTOBJ11L __attribute__((address(0x1E4)));

__asm("C1FLTOBJ11L equ 01E4h");


typedef union {
    struct {
        unsigned SID :8;
    };
    struct {
        unsigned SID0 :1;
        unsigned SID1 :1;
        unsigned SID2 :1;
        unsigned SID3 :1;
        unsigned SID4 :1;
        unsigned SID5 :1;
        unsigned SID6 :1;
        unsigned SID7 :1;
    };
} C1FLTOBJ11Lbits_t;
extern volatile C1FLTOBJ11Lbits_t C1FLTOBJ11Lbits __attribute__((address(0x1E4)));
# 23248 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ11H __attribute__((address(0x1E5)));

__asm("C1FLTOBJ11H equ 01E5h");


typedef union {
    struct {
        unsigned SID :3;
        unsigned EID :5;
    };
    struct {
        unsigned SID8 :1;
        unsigned SID9 :1;
        unsigned SID10 :1;
        unsigned EID0 :1;
        unsigned EID1 :1;
        unsigned EID2 :1;
        unsigned EID3 :1;
        unsigned EID4 :1;
    };
} C1FLTOBJ11Hbits_t;
extern volatile C1FLTOBJ11Hbits_t C1FLTOBJ11Hbits __attribute__((address(0x1E5)));
# 23324 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ11U __attribute__((address(0x1E6)));

__asm("C1FLTOBJ11U equ 01E6h");


typedef union {
    struct {
        unsigned EID :8;
    };
    struct {
        unsigned EID5 :1;
        unsigned EID6 :1;
        unsigned EID7 :1;
        unsigned EID8 :1;
        unsigned EID9 :1;
        unsigned EID10 :1;
        unsigned EID11 :1;
        unsigned EID12 :1;
    };
} C1FLTOBJ11Ubits_t;
extern volatile C1FLTOBJ11Ubits_t C1FLTOBJ11Ubits __attribute__((address(0x1E6)));
# 23394 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1FLTOBJ11T __attribute__((address(0x1E7)));

__asm("C1FLTOBJ11T equ 01E7h");


typedef union {
    struct {
        unsigned EID :5;
        unsigned SID11 :1;
        unsigned EXIDE :1;
    };
    struct {
        unsigned EID13 :1;
        unsigned EID14 :1;
        unsigned EID15 :1;
        unsigned EID16 :1;
        unsigned EID17 :1;
    };
} C1FLTOBJ11Tbits_t;
extern volatile C1FLTOBJ11Tbits_t C1FLTOBJ11Tbits __attribute__((address(0x1E7)));
# 23458 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long C1MASK11 __attribute__((address(0x1E8)));

__asm("C1MASK11 equ 01E8h");




extern volatile unsigned char C1MASK11L __attribute__((address(0x1E8)));

__asm("C1MASK11L equ 01E8h");


typedef union {
    struct {
        unsigned MSID :8;
    };
    struct {
        unsigned MSID0 :1;
        unsigned MSID1 :1;
        unsigned MSID2 :1;
        unsigned MSID3 :1;
        unsigned MSID4 :1;
        unsigned MSID5 :1;
        unsigned MSID6 :1;
        unsigned MSID7 :1;
    };
} C1MASK11Lbits_t;
extern volatile C1MASK11Lbits_t C1MASK11Lbits __attribute__((address(0x1E8)));
# 23535 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK11H __attribute__((address(0x1E9)));

__asm("C1MASK11H equ 01E9h");


typedef union {
    struct {
        unsigned MSID :3;
        unsigned MEID :5;
    };
    struct {
        unsigned MSID8 :1;
        unsigned MSID9 :1;
        unsigned MSID10 :1;
        unsigned MEID0 :1;
        unsigned MEID1 :1;
        unsigned MEID2 :1;
        unsigned MEID3 :1;
        unsigned MEID4 :1;
    };
} C1MASK11Hbits_t;
extern volatile C1MASK11Hbits_t C1MASK11Hbits __attribute__((address(0x1E9)));
# 23611 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK11U __attribute__((address(0x1EA)));

__asm("C1MASK11U equ 01EAh");


typedef union {
    struct {
        unsigned MEID :8;
    };
    struct {
        unsigned MEID5 :1;
        unsigned MEID6 :1;
        unsigned MEID7 :1;
        unsigned MEID8 :1;
        unsigned MEID9 :1;
        unsigned MEID10 :1;
        unsigned MEID11 :1;
        unsigned MEID12 :1;
    };
} C1MASK11Ubits_t;
extern volatile C1MASK11Ubits_t C1MASK11Ubits __attribute__((address(0x1EA)));
# 23681 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char C1MASK11T __attribute__((address(0x1EB)));

__asm("C1MASK11T equ 01EBh");


typedef union {
    struct {
        unsigned MEID :5;
        unsigned MSID11 :1;
        unsigned MIDE :1;
    };
    struct {
        unsigned MEID13 :1;
        unsigned MEID14 :1;
        unsigned MEID15 :1;
        unsigned MEID16 :1;
        unsigned MEID17 :1;
    };
} C1MASK11Tbits_t;
extern volatile C1MASK11Tbits_t C1MASK11Tbits __attribute__((address(0x1EB)));
# 23745 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PPSLOCK __attribute__((address(0x200)));

__asm("PPSLOCK equ 0200h");


typedef union {
    struct {
        unsigned PPSLOCKED :1;
    };
} PPSLOCKbits_t;
extern volatile PPSLOCKbits_t PPSLOCKbits __attribute__((address(0x200)));
# 23765 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RA0PPS __attribute__((address(0x201)));

__asm("RA0PPS equ 0201h");


typedef union {
    struct {
        unsigned RA0PPS0 :1;
        unsigned RA0PPS1 :1;
        unsigned RA0PPS2 :1;
        unsigned RA0PPS3 :1;
        unsigned RA0PPS4 :1;
        unsigned RA0PPS5 :1;
    };
} RA0PPSbits_t;
extern volatile RA0PPSbits_t RA0PPSbits __attribute__((address(0x201)));
# 23815 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RA1PPS __attribute__((address(0x202)));

__asm("RA1PPS equ 0202h");


typedef union {
    struct {
        unsigned RA1PPS0 :1;
        unsigned RA1PPS1 :1;
        unsigned RA1PPS2 :1;
        unsigned RA1PPS3 :1;
        unsigned RA1PPS4 :1;
        unsigned RA1PPS5 :1;
    };
} RA1PPSbits_t;
extern volatile RA1PPSbits_t RA1PPSbits __attribute__((address(0x202)));
# 23865 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RA2PPS __attribute__((address(0x203)));

__asm("RA2PPS equ 0203h");


typedef union {
    struct {
        unsigned RA2PPS0 :1;
        unsigned RA2PPS1 :1;
        unsigned RA2PPS2 :1;
        unsigned RA2PPS3 :1;
        unsigned RA2PPS4 :1;
        unsigned RA2PPS5 :1;
    };
} RA2PPSbits_t;
extern volatile RA2PPSbits_t RA2PPSbits __attribute__((address(0x203)));
# 23915 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RA3PPS __attribute__((address(0x204)));

__asm("RA3PPS equ 0204h");


typedef union {
    struct {
        unsigned RA3PPS0 :1;
        unsigned RA3PPS1 :1;
        unsigned RA3PPS2 :1;
        unsigned RA3PPS3 :1;
        unsigned RA3PPS4 :1;
        unsigned RA3PPS5 :1;
    };
} RA3PPSbits_t;
extern volatile RA3PPSbits_t RA3PPSbits __attribute__((address(0x204)));
# 23965 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RA4PPS __attribute__((address(0x205)));

__asm("RA4PPS equ 0205h");


typedef union {
    struct {
        unsigned RA4PPS0 :1;
        unsigned RA4PPS1 :1;
        unsigned RA4PPS2 :1;
        unsigned RA4PPS3 :1;
        unsigned RA4PPS4 :1;
        unsigned RA4PPS5 :1;
    };
} RA4PPSbits_t;
extern volatile RA4PPSbits_t RA4PPSbits __attribute__((address(0x205)));
# 24015 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RA5PPS __attribute__((address(0x206)));

__asm("RA5PPS equ 0206h");


typedef union {
    struct {
        unsigned RA5PPS0 :1;
        unsigned RA5PPS1 :1;
        unsigned RA5PPS2 :1;
        unsigned RA5PPS3 :1;
        unsigned RA5PPS4 :1;
        unsigned RA5PPS5 :1;
    };
} RA5PPSbits_t;
extern volatile RA5PPSbits_t RA5PPSbits __attribute__((address(0x206)));
# 24065 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RA6PPS __attribute__((address(0x207)));

__asm("RA6PPS equ 0207h");


typedef union {
    struct {
        unsigned RA6PPS0 :1;
        unsigned RA6PPS1 :1;
        unsigned RA6PPS2 :1;
        unsigned RA6PPS3 :1;
        unsigned RA6PPS4 :1;
        unsigned RA6PPS5 :1;
    };
} RA6PPSbits_t;
extern volatile RA6PPSbits_t RA6PPSbits __attribute__((address(0x207)));
# 24115 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RA7PPS __attribute__((address(0x208)));

__asm("RA7PPS equ 0208h");


typedef union {
    struct {
        unsigned RA7PPS0 :1;
        unsigned RA7PPS1 :1;
        unsigned RA7PPS2 :1;
        unsigned RA7PPS3 :1;
        unsigned RA7PPS4 :1;
        unsigned RA7PPS5 :1;
    };
} RA7PPSbits_t;
extern volatile RA7PPSbits_t RA7PPSbits __attribute__((address(0x208)));
# 24165 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB0PPS __attribute__((address(0x209)));

__asm("RB0PPS equ 0209h");


typedef union {
    struct {
        unsigned RB0PPS0 :1;
        unsigned RB0PPS1 :1;
        unsigned RB0PPS2 :1;
        unsigned RB0PPS3 :1;
        unsigned RB0PPS4 :1;
        unsigned RB0PPS5 :1;
    };
} RB0PPSbits_t;
extern volatile RB0PPSbits_t RB0PPSbits __attribute__((address(0x209)));
# 24215 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB1PPS __attribute__((address(0x20A)));

__asm("RB1PPS equ 020Ah");


typedef union {
    struct {
        unsigned RB1PPS0 :1;
        unsigned RB1PPS1 :1;
        unsigned RB1PPS2 :1;
        unsigned RB1PPS3 :1;
        unsigned RB1PPS4 :1;
        unsigned RB1PPS5 :1;
    };
} RB1PPSbits_t;
extern volatile RB1PPSbits_t RB1PPSbits __attribute__((address(0x20A)));
# 24265 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB2PPS __attribute__((address(0x20B)));

__asm("RB2PPS equ 020Bh");


typedef union {
    struct {
        unsigned RB2PPS0 :1;
        unsigned RB2PPS1 :1;
        unsigned RB2PPS2 :1;
        unsigned RB2PPS3 :1;
        unsigned RB2PPS4 :1;
        unsigned RB2PPS5 :1;
    };
} RB2PPSbits_t;
extern volatile RB2PPSbits_t RB2PPSbits __attribute__((address(0x20B)));
# 24315 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB3PPS __attribute__((address(0x20C)));

__asm("RB3PPS equ 020Ch");


typedef union {
    struct {
        unsigned RB3PPS0 :1;
        unsigned RB3PPS1 :1;
        unsigned RB3PPS2 :1;
        unsigned RB3PPS3 :1;
        unsigned RB3PPS4 :1;
        unsigned RB3PPS5 :1;
    };
} RB3PPSbits_t;
extern volatile RB3PPSbits_t RB3PPSbits __attribute__((address(0x20C)));
# 24365 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB4PPS __attribute__((address(0x20D)));

__asm("RB4PPS equ 020Dh");


typedef union {
    struct {
        unsigned RB4PPS0 :1;
        unsigned RB4PPS1 :1;
        unsigned RB4PPS2 :1;
        unsigned RB4PPS3 :1;
        unsigned RB4PPS4 :1;
        unsigned RB4PPS5 :1;
    };
} RB4PPSbits_t;
extern volatile RB4PPSbits_t RB4PPSbits __attribute__((address(0x20D)));
# 24415 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB5PPS __attribute__((address(0x20E)));

__asm("RB5PPS equ 020Eh");


typedef union {
    struct {
        unsigned RB5PPS0 :1;
        unsigned RB5PPS1 :1;
        unsigned RB5PPS2 :1;
        unsigned RB5PPS3 :1;
        unsigned RB5PPS4 :1;
        unsigned RB5PPS5 :1;
    };
} RB5PPSbits_t;
extern volatile RB5PPSbits_t RB5PPSbits __attribute__((address(0x20E)));
# 24465 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB6PPS __attribute__((address(0x20F)));

__asm("RB6PPS equ 020Fh");


typedef union {
    struct {
        unsigned RB6PPS0 :1;
        unsigned RB6PPS1 :1;
        unsigned RB6PPS2 :1;
        unsigned RB6PPS3 :1;
        unsigned RB6PPS4 :1;
        unsigned RB6PPS5 :1;
    };
} RB6PPSbits_t;
extern volatile RB6PPSbits_t RB6PPSbits __attribute__((address(0x20F)));
# 24515 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB7PPS __attribute__((address(0x210)));

__asm("RB7PPS equ 0210h");


typedef union {
    struct {
        unsigned RB7PPS0 :1;
        unsigned RB7PPS1 :1;
        unsigned RB7PPS2 :1;
        unsigned RB7PPS3 :1;
        unsigned RB7PPS4 :1;
        unsigned RB7PPS5 :1;
    };
} RB7PPSbits_t;
extern volatile RB7PPSbits_t RB7PPSbits __attribute__((address(0x210)));
# 24565 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC0PPS __attribute__((address(0x211)));

__asm("RC0PPS equ 0211h");


typedef union {
    struct {
        unsigned RC0PPS0 :1;
        unsigned RC0PPS1 :1;
        unsigned RC0PPS2 :1;
        unsigned RC0PPS3 :1;
        unsigned RC0PPS4 :1;
        unsigned RC0PPS5 :1;
    };
} RC0PPSbits_t;
extern volatile RC0PPSbits_t RC0PPSbits __attribute__((address(0x211)));
# 24615 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC1PPS __attribute__((address(0x212)));

__asm("RC1PPS equ 0212h");


typedef union {
    struct {
        unsigned RC1PPS0 :1;
        unsigned RC1PPS1 :1;
        unsigned RC1PPS2 :1;
        unsigned RC1PPS3 :1;
        unsigned RC1PPS4 :1;
        unsigned RC1PPS5 :1;
    };
} RC1PPSbits_t;
extern volatile RC1PPSbits_t RC1PPSbits __attribute__((address(0x212)));
# 24665 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC2PPS __attribute__((address(0x213)));

__asm("RC2PPS equ 0213h");


typedef union {
    struct {
        unsigned RC2PPS0 :1;
        unsigned RC2PPS1 :1;
        unsigned RC2PPS2 :1;
        unsigned RC2PPS3 :1;
        unsigned RC2PPS4 :1;
        unsigned RC2PPS5 :1;
    };
} RC2PPSbits_t;
extern volatile RC2PPSbits_t RC2PPSbits __attribute__((address(0x213)));
# 24715 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC3PPS __attribute__((address(0x214)));

__asm("RC3PPS equ 0214h");


typedef union {
    struct {
        unsigned RC3PPS0 :1;
        unsigned RC3PPS1 :1;
        unsigned RC3PPS2 :1;
        unsigned RC3PPS3 :1;
        unsigned RC3PPS4 :1;
        unsigned RC3PPS5 :1;
    };
} RC3PPSbits_t;
extern volatile RC3PPSbits_t RC3PPSbits __attribute__((address(0x214)));
# 24765 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC4PPS __attribute__((address(0x215)));

__asm("RC4PPS equ 0215h");


typedef union {
    struct {
        unsigned RC4PPS0 :1;
        unsigned RC4PPS1 :1;
        unsigned RC4PPS2 :1;
        unsigned RC4PPS3 :1;
        unsigned RC4PPS4 :1;
        unsigned RC4PPS5 :1;
    };
} RC4PPSbits_t;
extern volatile RC4PPSbits_t RC4PPSbits __attribute__((address(0x215)));
# 24815 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC5PPS __attribute__((address(0x216)));

__asm("RC5PPS equ 0216h");


typedef union {
    struct {
        unsigned RC5PPS0 :1;
        unsigned RC5PPS1 :1;
        unsigned RC5PPS2 :1;
        unsigned RC5PPS3 :1;
        unsigned RC5PPS4 :1;
        unsigned RC5PPS5 :1;
    };
} RC5PPSbits_t;
extern volatile RC5PPSbits_t RC5PPSbits __attribute__((address(0x216)));
# 24865 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC6PPS __attribute__((address(0x217)));

__asm("RC6PPS equ 0217h");


typedef union {
    struct {
        unsigned RC6PPS0 :1;
        unsigned RC6PPS1 :1;
        unsigned RC6PPS2 :1;
        unsigned RC6PPS3 :1;
        unsigned RC6PPS4 :1;
        unsigned RC6PPS5 :1;
    };
} RC6PPSbits_t;
extern volatile RC6PPSbits_t RC6PPSbits __attribute__((address(0x217)));
# 24915 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC7PPS __attribute__((address(0x218)));

__asm("RC7PPS equ 0218h");


typedef union {
    struct {
        unsigned RC7PPS0 :1;
        unsigned RC7PPS1 :1;
        unsigned RC7PPS2 :1;
        unsigned RC7PPS3 :1;
        unsigned RC7PPS4 :1;
        unsigned RC7PPS5 :1;
    };
} RC7PPSbits_t;
extern volatile RC7PPSbits_t RC7PPSbits __attribute__((address(0x218)));
# 24965 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RD0PPS __attribute__((address(0x219)));

__asm("RD0PPS equ 0219h");


typedef union {
    struct {
        unsigned RD0PPS0 :1;
        unsigned RD0PPS1 :1;
        unsigned RD0PPS2 :1;
        unsigned RD0PPS3 :1;
        unsigned RD0PPS4 :1;
        unsigned RD0PPS5 :1;
    };
} RD0PPSbits_t;
extern volatile RD0PPSbits_t RD0PPSbits __attribute__((address(0x219)));
# 25015 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RD1PPS __attribute__((address(0x21A)));

__asm("RD1PPS equ 021Ah");


typedef union {
    struct {
        unsigned RD1PPS0 :1;
        unsigned RD1PPS1 :1;
        unsigned RD1PPS2 :1;
        unsigned RD1PPS3 :1;
        unsigned RD1PPS4 :1;
        unsigned RD1PPS5 :1;
    };
} RD1PPSbits_t;
extern volatile RD1PPSbits_t RD1PPSbits __attribute__((address(0x21A)));
# 25065 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RD2PPS __attribute__((address(0x21B)));

__asm("RD2PPS equ 021Bh");


typedef union {
    struct {
        unsigned RD2PPS0 :1;
        unsigned RD2PPS1 :1;
        unsigned RD2PPS2 :1;
        unsigned RD2PPS3 :1;
        unsigned RD2PPS4 :1;
        unsigned RD2PPS5 :1;
    };
} RD2PPSbits_t;
extern volatile RD2PPSbits_t RD2PPSbits __attribute__((address(0x21B)));
# 25115 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RD3PPS __attribute__((address(0x21C)));

__asm("RD3PPS equ 021Ch");


typedef union {
    struct {
        unsigned RD3PPS0 :1;
        unsigned RD3PPS1 :1;
        unsigned RD3PPS2 :1;
        unsigned RD3PPS3 :1;
        unsigned RD3PPS4 :1;
        unsigned RD3PPS5 :1;
    };
} RD3PPSbits_t;
extern volatile RD3PPSbits_t RD3PPSbits __attribute__((address(0x21C)));
# 25165 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RD4PPS __attribute__((address(0x21D)));

__asm("RD4PPS equ 021Dh");


typedef union {
    struct {
        unsigned RD4PPS0 :1;
        unsigned RD4PPS1 :1;
        unsigned RD4PPS2 :1;
        unsigned RD4PPS3 :1;
        unsigned RD4PPS4 :1;
        unsigned RD4PPS5 :1;
    };
} RD4PPSbits_t;
extern volatile RD4PPSbits_t RD4PPSbits __attribute__((address(0x21D)));
# 25215 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RD5PPS __attribute__((address(0x21E)));

__asm("RD5PPS equ 021Eh");


typedef union {
    struct {
        unsigned RD5PPS0 :1;
        unsigned RD5PPS1 :1;
        unsigned RD5PPS2 :1;
        unsigned RD5PPS3 :1;
        unsigned RD5PPS4 :1;
        unsigned RD5PPS5 :1;
    };
} RD5PPSbits_t;
extern volatile RD5PPSbits_t RD5PPSbits __attribute__((address(0x21E)));
# 25265 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RD6PPS __attribute__((address(0x21F)));

__asm("RD6PPS equ 021Fh");


typedef union {
    struct {
        unsigned RD6PPS0 :1;
        unsigned RD6PPS1 :1;
        unsigned RD6PPS2 :1;
        unsigned RD6PPS3 :1;
        unsigned RD6PPS4 :1;
        unsigned RD6PPS5 :1;
    };
} RD6PPSbits_t;
extern volatile RD6PPSbits_t RD6PPSbits __attribute__((address(0x21F)));
# 25315 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RD7PPS __attribute__((address(0x220)));

__asm("RD7PPS equ 0220h");


typedef union {
    struct {
        unsigned RD7PPS0 :1;
        unsigned RD7PPS1 :1;
        unsigned RD7PPS2 :1;
        unsigned RD7PPS3 :1;
        unsigned RD7PPS4 :1;
        unsigned RD7PPS5 :1;
    };
} RD7PPSbits_t;
extern volatile RD7PPSbits_t RD7PPSbits __attribute__((address(0x220)));
# 25365 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RE0PPS __attribute__((address(0x221)));

__asm("RE0PPS equ 0221h");


typedef union {
    struct {
        unsigned RE0PPS0 :1;
        unsigned RE0PPS1 :1;
        unsigned RE0PPS2 :1;
        unsigned RE0PPS3 :1;
        unsigned RE0PPS4 :1;
        unsigned RE0PPS5 :1;
    };
} RE0PPSbits_t;
extern volatile RE0PPSbits_t RE0PPSbits __attribute__((address(0x221)));
# 25415 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RE1PPS __attribute__((address(0x222)));

__asm("RE1PPS equ 0222h");


typedef union {
    struct {
        unsigned RE1PPS0 :1;
        unsigned RE1PPS1 :1;
        unsigned RE1PPS2 :1;
        unsigned RE1PPS3 :1;
        unsigned RE1PPS4 :1;
        unsigned RE1PPS5 :1;
    };
} RE1PPSbits_t;
extern volatile RE1PPSbits_t RE1PPSbits __attribute__((address(0x222)));
# 25465 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RE2PPS __attribute__((address(0x223)));

__asm("RE2PPS equ 0223h");


typedef union {
    struct {
        unsigned RE2PPS0 :1;
        unsigned RE2PPS1 :1;
        unsigned RE2PPS2 :1;
        unsigned RE2PPS3 :1;
        unsigned RE2PPS4 :1;
        unsigned RE2PPS5 :1;
    };
} RE2PPSbits_t;
extern volatile RE2PPSbits_t RE2PPSbits __attribute__((address(0x223)));
# 25515 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CANRXPPS __attribute__((address(0x23D)));

__asm("CANRXPPS equ 023Dh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CANRXPPS0 :1;
        unsigned CANRXPPS1 :1;
        unsigned CANRXPPS2 :1;
        unsigned CANRXPPS3 :1;
        unsigned CANRXPPS4 :1;
    };
    struct {
        unsigned CANRXPPS :5;
    };
} CANRXPPSbits_t;
extern volatile CANRXPPSbits_t CANRXPPSbits __attribute__((address(0x23D)));
# 25581 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INT0PPS __attribute__((address(0x23E)));

__asm("INT0PPS equ 023Eh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :1;
    };
    struct {
        unsigned INT0PPS0 :1;
        unsigned INT0PPS1 :1;
        unsigned INT0PPS2 :1;
        unsigned INT0PPS3 :1;
    };
    struct {
        unsigned INT0PPS :4;
    };
} INT0PPSbits_t;
extern volatile INT0PPSbits_t INT0PPSbits __attribute__((address(0x23E)));
# 25641 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INT1PPS __attribute__((address(0x23F)));

__asm("INT1PPS equ 023Fh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned INT1PPS0 :1;
        unsigned INT1PPS1 :1;
        unsigned INT1PPS2 :1;
        unsigned INT1PPS3 :1;
        unsigned INT1PPS4 :1;
    };
    struct {
        unsigned INT1PPS :5;
    };
} INT1PPSbits_t;
extern volatile INT1PPSbits_t INT1PPSbits __attribute__((address(0x23F)));
# 25707 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INT2PPS __attribute__((address(0x240)));

__asm("INT2PPS equ 0240h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned INT2PPS0 :1;
        unsigned INT2PPS1 :1;
        unsigned INT2PPS2 :1;
        unsigned INT2PPS3 :1;
        unsigned INT2PPS4 :1;
        unsigned INT2PPS5 :1;
    };
    struct {
        unsigned INT2PPS :6;
    };
} INT2PPSbits_t;
extern volatile INT2PPSbits_t INT2PPSbits __attribute__((address(0x240)));
# 25779 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T0CKIPPS __attribute__((address(0x241)));

__asm("T0CKIPPS equ 0241h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned T0CKIPPS :6;
    };
    struct {
        unsigned T0CKIPPS0 :1;
        unsigned T0CKIPPS1 :1;
        unsigned T0CKIPPS2 :1;
        unsigned T0CKIPPS3 :1;
        unsigned T0CKIPPS4 :1;
        unsigned T0CKIPPS5 :1;
    };
} T0CKIPPSbits_t;
extern volatile T0CKIPPSbits_t T0CKIPPSbits __attribute__((address(0x241)));
# 25851 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T1CKIPPS __attribute__((address(0x242)));

__asm("T1CKIPPS equ 0242h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned T1CKIPPS0 :1;
        unsigned T1CKIPPS1 :1;
        unsigned T1CKIPPS2 :1;
        unsigned T1CKIPPS3 :1;
        unsigned T1CKIPPS4 :1;
        unsigned T1CKIPPS5 :1;
    };
    struct {
        unsigned T1CKIPPS :6;
    };
} T1CKIPPSbits_t;
extern volatile T1CKIPPSbits_t T1CKIPPSbits __attribute__((address(0x242)));
# 25923 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T1GPPS __attribute__((address(0x243)));

__asm("T1GPPS equ 0243h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T1GPPS0 :1;
        unsigned T1GPPS1 :1;
        unsigned T1GPPS2 :1;
        unsigned T1GPPS3 :1;
        unsigned T1GPPS4 :1;
    };
    struct {
        unsigned T1GPPS :5;
    };
} T1GPPSbits_t;
extern volatile T1GPPSbits_t T1GPPSbits __attribute__((address(0x243)));
# 25989 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T3CKIPPS __attribute__((address(0x244)));

__asm("T3CKIPPS equ 0244h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned T3CKIPPS0 :1;
        unsigned T3CKIPPS1 :1;
        unsigned T3CKIPPS2 :1;
        unsigned T3CKIPPS3 :1;
        unsigned T3CKIPPS4 :1;
        unsigned T3CKIPPS5 :1;
    };
    struct {
        unsigned T3CKIPPS :6;
    };
} T3CKIPPSbits_t;
extern volatile T3CKIPPSbits_t T3CKIPPSbits __attribute__((address(0x244)));
# 26061 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T3GPPS __attribute__((address(0x245)));

__asm("T3GPPS equ 0245h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T3GPPS0 :1;
        unsigned T3GPPS1 :1;
        unsigned T3GPPS2 :1;
        unsigned T3GPPS3 :1;
        unsigned T3GPPS4 :1;
    };
    struct {
        unsigned T3GPPS :5;
    };
} T3GPPSbits_t;
extern volatile T3GPPSbits_t T3GPPSbits __attribute__((address(0x245)));
# 26127 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T5CKIPPS __attribute__((address(0x246)));

__asm("T5CKIPPS equ 0246h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned T5CKIPPS0 :1;
        unsigned T5CKIPPS1 :1;
        unsigned T5CKIPPS2 :1;
        unsigned T5CKIPPS3 :1;
        unsigned T5CKIPPS4 :1;
        unsigned T5CKIPPS5 :1;
    };
    struct {
        unsigned T5CKIPPS :6;
    };
} T5CKIPPSbits_t;
extern volatile T5CKIPPSbits_t T5CKIPPSbits __attribute__((address(0x246)));
# 26199 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T5GPPS __attribute__((address(0x247)));

__asm("T5GPPS equ 0247h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T5GPPS0 :1;
        unsigned T5GPPS1 :1;
        unsigned T5GPPS2 :1;
        unsigned T5GPPS3 :1;
        unsigned T5GPPS4 :1;
    };
    struct {
        unsigned T5GPPS :5;
    };
} T5GPPSbits_t;
extern volatile T5GPPSbits_t T5GPPSbits __attribute__((address(0x247)));
# 26265 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T2INPPS __attribute__((address(0x248)));

__asm("T2INPPS equ 0248h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T2INPPS0 :1;
        unsigned T2INPPS1 :1;
        unsigned T2INPPS2 :1;
        unsigned T2INPPS3 :1;
        unsigned T2INPPS4 :1;
    };
    struct {
        unsigned T2INPPS :5;
    };
} T2INPPSbits_t;
extern volatile T2INPPSbits_t T2INPPSbits __attribute__((address(0x248)));
# 26331 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T4INPPS __attribute__((address(0x249)));

__asm("T4INPPS equ 0249h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T4INPPS0 :1;
        unsigned T4INPPS1 :1;
        unsigned T4INPPS2 :1;
        unsigned T4INPPS3 :1;
        unsigned T4INPPS4 :1;
    };
    struct {
        unsigned T4INPPS :5;
    };
} T4INPPSbits_t;
extern volatile T4INPPSbits_t T4INPPSbits __attribute__((address(0x249)));
# 26397 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T6INPPS __attribute__((address(0x24A)));

__asm("T6INPPS equ 024Ah");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned T6INPPS0 :1;
        unsigned T6INPPS1 :1;
        unsigned T6INPPS2 :1;
        unsigned T6INPPS3 :1;
        unsigned T6INPPS4 :1;
    };
    struct {
        unsigned T6INPPS :5;
    };
} T6INPPSbits_t;
extern volatile T6INPPSbits_t T6INPPSbits __attribute__((address(0x24A)));
# 26463 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TUIN0PPS __attribute__((address(0x24B)));

__asm("TUIN0PPS equ 024Bh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned TUIN0PPS :6;
    };
    struct {
        unsigned TUIN0PPS0 :1;
        unsigned TUIN0PPS1 :1;
        unsigned TUIN0PPS2 :1;
        unsigned TUIN0PPS3 :1;
        unsigned TUIN0PPS4 :1;
        unsigned TUIN0PPS5 :1;
    };
} TUIN0PPSbits_t;
extern volatile TUIN0PPSbits_t TUIN0PPSbits __attribute__((address(0x24B)));
# 26535 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TUIN1PPS __attribute__((address(0x24C)));

__asm("TUIN1PPS equ 024Ch");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned TUIN1PPS :6;
    };
    struct {
        unsigned TUIN1PPS0 :1;
        unsigned TUIN1PPS1 :1;
        unsigned TUIN1PPS2 :1;
        unsigned TUIN1PPS3 :1;
        unsigned TUIN1PPS4 :1;
        unsigned TUIN1PPS5 :1;
    };
} TUIN1PPSbits_t;
extern volatile TUIN1PPSbits_t TUIN1PPSbits __attribute__((address(0x24C)));
# 26607 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP1PPS __attribute__((address(0x24F)));

__asm("CCP1PPS equ 024Fh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned CCP1PPS0 :1;
        unsigned CCP1PPS1 :1;
        unsigned CCP1PPS2 :1;
        unsigned CCP1PPS3 :1;
        unsigned CCP1PPS4 :1;
        unsigned CCP1PPS5 :1;
    };
    struct {
        unsigned CCP1PPS :6;
    };
} CCP1PPSbits_t;
extern volatile CCP1PPSbits_t CCP1PPSbits __attribute__((address(0x24F)));
# 26679 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP2PPS __attribute__((address(0x250)));

__asm("CCP2PPS equ 0250h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned CCP2PPS0 :1;
        unsigned CCP2PPS1 :1;
        unsigned CCP2PPS2 :1;
        unsigned CCP2PPS3 :1;
        unsigned CCP2PPS4 :1;
        unsigned CCP2PPS5 :1;
    };
    struct {
        unsigned CCP2PPS :6;
    };
} CCP2PPSbits_t;
extern volatile CCP2PPSbits_t CCP2PPSbits __attribute__((address(0x250)));
# 26751 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP3PPS __attribute__((address(0x251)));

__asm("CCP3PPS equ 0251h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CCP3PPS0 :1;
        unsigned CCP3PPS1 :1;
        unsigned CCP3PPS2 :1;
        unsigned CCP3PPS3 :1;
        unsigned CCP3PPS4 :1;
    };
    struct {
        unsigned CCP3PPS :5;
    };
} CCP3PPSbits_t;
extern volatile CCP3PPSbits_t CCP3PPSbits __attribute__((address(0x251)));
# 26817 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1ERSPPS __attribute__((address(0x253)));

__asm("PWM1ERSPPS equ 0253h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned PWM1ERSPPS :5;
    };
    struct {
        unsigned PWM1ERSPPS0 :1;
        unsigned PWM1ERSPPS1 :1;
        unsigned PWM1ERSPPS2 :1;
        unsigned PWM1ERSPPS3 :1;
        unsigned PWM1ERSPPS4 :1;
    };
} PWM1ERSPPSbits_t;
extern volatile PWM1ERSPPSbits_t PWM1ERSPPSbits __attribute__((address(0x253)));
# 26883 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2ERSPPS __attribute__((address(0x254)));

__asm("PWM2ERSPPS equ 0254h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned PWM2ERSPPS :6;
    };
    struct {
        unsigned PWM2ERSPPS0 :1;
        unsigned PWM2ERSPPS1 :1;
        unsigned PWM2ERSPPS2 :1;
        unsigned PWM2ERSPPS3 :1;
        unsigned PWM2ERSPPS4 :1;
        unsigned PWM2ERSPPS5 :1;
    };
} PWM2ERSPPSbits_t;
extern volatile PWM2ERSPPSbits_t PWM2ERSPPSbits __attribute__((address(0x254)));
# 26955 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3ERSPPS __attribute__((address(0x255)));

__asm("PWM3ERSPPS equ 0255h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned PWM3ERSPPS :5;
    };
    struct {
        unsigned PWM3ERSPPS0 :1;
        unsigned PWM3ERSPPS1 :1;
        unsigned PWM3ERSPPS2 :1;
        unsigned PWM3ERSPPS3 :1;
        unsigned PWM3ERSPPS4 :1;
    };
} PWM3ERSPPSbits_t;
extern volatile PWM3ERSPPSbits_t PWM3ERSPPSbits __attribute__((address(0x255)));
# 27021 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4ERSPPS __attribute__((address(0x256)));

__asm("PWM4ERSPPS equ 0256h");




extern volatile unsigned char PWMIN0PPS __attribute__((address(0x257)));

__asm("PWMIN0PPS equ 0257h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned PWMIN0PPS :6;
    };
    struct {
        unsigned PWMIN0PPS0 :1;
        unsigned PWMIN0PPS1 :1;
        unsigned PWMIN0PPS2 :1;
        unsigned PWMIN0PPS3 :1;
        unsigned PWMIN0PPS4 :1;
        unsigned PWMIN0PPS5 :1;
    };
} PWMIN0PPSbits_t;
extern volatile PWMIN0PPSbits_t PWMIN0PPSbits __attribute__((address(0x257)));
# 27100 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWMIN1PPS __attribute__((address(0x258)));

__asm("PWMIN1PPS equ 0258h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned PWMIN1PPS :6;
    };
    struct {
        unsigned PWMIN1PPS0 :1;
        unsigned PWMIN1PPS1 :1;
        unsigned PWMIN1PPS2 :1;
        unsigned PWMIN1PPS3 :1;
        unsigned PWMIN1PPS4 :1;
        unsigned PWMIN1PPS5 :1;
    };
} PWMIN1PPSbits_t;
extern volatile PWMIN1PPSbits_t PWMIN1PPSbits __attribute__((address(0x258)));
# 27172 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1WINPPS __attribute__((address(0x259)));

__asm("SMT1WINPPS equ 0259h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned SMT1WINPPS :6;
    };
    struct {
        unsigned SMT1WINPPS0 :1;
        unsigned SMT1WINPPS1 :1;
        unsigned SMT1WINPPS2 :1;
        unsigned SMT1WINPPS3 :1;
        unsigned SMT1WINPPS4 :1;
        unsigned SMT1WINPPS5 :1;
    };
} SMT1WINPPSbits_t;
extern volatile SMT1WINPPSbits_t SMT1WINPPSbits __attribute__((address(0x259)));
# 27244 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1SIGPPS __attribute__((address(0x25A)));

__asm("SMT1SIGPPS equ 025Ah");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned SMT1SIGPPS :6;
    };
    struct {
        unsigned SMT1SIGPPS0 :1;
        unsigned SMT1SIGPPS1 :1;
        unsigned SMT1SIGPPS2 :1;
        unsigned SMT1SIGPPS3 :1;
        unsigned SMT1SIGPPS4 :1;
        unsigned SMT1SIGPPS5 :1;
    };
} SMT1SIGPPSbits_t;
extern volatile SMT1SIGPPSbits_t SMT1SIGPPSbits __attribute__((address(0x25A)));
# 27316 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1PPS __attribute__((address(0x25B)));

__asm("CWG1PPS equ 025Bh");


extern volatile unsigned char CWG1INPPS __attribute__((address(0x25B)));

__asm("CWG1INPPS equ 025Bh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CWGINPPS0 :1;
        unsigned CWGINPPS1 :1;
        unsigned CWGINPPS2 :1;
        unsigned CWGINPPS3 :1;
        unsigned CWGINPPS4 :1;
    };
    struct {
        unsigned CWG1INPPS :5;
    };
    struct {
        unsigned CWG1INPPS0 :1;
        unsigned CWG1INPPS1 :1;
        unsigned CWG1INPPS2 :1;
        unsigned CWG1INPPS3 :1;
        unsigned CWG1INPPS4 :1;
    };
    struct {
        unsigned CWGINPPS :5;
    };
} CWG1PPSbits_t;
extern volatile CWG1PPSbits_t CWG1PPSbits __attribute__((address(0x25B)));
# 27425 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CWGINPPS0 :1;
        unsigned CWGINPPS1 :1;
        unsigned CWGINPPS2 :1;
        unsigned CWGINPPS3 :1;
        unsigned CWGINPPS4 :1;
    };
    struct {
        unsigned CWG1INPPS :5;
    };
    struct {
        unsigned CWG1INPPS0 :1;
        unsigned CWG1INPPS1 :1;
        unsigned CWG1INPPS2 :1;
        unsigned CWG1INPPS3 :1;
        unsigned CWG1INPPS4 :1;
    };
    struct {
        unsigned CWGINPPS :5;
    };
} CWG1INPPSbits_t;
extern volatile CWG1INPPSbits_t CWG1INPPSbits __attribute__((address(0x25B)));
# 27526 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2PPS __attribute__((address(0x25C)));

__asm("CWG2PPS equ 025Ch");


extern volatile unsigned char CWG2INPPS __attribute__((address(0x25C)));

__asm("CWG2INPPS equ 025Ch");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CWGINPPS0 :1;
        unsigned CWGINPPS1 :1;
        unsigned CWGINPPS2 :1;
        unsigned CWGINPPS3 :1;
        unsigned CWGINPPS4 :1;
    };
    struct {
        unsigned CWG2INPPS :5;
    };
    struct {
        unsigned CWG2INPPS0 :1;
        unsigned CWG2INPPS1 :1;
        unsigned CWG2INPPS2 :1;
        unsigned CWG2INPPS3 :1;
        unsigned CWG2INPPS4 :1;
    };
    struct {
        unsigned CWGINPPS :5;
    };
} CWG2PPSbits_t;
extern volatile CWG2PPSbits_t CWG2PPSbits __attribute__((address(0x25C)));
# 27635 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CWGINPPS0 :1;
        unsigned CWGINPPS1 :1;
        unsigned CWGINPPS2 :1;
        unsigned CWGINPPS3 :1;
        unsigned CWGINPPS4 :1;
    };
    struct {
        unsigned CWG2INPPS :5;
    };
    struct {
        unsigned CWG2INPPS0 :1;
        unsigned CWG2INPPS1 :1;
        unsigned CWG2INPPS2 :1;
        unsigned CWG2INPPS3 :1;
        unsigned CWG2INPPS4 :1;
    };
    struct {
        unsigned CWGINPPS :5;
    };
} CWG2INPPSbits_t;
extern volatile CWG2INPPSbits_t CWG2INPPSbits __attribute__((address(0x25C)));
# 27736 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3PPS __attribute__((address(0x25D)));

__asm("CWG3PPS equ 025Dh");


extern volatile unsigned char CWG3INPPS __attribute__((address(0x25D)));

__asm("CWG3INPPS equ 025Dh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CWGINPPS0 :1;
        unsigned CWGINPPS1 :1;
        unsigned CWGINPPS2 :1;
        unsigned CWGINPPS3 :1;
        unsigned CWGINPPS4 :1;
    };
    struct {
        unsigned CWG3INPPS :5;
    };
    struct {
        unsigned CWG3INPPS0 :1;
        unsigned CWG3INPPS1 :1;
        unsigned CWG3INPPS2 :1;
        unsigned CWG3INPPS3 :1;
        unsigned CWG3INPPS4 :1;
    };
    struct {
        unsigned CWGINPPS :5;
    };
} CWG3PPSbits_t;
extern volatile CWG3PPSbits_t CWG3PPSbits __attribute__((address(0x25D)));
# 27845 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CWGINPPS0 :1;
        unsigned CWGINPPS1 :1;
        unsigned CWGINPPS2 :1;
        unsigned CWGINPPS3 :1;
        unsigned CWGINPPS4 :1;
    };
    struct {
        unsigned CWG3INPPS :5;
    };
    struct {
        unsigned CWG3INPPS0 :1;
        unsigned CWG3INPPS1 :1;
        unsigned CWG3INPPS2 :1;
        unsigned CWG3INPPS3 :1;
        unsigned CWG3INPPS4 :1;
    };
    struct {
        unsigned CWGINPPS :5;
    };
} CWG3INPPSbits_t;
extern volatile CWG3INPPSbits_t CWG3INPPSbits __attribute__((address(0x25D)));
# 27946 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MD1CARLPPS __attribute__((address(0x25E)));

__asm("MD1CARLPPS equ 025Eh");


extern volatile unsigned char MDCARLPPS __attribute__((address(0x25E)));

__asm("MDCARLPPS equ 025Eh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDCARLPPS0 :1;
        unsigned MDCARLPPS1 :1;
        unsigned MDCARLPPS2 :1;
        unsigned MDCARLPPS3 :1;
        unsigned MDCARLPPS4 :1;
    };
    struct {
        unsigned MDCARLPPS :5;
    };
} MD1CARLPPSbits_t;
extern volatile MD1CARLPPSbits_t MD1CARLPPSbits __attribute__((address(0x25E)));
# 28015 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDCARLPPS0 :1;
        unsigned MDCARLPPS1 :1;
        unsigned MDCARLPPS2 :1;
        unsigned MDCARLPPS3 :1;
        unsigned MDCARLPPS4 :1;
    };
    struct {
        unsigned MDCARLPPS :5;
    };
} MDCARLPPSbits_t;
extern volatile MDCARLPPSbits_t MDCARLPPSbits __attribute__((address(0x25E)));
# 28076 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MD1CARHPPS __attribute__((address(0x25F)));

__asm("MD1CARHPPS equ 025Fh");


extern volatile unsigned char MDCARHPPS __attribute__((address(0x25F)));

__asm("MDCARHPPS equ 025Fh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDCARHPPS0 :1;
        unsigned MDCARHPPS1 :1;
        unsigned MDCARHPPS2 :1;
        unsigned MDCARHPPS3 :1;
        unsigned MDCARHPPS4 :1;
    };
    struct {
        unsigned MDCARHPPS :5;
    };
} MD1CARHPPSbits_t;
extern volatile MD1CARHPPSbits_t MD1CARHPPSbits __attribute__((address(0x25F)));
# 28145 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDCARHPPS0 :1;
        unsigned MDCARHPPS1 :1;
        unsigned MDCARHPPS2 :1;
        unsigned MDCARHPPS3 :1;
        unsigned MDCARHPPS4 :1;
    };
    struct {
        unsigned MDCARHPPS :5;
    };
} MDCARHPPSbits_t;
extern volatile MDCARHPPSbits_t MDCARHPPSbits __attribute__((address(0x25F)));
# 28206 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char MD1SRCPPS __attribute__((address(0x260)));

__asm("MD1SRCPPS equ 0260h");


extern volatile unsigned char MDSRCPPS __attribute__((address(0x260)));

__asm("MDSRCPPS equ 0260h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDSRCPPS0 :1;
        unsigned MDSRCPPS1 :1;
        unsigned MDSRCPPS2 :1;
        unsigned MDSRCPPS3 :1;
        unsigned MDSRCPPS4 :1;
    };
    struct {
        unsigned MDSRCPPS :5;
    };
} MD1SRCPPSbits_t;
extern volatile MD1SRCPPSbits_t MD1SRCPPSbits __attribute__((address(0x260)));
# 28275 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned MDSRCPPS0 :1;
        unsigned MDSRCPPS1 :1;
        unsigned MDSRCPPS2 :1;
        unsigned MDSRCPPS3 :1;
        unsigned MDSRCPPS4 :1;
    };
    struct {
        unsigned MDSRCPPS :5;
    };
} MDSRCPPSbits_t;
extern volatile MDSRCPPSbits_t MDSRCPPSbits __attribute__((address(0x260)));
# 28336 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCIN0PPS __attribute__((address(0x261)));

__asm("CLCIN0PPS equ 0261h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN0PPS0 :1;
        unsigned CLCIN0PPS1 :1;
        unsigned CLCIN0PPS2 :1;
        unsigned CLCIN0PPS3 :1;
        unsigned CLCIN0PPS4 :1;
    };
    struct {
        unsigned CLCIN0PPS :5;
    };
} CLCIN0PPSbits_t;
extern volatile CLCIN0PPSbits_t CLCIN0PPSbits __attribute__((address(0x261)));
# 28402 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCIN1PPS __attribute__((address(0x262)));

__asm("CLCIN1PPS equ 0262h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN1PPS0 :1;
        unsigned CLCIN1PPS1 :1;
        unsigned CLCIN1PPS2 :1;
        unsigned CLCIN1PPS3 :1;
        unsigned CLCIN1PPS4 :1;
    };
    struct {
        unsigned CLCIN1PPS :5;
    };
} CLCIN1PPSbits_t;
extern volatile CLCIN1PPSbits_t CLCIN1PPSbits __attribute__((address(0x262)));
# 28468 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCIN2PPS __attribute__((address(0x263)));

__asm("CLCIN2PPS equ 0263h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN2PPS0 :1;
        unsigned CLCIN2PPS1 :1;
        unsigned CLCIN2PPS2 :1;
        unsigned CLCIN2PPS3 :1;
        unsigned CLCIN2PPS4 :1;
    };
    struct {
        unsigned CLCIN2PPS :5;
    };
} CLCIN2PPSbits_t;
extern volatile CLCIN2PPSbits_t CLCIN2PPSbits __attribute__((address(0x263)));
# 28534 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCIN3PPS __attribute__((address(0x264)));

__asm("CLCIN3PPS equ 0264h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN3PPS0 :1;
        unsigned CLCIN3PPS1 :1;
        unsigned CLCIN3PPS2 :1;
        unsigned CLCIN3PPS3 :1;
        unsigned CLCIN3PPS4 :1;
    };
    struct {
        unsigned CLCIN3PPS :5;
    };
} CLCIN3PPSbits_t;
extern volatile CLCIN3PPSbits_t CLCIN3PPSbits __attribute__((address(0x264)));
# 28600 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCIN4PPS __attribute__((address(0x265)));

__asm("CLCIN4PPS equ 0265h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN4PPS0 :1;
        unsigned CLCIN4PPS1 :1;
        unsigned CLCIN4PPS2 :1;
        unsigned CLCIN4PPS3 :1;
        unsigned CLCIN4PPS4 :1;
    };
    struct {
        unsigned CLCIN4PPS :5;
    };
} CLCIN4PPSbits_t;
extern volatile CLCIN4PPSbits_t CLCIN4PPSbits __attribute__((address(0x265)));
# 28666 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCIN5PPS __attribute__((address(0x266)));

__asm("CLCIN5PPS equ 0266h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN5PPS0 :1;
        unsigned CLCIN5PPS1 :1;
        unsigned CLCIN5PPS2 :1;
        unsigned CLCIN5PPS3 :1;
        unsigned CLCIN5PPS4 :1;
    };
    struct {
        unsigned CLCIN5PPS :5;
    };
} CLCIN5PPSbits_t;
extern volatile CLCIN5PPSbits_t CLCIN5PPSbits __attribute__((address(0x266)));
# 28732 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCIN6PPS __attribute__((address(0x267)));

__asm("CLCIN6PPS equ 0267h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN6PPS0 :1;
        unsigned CLCIN6PPS1 :1;
        unsigned CLCIN6PPS2 :1;
        unsigned CLCIN6PPS3 :1;
        unsigned CLCIN6PPS4 :1;
    };
    struct {
        unsigned CLCIN6PPS :5;
    };
} CLCIN6PPSbits_t;
extern volatile CLCIN6PPSbits_t CLCIN6PPSbits __attribute__((address(0x267)));
# 28798 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CLCIN7PPS __attribute__((address(0x268)));

__asm("CLCIN7PPS equ 0268h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned CLCIN7PPS0 :1;
        unsigned CLCIN7PPS1 :1;
        unsigned CLCIN7PPS2 :1;
        unsigned CLCIN7PPS3 :1;
        unsigned CLCIN7PPS4 :1;
    };
    struct {
        unsigned CLCIN7PPS :5;
    };
} CLCIN7PPSbits_t;
extern volatile CLCIN7PPSbits_t CLCIN7PPSbits __attribute__((address(0x268)));
# 28864 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADACTPPS __attribute__((address(0x269)));

__asm("ADACTPPS equ 0269h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned ADACTPPS0 :1;
        unsigned ADACTPPS1 :1;
        unsigned ADACTPPS2 :1;
        unsigned ADACTPPS3 :1;
        unsigned ADACTPPS4 :1;
    };
    struct {
        unsigned ADACTPPS :5;
    };
} ADACTPPSbits_t;
extern volatile ADACTPPSbits_t ADACTPPSbits __attribute__((address(0x269)));
# 28930 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1SCKPPS __attribute__((address(0x26A)));

__asm("SPI1SCKPPS equ 026Ah");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SPI1SCKPPS :5;
    };
    struct {
        unsigned SPI1SCKPPS0 :1;
        unsigned SPI1SCKPPS1 :1;
        unsigned SPI1SCKPPS2 :1;
        unsigned SPI1SCKPPS3 :1;
        unsigned SPI1SCKPPS4 :1;
    };
} SPI1SCKPPSbits_t;
extern volatile SPI1SCKPPSbits_t SPI1SCKPPSbits __attribute__((address(0x26A)));
# 28996 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1SDIPPS __attribute__((address(0x26B)));

__asm("SPI1SDIPPS equ 026Bh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SPI1SDIPPS :5;
    };
    struct {
        unsigned SPI1SDIPPS0 :1;
        unsigned SPI1SDIPPS1 :1;
        unsigned SPI1SDIPPS2 :1;
        unsigned SPI1SDIPPS3 :1;
        unsigned SPI1SDIPPS4 :1;
    };
} SPI1SDIPPSbits_t;
extern volatile SPI1SDIPPSbits_t SPI1SDIPPSbits __attribute__((address(0x26B)));
# 29062 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI1SSPPS __attribute__((address(0x26C)));

__asm("SPI1SSPPS equ 026Ch");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SPI1SSPPS :5;
    };
    struct {
        unsigned SPI1SSPPS0 :1;
        unsigned SPI1SSPPS1 :1;
        unsigned SPI1SSPPS2 :1;
        unsigned SPI1SSPPS3 :1;
        unsigned SPI1SSPPS4 :1;
    };
} SPI1SSPPSbits_t;
extern volatile SPI1SSPPSbits_t SPI1SSPPSbits __attribute__((address(0x26C)));
# 29128 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2SCKPPS __attribute__((address(0x26D)));

__asm("SPI2SCKPPS equ 026Dh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SPI2SCKPPS :5;
    };
    struct {
        unsigned SPI2SCKPPS0 :1;
        unsigned SPI2SCKPPS1 :1;
        unsigned SPI2SCKPPS2 :1;
        unsigned SPI2SCKPPS3 :1;
        unsigned SPI2SCKPPS4 :1;
    };
} SPI2SCKPPSbits_t;
extern volatile SPI2SCKPPSbits_t SPI2SCKPPSbits __attribute__((address(0x26D)));
# 29194 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2SDIPPS __attribute__((address(0x26E)));

__asm("SPI2SDIPPS equ 026Eh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SPI2SDIPPS :5;
    };
    struct {
        unsigned SPI2SDIPPS0 :1;
        unsigned SPI2SDIPPS1 :1;
        unsigned SPI2SDIPPS2 :1;
        unsigned SPI2SDIPPS3 :1;
        unsigned SPI2SDIPPS4 :1;
    };
} SPI2SDIPPSbits_t;
extern volatile SPI2SDIPPSbits_t SPI2SDIPPSbits __attribute__((address(0x26E)));
# 29260 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SPI2SSPPS __attribute__((address(0x26F)));

__asm("SPI2SSPPS equ 026Fh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned SPI2SSPPS :5;
    };
    struct {
        unsigned SPI2SSPPS0 :1;
        unsigned SPI2SSPPS1 :1;
        unsigned SPI2SSPPS2 :1;
        unsigned SPI2SSPPS3 :1;
        unsigned SPI2SSPPS4 :1;
    };
} SPI2SSPPSbits_t;
extern volatile SPI2SSPPSbits_t SPI2SSPPSbits __attribute__((address(0x26F)));
# 29326 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1SDAPPS __attribute__((address(0x270)));

__asm("I2C1SDAPPS equ 0270h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned I2C1SDAPPS :5;
    };
    struct {
        unsigned I2C1SDAPPS0 :1;
        unsigned I2C1SDAPPS1 :1;
        unsigned I2C1SDAPPS2 :1;
        unsigned I2C1SDAPPS3 :1;
        unsigned I2C1SDAPPS4 :1;
    };
} I2C1SDAPPSbits_t;
extern volatile I2C1SDAPPSbits_t I2C1SDAPPSbits __attribute__((address(0x270)));
# 29392 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1SCLPPS __attribute__((address(0x271)));

__asm("I2C1SCLPPS equ 0271h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned I2C1SCLPPS :5;
    };
    struct {
        unsigned I2C1SCLPPS0 :1;
        unsigned I2C1SCLPPS1 :1;
        unsigned I2C1SCLPPS2 :1;
        unsigned I2C1SCLPPS3 :1;
        unsigned I2C1SCLPPS4 :1;
    };
} I2C1SCLPPSbits_t;
extern volatile I2C1SCLPPSbits_t I2C1SCLPPSbits __attribute__((address(0x271)));
# 29458 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1RXPPS __attribute__((address(0x272)));

__asm("U1RXPPS equ 0272h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned U1RXPPS :6;
    };
    struct {
        unsigned U1RXPPS0 :1;
        unsigned U1RXPPS1 :1;
        unsigned U1RXPPS2 :1;
        unsigned U1RXPPS3 :1;
        unsigned U1RXPPS4 :1;
        unsigned U1RXPPS5 :1;
    };
} U1RXPPSbits_t;
extern volatile U1RXPPSbits_t U1RXPPSbits __attribute__((address(0x272)));
# 29530 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1CTSPPS __attribute__((address(0x273)));

__asm("U1CTSPPS equ 0273h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned U1CTSPPS :6;
    };
    struct {
        unsigned U1CTSPPS0 :1;
        unsigned U1CTSPPS1 :1;
        unsigned U1CTSPPS2 :1;
        unsigned U1CTSPPS3 :1;
        unsigned U1CTSPPS4 :1;
        unsigned U1CTSPPS5 :1;
    };
} U1CTSPPSbits_t;
extern volatile U1CTSPPSbits_t U1CTSPPSbits __attribute__((address(0x273)));
# 29602 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2RXPPS __attribute__((address(0x274)));

__asm("U2RXPPS equ 0274h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned U2RXPPS :5;
    };
    struct {
        unsigned U2RXPPS0 :1;
        unsigned U2RXPPS1 :1;
        unsigned U2RXPPS2 :1;
        unsigned U2RXPPS3 :1;
        unsigned U2RXPPS4 :1;
    };
} U2RXPPSbits_t;
extern volatile U2RXPPSbits_t U2RXPPSbits __attribute__((address(0x274)));
# 29668 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2CTSPPS __attribute__((address(0x275)));

__asm("U2CTSPPS equ 0275h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned U2CTSPPS :5;
    };
    struct {
        unsigned U2CTSPPS0 :1;
        unsigned U2CTSPPS1 :1;
        unsigned U2CTSPPS2 :1;
        unsigned U2CTSPPS3 :1;
        unsigned U2CTSPPS4 :1;
    };
} U2CTSPPSbits_t;
extern volatile U2CTSPPSbits_t U2CTSPPSbits __attribute__((address(0x275)));
# 29734 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3RXPPS __attribute__((address(0x276)));

__asm("U3RXPPS equ 0276h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned U3RXPPS :6;
    };
    struct {
        unsigned U3RXPPS0 :1;
        unsigned U3RXPPS1 :1;
        unsigned U3RXPPS2 :1;
        unsigned U3RXPPS3 :1;
        unsigned U3RXPPS4 :1;
        unsigned U3RXPPS5 :1;
    };
} U3RXPPSbits_t;
extern volatile U3RXPPSbits_t U3RXPPSbits __attribute__((address(0x276)));
# 29806 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3CTSPPS __attribute__((address(0x277)));

__asm("U3CTSPPS equ 0277h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned U3CTSPPS :6;
    };
    struct {
        unsigned U3CTSPPS0 :1;
        unsigned U3CTSPPS1 :1;
        unsigned U3CTSPPS2 :1;
        unsigned U3CTSPPS3 :1;
        unsigned U3CTSPPS4 :1;
        unsigned U3CTSPPS5 :1;
    };
} U3CTSPPSbits_t;
extern volatile U3CTSPPSbits_t U3CTSPPSbits __attribute__((address(0x277)));
# 29878 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4RXPPS __attribute__((address(0x278)));

__asm("U4RXPPS equ 0278h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned U4RXPPS :5;
    };
    struct {
        unsigned U4RXPPS0 :1;
        unsigned U4RXPPS1 :1;
        unsigned U4RXPPS2 :1;
        unsigned U4RXPPS3 :1;
        unsigned U4RXPPS4 :1;
    };
} U4RXPPSbits_t;
extern volatile U4RXPPSbits_t U4RXPPSbits __attribute__((address(0x278)));
# 29944 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4CTSPPS __attribute__((address(0x279)));

__asm("U4CTSPPS equ 0279h");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :2;
    };
    struct {
        unsigned U4CTSPPS :5;
    };
    struct {
        unsigned U4CTSPPS0 :1;
        unsigned U4CTSPPS1 :1;
        unsigned U4CTSPPS2 :1;
        unsigned U4CTSPPS3 :1;
        unsigned U4CTSPPS4 :1;
    };
} U4CTSPPSbits_t;
extern volatile U4CTSPPSbits_t U4CTSPPSbits __attribute__((address(0x279)));
# 30010 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5RXPPS __attribute__((address(0x27A)));

__asm("U5RXPPS equ 027Ah");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned U5RXPPS :6;
    };
    struct {
        unsigned U5RXPPS0 :1;
        unsigned U5RXPPS1 :1;
        unsigned U5RXPPS2 :1;
        unsigned U5RXPPS3 :1;
        unsigned U5RXPPS4 :1;
        unsigned U5RXPPS5 :1;
    };
} U5RXPPSbits_t;
extern volatile U5RXPPSbits_t U5RXPPSbits __attribute__((address(0x27A)));
# 30082 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5CTSPPS __attribute__((address(0x27B)));

__asm("U5CTSPPS equ 027Bh");


typedef union {
    struct {
        unsigned PIN :3;
        unsigned PORT :3;
    };
    struct {
        unsigned U5CTSPPS :6;
    };
    struct {
        unsigned U5CTSPPS0 :1;
        unsigned U5CTSPPS1 :1;
        unsigned U5CTSPPS2 :1;
        unsigned U5CTSPPS3 :1;
        unsigned U5CTSPPS4 :1;
        unsigned U5CTSPPS5 :1;
    };
} U5CTSPPSbits_t;
extern volatile U5CTSPPSbits_t U5CTSPPSbits __attribute__((address(0x27B)));
# 30154 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC4I2C __attribute__((address(0x286)));

__asm("RC4I2C equ 0286h");


typedef union {
    struct {
        unsigned TH :2;
        unsigned :2;
        unsigned PU :2;
        unsigned SLEW :2;
    };
    struct {
        unsigned TH0 :1;
        unsigned TH1 :1;
        unsigned :2;
        unsigned PU0 :1;
        unsigned PU1 :1;
        unsigned SLEW0 :1;
        unsigned SLEW1 :1;
    };
    struct {
        unsigned I2CTH :2;
        unsigned :2;
        unsigned I2CPU :2;
        unsigned I2CSLEW :2;
    };
    struct {
        unsigned I2CTH0 :1;
        unsigned I2CTH1 :1;
        unsigned :2;
        unsigned I2CPU0 :1;
        unsigned I2CPU1 :1;
        unsigned I2CSLEW0 :1;
        unsigned I2CSLEW1 :1;
    };
} RC4I2Cbits_t;
extern volatile RC4I2Cbits_t RC4I2Cbits __attribute__((address(0x286)));
# 30286 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RC3I2C __attribute__((address(0x287)));

__asm("RC3I2C equ 0287h");


typedef union {
    struct {
        unsigned TH :2;
        unsigned :2;
        unsigned PU :2;
        unsigned SLEW :2;
    };
    struct {
        unsigned TH0 :1;
        unsigned TH1 :1;
        unsigned :2;
        unsigned PU0 :1;
        unsigned PU1 :1;
        unsigned SLEW0 :1;
        unsigned SLEW1 :1;
    };
    struct {
        unsigned I2CTH :2;
        unsigned :2;
        unsigned I2CPU :2;
        unsigned I2CSLEW :2;
    };
    struct {
        unsigned I2CTH0 :1;
        unsigned I2CTH1 :1;
        unsigned :2;
        unsigned I2CPU0 :1;
        unsigned I2CPU1 :1;
        unsigned I2CSLEW0 :1;
        unsigned I2CSLEW1 :1;
    };
} RC3I2Cbits_t;
extern volatile RC3I2Cbits_t RC3I2Cbits __attribute__((address(0x287)));
# 30418 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB2I2C __attribute__((address(0x288)));

__asm("RB2I2C equ 0288h");


typedef union {
    struct {
        unsigned TH :2;
        unsigned :2;
        unsigned PU :2;
        unsigned SLEW :2;
    };
    struct {
        unsigned TH0 :1;
        unsigned TH1 :1;
        unsigned :2;
        unsigned PU0 :1;
        unsigned PU1 :1;
        unsigned SLEW0 :1;
        unsigned SLEW1 :1;
    };
    struct {
        unsigned I2CTH :2;
        unsigned :2;
        unsigned I2CPU :2;
        unsigned I2CSLEW :2;
    };
    struct {
        unsigned I2CTH0 :1;
        unsigned I2CTH1 :1;
        unsigned :2;
        unsigned I2CPU0 :1;
        unsigned I2CPU1 :1;
        unsigned I2CSLEW0 :1;
        unsigned I2CSLEW1 :1;
    };
} RB2I2Cbits_t;
extern volatile RB2I2Cbits_t RB2I2Cbits __attribute__((address(0x288)));
# 30550 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char RB1I2C __attribute__((address(0x289)));

__asm("RB1I2C equ 0289h");


typedef union {
    struct {
        unsigned TH :2;
        unsigned :2;
        unsigned PU :2;
        unsigned SLEW :2;
    };
    struct {
        unsigned TH0 :1;
        unsigned TH1 :1;
        unsigned :2;
        unsigned PU0 :1;
        unsigned PU1 :1;
        unsigned SLEW0 :1;
        unsigned SLEW1 :1;
    };
    struct {
        unsigned I2CTH :2;
        unsigned :2;
        unsigned I2CPU :2;
        unsigned I2CSLEW :2;
    };
    struct {
        unsigned I2CTH0 :1;
        unsigned I2CTH1 :1;
        unsigned :2;
        unsigned I2CPU0 :1;
        unsigned I2CPU1 :1;
        unsigned I2CSLEW0 :1;
        unsigned I2CSLEW1 :1;
    };
} RB1I2Cbits_t;
extern volatile RB1I2Cbits_t RB1I2Cbits __attribute__((address(0x289)));
# 30682 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1RXB __attribute__((address(0x28A)));

__asm("I2C1RXB equ 028Ah");


typedef union {
    struct {
        unsigned RXB :8;
    };
} I2C1RXBbits_t;
extern volatile I2C1RXBbits_t I2C1RXBbits __attribute__((address(0x28A)));
# 30702 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1TXB __attribute__((address(0x28B)));

__asm("I2C1TXB equ 028Bh");


typedef union {
    struct {
        unsigned TXB :8;
    };
} I2C1TXBbits_t;
extern volatile I2C1TXBbits_t I2C1TXBbits __attribute__((address(0x28B)));
# 30722 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1CNTL __attribute__((address(0x28C)));

__asm("I2C1CNTL equ 028Ch");


typedef union {
    struct {
        unsigned CNT :8;
    };
    struct {
        unsigned CNT0 :1;
        unsigned CNT1 :1;
        unsigned CNT2 :1;
        unsigned CNT3 :1;
        unsigned CNT4 :1;
        unsigned CNT5 :1;
        unsigned CNT6 :1;
        unsigned CNT7 :1;
    };
} I2C1CNTLbits_t;
extern volatile I2C1CNTLbits_t I2C1CNTLbits __attribute__((address(0x28C)));
# 30792 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1CNTH __attribute__((address(0x28D)));

__asm("I2C1CNTH equ 028Dh");


typedef union {
    struct {
        unsigned CNT :8;
    };
    struct {
        unsigned CNT8 :1;
        unsigned CNT9 :1;
        unsigned CNT10 :1;
        unsigned CNT11 :1;
        unsigned CNT12 :1;
        unsigned CNT13 :1;
        unsigned CNT14 :1;
        unsigned CNT15 :1;
    };
} I2C1CNTHbits_t;
extern volatile I2C1CNTHbits_t I2C1CNTHbits __attribute__((address(0x28D)));
# 30862 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1ADB0 __attribute__((address(0x28E)));

__asm("I2C1ADB0 equ 028Eh");


typedef union {
    struct {
        unsigned ADB :8;
    };
} I2C1ADB0bits_t;
extern volatile I2C1ADB0bits_t I2C1ADB0bits __attribute__((address(0x28E)));
# 30882 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1ADB1 __attribute__((address(0x28F)));

__asm("I2C1ADB1 equ 028Fh");


typedef union {
    struct {
        unsigned ADB :8;
    };
} I2C1ADB1bits_t;
extern volatile I2C1ADB1bits_t I2C1ADB1bits __attribute__((address(0x28F)));
# 30902 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1ADR0 __attribute__((address(0x290)));

__asm("I2C1ADR0 equ 0290h");


typedef union {
    struct {
        unsigned ADR :8;
    };
} I2C1ADR0bits_t;
extern volatile I2C1ADR0bits_t I2C1ADR0bits __attribute__((address(0x290)));
# 30922 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1ADR1 __attribute__((address(0x291)));

__asm("I2C1ADR1 equ 0291h");


typedef union {
    struct {
        unsigned :1;
        unsigned ADR :7;
    };
} I2C1ADR1bits_t;
extern volatile I2C1ADR1bits_t I2C1ADR1bits __attribute__((address(0x291)));
# 30943 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1ADR2 __attribute__((address(0x292)));

__asm("I2C1ADR2 equ 0292h");


typedef union {
    struct {
        unsigned ADR :8;
    };
} I2C1ADR2bits_t;
extern volatile I2C1ADR2bits_t I2C1ADR2bits __attribute__((address(0x292)));
# 30963 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1ADR3 __attribute__((address(0x293)));

__asm("I2C1ADR3 equ 0293h");


typedef union {
    struct {
        unsigned :1;
        unsigned ADR :7;
    };
} I2C1ADR3bits_t;
extern volatile I2C1ADR3bits_t I2C1ADR3bits __attribute__((address(0x293)));
# 30984 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1CON0 __attribute__((address(0x294)));

__asm("I2C1CON0 equ 0294h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned MDR :1;
        unsigned CSTR :1;
        unsigned S :1;
        unsigned RSEN :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned I2CEN :1;
    };
} I2C1CON0bits_t;
extern volatile I2C1CON0bits_t I2C1CON0bits __attribute__((address(0x294)));
# 31061 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1CON1 __attribute__((address(0x295)));

__asm("I2C1CON1 equ 0295h");


typedef union {
    struct {
        unsigned CSD :1;
        unsigned TXU :1;
        unsigned RXO :1;
        unsigned P :1;
        unsigned ACKT :1;
        unsigned ACKSTAT :1;
        unsigned ACKDT :1;
        unsigned ACKCNT :1;
    };
} I2C1CON1bits_t;
extern volatile I2C1CON1bits_t I2C1CON1bits __attribute__((address(0x295)));
# 31123 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1CON2 __attribute__((address(0x296)));

__asm("I2C1CON2 equ 0296h");


typedef union {
    struct {
        unsigned BFRET :2;
        unsigned SDAHT :2;
        unsigned ABD :1;
        unsigned FME :1;
        unsigned GCEN :1;
        unsigned ACNT :1;
    };
    struct {
        unsigned BFRET0 :1;
        unsigned BFRET1 :1;
        unsigned SDAHT0 :1;
        unsigned SDAHT1 :1;
    };
} I2C1CON2bits_t;
extern volatile I2C1CON2bits_t I2C1CON2bits __attribute__((address(0x296)));
# 31199 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1ERR __attribute__((address(0x297)));

__asm("I2C1ERR equ 0297h");


typedef union {
    struct {
        unsigned NACKIE :1;
        unsigned BCLIE :1;
        unsigned BTOIE :1;
        unsigned :1;
        unsigned NACKIF :1;
        unsigned BCLIF :1;
        unsigned BTOIF :1;
    };
    struct {
        unsigned NACK1IE :1;
        unsigned BCL1IE :1;
        unsigned BTO1IE :1;
        unsigned :1;
        unsigned NACK1IF :1;
        unsigned BCL1IF :1;
        unsigned BTO1IF :1;
    };
} I2C1ERRbits_t;
extern volatile I2C1ERRbits_t I2C1ERRbits __attribute__((address(0x297)));
# 31289 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1STAT0 __attribute__((address(0x298)));

__asm("I2C1STAT0 equ 0298h");


typedef union {
    struct {
        unsigned :3;
        unsigned D :1;
        unsigned R :1;
        unsigned MMA :1;
        unsigned SMA :1;
        unsigned BFRE :1;
    };
    struct {
        unsigned :3;
        unsigned DATA :1;
        unsigned READ :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_ADDRESS :1;
        unsigned NOT_WRITE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_A :1;
        unsigned NOT_W :1;
    };
} I2C1STAT0bits_t;
extern volatile I2C1STAT0bits_t I2C1STAT0bits __attribute__((address(0x298)));
# 31379 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1STAT1 __attribute__((address(0x299)));

__asm("I2C1STAT1 equ 0299h");


typedef union {
    struct {
        unsigned RXBF :1;
        unsigned :1;
        unsigned CLRBF :1;
        unsigned RXRE :1;
        unsigned :1;
        unsigned TXBE :1;
        unsigned :1;
        unsigned TXWE :1;
    };
} I2C1STAT1bits_t;
extern volatile I2C1STAT1bits_t I2C1STAT1bits __attribute__((address(0x299)));
# 31426 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1PIR __attribute__((address(0x29A)));

__asm("I2C1PIR equ 029Ah");


typedef union {
    struct {
        unsigned SCIF :1;
        unsigned RSCIF :1;
        unsigned PCIF :1;
        unsigned ADRIF :1;
        unsigned WRIF :1;
        unsigned :1;
        unsigned ACKTIF :1;
        unsigned CNTIF :1;
    };
    struct {
        unsigned SC1IF :1;
        unsigned RSC1IF :1;
        unsigned PC1IF :1;
        unsigned ADR1IF :1;
        unsigned WR1IF :1;
        unsigned :1;
        unsigned ACKT1IF :1;
        unsigned CNT1IF :1;
    };
} I2C1PIRbits_t;
extern volatile I2C1PIRbits_t I2C1PIRbits __attribute__((address(0x29A)));
# 31528 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1PIE __attribute__((address(0x29B)));

__asm("I2C1PIE equ 029Bh");


typedef union {
    struct {
        unsigned SCIE :1;
        unsigned RSCIE :1;
        unsigned PCIE :1;
        unsigned ADRIE :1;
        unsigned WRIE :1;
        unsigned :1;
        unsigned ACKTIE :1;
        unsigned CNTIE :1;
    };
    struct {
        unsigned SC1IE :1;
        unsigned RSC1IE :1;
        unsigned PC1IE :1;
        unsigned ADR1IE :1;
        unsigned WR1IE :1;
        unsigned :1;
        unsigned ACKT1IE :1;
        unsigned CNT1IE :1;
    };
} I2C1PIEbits_t;
extern volatile I2C1PIEbits_t I2C1PIEbits __attribute__((address(0x29B)));
# 31630 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1BTO __attribute__((address(0x29C)));

__asm("I2C1BTO equ 029Ch");


typedef union {
    struct {
        unsigned TOTIME :6;
        unsigned TOBY32 :1;
        unsigned TOREC :1;
    };
    struct {
        unsigned TOTIME0 :1;
        unsigned TOTIME1 :1;
        unsigned TOTIME2 :1;
        unsigned TOTIME3 :1;
        unsigned TOTIME4 :1;
        unsigned TOTIME5 :1;
    };
} I2C1BTObits_t;
extern volatile I2C1BTObits_t I2C1BTObits __attribute__((address(0x29C)));
# 31700 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1BAUD __attribute__((address(0x29D)));

__asm("I2C1BAUD equ 029Dh");


typedef union {
    struct {
        unsigned BAUD :8;
    };
} I2C1BAUDbits_t;
extern volatile I2C1BAUDbits_t I2C1BAUDbits __attribute__((address(0x29D)));
# 31720 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1CLK __attribute__((address(0x29E)));

__asm("I2C1CLK equ 029Eh");


typedef union {
    struct {
        unsigned CLK :8;
    };
    struct {
        unsigned I2CCLK :8;
    };
    struct {
        unsigned CLK0 :1;
        unsigned CLK1 :1;
        unsigned CLK2 :1;
        unsigned CLK3 :1;
        unsigned CLK4 :1;
    };
    struct {
        unsigned I2CCLK0 :1;
        unsigned I2CCLK1 :1;
        unsigned I2CCLK2 :1;
        unsigned I2CCLK3 :1;
        unsigned I2CCLK4 :1;
    };
} I2C1CLKbits_t;
extern volatile I2C1CLKbits_t I2C1CLKbits __attribute__((address(0x29E)));
# 31812 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char I2C1BTOC __attribute__((address(0x29F)));

__asm("I2C1BTOC equ 029Fh");


typedef union {
    struct {
        unsigned BTOC :4;
    };
    struct {
        unsigned I2CBTOC :4;
    };
    struct {
        unsigned BTOC0 :1;
        unsigned BTOC1 :1;
        unsigned BTOC2 :1;
        unsigned BTOC3 :1;
    };
    struct {
        unsigned I2CBTOC0 :1;
        unsigned I2CBTOC1 :1;
        unsigned I2CBTOC2 :1;
        unsigned I2CBTOC3 :1;
    };
} I2C1BTOCbits_t;
extern volatile I2C1BTOCbits_t I2C1BTOCbits __attribute__((address(0x29F)));
# 31892 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1RXB __attribute__((address(0x2A1)));

__asm("U1RXB equ 02A1h");


extern volatile unsigned char U1RXBL __attribute__((address(0x2A1)));

__asm("U1RXBL equ 02A1h");


typedef union {
    struct {
        unsigned RXB :8;
    };
} U1RXBbits_t;
extern volatile U1RXBbits_t U1RXBbits __attribute__((address(0x2A1)));







typedef union {
    struct {
        unsigned RXB :8;
    };
} U1RXBLbits_t;
extern volatile U1RXBLbits_t U1RXBLbits __attribute__((address(0x2A1)));
# 31930 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1RXCHK __attribute__((address(0x2A2)));

__asm("U1RXCHK equ 02A2h");


typedef union {
    struct {
        unsigned RXCHK :8;
    };
} U1RXCHKbits_t;
extern volatile U1RXCHKbits_t U1RXCHKbits __attribute__((address(0x2A2)));
# 31950 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1TXB __attribute__((address(0x2A3)));

__asm("U1TXB equ 02A3h");


extern volatile unsigned char U1TXBL __attribute__((address(0x2A3)));

__asm("U1TXBL equ 02A3h");


typedef union {
    struct {
        unsigned TXB :8;
    };
} U1TXBbits_t;
extern volatile U1TXBbits_t U1TXBbits __attribute__((address(0x2A3)));







typedef union {
    struct {
        unsigned TXB :8;
    };
} U1TXBLbits_t;
extern volatile U1TXBLbits_t U1TXBLbits __attribute__((address(0x2A3)));
# 31988 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1TXCHK __attribute__((address(0x2A4)));

__asm("U1TXCHK equ 02A4h");


typedef union {
    struct {
        unsigned TXCHK :8;
    };
} U1TXCHKbits_t;
extern volatile U1TXCHKbits_t U1TXCHKbits __attribute__((address(0x2A4)));
# 32008 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U1P1 __attribute__((address(0x2A5)));

__asm("U1P1 equ 02A5h");




extern volatile unsigned char U1P1L __attribute__((address(0x2A5)));

__asm("U1P1L equ 02A5h");


typedef union {
    struct {
        unsigned P1L :8;
    };
} U1P1Lbits_t;
extern volatile U1P1Lbits_t U1P1Lbits __attribute__((address(0x2A5)));
# 32035 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1P1H __attribute__((address(0x2A6)));

__asm("U1P1H equ 02A6h");


typedef union {
    struct {
        unsigned P1H :1;
    };
} U1P1Hbits_t;
extern volatile U1P1Hbits_t U1P1Hbits __attribute__((address(0x2A6)));
# 32055 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U1P2 __attribute__((address(0x2A7)));

__asm("U1P2 equ 02A7h");




extern volatile unsigned char U1P2L __attribute__((address(0x2A7)));

__asm("U1P2L equ 02A7h");


typedef union {
    struct {
        unsigned P2L :8;
    };
} U1P2Lbits_t;
extern volatile U1P2Lbits_t U1P2Lbits __attribute__((address(0x2A7)));
# 32082 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1P2H __attribute__((address(0x2A8)));

__asm("U1P2H equ 02A8h");


typedef union {
    struct {
        unsigned P2H :1;
    };
} U1P2Hbits_t;
extern volatile U1P2Hbits_t U1P2Hbits __attribute__((address(0x2A8)));
# 32102 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U1P3 __attribute__((address(0x2A9)));

__asm("U1P3 equ 02A9h");




extern volatile unsigned char U1P3L __attribute__((address(0x2A9)));

__asm("U1P3L equ 02A9h");


typedef union {
    struct {
        unsigned P3L :8;
    };
} U1P3Lbits_t;
extern volatile U1P3Lbits_t U1P3Lbits __attribute__((address(0x2A9)));
# 32129 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1P3H __attribute__((address(0x2AA)));

__asm("U1P3H equ 02AAh");


typedef union {
    struct {
        unsigned P3H :1;
    };
} U1P3Hbits_t;
extern volatile U1P3Hbits_t U1P3Hbits __attribute__((address(0x2AA)));
# 32149 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1CON0 __attribute__((address(0x2AB)));

__asm("U1CON0 equ 02ABh");


typedef union {
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned U1MODE :4;
        unsigned U1RXEN :1;
        unsigned U1TXEN :1;
        unsigned U1ABDEN :1;
        unsigned U1BRGS :1;
    };
    struct {
        unsigned U1MODE0 :1;
        unsigned U1MODE1 :1;
        unsigned U1MODE2 :1;
        unsigned U1MODE3 :1;
    };
    struct {
        unsigned MODE :4;
        unsigned RXEN :1;
        unsigned TXEN :1;
        unsigned ABDEN :1;
        unsigned BRGS :1;
    };
} U1CON0bits_t;
extern volatile U1CON0bits_t U1CON0bits __attribute__((address(0x2AB)));
# 32277 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1CON1 __attribute__((address(0x2AC)));

__asm("U1CON1 equ 02ACh");


typedef union {
    struct {
        unsigned SENDB :1;
        unsigned BRKOVR :1;
        unsigned :1;
        unsigned RXBIMD :1;
        unsigned WUE :1;
        unsigned :2;
        unsigned ON :1;
    };
    struct {
        unsigned U1SENDB :1;
        unsigned U1BRKOVR :1;
        unsigned :1;
        unsigned U1RXBIMD :1;
        unsigned U1WUE :1;
        unsigned :2;
        unsigned U1ON :1;
    };
} U1CON1bits_t;
extern volatile U1CON1bits_t U1CON1bits __attribute__((address(0x2AC)));
# 32357 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1CON2 __attribute__((address(0x2AD)));

__asm("U1CON2 equ 02ADh");


typedef union {
    struct {
        unsigned FLO :2;
        unsigned TXPOL :1;
        unsigned C0EN :1;
        unsigned STP :2;
        unsigned RXPOL :1;
        unsigned RUNOVF :1;
    };
    struct {
        unsigned FLO0 :1;
        unsigned FLO1 :1;
        unsigned :2;
        unsigned STP0 :1;
        unsigned STP1 :1;
    };
    struct {
        unsigned U1FLO :2;
        unsigned U1TXPOL :1;
        unsigned U1C0EN :1;
        unsigned U1STP :2;
        unsigned U1RXPOL :1;
        unsigned U1RUNOVF :1;
    };
    struct {
        unsigned U1FLO0 :1;
        unsigned U1FLO1 :1;
        unsigned :2;
        unsigned U1STP0 :1;
        unsigned U1STP1 :1;
    };
} U1CON2bits_t;
extern volatile U1CON2bits_t U1CON2bits __attribute__((address(0x2AD)));
# 32499 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U1BRG __attribute__((address(0x2AE)));

__asm("U1BRG equ 02AEh");




extern volatile unsigned char U1BRGL __attribute__((address(0x2AE)));

__asm("U1BRGL equ 02AEh");


typedef union {
    struct {
        unsigned BRGL :8;
    };
} U1BRGLbits_t;
extern volatile U1BRGLbits_t U1BRGLbits __attribute__((address(0x2AE)));
# 32526 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1BRGH __attribute__((address(0x2AF)));

__asm("U1BRGH equ 02AFh");


typedef union {
    struct {
        unsigned BRGH :8;
    };
} U1BRGHbits_t;
extern volatile U1BRGHbits_t U1BRGHbits __attribute__((address(0x2AF)));
# 32546 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1FIFO __attribute__((address(0x2B0)));

__asm("U1FIFO equ 02B0h");


typedef union {
    struct {
        unsigned RXBF :1;
        unsigned RXBE :1;
        unsigned XON :1;
        unsigned RXIDL :1;
        unsigned TXBF :1;
        unsigned TXBE :1;
        unsigned STPMD :1;
        unsigned TXWRE :1;
    };
    struct {
        unsigned U1RXBF :1;
        unsigned U1RXBE :1;
        unsigned U1XON :1;
        unsigned U1RXIDL :1;
        unsigned U1TXBF :1;
        unsigned U1TXBE :1;
        unsigned U1STPMD :1;
        unsigned U1TXWRE :1;
    };
    struct {
        unsigned :3;
        unsigned U1RCIDL :1;
    };
    struct {
        unsigned :3;
        unsigned RCIDL :1;
    };
} U1FIFObits_t;
extern volatile U1FIFObits_t U1FIFObits __attribute__((address(0x2B0)));
# 32676 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1UIR __attribute__((address(0x2B1)));

__asm("U1UIR equ 02B1h");


typedef union {
    struct {
        unsigned :2;
        unsigned ABDIE :1;
        unsigned :3;
        unsigned ABDIF :1;
        unsigned WUIF :1;
    };
    struct {
        unsigned :2;
        unsigned U1ABDIE :1;
        unsigned :3;
        unsigned U1ABDIF :1;
        unsigned U1WUIF :1;
    };
} U1UIRbits_t;
extern volatile U1UIRbits_t U1UIRbits __attribute__((address(0x2B1)));
# 32732 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1ERRIR __attribute__((address(0x2B2)));

__asm("U1ERRIR equ 02B2h");


typedef union {
    struct {
        unsigned TXCIF :1;
        unsigned RXFOIF :1;
        unsigned RXBKIF :1;
        unsigned FERIF :1;
        unsigned CERIF :1;
        unsigned ABDOVF :1;
        unsigned PERIF :1;
        unsigned TXMTIF :1;
    };
    struct {
        unsigned U1TXCIF :1;
        unsigned U1RXFOIF :1;
        unsigned U1RXBKIF :1;
        unsigned U1FERIF :1;
        unsigned U1CERIF :1;
        unsigned U1ABDOVF :1;
        unsigned U1PERIF :1;
        unsigned U1TXMTIF :1;
    };
} U1ERRIRbits_t;
extern volatile U1ERRIRbits_t U1ERRIRbits __attribute__((address(0x2B2)));
# 32844 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U1ERRIE __attribute__((address(0x2B3)));

__asm("U1ERRIE equ 02B3h");


typedef union {
    struct {
        unsigned TXCIE :1;
        unsigned RXFOIE :1;
        unsigned RXBKIE :1;
        unsigned FERIE :1;
        unsigned CERIE :1;
        unsigned ABDOVE :1;
        unsigned PERIE :1;
        unsigned TXMTIE :1;
    };
    struct {
        unsigned U1TXCIE :1;
        unsigned U1RXFOIE :1;
        unsigned U1RXBKIE :1;
        unsigned U1FERIE :1;
        unsigned U1CERIE :1;
        unsigned U1ABDOVE :1;
        unsigned U1PERIE :1;
        unsigned U1TXMTIE :1;
    };
} U1ERRIEbits_t;
extern volatile U1ERRIEbits_t U1ERRIEbits __attribute__((address(0x2B3)));
# 32956 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2RXB __attribute__((address(0x2B4)));

__asm("U2RXB equ 02B4h");


extern volatile unsigned char U2RXBL __attribute__((address(0x2B4)));

__asm("U2RXBL equ 02B4h");


typedef union {
    struct {
        unsigned RXB :8;
    };
} U2RXBbits_t;
extern volatile U2RXBbits_t U2RXBbits __attribute__((address(0x2B4)));







typedef union {
    struct {
        unsigned RXB :8;
    };
} U2RXBLbits_t;
extern volatile U2RXBLbits_t U2RXBLbits __attribute__((address(0x2B4)));
# 32994 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2RXCHK __attribute__((address(0x2B5)));

__asm("U2RXCHK equ 02B5h");


typedef union {
    struct {
        unsigned RXCHK :8;
    };
} U2RXCHKbits_t;
extern volatile U2RXCHKbits_t U2RXCHKbits __attribute__((address(0x2B5)));
# 33014 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2TXB __attribute__((address(0x2B6)));

__asm("U2TXB equ 02B6h");


extern volatile unsigned char U2TXBL __attribute__((address(0x2B6)));

__asm("U2TXBL equ 02B6h");


typedef union {
    struct {
        unsigned TXB :8;
    };
} U2TXBbits_t;
extern volatile U2TXBbits_t U2TXBbits __attribute__((address(0x2B6)));







typedef union {
    struct {
        unsigned TXB :8;
    };
} U2TXBLbits_t;
extern volatile U2TXBLbits_t U2TXBLbits __attribute__((address(0x2B6)));
# 33052 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2TXCHK __attribute__((address(0x2B7)));

__asm("U2TXCHK equ 02B7h");


typedef union {
    struct {
        unsigned TXCHK :8;
    };
} U2TXCHKbits_t;
extern volatile U2TXCHKbits_t U2TXCHKbits __attribute__((address(0x2B7)));
# 33072 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U2P1 __attribute__((address(0x2B8)));

__asm("U2P1 equ 02B8h");




extern volatile unsigned char U2P1L __attribute__((address(0x2B8)));

__asm("U2P1L equ 02B8h");


typedef union {
    struct {
        unsigned P1L :8;
    };
} U2P1Lbits_t;
extern volatile U2P1Lbits_t U2P1Lbits __attribute__((address(0x2B8)));
# 33099 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2P1H __attribute__((address(0x2B9)));

__asm("U2P1H equ 02B9h");


typedef union {
    struct {
        unsigned P1H :1;
    };
} U2P1Hbits_t;
extern volatile U2P1Hbits_t U2P1Hbits __attribute__((address(0x2B9)));
# 33119 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U2P2 __attribute__((address(0x2BA)));

__asm("U2P2 equ 02BAh");




extern volatile unsigned char U2P2L __attribute__((address(0x2BA)));

__asm("U2P2L equ 02BAh");


typedef union {
    struct {
        unsigned P2L :8;
    };
} U2P2Lbits_t;
extern volatile U2P2Lbits_t U2P2Lbits __attribute__((address(0x2BA)));
# 33146 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2P2H __attribute__((address(0x2BB)));

__asm("U2P2H equ 02BBh");


typedef union {
    struct {
        unsigned P2H :1;
    };
} U2P2Hbits_t;
extern volatile U2P2Hbits_t U2P2Hbits __attribute__((address(0x2BB)));
# 33166 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U2P3 __attribute__((address(0x2BC)));

__asm("U2P3 equ 02BCh");




extern volatile unsigned char U2P3L __attribute__((address(0x2BC)));

__asm("U2P3L equ 02BCh");


typedef union {
    struct {
        unsigned P3L :8;
    };
} U2P3Lbits_t;
extern volatile U2P3Lbits_t U2P3Lbits __attribute__((address(0x2BC)));
# 33193 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2P3H __attribute__((address(0x2BD)));

__asm("U2P3H equ 02BDh");


typedef union {
    struct {
        unsigned P3H :1;
    };
} U2P3Hbits_t;
extern volatile U2P3Hbits_t U2P3Hbits __attribute__((address(0x2BD)));
# 33213 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2CON0 __attribute__((address(0x2BE)));

__asm("U2CON0 equ 02BEh");


typedef union {
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned U2MODE :4;
        unsigned U2RXEN :1;
        unsigned U2TXEN :1;
        unsigned U2ABDEN :1;
        unsigned U2BRGS :1;
    };
    struct {
        unsigned U2MODE0 :1;
        unsigned U2MODE1 :1;
        unsigned U2MODE2 :1;
        unsigned U2MODE3 :1;
    };
    struct {
        unsigned MODE :4;
        unsigned RXEN :1;
        unsigned TXEN :1;
        unsigned ABDEN :1;
        unsigned BRGS :1;
    };
} U2CON0bits_t;
extern volatile U2CON0bits_t U2CON0bits __attribute__((address(0x2BE)));
# 33341 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2CON1 __attribute__((address(0x2BF)));

__asm("U2CON1 equ 02BFh");


typedef union {
    struct {
        unsigned SENDB :1;
        unsigned BRKOVR :1;
        unsigned :1;
        unsigned RXBIMD :1;
        unsigned WUE :1;
        unsigned :2;
        unsigned ON :1;
    };
    struct {
        unsigned U2SENDB :1;
        unsigned U2BRKOVR :1;
        unsigned :1;
        unsigned U2RXBIMD :1;
        unsigned U2WUE :1;
        unsigned :2;
        unsigned U2ON :1;
    };
} U2CON1bits_t;
extern volatile U2CON1bits_t U2CON1bits __attribute__((address(0x2BF)));
# 33421 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2CON2 __attribute__((address(0x2C0)));

__asm("U2CON2 equ 02C0h");


typedef union {
    struct {
        unsigned FLO :2;
        unsigned TXPOL :1;
        unsigned C0EN :1;
        unsigned STP :2;
        unsigned RXPOL :1;
        unsigned RUNOVF :1;
    };
    struct {
        unsigned FLO0 :1;
        unsigned FLO1 :1;
        unsigned :2;
        unsigned STP0 :1;
        unsigned STP1 :1;
    };
    struct {
        unsigned U2FLO :2;
        unsigned U2TXPOL :1;
        unsigned U2C0EN :1;
        unsigned U2STP :2;
        unsigned U2RXPOL :1;
        unsigned U2RUNOVF :1;
    };
    struct {
        unsigned U2FLO0 :1;
        unsigned U2FLO1 :1;
        unsigned :2;
        unsigned U2STP0 :1;
        unsigned U2STP1 :1;
    };
} U2CON2bits_t;
extern volatile U2CON2bits_t U2CON2bits __attribute__((address(0x2C0)));
# 33563 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U2BRG __attribute__((address(0x2C1)));

__asm("U2BRG equ 02C1h");




extern volatile unsigned char U2BRGL __attribute__((address(0x2C1)));

__asm("U2BRGL equ 02C1h");


typedef union {
    struct {
        unsigned BRGL :8;
    };
} U2BRGLbits_t;
extern volatile U2BRGLbits_t U2BRGLbits __attribute__((address(0x2C1)));
# 33590 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2BRGH __attribute__((address(0x2C2)));

__asm("U2BRGH equ 02C2h");


typedef union {
    struct {
        unsigned BRGH :8;
    };
} U2BRGHbits_t;
extern volatile U2BRGHbits_t U2BRGHbits __attribute__((address(0x2C2)));
# 33610 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2FIFO __attribute__((address(0x2C3)));

__asm("U2FIFO equ 02C3h");


typedef union {
    struct {
        unsigned RXBF :1;
        unsigned RXBE :1;
        unsigned XON :1;
        unsigned RXIDL :1;
        unsigned TXBF :1;
        unsigned TXBE :1;
        unsigned STPMD :1;
        unsigned TXWRE :1;
    };
    struct {
        unsigned U2RXBF :1;
        unsigned U2RXBE :1;
        unsigned U2XON :1;
        unsigned U2RXIDL :1;
        unsigned U2TXBF :1;
        unsigned U2TXBE :1;
        unsigned U2STPMD :1;
        unsigned U2TXWRE :1;
    };
    struct {
        unsigned :3;
        unsigned U2RCIDL :1;
    };
    struct {
        unsigned :3;
        unsigned RCIDL :1;
    };
} U2FIFObits_t;
extern volatile U2FIFObits_t U2FIFObits __attribute__((address(0x2C3)));
# 33740 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2UIR __attribute__((address(0x2C4)));

__asm("U2UIR equ 02C4h");


typedef union {
    struct {
        unsigned :2;
        unsigned ABDIE :1;
        unsigned :3;
        unsigned ABDIF :1;
        unsigned WUIF :1;
    };
    struct {
        unsigned :2;
        unsigned U2ABDIE :1;
        unsigned :3;
        unsigned U2ABDIF :1;
        unsigned U2WUIF :1;
    };
} U2UIRbits_t;
extern volatile U2UIRbits_t U2UIRbits __attribute__((address(0x2C4)));
# 33796 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2ERRIR __attribute__((address(0x2C5)));

__asm("U2ERRIR equ 02C5h");


typedef union {
    struct {
        unsigned TXCIF :1;
        unsigned RXFOIF :1;
        unsigned RXBKIF :1;
        unsigned FERIF :1;
        unsigned CERIF :1;
        unsigned ABDOVF :1;
        unsigned PERIF :1;
        unsigned TXMTIF :1;
    };
    struct {
        unsigned U2TXCIF :1;
        unsigned U2RXFOIF :1;
        unsigned U2RXBKIF :1;
        unsigned U2FERIF :1;
        unsigned U2CERIF :1;
        unsigned U2ABDOVF :1;
        unsigned U2PERIF :1;
        unsigned U2TXMTIF :1;
    };
} U2ERRIRbits_t;
extern volatile U2ERRIRbits_t U2ERRIRbits __attribute__((address(0x2C5)));
# 33908 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U2ERRIE __attribute__((address(0x2C6)));

__asm("U2ERRIE equ 02C6h");


typedef union {
    struct {
        unsigned TXCIE :1;
        unsigned RXFOIE :1;
        unsigned RXBKIE :1;
        unsigned FERIE :1;
        unsigned CERIE :1;
        unsigned ABDOVE :1;
        unsigned PERIE :1;
        unsigned TXMTIE :1;
    };
    struct {
        unsigned U2TXCIE :1;
        unsigned U2RXFOIE :1;
        unsigned U2RXBKIE :1;
        unsigned U2FERIE :1;
        unsigned U2CERIE :1;
        unsigned U2ABDOVE :1;
        unsigned U2PERIE :1;
        unsigned U2TXMTIE :1;
    };
} U2ERRIEbits_t;
extern volatile U2ERRIEbits_t U2ERRIEbits __attribute__((address(0x2C6)));
# 34020 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3RXB __attribute__((address(0x2C7)));

__asm("U3RXB equ 02C7h");


extern volatile unsigned char U3RXBL __attribute__((address(0x2C7)));

__asm("U3RXBL equ 02C7h");


typedef union {
    struct {
        unsigned RXB :8;
    };
} U3RXBbits_t;
extern volatile U3RXBbits_t U3RXBbits __attribute__((address(0x2C7)));







typedef union {
    struct {
        unsigned RXB :8;
    };
} U3RXBLbits_t;
extern volatile U3RXBLbits_t U3RXBLbits __attribute__((address(0x2C7)));
# 34058 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3TXB __attribute__((address(0x2C9)));

__asm("U3TXB equ 02C9h");


extern volatile unsigned char U3TXBL __attribute__((address(0x2C9)));

__asm("U3TXBL equ 02C9h");


typedef union {
    struct {
        unsigned TXB :8;
    };
} U3TXBbits_t;
extern volatile U3TXBbits_t U3TXBbits __attribute__((address(0x2C9)));







typedef union {
    struct {
        unsigned TXB :8;
    };
} U3TXBLbits_t;
extern volatile U3TXBLbits_t U3TXBLbits __attribute__((address(0x2C9)));
# 34096 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3P1 __attribute__((address(0x2CB)));

__asm("U3P1 equ 02CBh");




extern volatile unsigned char U3P1L __attribute__((address(0x2CB)));

__asm("U3P1L equ 02CBh");


typedef union {
    struct {
        unsigned P1L :8;
    };
} U3P1Lbits_t;
extern volatile U3P1Lbits_t U3P1Lbits __attribute__((address(0x2CB)));
# 34123 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3P2 __attribute__((address(0x2CD)));

__asm("U3P2 equ 02CDh");




extern volatile unsigned char U3P2L __attribute__((address(0x2CD)));

__asm("U3P2L equ 02CDh");


typedef union {
    struct {
        unsigned P2L :8;
    };
} U3P2Lbits_t;
extern volatile U3P2Lbits_t U3P2Lbits __attribute__((address(0x2CD)));
# 34150 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3P3 __attribute__((address(0x2CF)));

__asm("U3P3 equ 02CFh");




extern volatile unsigned char U3P3L __attribute__((address(0x2CF)));

__asm("U3P3L equ 02CFh");


typedef union {
    struct {
        unsigned P3L :8;
    };
} U3P3Lbits_t;
extern volatile U3P3Lbits_t U3P3Lbits __attribute__((address(0x2CF)));
# 34177 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3CON0 __attribute__((address(0x2D1)));

__asm("U3CON0 equ 02D1h");


typedef union {
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
    struct {
        unsigned U3MODE :4;
        unsigned U3RXEN :1;
        unsigned U3TXEN :1;
        unsigned U3ABDEN :1;
        unsigned U3BRGS :1;
    };
    struct {
        unsigned U3MODE0 :1;
        unsigned U3MODE1 :1;
        unsigned U3MODE2 :1;
    };
    struct {
        unsigned MODE :4;
        unsigned RXEN :1;
        unsigned TXEN :1;
        unsigned ABDEN :1;
        unsigned BRGS :1;
    };
} U3CON0bits_t;
extern volatile U3CON0bits_t U3CON0bits __attribute__((address(0x2D1)));
# 34293 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3CON1 __attribute__((address(0x2D2)));

__asm("U3CON1 equ 02D2h");


typedef union {
    struct {
        unsigned SENDB :1;
        unsigned BRKOVR :1;
        unsigned :1;
        unsigned RXBIMD :1;
        unsigned WUE :1;
        unsigned :2;
        unsigned ON :1;
    };
    struct {
        unsigned U3SENDB :1;
        unsigned U3BRKOVR :1;
        unsigned :1;
        unsigned U3RXBIMD :1;
        unsigned U3WUE :1;
        unsigned :2;
        unsigned U3ON :1;
    };
} U3CON1bits_t;
extern volatile U3CON1bits_t U3CON1bits __attribute__((address(0x2D2)));
# 34373 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3CON2 __attribute__((address(0x2D3)));

__asm("U3CON2 equ 02D3h");


typedef union {
    struct {
        unsigned FLO :2;
        unsigned TXPOL :1;
        unsigned :1;
        unsigned STP :2;
        unsigned RXPOL :1;
        unsigned RUNOVF :1;
    };
    struct {
        unsigned FLO0 :1;
        unsigned FLO1 :1;
        unsigned :2;
        unsigned STP0 :1;
        unsigned STP1 :1;
    };
    struct {
        unsigned U3FLO :2;
        unsigned U3TXPOL :1;
        unsigned :1;
        unsigned U3STP :2;
        unsigned U3RXPOL :1;
        unsigned U3RUNOVF :1;
    };
    struct {
        unsigned U3FLO0 :1;
        unsigned U3FLO1 :1;
        unsigned :2;
        unsigned U3STP0 :1;
        unsigned U3STP1 :1;
    };
} U3CON2bits_t;
extern volatile U3CON2bits_t U3CON2bits __attribute__((address(0x2D3)));
# 34505 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U3BRG __attribute__((address(0x2D4)));

__asm("U3BRG equ 02D4h");




extern volatile unsigned char U3BRGL __attribute__((address(0x2D4)));

__asm("U3BRGL equ 02D4h");


typedef union {
    struct {
        unsigned BRGL :8;
    };
} U3BRGLbits_t;
extern volatile U3BRGLbits_t U3BRGLbits __attribute__((address(0x2D4)));
# 34532 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3BRGH __attribute__((address(0x2D5)));

__asm("U3BRGH equ 02D5h");


typedef union {
    struct {
        unsigned BRGH :8;
    };
} U3BRGHbits_t;
extern volatile U3BRGHbits_t U3BRGHbits __attribute__((address(0x2D5)));
# 34552 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3FIFO __attribute__((address(0x2D6)));

__asm("U3FIFO equ 02D6h");


typedef union {
    struct {
        unsigned RXBF :1;
        unsigned RXBE :1;
        unsigned XON :1;
        unsigned RXIDL :1;
        unsigned TXBF :1;
        unsigned TXBE :1;
        unsigned STPMD :1;
        unsigned TXWRE :1;
    };
    struct {
        unsigned U3RXBF :1;
        unsigned U3RXBE :1;
        unsigned U3XON :1;
        unsigned U3RXIDL :1;
        unsigned U3TXBF :1;
        unsigned U3TXBE :1;
        unsigned U3STPMD :1;
        unsigned U3TXWRE :1;
    };
    struct {
        unsigned :3;
        unsigned U3RCIDL :1;
    };
    struct {
        unsigned :3;
        unsigned RCIDL :1;
    };
} U3FIFObits_t;
extern volatile U3FIFObits_t U3FIFObits __attribute__((address(0x2D6)));
# 34682 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3UIR __attribute__((address(0x2D7)));

__asm("U3UIR equ 02D7h");


typedef union {
    struct {
        unsigned :2;
        unsigned ABDIE :1;
        unsigned :3;
        unsigned ABDIF :1;
        unsigned WUIF :1;
    };
    struct {
        unsigned :2;
        unsigned U3ABDIE :1;
        unsigned :3;
        unsigned U3ABDIF :1;
        unsigned U3WUIF :1;
    };
} U3UIRbits_t;
extern volatile U3UIRbits_t U3UIRbits __attribute__((address(0x2D7)));
# 34738 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3ERRIR __attribute__((address(0x2D8)));

__asm("U3ERRIR equ 02D8h");


typedef union {
    struct {
        unsigned TXCIF :1;
        unsigned RXFOIF :1;
        unsigned RXBKIF :1;
        unsigned FERIF :1;
        unsigned CERIF :1;
        unsigned ABDOVF :1;
        unsigned PERIF :1;
        unsigned TXMTIF :1;
    };
    struct {
        unsigned U3TXCIF :1;
        unsigned U3RXFOIF :1;
        unsigned U3RXBKIF :1;
        unsigned U3FERIF :1;
        unsigned U3CERIF :1;
        unsigned U3ABDOVF :1;
        unsigned U3PERIF :1;
        unsigned U3TXMTIF :1;
    };
} U3ERRIRbits_t;
extern volatile U3ERRIRbits_t U3ERRIRbits __attribute__((address(0x2D8)));
# 34850 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U3ERRIE __attribute__((address(0x2D9)));

__asm("U3ERRIE equ 02D9h");


typedef union {
    struct {
        unsigned TXCIE :1;
        unsigned RXFOIE :1;
        unsigned RXBKIE :1;
        unsigned FERIE :1;
        unsigned CERIE :1;
        unsigned ABDOVE :1;
        unsigned PERIE :1;
        unsigned TXMTIE :1;
    };
    struct {
        unsigned U3TXCIE :1;
        unsigned U3RXFOIE :1;
        unsigned U3RXBKIE :1;
        unsigned U3FERIE :1;
        unsigned U3CERIE :1;
        unsigned U3ABDOVE :1;
        unsigned U3PERIE :1;
        unsigned U3TXMTIE :1;
    };
} U3ERRIEbits_t;
extern volatile U3ERRIEbits_t U3ERRIEbits __attribute__((address(0x2D9)));
# 34962 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4RXB __attribute__((address(0x2DA)));

__asm("U4RXB equ 02DAh");


extern volatile unsigned char U4RXBL __attribute__((address(0x2DA)));

__asm("U4RXBL equ 02DAh");


typedef union {
    struct {
        unsigned RXB :8;
    };
} U4RXBbits_t;
extern volatile U4RXBbits_t U4RXBbits __attribute__((address(0x2DA)));







typedef union {
    struct {
        unsigned RXB :8;
    };
} U4RXBLbits_t;
extern volatile U4RXBLbits_t U4RXBLbits __attribute__((address(0x2DA)));
# 35000 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4TXB __attribute__((address(0x2DC)));

__asm("U4TXB equ 02DCh");


extern volatile unsigned char U4TXBL __attribute__((address(0x2DC)));

__asm("U4TXBL equ 02DCh");


typedef union {
    struct {
        unsigned TXB :8;
    };
} U4TXBbits_t;
extern volatile U4TXBbits_t U4TXBbits __attribute__((address(0x2DC)));







typedef union {
    struct {
        unsigned TXB :8;
    };
} U4TXBLbits_t;
extern volatile U4TXBLbits_t U4TXBLbits __attribute__((address(0x2DC)));
# 35038 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4P1 __attribute__((address(0x2DE)));

__asm("U4P1 equ 02DEh");




extern volatile unsigned char U4P1L __attribute__((address(0x2DE)));

__asm("U4P1L equ 02DEh");


typedef union {
    struct {
        unsigned P1L :8;
    };
} U4P1Lbits_t;
extern volatile U4P1Lbits_t U4P1Lbits __attribute__((address(0x2DE)));
# 35065 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4P2 __attribute__((address(0x2E0)));

__asm("U4P2 equ 02E0h");




extern volatile unsigned char U4P2L __attribute__((address(0x2E0)));

__asm("U4P2L equ 02E0h");


typedef union {
    struct {
        unsigned P2L :8;
    };
} U4P2Lbits_t;
extern volatile U4P2Lbits_t U4P2Lbits __attribute__((address(0x2E0)));
# 35092 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4P3 __attribute__((address(0x2E2)));

__asm("U4P3 equ 02E2h");




extern volatile unsigned char U4P3L __attribute__((address(0x2E2)));

__asm("U4P3L equ 02E2h");


typedef union {
    struct {
        unsigned P3L :8;
    };
} U4P3Lbits_t;
extern volatile U4P3Lbits_t U4P3Lbits __attribute__((address(0x2E2)));
# 35119 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4CON0 __attribute__((address(0x2E4)));

__asm("U4CON0 equ 02E4h");


typedef union {
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
    struct {
        unsigned U4MODE :4;
        unsigned U4RXEN :1;
        unsigned U4TXEN :1;
        unsigned U4ABDEN :1;
        unsigned U4BRGS :1;
    };
    struct {
        unsigned U4MODE0 :1;
        unsigned U4MODE1 :1;
        unsigned U4MODE2 :1;
    };
    struct {
        unsigned MODE :4;
        unsigned RXEN :1;
        unsigned TXEN :1;
        unsigned ABDEN :1;
        unsigned BRGS :1;
    };
} U4CON0bits_t;
extern volatile U4CON0bits_t U4CON0bits __attribute__((address(0x2E4)));
# 35235 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4CON1 __attribute__((address(0x2E5)));

__asm("U4CON1 equ 02E5h");


typedef union {
    struct {
        unsigned SENDB :1;
        unsigned BRKOVR :1;
        unsigned :1;
        unsigned RXBIMD :1;
        unsigned WUE :1;
        unsigned :2;
        unsigned ON :1;
    };
    struct {
        unsigned U4SENDB :1;
        unsigned U4BRKOVR :1;
        unsigned :1;
        unsigned U4RXBIMD :1;
        unsigned U4WUE :1;
        unsigned :2;
        unsigned U4ON :1;
    };
} U4CON1bits_t;
extern volatile U4CON1bits_t U4CON1bits __attribute__((address(0x2E5)));
# 35315 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4CON2 __attribute__((address(0x2E6)));

__asm("U4CON2 equ 02E6h");


typedef union {
    struct {
        unsigned FLO :2;
        unsigned TXPOL :1;
        unsigned :1;
        unsigned STP :2;
        unsigned RXPOL :1;
        unsigned RUNOVF :1;
    };
    struct {
        unsigned FLO0 :1;
        unsigned FLO1 :1;
        unsigned :2;
        unsigned STP0 :1;
        unsigned STP1 :1;
    };
    struct {
        unsigned U4FLO :2;
        unsigned U4TXPOL :1;
        unsigned :1;
        unsigned U4STP :2;
        unsigned U4RXPOL :1;
        unsigned U4RUNOVF :1;
    };
    struct {
        unsigned U4FLO0 :1;
        unsigned U4FLO1 :1;
        unsigned :2;
        unsigned U4STP0 :1;
        unsigned U4STP1 :1;
    };
} U4CON2bits_t;
extern volatile U4CON2bits_t U4CON2bits __attribute__((address(0x2E6)));
# 35447 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U4BRG __attribute__((address(0x2E7)));

__asm("U4BRG equ 02E7h");




extern volatile unsigned char U4BRGL __attribute__((address(0x2E7)));

__asm("U4BRGL equ 02E7h");


typedef union {
    struct {
        unsigned BRGL :8;
    };
} U4BRGLbits_t;
extern volatile U4BRGLbits_t U4BRGLbits __attribute__((address(0x2E7)));
# 35474 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4BRGH __attribute__((address(0x2E8)));

__asm("U4BRGH equ 02E8h");


typedef union {
    struct {
        unsigned BRGH :8;
    };
} U4BRGHbits_t;
extern volatile U4BRGHbits_t U4BRGHbits __attribute__((address(0x2E8)));
# 35494 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4FIFO __attribute__((address(0x2E9)));

__asm("U4FIFO equ 02E9h");


typedef union {
    struct {
        unsigned RXBF :1;
        unsigned RXBE :1;
        unsigned XON :1;
        unsigned RXIDL :1;
        unsigned TXBF :1;
        unsigned TXBE :1;
        unsigned STPMD :1;
        unsigned TXWRE :1;
    };
    struct {
        unsigned U4RXBF :1;
        unsigned U4RXBE :1;
        unsigned U4XON :1;
        unsigned U4RXIDL :1;
        unsigned U4TXBF :1;
        unsigned U4TXBE :1;
        unsigned U4STPMD :1;
        unsigned U4TXWRE :1;
    };
    struct {
        unsigned :3;
        unsigned U4RCIDL :1;
    };
    struct {
        unsigned :3;
        unsigned RCIDL :1;
    };
} U4FIFObits_t;
extern volatile U4FIFObits_t U4FIFObits __attribute__((address(0x2E9)));
# 35624 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4UIR __attribute__((address(0x2EA)));

__asm("U4UIR equ 02EAh");


typedef union {
    struct {
        unsigned :2;
        unsigned ABDIE :1;
        unsigned :3;
        unsigned ABDIF :1;
        unsigned WUIF :1;
    };
    struct {
        unsigned :2;
        unsigned U4ABDIE :1;
        unsigned :3;
        unsigned U4ABDIF :1;
        unsigned U4WUIF :1;
    };
} U4UIRbits_t;
extern volatile U4UIRbits_t U4UIRbits __attribute__((address(0x2EA)));
# 35680 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4ERRIR __attribute__((address(0x2EB)));

__asm("U4ERRIR equ 02EBh");


typedef union {
    struct {
        unsigned TXCIF :1;
        unsigned RXFOIF :1;
        unsigned RXBKIF :1;
        unsigned FERIF :1;
        unsigned CERIF :1;
        unsigned ABDOVF :1;
        unsigned PERIF :1;
        unsigned TXMTIF :1;
    };
    struct {
        unsigned U4TXCIF :1;
        unsigned U4RXFOIF :1;
        unsigned U4RXBKIF :1;
        unsigned U4FERIF :1;
        unsigned U4CERIF :1;
        unsigned U4ABDOVF :1;
        unsigned U4PERIF :1;
        unsigned U4TXMTIF :1;
    };
} U4ERRIRbits_t;
extern volatile U4ERRIRbits_t U4ERRIRbits __attribute__((address(0x2EB)));
# 35792 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U4ERRIE __attribute__((address(0x2EC)));

__asm("U4ERRIE equ 02ECh");


typedef union {
    struct {
        unsigned TXCIE :1;
        unsigned RXFOIE :1;
        unsigned RXBKIE :1;
        unsigned FERIE :1;
        unsigned CERIE :1;
        unsigned ABDOVE :1;
        unsigned PERIE :1;
        unsigned TXMTIE :1;
    };
    struct {
        unsigned U4TXCIE :1;
        unsigned U4RXFOIE :1;
        unsigned U4RXBKIE :1;
        unsigned U4FERIE :1;
        unsigned U4CERIE :1;
        unsigned U4ABDOVE :1;
        unsigned U4PERIE :1;
        unsigned U4TXMTIE :1;
    };
} U4ERRIEbits_t;
extern volatile U4ERRIEbits_t U4ERRIEbits __attribute__((address(0x2EC)));
# 35904 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5RXB __attribute__((address(0x2ED)));

__asm("U5RXB equ 02EDh");


extern volatile unsigned char U5RXBL __attribute__((address(0x2ED)));

__asm("U5RXBL equ 02EDh");


typedef union {
    struct {
        unsigned RXB :8;
    };
} U5RXBbits_t;
extern volatile U5RXBbits_t U5RXBbits __attribute__((address(0x2ED)));







typedef union {
    struct {
        unsigned RXB :8;
    };
} U5RXBLbits_t;
extern volatile U5RXBLbits_t U5RXBLbits __attribute__((address(0x2ED)));
# 35942 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5TXB __attribute__((address(0x2EF)));

__asm("U5TXB equ 02EFh");


extern volatile unsigned char U5TXBL __attribute__((address(0x2EF)));

__asm("U5TXBL equ 02EFh");


typedef union {
    struct {
        unsigned TXB :8;
    };
} U5TXBbits_t;
extern volatile U5TXBbits_t U5TXBbits __attribute__((address(0x2EF)));







typedef union {
    struct {
        unsigned TXB :8;
    };
} U5TXBLbits_t;
extern volatile U5TXBLbits_t U5TXBLbits __attribute__((address(0x2EF)));
# 35980 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5P1 __attribute__((address(0x2F1)));

__asm("U5P1 equ 02F1h");




extern volatile unsigned char U5P1L __attribute__((address(0x2F1)));

__asm("U5P1L equ 02F1h");


typedef union {
    struct {
        unsigned P1L :8;
    };
} U5P1Lbits_t;
extern volatile U5P1Lbits_t U5P1Lbits __attribute__((address(0x2F1)));
# 36007 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5P2 __attribute__((address(0x2F3)));

__asm("U5P2 equ 02F3h");




extern volatile unsigned char U5P2L __attribute__((address(0x2F3)));

__asm("U5P2L equ 02F3h");


typedef union {
    struct {
        unsigned P2L :8;
    };
} U5P2Lbits_t;
extern volatile U5P2Lbits_t U5P2Lbits __attribute__((address(0x2F3)));
# 36034 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5P3 __attribute__((address(0x2F5)));

__asm("U5P3 equ 02F5h");




extern volatile unsigned char U5P3L __attribute__((address(0x2F5)));

__asm("U5P3L equ 02F5h");


typedef union {
    struct {
        unsigned P3L :8;
    };
} U5P3Lbits_t;
extern volatile U5P3Lbits_t U5P3Lbits __attribute__((address(0x2F5)));
# 36061 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5CON0 __attribute__((address(0x2F7)));

__asm("U5CON0 equ 02F7h");


typedef union {
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
    struct {
        unsigned U5MODE :4;
        unsigned U5RXEN :1;
        unsigned U5TXEN :1;
        unsigned U5ABDEN :1;
        unsigned U5BRGS :1;
    };
    struct {
        unsigned U5MODE0 :1;
        unsigned U5MODE1 :1;
        unsigned U5MODE2 :1;
    };
    struct {
        unsigned MODE :4;
        unsigned RXEN :1;
        unsigned TXEN :1;
        unsigned ABDEN :1;
        unsigned BRGS :1;
    };
} U5CON0bits_t;
extern volatile U5CON0bits_t U5CON0bits __attribute__((address(0x2F7)));
# 36177 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5CON1 __attribute__((address(0x2F8)));

__asm("U5CON1 equ 02F8h");


typedef union {
    struct {
        unsigned SENDB :1;
        unsigned BRKOVR :1;
        unsigned :1;
        unsigned RXBIMD :1;
        unsigned WUE :1;
        unsigned :2;
        unsigned ON :1;
    };
    struct {
        unsigned U5SENDB :1;
        unsigned U5BRKOVR :1;
        unsigned :1;
        unsigned U5RXBIMD :1;
        unsigned U5WUE :1;
        unsigned :2;
        unsigned U5ON :1;
    };
} U5CON1bits_t;
extern volatile U5CON1bits_t U5CON1bits __attribute__((address(0x2F8)));
# 36257 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5CON2 __attribute__((address(0x2F9)));

__asm("U5CON2 equ 02F9h");


typedef union {
    struct {
        unsigned FLO :2;
        unsigned TXPOL :1;
        unsigned :1;
        unsigned STP :2;
        unsigned RXPOL :1;
        unsigned RUNOVF :1;
    };
    struct {
        unsigned FLO0 :1;
        unsigned FLO1 :1;
        unsigned :2;
        unsigned STP0 :1;
        unsigned STP1 :1;
    };
    struct {
        unsigned U5FLO :2;
        unsigned U5TXPOL :1;
        unsigned :1;
        unsigned U5STP :2;
        unsigned U5RXPOL :1;
        unsigned U5RUNOVF :1;
    };
    struct {
        unsigned U5FLO0 :1;
        unsigned U5FLO1 :1;
        unsigned :2;
        unsigned U5STP0 :1;
        unsigned U5STP1 :1;
    };
} U5CON2bits_t;
extern volatile U5CON2bits_t U5CON2bits __attribute__((address(0x2F9)));
# 36389 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short U5BRG __attribute__((address(0x2FA)));

__asm("U5BRG equ 02FAh");




extern volatile unsigned char U5BRGL __attribute__((address(0x2FA)));

__asm("U5BRGL equ 02FAh");


typedef union {
    struct {
        unsigned BRGL :8;
    };
} U5BRGLbits_t;
extern volatile U5BRGLbits_t U5BRGLbits __attribute__((address(0x2FA)));
# 36416 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5BRGH __attribute__((address(0x2FB)));

__asm("U5BRGH equ 02FBh");


typedef union {
    struct {
        unsigned BRGH :8;
    };
} U5BRGHbits_t;
extern volatile U5BRGHbits_t U5BRGHbits __attribute__((address(0x2FB)));
# 36436 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5FIFO __attribute__((address(0x2FC)));

__asm("U5FIFO equ 02FCh");


typedef union {
    struct {
        unsigned RXBF :1;
        unsigned RXBE :1;
        unsigned XON :1;
        unsigned RXIDL :1;
        unsigned TXBF :1;
        unsigned TXBE :1;
        unsigned STPMD :1;
        unsigned TXWRE :1;
    };
    struct {
        unsigned U5RXBF :1;
        unsigned U5RXBE :1;
        unsigned U5XON :1;
        unsigned U5RXIDL :1;
        unsigned U5TXBF :1;
        unsigned U5TXBE :1;
        unsigned U5STPMD :1;
        unsigned U5TXWRE :1;
    };
    struct {
        unsigned :3;
        unsigned U5RCIDL :1;
    };
    struct {
        unsigned :3;
        unsigned RCIDL :1;
    };
} U5FIFObits_t;
extern volatile U5FIFObits_t U5FIFObits __attribute__((address(0x2FC)));
# 36566 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5UIR __attribute__((address(0x2FD)));

__asm("U5UIR equ 02FDh");


typedef union {
    struct {
        unsigned :2;
        unsigned ABDIE :1;
        unsigned :3;
        unsigned ABDIF :1;
        unsigned WUIF :1;
    };
    struct {
        unsigned :2;
        unsigned U5ABDIE :1;
        unsigned :3;
        unsigned U5ABDIF :1;
        unsigned U5WUIF :1;
    };
} U5UIRbits_t;
extern volatile U5UIRbits_t U5UIRbits __attribute__((address(0x2FD)));
# 36622 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5ERRIR __attribute__((address(0x2FE)));

__asm("U5ERRIR equ 02FEh");


typedef union {
    struct {
        unsigned TXCIF :1;
        unsigned RXFOIF :1;
        unsigned RXBKIF :1;
        unsigned FERIF :1;
        unsigned CERIF :1;
        unsigned ABDOVF :1;
        unsigned PERIF :1;
        unsigned TXMTIF :1;
    };
    struct {
        unsigned U5TXCIF :1;
        unsigned U5RXFOIF :1;
        unsigned U5RXBKIF :1;
        unsigned U5FERIF :1;
        unsigned U5CERIF :1;
        unsigned U5ABDOVF :1;
        unsigned U5PERIF :1;
        unsigned U5TXMTIF :1;
    };
} U5ERRIRbits_t;
extern volatile U5ERRIRbits_t U5ERRIRbits __attribute__((address(0x2FE)));
# 36734 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char U5ERRIE __attribute__((address(0x2FF)));

__asm("U5ERRIE equ 02FFh");


typedef union {
    struct {
        unsigned TXCIE :1;
        unsigned RXFOIE :1;
        unsigned RXBKIE :1;
        unsigned FERIE :1;
        unsigned CERIE :1;
        unsigned ABDOVE :1;
        unsigned PERIE :1;
        unsigned TXMTIE :1;
    };
    struct {
        unsigned U5TXCIE :1;
        unsigned U5RXFOIE :1;
        unsigned U5RXBKIE :1;
        unsigned U5FERIE :1;
        unsigned U5CERIE :1;
        unsigned U5ABDOVE :1;
        unsigned U5PERIE :1;
        unsigned U5TXMTIE :1;
    };
} U5ERRIEbits_t;
extern volatile U5ERRIEbits_t U5ERRIEbits __attribute__((address(0x2FF)));
# 36847 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 SMT1TMR __attribute__((address(0x300)));


__asm("SMT1TMR equ 0300h");




extern volatile unsigned char SMT1TMRL __attribute__((address(0x300)));

__asm("SMT1TMRL equ 0300h");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR0 :1;
        unsigned TMR1 :1;
        unsigned TMR2 :1;
        unsigned TMR3 :1;
        unsigned TMR4 :1;
        unsigned TMR5 :1;
        unsigned TMR6 :1;
        unsigned TMR7 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR0 :1;
        unsigned SMT1TMR1 :1;
        unsigned SMT1TMR2 :1;
        unsigned SMT1TMR3 :1;
        unsigned SMT1TMR4 :1;
        unsigned SMT1TMR5 :1;
        unsigned SMT1TMR6 :1;
        unsigned SMT1TMR7 :1;
    };
} SMT1TMRLbits_t;
extern volatile SMT1TMRLbits_t SMT1TMRLbits __attribute__((address(0x300)));
# 36983 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1TMRH __attribute__((address(0x301)));

__asm("SMT1TMRH equ 0301h");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR8 :1;
        unsigned TMR9 :1;
        unsigned TMR10 :1;
        unsigned TMR11 :1;
        unsigned TMR12 :1;
        unsigned TMR13 :1;
        unsigned TMR14 :1;
        unsigned TMR15 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR8 :1;
        unsigned SMT1TMR9 :1;
        unsigned SMT1TMR10 :1;
        unsigned SMT1TMR11 :1;
        unsigned SMT1TMR12 :1;
        unsigned SMT1TMR13 :1;
        unsigned SMT1TMR14 :1;
        unsigned SMT1TMR15 :1;
    };
} SMT1TMRHbits_t;
extern volatile SMT1TMRHbits_t SMT1TMRHbits __attribute__((address(0x301)));
# 37111 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1TMRU __attribute__((address(0x302)));

__asm("SMT1TMRU equ 0302h");


typedef union {
    struct {
        unsigned TMR :8;
    };
    struct {
        unsigned TMR16 :1;
        unsigned TMR17 :1;
        unsigned TMR18 :1;
        unsigned TMR19 :1;
        unsigned TMR20 :1;
        unsigned TMR21 :1;
        unsigned TMR22 :1;
        unsigned TMR23 :1;
    };
    struct {
        unsigned SMT1TMR :8;
    };
    struct {
        unsigned SMT1TMR16 :1;
        unsigned SMT1TMR17 :1;
        unsigned SMT1TMR18 :1;
        unsigned SMT1TMR19 :1;
        unsigned SMT1TMR20 :1;
        unsigned SMT1TMR21 :1;
        unsigned SMT1TMR22 :1;
        unsigned SMT1TMR23 :1;
    };
} SMT1TMRUbits_t;
extern volatile SMT1TMRUbits_t SMT1TMRUbits __attribute__((address(0x302)));
# 37240 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 SMT1CPR __attribute__((address(0x303)));


__asm("SMT1CPR equ 0303h");




extern volatile unsigned char SMT1CPRL __attribute__((address(0x303)));

__asm("SMT1CPRL equ 0303h");


typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR0 :1;
        unsigned CPR1 :1;
        unsigned CPR2 :1;
        unsigned CPR3 :1;
        unsigned CPR4 :1;
        unsigned CPR5 :1;
        unsigned CPR6 :1;
        unsigned CPR7 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
    struct {
        unsigned SMT1CPR0 :1;
        unsigned SMT1CPR1 :1;
        unsigned SMT1CPR2 :1;
        unsigned SMT1CPR3 :1;
        unsigned SMT1CPR4 :1;
        unsigned SMT1CPR5 :1;
        unsigned SMT1CPR6 :1;
        unsigned SMT1CPR7 :1;
    };
} SMT1CPRLbits_t;
extern volatile SMT1CPRLbits_t SMT1CPRLbits __attribute__((address(0x303)));
# 37376 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1CPRH __attribute__((address(0x304)));

__asm("SMT1CPRH equ 0304h");


typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR8 :1;
        unsigned CPR9 :1;
        unsigned CPR10 :1;
        unsigned CPR11 :1;
        unsigned CPR12 :1;
        unsigned CPR13 :1;
        unsigned CPR14 :1;
        unsigned CPR15 :1;
    };
    struct {
        unsigned SMT1CPR8 :1;
        unsigned SMT1CPR9 :1;
        unsigned SMT1CPR10 :1;
        unsigned SMT1CPR11 :1;
        unsigned SMT1CPR12 :1;
        unsigned SMT1CPR13 :1;
        unsigned SMT1CPR14 :1;
        unsigned SMT1CPR15 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
} SMT1CPRHbits_t;
extern volatile SMT1CPRHbits_t SMT1CPRHbits __attribute__((address(0x304)));
# 37504 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1CPRU __attribute__((address(0x305)));

__asm("SMT1CPRU equ 0305h");


typedef union {
    struct {
        unsigned CPR :8;
    };
    struct {
        unsigned CPR16 :1;
        unsigned CPR17 :1;
        unsigned CPR18 :1;
        unsigned CPR19 :1;
        unsigned CPR20 :1;
        unsigned CPR21 :1;
        unsigned CPR22 :1;
        unsigned CPR23 :1;
    };
    struct {
        unsigned SMT1CPR16 :1;
        unsigned SMT1CPR17 :1;
        unsigned SMT1CPR18 :1;
        unsigned SMT1CPR19 :1;
        unsigned SMT1CPR20 :1;
        unsigned SMT1CPR21 :1;
        unsigned SMT1CPR22 :1;
        unsigned SMT1CPR23 :1;
    };
    struct {
        unsigned SMT1CPR :8;
    };
} SMT1CPRUbits_t;
extern volatile SMT1CPRUbits_t SMT1CPRUbits __attribute__((address(0x305)));
# 37633 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 SMT1CPW __attribute__((address(0x306)));


__asm("SMT1CPW equ 0306h");




extern volatile unsigned char SMT1CPWL __attribute__((address(0x306)));

__asm("SMT1CPWL equ 0306h");


typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW0 :1;
        unsigned CPW1 :1;
        unsigned CPW2 :1;
        unsigned CPW3 :1;
        unsigned CPW4 :1;
        unsigned CPW5 :1;
        unsigned CPW6 :1;
        unsigned CPW7 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW0 :1;
        unsigned SMT1CPW1 :1;
        unsigned SMT1CPW2 :1;
        unsigned SMT1CPW3 :1;
        unsigned SMT1CPW4 :1;
        unsigned SMT1CPW5 :1;
        unsigned SMT1CPW6 :1;
        unsigned SMT1CPW7 :1;
    };
} SMT1CPWLbits_t;
extern volatile SMT1CPWLbits_t SMT1CPWLbits __attribute__((address(0x306)));
# 37769 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1CPWH __attribute__((address(0x307)));

__asm("SMT1CPWH equ 0307h");


typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW8 :1;
        unsigned CPW9 :1;
        unsigned CPW10 :1;
        unsigned CPW11 :1;
        unsigned CPW12 :1;
        unsigned CPW13 :1;
        unsigned CPW14 :1;
        unsigned CPW15 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW8 :1;
        unsigned SMT1CPW9 :1;
        unsigned SMT1CPW10 :1;
        unsigned SMT1CPW11 :1;
        unsigned SMT1CPW12 :1;
        unsigned SMT1CPW13 :1;
        unsigned SMT1CPW14 :1;
        unsigned SMT1CPW15 :1;
    };
} SMT1CPWHbits_t;
extern volatile SMT1CPWHbits_t SMT1CPWHbits __attribute__((address(0x307)));
# 37897 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1CPWU __attribute__((address(0x308)));

__asm("SMT1CPWU equ 0308h");


typedef union {
    struct {
        unsigned CPW :8;
    };
    struct {
        unsigned CPW16 :1;
        unsigned CPW17 :1;
        unsigned CPW18 :1;
        unsigned CPW19 :1;
        unsigned CPW20 :1;
        unsigned CPW21 :1;
        unsigned CPW22 :1;
        unsigned CPW23 :1;
    };
    struct {
        unsigned SMT1CPW :8;
    };
    struct {
        unsigned SMT1CPW16 :1;
        unsigned SMT1CPW17 :1;
        unsigned SMT1CPW18 :1;
        unsigned SMT1CPW19 :1;
        unsigned SMT1CPW20 :1;
        unsigned SMT1CPW21 :1;
        unsigned SMT1CPW22 :1;
        unsigned SMT1CPW23 :1;
    };
} SMT1CPWUbits_t;
extern volatile SMT1CPWUbits_t SMT1CPWUbits __attribute__((address(0x308)));
# 38026 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 SMT1PR __attribute__((address(0x309)));


__asm("SMT1PR equ 0309h");




extern volatile unsigned char SMT1PRL __attribute__((address(0x309)));

__asm("SMT1PRL equ 0309h");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR0 :1;
        unsigned PR1 :1;
        unsigned PR2 :1;
        unsigned PR3 :1;
        unsigned PR4 :1;
        unsigned PR5 :1;
        unsigned PR6 :1;
        unsigned PR7 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR0 :1;
        unsigned SMT1PR1 :1;
        unsigned SMT1PR2 :1;
        unsigned SMT1PR3 :1;
        unsigned SMT1PR4 :1;
        unsigned SMT1PR5 :1;
        unsigned SMT1PR6 :1;
        unsigned SMT1PR7 :1;
    };
} SMT1PRLbits_t;
extern volatile SMT1PRLbits_t SMT1PRLbits __attribute__((address(0x309)));
# 38162 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1PRH __attribute__((address(0x30A)));

__asm("SMT1PRH equ 030Ah");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR8 :1;
        unsigned PR9 :1;
        unsigned PR10 :1;
        unsigned PR11 :1;
        unsigned PR12 :1;
        unsigned PR13 :1;
        unsigned PR14 :1;
        unsigned PR15 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR8 :1;
        unsigned SMT1PR9 :1;
        unsigned SMT1PR10 :1;
        unsigned SMT1PR11 :1;
        unsigned SMT1PR12 :1;
        unsigned SMT1PR13 :1;
        unsigned SMT1PR14 :1;
        unsigned SMT1PR15 :1;
    };
} SMT1PRHbits_t;
extern volatile SMT1PRHbits_t SMT1PRHbits __attribute__((address(0x30A)));
# 38290 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1PRU __attribute__((address(0x30B)));

__asm("SMT1PRU equ 030Bh");


typedef union {
    struct {
        unsigned PR :8;
    };
    struct {
        unsigned PR16 :1;
        unsigned PR17 :1;
        unsigned PR18 :1;
        unsigned PR19 :1;
        unsigned PR20 :1;
        unsigned PR21 :1;
        unsigned PR22 :1;
        unsigned PR23 :1;
    };
    struct {
        unsigned SMT1PR :8;
    };
    struct {
        unsigned SMT1PR16 :1;
        unsigned SMT1PR17 :1;
        unsigned SMT1PR18 :1;
        unsigned SMT1PR19 :1;
        unsigned SMT1PR20 :1;
        unsigned SMT1PR21 :1;
        unsigned SMT1PR22 :1;
        unsigned SMT1PR23 :1;
    };
} SMT1PRUbits_t;
extern volatile SMT1PRUbits_t SMT1PRUbits __attribute__((address(0x30B)));
# 38418 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1CON0 __attribute__((address(0x30C)));

__asm("SMT1CON0 equ 030Ch");


typedef union {
    struct {
        unsigned PS :2;
        unsigned CPOL :1;
        unsigned SPOL :1;
        unsigned WPOL :1;
        unsigned STP :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned SMT1PS :2;
        unsigned SMT1CPOL :1;
        unsigned SMT1SPOL :1;
        unsigned SMT1WOL :1;
        unsigned SMT1STP :1;
        unsigned :1;
        unsigned SMT1EN :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
    };
    struct {
        unsigned SMT1PS0 :1;
        unsigned SMT1PS1 :1;
    };
} SMT1CON0bits_t;
extern volatile SMT1CON0bits_t SMT1CON0bits __attribute__((address(0x30C)));
# 38536 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1CON1 __attribute__((address(0x30D)));

__asm("SMT1CON1 equ 030Dh");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned :2;
        unsigned REPEAT :1;
        unsigned GO :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned :2;
        unsigned SMT1REPEAT :1;
        unsigned SMT1GO :1;
    };
    struct {
        unsigned SMT1MODE :4;
    };
} SMT1CON1bits_t;
extern volatile SMT1CON1bits_t SMT1CON1bits __attribute__((address(0x30D)));
# 38616 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1STAT __attribute__((address(0x30E)));

__asm("SMT1STAT equ 030Eh");


typedef union {
    struct {
        unsigned AS :1;
        unsigned WS :1;
        unsigned TS :1;
        unsigned :2;
        unsigned RST :1;
        unsigned CPWUP :1;
        unsigned CPRUP :1;
    };
    struct {
        unsigned SMT1AS :1;
        unsigned SMT1WS :1;
        unsigned SMT1TS :1;
        unsigned :2;
        unsigned SMT1RESET :1;
        unsigned SMT1CPWUP :1;
        unsigned SMT1CPRUP :1;
    };
    struct {
        unsigned :5;
        unsigned SMT1RST :1;
    };
} SMT1STATbits_t;
extern volatile SMT1STATbits_t SMT1STATbits __attribute__((address(0x30E)));
# 38715 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1CLK __attribute__((address(0x30F)));

__asm("SMT1CLK equ 030Fh");


typedef union {
    struct {
        unsigned CSEL :3;
    };
    struct {
        unsigned CSEL0 :1;
        unsigned CSEL1 :1;
        unsigned CSEL2 :1;
    };
    struct {
        unsigned SMT1CSEL :3;
    };
    struct {
        unsigned SMT1CSEL0 :1;
        unsigned SMT1CSEL1 :1;
        unsigned SMT1CSEL2 :1;
    };
} SMT1CLKbits_t;
extern volatile SMT1CLKbits_t SMT1CLKbits __attribute__((address(0x30F)));
# 38783 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1SIG __attribute__((address(0x310)));

__asm("SMT1SIG equ 0310h");


typedef union {
    struct {
        unsigned SSEL :5;
    };
    struct {
        unsigned SSEL0 :1;
        unsigned SSEL1 :1;
        unsigned SSEL2 :1;
        unsigned SSEL3 :1;
        unsigned SSEL4 :1;
    };
    struct {
        unsigned SMT1SSEL :5;
    };
    struct {
        unsigned SMT1SSEL0 :1;
        unsigned SMT1SSEL1 :1;
        unsigned SMT1SSEL2 :1;
        unsigned SMT1SSEL3 :1;
        unsigned SMT1SSEL4 :1;
    };
} SMT1SIGbits_t;
extern volatile SMT1SIGbits_t SMT1SIGbits __attribute__((address(0x310)));
# 38875 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SMT1WIN __attribute__((address(0x311)));

__asm("SMT1WIN equ 0311h");


typedef union {
    struct {
        unsigned WSEL :5;
    };
    struct {
        unsigned WSEL0 :1;
        unsigned WSEL1 :1;
        unsigned WSEL2 :1;
        unsigned WSEL3 :1;
        unsigned WSEL4 :1;
    };
    struct {
        unsigned SMT1WSEL :5;
    };
    struct {
        unsigned SMT1WSEL0 :1;
        unsigned SMT1WSEL1 :1;
        unsigned SMT1WSEL2 :1;
        unsigned SMT1WSEL3 :1;
        unsigned SMT1WSEL4 :1;
    };
} SMT1WINbits_t;
extern volatile SMT1WINbits_t SMT1WINbits __attribute__((address(0x311)));
# 38967 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TMR0L __attribute__((address(0x318)));

__asm("TMR0L equ 0318h");


extern volatile unsigned char TMR0 __attribute__((address(0x318)));

__asm("TMR0 equ 0318h");


typedef union {
    struct {
        unsigned TMR0L :8;
    };
    struct {
        unsigned TMR0L0 :1;
        unsigned TMR0L1 :1;
        unsigned TMR0L2 :1;
        unsigned TMR0L3 :1;
        unsigned TMR0L4 :1;
        unsigned TMR0L5 :1;
        unsigned TMR0L6 :1;
        unsigned TMR0L7 :1;
    };
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __attribute__((address(0x318)));
# 39040 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned TMR0L :8;
    };
    struct {
        unsigned TMR0L0 :1;
        unsigned TMR0L1 :1;
        unsigned TMR0L2 :1;
        unsigned TMR0L3 :1;
        unsigned TMR0L4 :1;
        unsigned TMR0L5 :1;
        unsigned TMR0L6 :1;
        unsigned TMR0L7 :1;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x318)));
# 39105 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TMR0H __attribute__((address(0x319)));

__asm("TMR0H equ 0319h");


extern volatile unsigned char PR0 __attribute__((address(0x319)));

__asm("PR0 equ 0319h");


typedef union {
    struct {
        unsigned TMR0H :8;
    };
    struct {
        unsigned TMR0H0 :1;
        unsigned TMR0H1 :1;
        unsigned TMR0H2 :1;
        unsigned TMR0H3 :1;
        unsigned TMR0H4 :1;
        unsigned TMR0H5 :1;
        unsigned TMR0H6 :1;
        unsigned TMR0H7 :1;
    };
    struct {
        unsigned T0PR0 :1;
        unsigned T0PR1 :1;
        unsigned T0PR2 :1;
        unsigned T0PR3 :1;
        unsigned T0PR4 :1;
        unsigned T0PR5 :1;
        unsigned T0PR6 :1;
        unsigned T0PR7 :1;
    };
    struct {
        unsigned T0PR :8;
    };
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __attribute__((address(0x319)));
# 39236 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned TMR0H :8;
    };
    struct {
        unsigned TMR0H0 :1;
        unsigned TMR0H1 :1;
        unsigned TMR0H2 :1;
        unsigned TMR0H3 :1;
        unsigned TMR0H4 :1;
        unsigned TMR0H5 :1;
        unsigned TMR0H6 :1;
        unsigned TMR0H7 :1;
    };
    struct {
        unsigned T0PR0 :1;
        unsigned T0PR1 :1;
        unsigned T0PR2 :1;
        unsigned T0PR3 :1;
        unsigned T0PR4 :1;
        unsigned T0PR5 :1;
        unsigned T0PR6 :1;
        unsigned T0PR7 :1;
    };
    struct {
        unsigned T0PR :8;
    };
} PR0bits_t;
extern volatile PR0bits_t PR0bits __attribute__((address(0x319)));
# 39359 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T0CON0 __attribute__((address(0x31A)));

__asm("T0CON0 equ 031Ah");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned MD16 :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned T0OUTPS :4;
        unsigned T0MD16 :1;
        unsigned T0OUT :1;
        unsigned :1;
        unsigned T0EN :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned T016BIT :1;
    };
    struct {
        unsigned T0OUTPS0 :1;
        unsigned T0OUTPS1 :1;
        unsigned T0OUTPS2 :1;
        unsigned T0OUTPS3 :1;
    };
} T0CON0bits_t;
extern volatile T0CON0bits_t T0CON0bits __attribute__((address(0x31A)));
# 39483 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T0CON1 __attribute__((address(0x31B)));

__asm("T0CON1 equ 031Bh");


typedef union {
    struct {
        unsigned CKPS :4;
        unsigned ASYNC :1;
        unsigned CS :3;
    };
    struct {
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
        unsigned CKPS3 :1;
        unsigned T0ASYNC :1;
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
    };
    struct {
        unsigned T0CKPS :4;
        unsigned :1;
        unsigned T0CS :3;
    };
    struct {
        unsigned T0CKPS0 :1;
        unsigned T0CKPS1 :1;
        unsigned T0CKPS2 :1;
        unsigned T0CKPS3 :1;
        unsigned :1;
        unsigned T0CS0 :1;
        unsigned T0CS1 :1;
        unsigned T0CS2 :1;
    };
} T0CON1bits_t;
extern volatile T0CON1bits_t T0CON1bits __attribute__((address(0x31B)));
# 39625 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x31C)));

__asm("TMR1 equ 031Ch");




extern volatile unsigned char TMR1L __attribute__((address(0x31C)));

__asm("TMR1L equ 031Ch");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
    struct {
        unsigned TMR1L0 :1;
        unsigned TMR1L1 :1;
        unsigned TMR1L2 :1;
        unsigned TMR1L3 :1;
        unsigned TMR1L4 :1;
        unsigned TMR1L5 :1;
        unsigned TMR1L6 :1;
        unsigned TMR1L7 :1;
    };
    struct {
        unsigned TMR10 :1;
        unsigned TMR11 :1;
        unsigned TMR12 :1;
        unsigned TMR13 :1;
        unsigned TMR14 :1;
        unsigned TMR15 :1;
        unsigned TMR16 :1;
        unsigned TMR17 :1;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x31C)));
# 39752 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x31D)));

__asm("TMR1H equ 031Dh");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
    struct {
        unsigned TMR1H0 :1;
        unsigned TMR1H1 :1;
        unsigned TMR1H2 :1;
        unsigned TMR1H3 :1;
        unsigned TMR1H4 :1;
        unsigned TMR1H5 :1;
        unsigned TMR1H6 :1;
        unsigned TMR1H7 :1;
    };
    struct {
        unsigned TMR18 :1;
        unsigned TMR19 :1;
        unsigned TMR110 :1;
        unsigned TMR111 :1;
        unsigned TMR112 :1;
        unsigned TMR113 :1;
        unsigned TMR114 :1;
        unsigned TMR115 :1;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x31D)));
# 39872 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x31E)));

__asm("T1CON equ 031Eh");


extern volatile unsigned char TMR1CON __attribute__((address(0x31E)));

__asm("TMR1CON equ 031Eh");


typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned T1RD16 :1;
        unsigned NOT_T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD161 :1;
    };
    struct {
        unsigned :2;
        unsigned nT1SYNC :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x31E)));
# 39987 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned T1RD16 :1;
        unsigned NOT_T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD161 :1;
    };
    struct {
        unsigned :2;
        unsigned nT1SYNC :1;
    };
} TMR1CONbits_t;
extern volatile TMR1CONbits_t TMR1CONbits __attribute__((address(0x31E)));
# 40094 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x31F)));

__asm("T1GCON equ 031Fh");


extern volatile unsigned char TMR1GCON __attribute__((address(0x31F)));

__asm("TMR1GCON equ 031Fh");


typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T1GVAL :1;
        unsigned T1GGO :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned T1GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T1DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_nDONE :1;
    };
    struct {
        unsigned :3;
        unsigned T1GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T1GGO_nDONE :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x31F)));
# 40241 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T1GVAL :1;
        unsigned T1GGO :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned T1GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T1DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_nDONE :1;
    };
    struct {
        unsigned :3;
        unsigned T1GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T1GGO_nDONE :1;
    };
} TMR1GCONbits_t;
extern volatile TMR1GCONbits_t TMR1GCONbits __attribute__((address(0x31F)));
# 40380 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T1GATE __attribute__((address(0x320)));

__asm("T1GATE equ 0320h");


extern volatile unsigned char TMR1GATE __attribute__((address(0x320)));

__asm("TMR1GATE equ 0320h");


typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned T1GSS2 :1;
        unsigned T1GSS3 :1;
        unsigned T1GSS4 :1;
    };
} T1GATEbits_t;
extern volatile T1GATEbits_t T1GATEbits __attribute__((address(0x320)));
# 40467 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned T1GSS2 :1;
        unsigned T1GSS3 :1;
        unsigned T1GSS4 :1;
    };
} TMR1GATEbits_t;
extern volatile TMR1GATEbits_t TMR1GATEbits __attribute__((address(0x320)));
# 40546 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T1CLK __attribute__((address(0x321)));

__asm("T1CLK equ 0321h");


extern volatile unsigned char TMR1CLK __attribute__((address(0x321)));

__asm("TMR1CLK equ 0321h");

extern volatile unsigned char PR1 __attribute__((address(0x321)));

__asm("PR1 equ 0321h");


typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T1CS0 :1;
        unsigned T1CS1 :1;
        unsigned T1CS2 :1;
        unsigned T1CS3 :1;
        unsigned T1CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} T1CLKbits_t;
extern volatile T1CLKbits_t T1CLKbits __attribute__((address(0x321)));
# 40637 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T1CS0 :1;
        unsigned T1CS1 :1;
        unsigned T1CS2 :1;
        unsigned T1CS3 :1;
        unsigned T1CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} TMR1CLKbits_t;
extern volatile TMR1CLKbits_t TMR1CLKbits __attribute__((address(0x321)));
# 40713 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T1CS0 :1;
        unsigned T1CS1 :1;
        unsigned T1CS2 :1;
        unsigned T1CS3 :1;
        unsigned T1CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} PR1bits_t;
extern volatile PR1bits_t PR1bits __attribute__((address(0x321)));
# 40792 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T2TMR __attribute__((address(0x322)));

__asm("T2TMR equ 0322h");


extern volatile unsigned char TMR2 __attribute__((address(0x322)));

__asm("TMR2 equ 0322h");


typedef union {
    struct {
        unsigned TMR2 :8;
    };
} T2TMRbits_t;
extern volatile T2TMRbits_t T2TMRbits __attribute__((address(0x322)));







typedef union {
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x322)));
# 40830 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T2PR __attribute__((address(0x323)));

__asm("T2PR equ 0323h");


extern volatile unsigned char PR2 __attribute__((address(0x323)));

__asm("PR2 equ 0323h");


typedef union {
    struct {
        unsigned PR2 :8;
    };
} T2PRbits_t;
extern volatile T2PRbits_t T2PRbits __attribute__((address(0x323)));







typedef union {
    struct {
        unsigned PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x323)));
# 40868 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T2CON __attribute__((address(0x324)));

__asm("T2CON equ 0324h");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned T2OUTPS :4;
        unsigned T2CKPS :3;
        unsigned T2ON :1;
    };
    struct {
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned T2CKPS2 :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
        unsigned TMR2ON :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x324)));
# 41014 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T2HLT __attribute__((address(0x325)));

__asm("T2HLT equ 0325h");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T2MODE :5;
        unsigned T2CKSYNC :1;
        unsigned T2CKPOL :1;
        unsigned T2PSYNC :1;
    };
    struct {
        unsigned T2MODE0 :1;
        unsigned T2MODE1 :1;
        unsigned T2MODE2 :1;
        unsigned T2MODE3 :1;
        unsigned T2MODE4 :1;
    };
} T2HLTbits_t;
extern volatile T2HLTbits_t T2HLTbits __attribute__((address(0x325)));
# 41142 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T2CLKCON __attribute__((address(0x326)));

__asm("T2CLKCON equ 0326h");


extern volatile unsigned char T2CLK __attribute__((address(0x326)));

__asm("T2CLK equ 0326h");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T2CS :4;
    };
    struct {
        unsigned T2CS0 :1;
        unsigned T2CS1 :1;
        unsigned T2CS2 :1;
        unsigned T2CS3 :1;
    };
} T2CLKCONbits_t;
extern volatile T2CLKCONbits_t T2CLKCONbits __attribute__((address(0x326)));
# 41225 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T2CS :4;
    };
    struct {
        unsigned T2CS0 :1;
        unsigned T2CS1 :1;
        unsigned T2CS2 :1;
        unsigned T2CS3 :1;
    };
} T2CLKbits_t;
extern volatile T2CLKbits_t T2CLKbits __attribute__((address(0x326)));
# 41300 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T2RST __attribute__((address(0x327)));

__asm("T2RST equ 0327h");


typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T2RSEL :5;
    };
    struct {
        unsigned T2RSEL0 :1;
        unsigned T2RSEL1 :1;
        unsigned T2RSEL2 :1;
        unsigned T2RSEL3 :1;
        unsigned T2RSEL4 :1;
    };
} T2RSTbits_t;
extern volatile T2RSTbits_t T2RSTbits __attribute__((address(0x327)));
# 41392 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short TMR3 __attribute__((address(0x328)));

__asm("TMR3 equ 0328h");




extern volatile unsigned char TMR3L __attribute__((address(0x328)));

__asm("TMR3L equ 0328h");


typedef union {
    struct {
        unsigned TMR3L :8;
    };
    struct {
        unsigned TMR3L0 :1;
        unsigned TMR3L1 :1;
        unsigned TMR3L2 :1;
        unsigned TMR3L3 :1;
        unsigned TMR3L4 :1;
        unsigned TMR3L5 :1;
        unsigned TMR3L6 :1;
        unsigned TMR3L7 :1;
    };
    struct {
        unsigned TMR30 :1;
        unsigned TMR31 :1;
        unsigned TMR32 :1;
        unsigned TMR33 :1;
        unsigned TMR34 :1;
        unsigned TMR35 :1;
        unsigned TMR36 :1;
        unsigned TMR37 :1;
    };
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __attribute__((address(0x328)));
# 41519 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TMR3H __attribute__((address(0x329)));

__asm("TMR3H equ 0329h");


typedef union {
    struct {
        unsigned TMR3H :8;
    };
    struct {
        unsigned TMR3H0 :1;
        unsigned TMR3H1 :1;
        unsigned TMR3H2 :1;
        unsigned TMR3H3 :1;
        unsigned TMR3H4 :1;
        unsigned TMR3H5 :1;
        unsigned TMR3H6 :1;
        unsigned TMR3H7 :1;
    };
    struct {
        unsigned TMR38 :1;
        unsigned TMR39 :1;
        unsigned TMR310 :1;
        unsigned TMR311 :1;
        unsigned TMR312 :1;
        unsigned TMR313 :1;
        unsigned TMR314 :1;
        unsigned TMR315 :1;
    };
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __attribute__((address(0x329)));
# 41639 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T3CON __attribute__((address(0x32A)));

__asm("T3CON equ 032Ah");


extern volatile unsigned char TMR3CON __attribute__((address(0x32A)));

__asm("TMR3CON equ 032Ah");


typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR3ON :1;
        unsigned T3RD16 :1;
        unsigned NOT_T3SYNC :1;
        unsigned :1;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD163 :1;
    };
    struct {
        unsigned :2;
        unsigned nT3SYNC :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0x32A)));
# 41754 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR3ON :1;
        unsigned T3RD16 :1;
        unsigned NOT_T3SYNC :1;
        unsigned :1;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD163 :1;
    };
    struct {
        unsigned :2;
        unsigned nT3SYNC :1;
    };
} TMR3CONbits_t;
extern volatile TMR3CONbits_t TMR3CONbits __attribute__((address(0x32A)));
# 41861 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T3GCON __attribute__((address(0x32B)));

__asm("T3GCON equ 032Bh");


extern volatile unsigned char TMR3GCON __attribute__((address(0x32B)));

__asm("TMR3GCON equ 032Bh");


typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T3GVAL :1;
        unsigned T3GGO :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned T3GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T3DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_nDONE :1;
    };
    struct {
        unsigned :3;
        unsigned T3GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T3GGO_nDONE :1;
    };
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __attribute__((address(0x32B)));
# 42008 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T3GVAL :1;
        unsigned T3GGO :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned T3GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T3DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_nDONE :1;
    };
    struct {
        unsigned :3;
        unsigned T3GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T3GGO_nDONE :1;
    };
} TMR3GCONbits_t;
extern volatile TMR3GCONbits_t TMR3GCONbits __attribute__((address(0x32B)));
# 42147 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T3GATE __attribute__((address(0x32C)));

__asm("T3GATE equ 032Ch");


extern volatile unsigned char TMR3GATE __attribute__((address(0x32C)));

__asm("TMR3GATE equ 032Ch");


typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
        unsigned T3GSS2 :1;
        unsigned T3GSS3 :1;
        unsigned T3GSS4 :1;
    };
} T3GATEbits_t;
extern volatile T3GATEbits_t T3GATEbits __attribute__((address(0x32C)));
# 42234 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
        unsigned T3GSS2 :1;
        unsigned T3GSS3 :1;
        unsigned T3GSS4 :1;
    };
} TMR3GATEbits_t;
extern volatile TMR3GATEbits_t TMR3GATEbits __attribute__((address(0x32C)));
# 42313 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T3CLK __attribute__((address(0x32D)));

__asm("T3CLK equ 032Dh");


extern volatile unsigned char TMR3CLK __attribute__((address(0x32D)));

__asm("TMR3CLK equ 032Dh");

extern volatile unsigned char PR3 __attribute__((address(0x32D)));

__asm("PR3 equ 032Dh");


typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T3CS0 :1;
        unsigned T3CS1 :1;
        unsigned T3CS2 :1;
        unsigned T3CS3 :1;
        unsigned T3CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} T3CLKbits_t;
extern volatile T3CLKbits_t T3CLKbits __attribute__((address(0x32D)));
# 42404 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T3CS0 :1;
        unsigned T3CS1 :1;
        unsigned T3CS2 :1;
        unsigned T3CS3 :1;
        unsigned T3CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} TMR3CLKbits_t;
extern volatile TMR3CLKbits_t TMR3CLKbits __attribute__((address(0x32D)));
# 42480 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T3CS0 :1;
        unsigned T3CS1 :1;
        unsigned T3CS2 :1;
        unsigned T3CS3 :1;
        unsigned T3CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} PR3bits_t;
extern volatile PR3bits_t PR3bits __attribute__((address(0x32D)));
# 42559 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T4TMR __attribute__((address(0x32E)));

__asm("T4TMR equ 032Eh");


extern volatile unsigned char TMR4 __attribute__((address(0x32E)));

__asm("TMR4 equ 032Eh");


typedef union {
    struct {
        unsigned TMR4 :8;
    };
} T4TMRbits_t;
extern volatile T4TMRbits_t T4TMRbits __attribute__((address(0x32E)));







typedef union {
    struct {
        unsigned TMR4 :8;
    };
} TMR4bits_t;
extern volatile TMR4bits_t TMR4bits __attribute__((address(0x32E)));
# 42597 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T4PR __attribute__((address(0x32F)));

__asm("T4PR equ 032Fh");


extern volatile unsigned char PR4 __attribute__((address(0x32F)));

__asm("PR4 equ 032Fh");


typedef union {
    struct {
        unsigned PR4 :8;
    };
} T4PRbits_t;
extern volatile T4PRbits_t T4PRbits __attribute__((address(0x32F)));







typedef union {
    struct {
        unsigned PR4 :8;
    };
} PR4bits_t;
extern volatile PR4bits_t PR4bits __attribute__((address(0x32F)));
# 42635 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T4CON __attribute__((address(0x330)));

__asm("T4CON equ 0330h");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned T4OUTPS :4;
        unsigned T4CKPS :3;
        unsigned T4ON :1;
    };
    struct {
        unsigned T4OUTPS0 :1;
        unsigned T4OUTPS1 :1;
        unsigned T4OUTPS2 :1;
        unsigned T4OUTPS3 :1;
        unsigned T4CKPS0 :1;
        unsigned T4CKPS1 :1;
        unsigned T4CKPS2 :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
        unsigned TMR4ON :1;
    };
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __attribute__((address(0x330)));
# 42781 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T4HLT __attribute__((address(0x331)));

__asm("T4HLT equ 0331h");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T4MODE :5;
        unsigned T4CKSYNC :1;
        unsigned T4CKPOL :1;
        unsigned T4PSYNC :1;
    };
    struct {
        unsigned T4MODE0 :1;
        unsigned T4MODE1 :1;
        unsigned T4MODE2 :1;
        unsigned T4MODE3 :1;
        unsigned T4MODE4 :1;
    };
} T4HLTbits_t;
extern volatile T4HLTbits_t T4HLTbits __attribute__((address(0x331)));
# 42909 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T4CLKCON __attribute__((address(0x332)));

__asm("T4CLKCON equ 0332h");


extern volatile unsigned char T4CLK __attribute__((address(0x332)));

__asm("T4CLK equ 0332h");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T4CS :4;
    };
    struct {
        unsigned T4CS0 :1;
        unsigned T4CS1 :1;
        unsigned T4CS2 :1;
        unsigned T4CS3 :1;
    };
} T4CLKCONbits_t;
extern volatile T4CLKCONbits_t T4CLKCONbits __attribute__((address(0x332)));
# 42992 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T4CS :4;
    };
    struct {
        unsigned T4CS0 :1;
        unsigned T4CS1 :1;
        unsigned T4CS2 :1;
        unsigned T4CS3 :1;
    };
} T4CLKbits_t;
extern volatile T4CLKbits_t T4CLKbits __attribute__((address(0x332)));
# 43067 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T4RST __attribute__((address(0x333)));

__asm("T4RST equ 0333h");


typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T4RSEL :5;
    };
    struct {
        unsigned T4RSEL0 :1;
        unsigned T4RSEL1 :1;
        unsigned T4RSEL2 :1;
        unsigned T4RSEL3 :1;
        unsigned T4RSEL4 :1;
    };
} T4RSTbits_t;
extern volatile T4RSTbits_t T4RSTbits __attribute__((address(0x333)));
# 43159 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short TMR5 __attribute__((address(0x334)));

__asm("TMR5 equ 0334h");




extern volatile unsigned char TMR5L __attribute__((address(0x334)));

__asm("TMR5L equ 0334h");


typedef union {
    struct {
        unsigned TMR5L :8;
    };
    struct {
        unsigned TMR5L0 :1;
        unsigned TMR5L1 :1;
        unsigned TMR5L2 :1;
        unsigned TMR5L3 :1;
        unsigned TMR5L4 :1;
        unsigned TMR5L5 :1;
        unsigned TMR5L6 :1;
        unsigned TMR5L7 :1;
    };
    struct {
        unsigned TMR50 :1;
        unsigned TMR51 :1;
        unsigned TMR52 :1;
        unsigned TMR53 :1;
        unsigned TMR54 :1;
        unsigned TMR55 :1;
        unsigned TMR56 :1;
        unsigned TMR57 :1;
    };
} TMR5Lbits_t;
extern volatile TMR5Lbits_t TMR5Lbits __attribute__((address(0x334)));
# 43286 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TMR5H __attribute__((address(0x335)));

__asm("TMR5H equ 0335h");


typedef union {
    struct {
        unsigned TMR5H :8;
    };
    struct {
        unsigned TMR5H0 :1;
        unsigned TMR5H1 :1;
        unsigned TMR5H2 :1;
        unsigned TMR5H3 :1;
        unsigned TMR5H4 :1;
        unsigned TMR5H5 :1;
        unsigned TMR5H6 :1;
        unsigned TMR5H7 :1;
    };
    struct {
        unsigned TMR58 :1;
        unsigned TMR59 :1;
        unsigned TMR510 :1;
        unsigned TMR511 :1;
        unsigned TMR512 :1;
        unsigned TMR513 :1;
        unsigned TMR514 :1;
        unsigned TMR515 :1;
    };
} TMR5Hbits_t;
extern volatile TMR5Hbits_t TMR5Hbits __attribute__((address(0x335)));
# 43406 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T5CON __attribute__((address(0x336)));

__asm("T5CON equ 0336h");


extern volatile unsigned char TMR5CON __attribute__((address(0x336)));

__asm("TMR5CON equ 0336h");


typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR5ON :1;
        unsigned T5RD16 :1;
        unsigned NOT_T5SYNC :1;
        unsigned :1;
        unsigned T5CKPS0 :1;
        unsigned T5CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD165 :1;
    };
    struct {
        unsigned :2;
        unsigned nT5SYNC :1;
    };
} T5CONbits_t;
extern volatile T5CONbits_t T5CONbits __attribute__((address(0x336)));
# 43521 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned ON :1;
        unsigned RD16 :1;
        unsigned NOT_SYNC :1;
        unsigned :1;
        unsigned CKPS :2;
    };
    struct {
        unsigned TMR5ON :1;
        unsigned T5RD16 :1;
        unsigned NOT_T5SYNC :1;
        unsigned :1;
        unsigned T5CKPS0 :1;
        unsigned T5CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nSYNC :1;
        unsigned :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
    };
    struct {
        unsigned :1;
        unsigned RD165 :1;
    };
    struct {
        unsigned :2;
        unsigned nT5SYNC :1;
    };
} TMR5CONbits_t;
extern volatile TMR5CONbits_t TMR5CONbits __attribute__((address(0x336)));
# 43628 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T5GCON __attribute__((address(0x337)));

__asm("T5GCON equ 0337h");


extern volatile unsigned char TMR5GCON __attribute__((address(0x337)));

__asm("TMR5GCON equ 0337h");


typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T5GVAL :1;
        unsigned T5GGO :1;
        unsigned T5GSPM :1;
        unsigned T5GTM :1;
        unsigned T5GPOL :1;
        unsigned T5GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T5DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_nDONE :1;
    };
    struct {
        unsigned :3;
        unsigned T5GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T5GGO_nDONE :1;
    };
} T5GCONbits_t;
extern volatile T5GCONbits_t T5GCONbits __attribute__((address(0x337)));
# 43775 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned :2;
        unsigned GVAL :1;
        unsigned GGO :1;
        unsigned GSPM :1;
        unsigned GTM :1;
        unsigned GPOL :1;
        unsigned GE :1;
    };
    struct {
        unsigned :2;
        unsigned T5GVAL :1;
        unsigned T5GGO :1;
        unsigned T5GSPM :1;
        unsigned T5GTM :1;
        unsigned T5GPOL :1;
        unsigned T5GE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T5DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned GGO_nDONE :1;
    };
    struct {
        unsigned :3;
        unsigned T5GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T5GGO_nDONE :1;
    };
} TMR5GCONbits_t;
extern volatile TMR5GCONbits_t TMR5GCONbits __attribute__((address(0x337)));
# 43914 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T5GATE __attribute__((address(0x338)));

__asm("T5GATE equ 0338h");


extern volatile unsigned char TMR5GATE __attribute__((address(0x338)));

__asm("TMR5GATE equ 0338h");


typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T5GSS0 :1;
        unsigned T5GSS1 :1;
        unsigned T5GSS2 :1;
        unsigned T5GSS3 :1;
        unsigned T5GSS4 :1;
    };
} T5GATEbits_t;
extern volatile T5GATEbits_t T5GATEbits __attribute__((address(0x338)));
# 44001 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned GSS :8;
    };
    struct {
        unsigned GSS0 :1;
        unsigned GSS1 :1;
        unsigned GSS2 :1;
        unsigned GSS3 :1;
        unsigned GSS4 :1;
    };
    struct {
        unsigned T5GSS0 :1;
        unsigned T5GSS1 :1;
        unsigned T5GSS2 :1;
        unsigned T5GSS3 :1;
        unsigned T5GSS4 :1;
    };
} TMR5GATEbits_t;
extern volatile TMR5GATEbits_t TMR5GATEbits __attribute__((address(0x338)));
# 44080 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T5CLK __attribute__((address(0x339)));

__asm("T5CLK equ 0339h");


extern volatile unsigned char TMR5CLK __attribute__((address(0x339)));

__asm("TMR5CLK equ 0339h");

extern volatile unsigned char PR5 __attribute__((address(0x339)));

__asm("PR5 equ 0339h");


typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T5CS0 :1;
        unsigned T5CS1 :1;
        unsigned T5CS2 :1;
        unsigned T5CS3 :1;
        unsigned T5CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} T5CLKbits_t;
extern volatile T5CLKbits_t T5CLKbits __attribute__((address(0x339)));
# 44171 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T5CS0 :1;
        unsigned T5CS1 :1;
        unsigned T5CS2 :1;
        unsigned T5CS3 :1;
        unsigned T5CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} TMR5CLKbits_t;
extern volatile TMR5CLKbits_t TMR5CLKbits __attribute__((address(0x339)));
# 44247 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :8;
    };
    struct {
        unsigned T5CS0 :1;
        unsigned T5CS1 :1;
        unsigned T5CS2 :1;
        unsigned T5CS3 :1;
        unsigned T5CS4 :1;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
    };
} PR5bits_t;
extern volatile PR5bits_t PR5bits __attribute__((address(0x339)));
# 44326 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T6TMR __attribute__((address(0x33A)));

__asm("T6TMR equ 033Ah");


extern volatile unsigned char TMR6 __attribute__((address(0x33A)));

__asm("TMR6 equ 033Ah");


typedef union {
    struct {
        unsigned TMR6 :8;
    };
} T6TMRbits_t;
extern volatile T6TMRbits_t T6TMRbits __attribute__((address(0x33A)));







typedef union {
    struct {
        unsigned TMR6 :8;
    };
} TMR6bits_t;
extern volatile TMR6bits_t TMR6bits __attribute__((address(0x33A)));
# 44364 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T6PR __attribute__((address(0x33B)));

__asm("T6PR equ 033Bh");


extern volatile unsigned char PR6 __attribute__((address(0x33B)));

__asm("PR6 equ 033Bh");


typedef union {
    struct {
        unsigned PR6 :8;
    };
} T6PRbits_t;
extern volatile T6PRbits_t T6PRbits __attribute__((address(0x33B)));







typedef union {
    struct {
        unsigned PR6 :8;
    };
} PR6bits_t;
extern volatile PR6bits_t PR6bits __attribute__((address(0x33B)));
# 44402 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T6CON __attribute__((address(0x33C)));

__asm("T6CON equ 033Ch");


typedef union {
    struct {
        unsigned OUTPS :4;
        unsigned CKPS :3;
        unsigned ON :1;
    };
    struct {
        unsigned T6OUTPS :4;
        unsigned T6CKPS :3;
        unsigned T6ON :1;
    };
    struct {
        unsigned T6OUTPS0 :1;
        unsigned T6OUTPS1 :1;
        unsigned T6OUTPS2 :1;
        unsigned T6OUTPS3 :1;
        unsigned T6CKPS0 :1;
        unsigned T6CKPS1 :1;
        unsigned T6CKPS2 :1;
    };
    struct {
        unsigned OUTPS0 :1;
        unsigned OUTPS1 :1;
        unsigned OUTPS2 :1;
        unsigned OUTPS3 :1;
        unsigned CKPS0 :1;
        unsigned CKPS1 :1;
        unsigned CKPS2 :1;
        unsigned TMR6ON :1;
    };
} T6CONbits_t;
extern volatile T6CONbits_t T6CONbits __attribute__((address(0x33C)));
# 44548 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T6HLT __attribute__((address(0x33D)));

__asm("T6HLT equ 033Dh");


typedef union {
    struct {
        unsigned MODE :5;
        unsigned CKSYNC :1;
        unsigned CKPOL :1;
        unsigned PSYNC :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
        unsigned MODE4 :1;
    };
    struct {
        unsigned T6MODE :5;
        unsigned T6CKSYNC :1;
        unsigned T6CKPOL :1;
        unsigned T6PSYNC :1;
    };
    struct {
        unsigned T6MODE0 :1;
        unsigned T6MODE1 :1;
        unsigned T6MODE2 :1;
        unsigned T6MODE3 :1;
        unsigned T6MODE4 :1;
    };
} T6HLTbits_t;
extern volatile T6HLTbits_t T6HLTbits __attribute__((address(0x33D)));
# 44676 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T6CLKCON __attribute__((address(0x33E)));

__asm("T6CLKCON equ 033Eh");


extern volatile unsigned char T6CLK __attribute__((address(0x33E)));

__asm("T6CLK equ 033Eh");


typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T6CS :4;
    };
    struct {
        unsigned T6CS0 :1;
        unsigned T6CS1 :1;
        unsigned T6CS2 :1;
        unsigned T6CS3 :1;
    };
} T6CLKCONbits_t;
extern volatile T6CLKCONbits_t T6CLKCONbits __attribute__((address(0x33E)));
# 44759 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :4;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
    };
    struct {
        unsigned T6CS :4;
    };
    struct {
        unsigned T6CS0 :1;
        unsigned T6CS1 :1;
        unsigned T6CS2 :1;
        unsigned T6CS3 :1;
    };
} T6CLKbits_t;
extern volatile T6CLKbits_t T6CLKbits __attribute__((address(0x33E)));
# 44834 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char T6RST __attribute__((address(0x33F)));

__asm("T6RST equ 033Fh");


typedef union {
    struct {
        unsigned RSEL :5;
    };
    struct {
        unsigned RSEL0 :1;
        unsigned RSEL1 :1;
        unsigned RSEL2 :1;
        unsigned RSEL3 :1;
        unsigned RSEL4 :1;
    };
    struct {
        unsigned T6RSEL :5;
    };
    struct {
        unsigned T6RSEL0 :1;
        unsigned T6RSEL1 :1;
        unsigned T6RSEL2 :1;
        unsigned T6RSEL3 :1;
        unsigned T6RSEL4 :1;
    };
} T6RSTbits_t;
extern volatile T6RSTbits_t T6RSTbits __attribute__((address(0x33F)));
# 44926 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x340)));

__asm("CCPR1 equ 0340h");




extern volatile unsigned char CCPR1L __attribute__((address(0x340)));

__asm("CCPR1L equ 0340h");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0x340)));
# 44953 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCPR1H __attribute__((address(0x341)));

__asm("CCPR1H equ 0341h");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0x341)));
# 44973 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP1CON __attribute__((address(0x342)));

__asm("CCP1CON equ 0342h");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP1MODE :4;
        unsigned CCP1FMT :1;
        unsigned CCP1OUT :1;
        unsigned :1;
        unsigned CCP1EN :1;
    };
    struct {
        unsigned CCP1MODE0 :1;
        unsigned CCP1MODE1 :1;
        unsigned CCP1MODE2 :1;
        unsigned CCP1MODE3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x342)));
# 45091 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP1CAP __attribute__((address(0x343)));

__asm("CCP1CAP equ 0343h");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
        unsigned CTS3 :1;
    };
    struct {
        unsigned CCP1CTS :8;
    };
    struct {
        unsigned CCP1CTS0 :1;
        unsigned CCP1CTS1 :1;
        unsigned CCP1CTS2 :1;
        unsigned CCP1CTS3 :1;
    };
} CCP1CAPbits_t;
extern volatile CCP1CAPbits_t CCP1CAPbits __attribute__((address(0x343)));
# 45171 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0x344)));

__asm("CCPR2 equ 0344h");




extern volatile unsigned char CCPR2L __attribute__((address(0x344)));

__asm("CCPR2L equ 0344h");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0x344)));
# 45198 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCPR2H __attribute__((address(0x345)));

__asm("CCPR2H equ 0345h");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0x345)));
# 45218 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0x346)));

__asm("CCP2CON equ 0346h");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP2MODE :4;
        unsigned CCP2FMT :1;
        unsigned CCP2OUT :1;
        unsigned :1;
        unsigned CCP2EN :1;
    };
    struct {
        unsigned CCP2MODE0 :1;
        unsigned CCP2MODE1 :1;
        unsigned CCP2MODE2 :1;
        unsigned CCP2MODE3 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x346)));
# 45336 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP2CAP __attribute__((address(0x347)));

__asm("CCP2CAP equ 0347h");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
        unsigned CTS3 :1;
    };
    struct {
        unsigned CCP2CTS :8;
    };
    struct {
        unsigned CCP2CTS0 :1;
        unsigned CCP2CTS1 :1;
        unsigned CCP2CTS2 :1;
        unsigned CCP2CTS3 :1;
    };
} CCP2CAPbits_t;
extern volatile CCP2CAPbits_t CCP2CAPbits __attribute__((address(0x347)));
# 45416 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short CCPR3 __attribute__((address(0x348)));

__asm("CCPR3 equ 0348h");




extern volatile unsigned char CCPR3L __attribute__((address(0x348)));

__asm("CCPR3L equ 0348h");


typedef union {
    struct {
        unsigned RL :8;
    };
} CCPR3Lbits_t;
extern volatile CCPR3Lbits_t CCPR3Lbits __attribute__((address(0x348)));
# 45443 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCPR3H __attribute__((address(0x349)));

__asm("CCPR3H equ 0349h");


typedef union {
    struct {
        unsigned RH :8;
    };
} CCPR3Hbits_t;
extern volatile CCPR3Hbits_t CCPR3Hbits __attribute__((address(0x349)));
# 45463 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP3CON __attribute__((address(0x34A)));

__asm("CCP3CON equ 034Ah");


typedef union {
    struct {
        unsigned MODE :4;
        unsigned FMT :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned MODE3 :1;
    };
    struct {
        unsigned CCP3MODE :4;
        unsigned CCP3FMT :1;
        unsigned CCP3OUT :1;
        unsigned :1;
        unsigned CCP3EN :1;
    };
    struct {
        unsigned CCP3MODE0 :1;
        unsigned CCP3MODE1 :1;
        unsigned CCP3MODE2 :1;
        unsigned CCP3MODE3 :1;
    };
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __attribute__((address(0x34A)));
# 45581 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCP3CAP __attribute__((address(0x34B)));

__asm("CCP3CAP equ 034Bh");


typedef union {
    struct {
        unsigned CTS :8;
    };
    struct {
        unsigned CTS0 :1;
        unsigned CTS1 :1;
        unsigned CTS2 :1;
        unsigned CTS3 :1;
    };
    struct {
        unsigned CCP3CTS :8;
    };
    struct {
        unsigned CCP3CTS0 :1;
        unsigned CCP3CTS1 :1;
        unsigned CCP3CTS2 :1;
        unsigned CCP3CTS3 :1;
    };
} CCP3CAPbits_t;
extern volatile CCP3CAPbits_t CCP3CAPbits __attribute__((address(0x34B)));
# 45661 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CCPTMRS0 __attribute__((address(0x34C)));

__asm("CCPTMRS0 equ 034Ch");


typedef union {
    struct {
        unsigned C1TSEL :2;
        unsigned C2TSEL :2;
        unsigned C3TSEL :2;
    };
    struct {
        unsigned C1TSEL0 :1;
        unsigned C1TSEL1 :1;
        unsigned C2TSEL0 :1;
        unsigned C2TSEL1 :1;
        unsigned C3TSEL0 :1;
        unsigned C3TSEL1 :1;
    };
} CCPTMRS0bits_t;
extern volatile CCPTMRS0bits_t CCPTMRS0bits __attribute__((address(0x34C)));
# 45731 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long CRCDATA __attribute__((address(0x34F)));

__asm("CRCDATA equ 034Fh");




extern volatile unsigned char CRCDATAL __attribute__((address(0x34F)));

__asm("CRCDATAL equ 034Fh");


typedef union {
    struct {
        unsigned DATA :8;
    };
    struct {
        unsigned DATA0 :1;
        unsigned DATA1 :1;
        unsigned DATA2 :1;
        unsigned DATA3 :1;
        unsigned DATA4 :1;
        unsigned DATA5 :1;
        unsigned DATA6 :1;
        unsigned DATA7 :1;
    };
} CRCDATALbits_t;
extern volatile CRCDATALbits_t CRCDATALbits __attribute__((address(0x34F)));
# 45808 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCDATAH __attribute__((address(0x350)));

__asm("CRCDATAH equ 0350h");


typedef union {
    struct {
        unsigned DATA :8;
    };
    struct {
        unsigned DATA8 :1;
        unsigned DATA9 :1;
        unsigned DATA10 :1;
        unsigned DATA11 :1;
        unsigned DATA12 :1;
        unsigned DATA13 :1;
        unsigned DATA14 :1;
        unsigned DATA15 :1;
    };
} CRCDATAHbits_t;
extern volatile CRCDATAHbits_t CRCDATAHbits __attribute__((address(0x350)));
# 45878 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCDATAU __attribute__((address(0x351)));

__asm("CRCDATAU equ 0351h");


typedef union {
    struct {
        unsigned DATA :8;
    };
    struct {
        unsigned DATA16 :1;
        unsigned DATA17 :1;
        unsigned DATA18 :1;
        unsigned DATA19 :1;
        unsigned DATA20 :1;
        unsigned DATA21 :1;
        unsigned DATA22 :1;
        unsigned DATA23 :1;
    };
} CRCDATAUbits_t;
extern volatile CRCDATAUbits_t CRCDATAUbits __attribute__((address(0x351)));
# 45948 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCDATAT __attribute__((address(0x352)));

__asm("CRCDATAT equ 0352h");


typedef union {
    struct {
        unsigned DATA :8;
    };
    struct {
        unsigned DATA24 :1;
        unsigned DATA25 :1;
        unsigned DATA26 :1;
        unsigned DATA27 :1;
        unsigned DATA28 :1;
        unsigned DATA29 :1;
        unsigned DATA30 :1;
        unsigned DATA31 :1;
    };
} CRCDATATbits_t;
extern volatile CRCDATATbits_t CRCDATATbits __attribute__((address(0x352)));
# 46018 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned long CRCOUT __attribute__((address(0x353)));

__asm("CRCOUT equ 0353h");


extern volatile unsigned long CRCSHFT __attribute__((address(0x353)));

__asm("CRCSHFT equ 0353h");

extern volatile unsigned long CRCXOR __attribute__((address(0x353)));

__asm("CRCXOR equ 0353h");




extern volatile unsigned char CRCOUTL __attribute__((address(0x353)));

__asm("CRCOUTL equ 0353h");


typedef union {
    struct {
        unsigned OUT :8;
    };
    struct {
        unsigned OUT0 :1;
        unsigned OUT1 :1;
        unsigned OUT2 :1;
        unsigned OUT3 :1;
        unsigned OUT4 :1;
        unsigned OUT5 :1;
        unsigned OUT6 :1;
        unsigned OUT7 :1;
    };
} CRCOUTLbits_t;
extern volatile CRCOUTLbits_t CRCOUTLbits __attribute__((address(0x353)));
# 46104 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCSHFTL __attribute__((address(0x353)));

__asm("CRCSHFTL equ 0353h");


extern volatile unsigned char CRCSHIFTL __attribute__((address(0x353)));

__asm("CRCSHIFTL equ 0353h");


typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT0 :1;
        unsigned SHIFT1 :1;
        unsigned SHIFT2 :1;
        unsigned SHIFT3 :1;
        unsigned SHIFT4 :1;
        unsigned SHIFT5 :1;
        unsigned SHIFT6 :1;
        unsigned SHIFT7 :1;
    };
} CRCSHFTLbits_t;
extern volatile CRCSHFTLbits_t CRCSHFTLbits __attribute__((address(0x353)));
# 46177 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT0 :1;
        unsigned SHIFT1 :1;
        unsigned SHIFT2 :1;
        unsigned SHIFT3 :1;
        unsigned SHIFT4 :1;
        unsigned SHIFT5 :1;
        unsigned SHIFT6 :1;
        unsigned SHIFT7 :1;
    };
} CRCSHIFTLbits_t;
extern volatile CRCSHIFTLbits_t CRCSHIFTLbits __attribute__((address(0x353)));
# 46242 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCXORL __attribute__((address(0x353)));

__asm("CRCXORL equ 0353h");


typedef union {
    struct {
        unsigned XOR :8;
    };
    struct {
        unsigned XOR0 :1;
        unsigned XOR1 :1;
        unsigned XOR2 :1;
        unsigned XOR3 :1;
        unsigned XOR4 :1;
        unsigned XOR5 :1;
        unsigned XOR6 :1;
        unsigned XOR7 :1;
    };
} CRCXORLbits_t;
extern volatile CRCXORLbits_t CRCXORLbits __attribute__((address(0x353)));
# 46312 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCOUTH __attribute__((address(0x354)));

__asm("CRCOUTH equ 0354h");


typedef union {
    struct {
        unsigned OUT :8;
    };
    struct {
        unsigned OUT8 :1;
        unsigned OUT9 :1;
        unsigned OUT10 :1;
        unsigned OUT11 :1;
        unsigned OUT12 :1;
        unsigned OUT13 :1;
        unsigned OUT14 :1;
        unsigned OUT15 :1;
    };
} CRCOUTHbits_t;
extern volatile CRCOUTHbits_t CRCOUTHbits __attribute__((address(0x354)));
# 46382 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCSHFTH __attribute__((address(0x354)));

__asm("CRCSHFTH equ 0354h");


extern volatile unsigned char CRCSHIFTH __attribute__((address(0x354)));

__asm("CRCSHIFTH equ 0354h");


typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT8 :1;
        unsigned SHIFT9 :1;
        unsigned SHIFT10 :1;
        unsigned SHIFT11 :1;
        unsigned SHIFT12 :1;
        unsigned SHIFT13 :1;
        unsigned SHIFT14 :1;
        unsigned SHIFT15 :1;
    };
} CRCSHFTHbits_t;
extern volatile CRCSHFTHbits_t CRCSHFTHbits __attribute__((address(0x354)));
# 46455 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT8 :1;
        unsigned SHIFT9 :1;
        unsigned SHIFT10 :1;
        unsigned SHIFT11 :1;
        unsigned SHIFT12 :1;
        unsigned SHIFT13 :1;
        unsigned SHIFT14 :1;
        unsigned SHIFT15 :1;
    };
} CRCSHIFTHbits_t;
extern volatile CRCSHIFTHbits_t CRCSHIFTHbits __attribute__((address(0x354)));
# 46520 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCXORH __attribute__((address(0x354)));

__asm("CRCXORH equ 0354h");


typedef union {
    struct {
        unsigned XOR :8;
    };
    struct {
        unsigned XOR8 :1;
        unsigned XOR9 :1;
        unsigned XOR10 :1;
        unsigned XOR11 :1;
        unsigned XOR12 :1;
        unsigned XOR13 :1;
        unsigned XOR14 :1;
        unsigned XOR15 :1;
    };
} CRCXORHbits_t;
extern volatile CRCXORHbits_t CRCXORHbits __attribute__((address(0x354)));
# 46590 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCOUTU __attribute__((address(0x355)));

__asm("CRCOUTU equ 0355h");


typedef union {
    struct {
        unsigned OUT :8;
    };
    struct {
        unsigned OUT16 :1;
        unsigned OUT17 :1;
        unsigned OUT18 :1;
        unsigned OUT19 :1;
        unsigned OUT20 :1;
        unsigned OUT21 :1;
        unsigned OUT22 :1;
        unsigned OUT23 :1;
    };
} CRCOUTUbits_t;
extern volatile CRCOUTUbits_t CRCOUTUbits __attribute__((address(0x355)));
# 46660 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCSHFTU __attribute__((address(0x355)));

__asm("CRCSHFTU equ 0355h");


extern volatile unsigned char CRCSHIFTU __attribute__((address(0x355)));

__asm("CRCSHIFTU equ 0355h");


typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT16 :1;
        unsigned SHIFT17 :1;
        unsigned SHIFT18 :1;
        unsigned SHIFT19 :1;
        unsigned SHIFT20 :1;
        unsigned SHIFT21 :1;
        unsigned SHIFT22 :1;
        unsigned SHIFT23 :1;
    };
} CRCSHFTUbits_t;
extern volatile CRCSHFTUbits_t CRCSHFTUbits __attribute__((address(0x355)));
# 46733 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT16 :1;
        unsigned SHIFT17 :1;
        unsigned SHIFT18 :1;
        unsigned SHIFT19 :1;
        unsigned SHIFT20 :1;
        unsigned SHIFT21 :1;
        unsigned SHIFT22 :1;
        unsigned SHIFT23 :1;
    };
} CRCSHIFTUbits_t;
extern volatile CRCSHIFTUbits_t CRCSHIFTUbits __attribute__((address(0x355)));
# 46798 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCXORU __attribute__((address(0x355)));

__asm("CRCXORU equ 0355h");


typedef union {
    struct {
        unsigned XOR :8;
    };
    struct {
        unsigned XOR16 :1;
        unsigned XOR17 :1;
        unsigned XOR18 :1;
        unsigned XOR19 :1;
        unsigned XOR20 :1;
        unsigned XOR21 :1;
        unsigned XOR22 :1;
        unsigned XOR23 :1;
    };
} CRCXORUbits_t;
extern volatile CRCXORUbits_t CRCXORUbits __attribute__((address(0x355)));
# 46868 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCOUTT __attribute__((address(0x356)));

__asm("CRCOUTT equ 0356h");


typedef union {
    struct {
        unsigned OUT :8;
    };
    struct {
        unsigned OUT24 :1;
        unsigned OUT25 :1;
        unsigned OUT26 :1;
        unsigned OUT27 :1;
        unsigned OUT28 :1;
        unsigned OUT29 :1;
        unsigned OUT30 :1;
        unsigned OUT31 :1;
    };
} CRCOUTTbits_t;
extern volatile CRCOUTTbits_t CRCOUTTbits __attribute__((address(0x356)));
# 46938 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCSHFTT __attribute__((address(0x356)));

__asm("CRCSHFTT equ 0356h");


extern volatile unsigned char CRCSHIFTT __attribute__((address(0x356)));

__asm("CRCSHIFTT equ 0356h");


typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT24 :1;
        unsigned SHIFT25 :1;
        unsigned SHIFT26 :1;
        unsigned SHIFT27 :1;
        unsigned SHIFT28 :1;
        unsigned SHIFT29 :1;
        unsigned SHIFT30 :1;
        unsigned SHIFT31 :1;
    };
} CRCSHFTTbits_t;
extern volatile CRCSHFTTbits_t CRCSHFTTbits __attribute__((address(0x356)));
# 47011 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned SHIFT :8;
    };
    struct {
        unsigned SHIFT24 :1;
        unsigned SHIFT25 :1;
        unsigned SHIFT26 :1;
        unsigned SHIFT27 :1;
        unsigned SHIFT28 :1;
        unsigned SHIFT29 :1;
        unsigned SHIFT30 :1;
        unsigned SHIFT31 :1;
    };
} CRCSHIFTTbits_t;
extern volatile CRCSHIFTTbits_t CRCSHIFTTbits __attribute__((address(0x356)));
# 47076 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCXORT __attribute__((address(0x356)));

__asm("CRCXORT equ 0356h");


typedef union {
    struct {
        unsigned XOR :8;
    };
    struct {
        unsigned XOR24 :1;
        unsigned XOR25 :1;
        unsigned XOR26 :1;
        unsigned XOR27 :1;
        unsigned XOR28 :1;
        unsigned XOR29 :1;
        unsigned XOR30 :1;
        unsigned XOR31 :1;
    };
} CRCXORTbits_t;
extern volatile CRCXORTbits_t CRCXORTbits __attribute__((address(0x356)));
# 47146 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCCON0 __attribute__((address(0x357)));

__asm("CRCCON0 equ 0357h");


typedef union {
    struct {
        unsigned FULL :1;
        unsigned SHIFTM :1;
        unsigned SETUP :2;
        unsigned ACCMOD :1;
        unsigned CRCBUSY :1;
        unsigned CRCGO :1;
        unsigned CRCEN :1;
    };
    struct {
        unsigned :1;
        unsigned LENDIAN :1;
        unsigned SETUP0 :1;
        unsigned SETUP1 :1;
        unsigned ACCM :1;
        unsigned BUSY :1;
        unsigned GO :1;
        unsigned EN :1;
    };
} CRCCON0bits_t;
extern volatile CRCCON0bits_t CRCCON0bits __attribute__((address(0x357)));
# 47247 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCCON1 __attribute__((address(0x358)));

__asm("CRCCON1 equ 0358h");


typedef union {
    struct {
        unsigned PLEN :5;
    };
    struct {
        unsigned PLEN0 :1;
        unsigned PLEN1 :1;
        unsigned PLEN2 :1;
        unsigned PLEN3 :1;
        unsigned PLEN4 :1;
    };
} CRCCON1bits_t;
extern volatile CRCCON1bits_t CRCCON1bits __attribute__((address(0x358)));
# 47299 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CRCCON2 __attribute__((address(0x359)));

__asm("CRCCON2 equ 0359h");


typedef union {
    struct {
        unsigned DLEN :5;
    };
    struct {
        unsigned DLEN0 :1;
        unsigned DLEN1 :1;
        unsigned DLEN2 :1;
        unsigned DLEN3 :1;
        unsigned DLEN4 :1;
    };
} CRCCON2bits_t;
extern volatile CRCCON2bits_t CRCCON2bits __attribute__((address(0x359)));
# 47352 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 SCANLADR __attribute__((address(0x35A)));


__asm("SCANLADR equ 035Ah");




extern volatile unsigned char SCANLADRL __attribute__((address(0x35A)));

__asm("SCANLADRL equ 035Ah");


typedef union {
    struct {
        unsigned LADR :8;
    };
    struct {
        unsigned LADR0 :1;
        unsigned LADR1 :1;
        unsigned LADR2 :1;
        unsigned LADR3 :1;
        unsigned LADR4 :1;
        unsigned LADR5 :1;
        unsigned LADR6 :1;
        unsigned LADR7 :1;
    };
    struct {
        unsigned SCANLADR :8;
    };
    struct {
        unsigned SCANLADR0 :1;
        unsigned SCANLADR1 :1;
        unsigned SCANLADR2 :1;
        unsigned SCANLADR3 :1;
        unsigned SCANLADR4 :1;
        unsigned SCANLADR5 :1;
        unsigned SCANLADR6 :1;
        unsigned SCANLADR7 :1;
    };
} SCANLADRLbits_t;
extern volatile SCANLADRLbits_t SCANLADRLbits __attribute__((address(0x35A)));
# 47488 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SCANLADRH __attribute__((address(0x35B)));

__asm("SCANLADRH equ 035Bh");


typedef union {
    struct {
        unsigned LADR :8;
    };
    struct {
        unsigned LADR8 :1;
        unsigned LADR9 :1;
        unsigned LADR10 :1;
        unsigned LADR11 :1;
        unsigned LADR12 :1;
        unsigned LADR13 :1;
        unsigned LADR14 :1;
        unsigned LADR15 :1;
    };
    struct {
        unsigned SCANLADR :8;
    };
    struct {
        unsigned SCANLADR8 :1;
        unsigned SCANLADR9 :1;
        unsigned SCANLADR10 :1;
        unsigned SCANLADR11 :1;
        unsigned SCANLADR12 :1;
        unsigned SCANLADR13 :1;
        unsigned SCANLADR14 :1;
        unsigned SCANLADR15 :1;
    };
} SCANLADRHbits_t;
extern volatile SCANLADRHbits_t SCANLADRHbits __attribute__((address(0x35B)));
# 47616 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SCANLADRU __attribute__((address(0x35C)));

__asm("SCANLADRU equ 035Ch");


typedef union {
    struct {
        unsigned LADR :6;
    };
    struct {
        unsigned LADR16 :1;
        unsigned LADR17 :1;
        unsigned LADR18 :1;
        unsigned LADR19 :1;
        unsigned LADR20 :1;
        unsigned LADR21 :1;
    };
    struct {
        unsigned SCANLADR :6;
    };
    struct {
        unsigned SCANLADR16 :1;
        unsigned SCANLADR17 :1;
        unsigned SCANLADR18 :1;
        unsigned SCANLADR19 :1;
        unsigned SCANLADR20 :1;
        unsigned SCANLADR21 :1;
    };
} SCANLADRUbits_t;
extern volatile SCANLADRUbits_t SCANLADRUbits __attribute__((address(0x35C)));
# 47721 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 SCANHADR __attribute__((address(0x35D)));


__asm("SCANHADR equ 035Dh");




extern volatile unsigned char SCANHADRL __attribute__((address(0x35D)));

__asm("SCANHADRL equ 035Dh");


typedef union {
    struct {
        unsigned HADR :8;
    };
    struct {
        unsigned HADR0 :1;
        unsigned HADR1 :1;
        unsigned HADR2 :1;
        unsigned HADR3 :1;
        unsigned HADR4 :1;
        unsigned HADR5 :1;
        unsigned HADR6 :1;
        unsigned HADR7 :1;
    };
    struct {
        unsigned SCANHADR :8;
    };
    struct {
        unsigned SCANHADR0 :1;
        unsigned SCANHADR1 :1;
        unsigned SCANHADR2 :1;
        unsigned SCANHADR3 :1;
        unsigned SCANHADR4 :1;
        unsigned SCANHADR5 :1;
        unsigned SCANHADR6 :1;
        unsigned SCANHADR7 :1;
    };
} SCANHADRLbits_t;
extern volatile SCANHADRLbits_t SCANHADRLbits __attribute__((address(0x35D)));
# 47857 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SCANHADRH __attribute__((address(0x35E)));

__asm("SCANHADRH equ 035Eh");


typedef union {
    struct {
        unsigned HADR :8;
    };
    struct {
        unsigned HADR8 :1;
        unsigned HADR9 :1;
        unsigned HADR10 :1;
        unsigned HADR11 :1;
        unsigned HADR12 :1;
        unsigned HADR13 :1;
        unsigned HADR14 :1;
        unsigned HADR15 :1;
    };
    struct {
        unsigned SCANHADR :8;
    };
    struct {
        unsigned SCANHADR8 :1;
        unsigned SCANHADR9 :1;
        unsigned SCANHADR10 :1;
        unsigned SCANHADR11 :1;
        unsigned SCANHADR12 :1;
        unsigned SCANHADR13 :1;
        unsigned SCANHADR14 :1;
        unsigned SCANHADR15 :1;
    };
} SCANHADRHbits_t;
extern volatile SCANHADRHbits_t SCANHADRHbits __attribute__((address(0x35E)));
# 47985 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SCANHADRU __attribute__((address(0x35F)));

__asm("SCANHADRU equ 035Fh");


typedef union {
    struct {
        unsigned HADR :6;
    };
    struct {
        unsigned HADR16 :1;
        unsigned HADR17 :1;
        unsigned HADR18 :1;
        unsigned HADR19 :1;
        unsigned HADR20 :1;
        unsigned HADR21 :1;
    };
    struct {
        unsigned SCANHADR :6;
    };
    struct {
        unsigned SCANHADR16 :1;
        unsigned SCANHADR17 :1;
        unsigned SCANHADR18 :1;
        unsigned SCANHADR19 :1;
        unsigned SCANHADR20 :1;
        unsigned SCANHADR21 :1;
    };
} SCANHADRUbits_t;
extern volatile SCANHADRUbits_t SCANHADRUbits __attribute__((address(0x35F)));
# 48089 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SCANCON0 __attribute__((address(0x360)));

__asm("SCANCON0 equ 0360h");


typedef union {
    struct {
        unsigned BUSY :1;
        unsigned BURSTMD :1;
        unsigned MREG :1;
        unsigned :2;
        unsigned SGO :1;
        unsigned TRIGEN :1;
        unsigned EN :1;
    };
    struct {
        unsigned :7;
        unsigned SCANEN :1;
    };
} SCANCON0bits_t;
extern volatile SCANCON0bits_t SCANCON0bits __attribute__((address(0x360)));
# 48149 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SCANTRIG __attribute__((address(0x361)));

__asm("SCANTRIG equ 0361h");


typedef union {
    struct {
        unsigned TSEL :8;
    };
    struct {
        unsigned TSEL0 :1;
        unsigned TSEL1 :1;
        unsigned TSEL2 :1;
        unsigned TSEL3 :1;
        unsigned TSEL4 :1;
    };
    struct {
        unsigned SCANTSEL :8;
    };
} SCANTRIGbits_t;
extern volatile SCANTRIGbits_t SCANTRIGbits __attribute__((address(0x361)));
# 48209 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR0 __attribute__((address(0x362)));

__asm("IPR0 equ 0362h");


typedef union {
    struct {
        unsigned SWIP :1;
        unsigned HLVDIP :1;
        unsigned OSFIP :1;
        unsigned CSWIP :1;
        unsigned TU16AIP :1;
        unsigned CLC1IP :1;
        unsigned CANIP :1;
        unsigned IOCIP :1;
    };
} IPR0bits_t;
extern volatile IPR0bits_t IPR0bits __attribute__((address(0x362)));
# 48271 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR1 __attribute__((address(0x363)));

__asm("IPR1 equ 0363h");


typedef union {
    struct {
        unsigned INT0IP :1;
        unsigned ZCDIP :1;
        unsigned ADIP :1;
        unsigned ACTIP :1;
        unsigned C1IP :1;
        unsigned SMT1IP :1;
        unsigned SMT1PRAIP :1;
        unsigned SMT1PWAIP :1;
    };
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __attribute__((address(0x363)));
# 48333 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR2 __attribute__((address(0x364)));

__asm("IPR2 equ 0364h");


typedef union {
    struct {
        unsigned ADTIP :1;
        unsigned ADCH2IP :1;
        unsigned ADCH3IP :1;
        unsigned ADCH4IP :1;
        unsigned DMA1SCNTIP :1;
        unsigned DMA1DCNTIP :1;
        unsigned DMA1ORIP :1;
        unsigned DMA1AIP :1;
    };
    struct {
        unsigned ADCH1IP :1;
    };
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __attribute__((address(0x364)));
# 48403 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR3 __attribute__((address(0x365)));

__asm("IPR3 equ 0365h");


typedef union {
    struct {
        unsigned SPI1RXIP :1;
        unsigned SPI1TXIP :1;
        unsigned SPI1IP :1;
        unsigned TMR2IP :1;
        unsigned TMR1IP :1;
        unsigned TMR1GIP :1;
        unsigned CCP1IP :1;
        unsigned TMR0IP :1;
    };
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __attribute__((address(0x365)));
# 48465 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR4 __attribute__((address(0x366)));

__asm("IPR4 equ 0366h");


typedef union {
    struct {
        unsigned U1RXIP :1;
        unsigned U1TXIP :1;
        unsigned U1EIP :1;
        unsigned U1IP :1;
        unsigned CANRXIP :1;
        unsigned CANTXIP :1;
        unsigned PWM1PIP :1;
        unsigned PWM1IP :1;
    };
} IPR4bits_t;
extern volatile IPR4bits_t IPR4bits __attribute__((address(0x366)));
# 48527 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR5 __attribute__((address(0x367)));

__asm("IPR5 equ 0367h");


typedef union {
    struct {
        unsigned SPI2RXIP :1;
        unsigned SPI2TXIP :1;
        unsigned SPI2IP :1;
        unsigned TU16BIP :1;
        unsigned TMR3IP :1;
        unsigned TMR3GIP :1;
        unsigned PWM2PIP :1;
        unsigned PWM2IP :1;
    };
} IPR5bits_t;
extern volatile IPR5bits_t IPR5bits __attribute__((address(0x367)));
# 48589 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR6 __attribute__((address(0x368)));

__asm("IPR6 equ 0368h");


typedef union {
    struct {
        unsigned INT1IP :1;
        unsigned CLC2IP :1;
        unsigned CWG1IP :1;
        unsigned NCO1IP :1;
        unsigned DMA2SCNTIP :1;
        unsigned DMA2DCNTIP :1;
        unsigned DMA2ORIP :1;
        unsigned DMA2AIP :1;
    };
} IPR6bits_t;
extern volatile IPR6bits_t IPR6bits __attribute__((address(0x368)));
# 48651 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR7 __attribute__((address(0x369)));

__asm("IPR7 equ 0369h");


typedef union {
    struct {
        unsigned I2C1RXIP :1;
        unsigned I2C1TXIP :1;
        unsigned I2C1IP :1;
        unsigned I2C1EIP :1;
        unsigned :1;
        unsigned CLC3IP :1;
        unsigned PWM3PIP :1;
        unsigned PWM3IP :1;
    };
} IPR7bits_t;
extern volatile IPR7bits_t IPR7bits __attribute__((address(0x369)));
# 48708 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR8 __attribute__((address(0x36A)));

__asm("IPR8 equ 036Ah");


typedef union {
    struct {
        unsigned U2RXIP :1;
        unsigned U2TXIP :1;
        unsigned U2EIP :1;
        unsigned U2IP :1;
        unsigned TMR5IP :1;
        unsigned TMR5GIP :1;
        unsigned CCP2IP :1;
        unsigned SCANIP :1;
    };
} IPR8bits_t;
extern volatile IPR8bits_t IPR8bits __attribute__((address(0x36A)));
# 48770 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR9 __attribute__((address(0x36B)));

__asm("IPR9 equ 036Bh");


typedef union {
    struct {
        unsigned U3RXIP :1;
        unsigned U3TXIP :1;
        unsigned U3EIP :1;
        unsigned U3IP :1;
        unsigned :1;
        unsigned CLC4IP :1;
        unsigned PWM4PIP :1;
        unsigned PWM4IP :1;
    };
} IPR9bits_t;
extern volatile IPR9bits_t IPR9bits __attribute__((address(0x36B)));
# 48827 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR10 __attribute__((address(0x36C)));

__asm("IPR10 equ 036Ch");


typedef union {
    struct {
        unsigned INT2IP :1;
        unsigned CLC5IP :1;
        unsigned CWG2IP :1;
        unsigned NCO2IP :1;
        unsigned DMA3SCNTIP :1;
        unsigned DMA3DCNTIP :1;
        unsigned DMA3ORIP :1;
        unsigned DMA3AIP :1;
    };
} IPR10bits_t;
extern volatile IPR10bits_t IPR10bits __attribute__((address(0x36C)));
# 48889 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR11 __attribute__((address(0x36D)));

__asm("IPR11 equ 036Dh");


typedef union {
    struct {
        unsigned CCP3IP :1;
        unsigned CLC6IP :1;
        unsigned CWG3IP :1;
        unsigned TMR4IP :1;
        unsigned DMA4SCNTIP :1;
        unsigned DMA4DCNTIP :1;
        unsigned DMA4ORIP :1;
        unsigned DMA4AIP :1;
    };
} IPR11bits_t;
extern volatile IPR11bits_t IPR11bits __attribute__((address(0x36D)));
# 48951 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR12 __attribute__((address(0x36E)));

__asm("IPR12 equ 036Eh");


typedef union {
    struct {
        unsigned U4RXIP :1;
        unsigned U4TXIP :1;
        unsigned U4EIP :1;
        unsigned U4IP :1;
        unsigned DMA5SCNTIP :1;
        unsigned DMA5DCNTIP :1;
        unsigned DMA5ORIP :1;
        unsigned DMA5AIP :1;
    };
} IPR12bits_t;
extern volatile IPR12bits_t IPR12bits __attribute__((address(0x36E)));
# 49013 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR13 __attribute__((address(0x36F)));

__asm("IPR13 equ 036Fh");


typedef union {
    struct {
        unsigned U5RXIP :1;
        unsigned U5TXIP :1;
        unsigned U5EIP :1;
        unsigned U5IP :1;
        unsigned DMA6SCNTIP :1;
        unsigned DMA6DCNTIP :1;
        unsigned DMA6ORIP :1;
        unsigned DMA6AIP :1;
    };
} IPR13bits_t;
extern volatile IPR13bits_t IPR13bits __attribute__((address(0x36F)));
# 49075 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR14 __attribute__((address(0x370)));

__asm("IPR14 equ 0370h");


typedef union {
    struct {
        unsigned :1;
        unsigned CLC7IP :1;
        unsigned C2IP :1;
        unsigned NCO3IP :1;
        unsigned DMA7SCNTIP :1;
        unsigned DMA7DCNTIP :1;
        unsigned DMA7ORIP :1;
        unsigned DMA7AIP :1;
    };
} IPR14bits_t;
extern volatile IPR14bits_t IPR14bits __attribute__((address(0x370)));
# 49132 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IPR15 __attribute__((address(0x371)));

__asm("IPR15 equ 0371h");


typedef union {
    struct {
        unsigned NVMIP :1;
        unsigned CLC8IP :1;
        unsigned CRCIP :1;
        unsigned TMR6IP :1;
        unsigned DMA8SCNTIP :1;
        unsigned DMA8DCNTIP :1;
        unsigned DMA8ORIP :1;
        unsigned DMA8AIP :1;
    };
} IPR15bits_t;
extern volatile IPR15bits_t IPR15bits __attribute__((address(0x371)));
# 49194 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char STATUS_CSHAD __attribute__((address(0x373)));

__asm("STATUS_CSHAD equ 0373h");


typedef union {
    struct {
        unsigned :5;
        unsigned NOT_PD :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_TO :1;
    };
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned OV :1;
        unsigned N :1;
        unsigned nPD :1;
        unsigned nTO :1;
    };
    struct {
        unsigned :5;
        unsigned PD :1;
        unsigned TO :1;
    };
} STATUS_CSHADbits_t;
extern volatile STATUS_CSHADbits_t STATUS_CSHADbits __attribute__((address(0x373)));
# 49283 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WREG_CSHAD __attribute__((address(0x374)));

__asm("WREG_CSHAD equ 0374h");


typedef union {
    struct {
        unsigned WREG :8;
    };
} WREG_CSHADbits_t;
extern volatile WREG_CSHADbits_t WREG_CSHADbits __attribute__((address(0x374)));
# 49303 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char BSR_CSHAD __attribute__((address(0x375)));

__asm("BSR_CSHAD equ 0375h");




extern volatile unsigned char SHADCON __attribute__((address(0x376)));

__asm("SHADCON equ 0376h");


typedef union {
    struct {
        unsigned SHADLO :1;
    };
} SHADCONbits_t;
extern volatile SHADCONbits_t SHADCONbits __attribute__((address(0x376)));
# 49330 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char STATUS_SHAD __attribute__((address(0x377)));

__asm("STATUS_SHAD equ 0377h");


typedef union {
    struct {
        unsigned :5;
        unsigned NOT_PD :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_TO :1;
    };
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned OV :1;
        unsigned N :1;
        unsigned nPD :1;
        unsigned nTO :1;
    };
    struct {
        unsigned :5;
        unsigned PD :1;
        unsigned TO :1;
    };
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __attribute__((address(0x377)));
# 49419 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WREG_SHAD __attribute__((address(0x378)));

__asm("WREG_SHAD equ 0378h");


typedef union {
    struct {
        unsigned WREG :8;
    };
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __attribute__((address(0x378)));
# 49439 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char BSR_SHAD __attribute__((address(0x379)));

__asm("BSR_SHAD equ 0379h");




extern volatile unsigned char PCLATH_SHAD __attribute__((address(0x37A)));

__asm("PCLATH_SHAD equ 037Ah");


typedef union {
    struct {
        unsigned PCH :8;
    };
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __attribute__((address(0x37A)));
# 49466 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PCLATU_SHAD __attribute__((address(0x37B)));

__asm("PCLATU_SHAD equ 037Bh");


typedef union {
    struct {
        unsigned PCU :5;
    };
} PCLATU_SHADbits_t;
extern volatile PCLATU_SHADbits_t PCLATU_SHADbits __attribute__((address(0x37B)));
# 49486 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short FSR0SH __attribute__((address(0x37C)));

__asm("FSR0SH equ 037Ch");




extern volatile unsigned char FSR0L_SHAD __attribute__((address(0x37C)));

__asm("FSR0L_SHAD equ 037Ch");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __attribute__((address(0x37C)));
# 49513 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char FSR0H_SHAD __attribute__((address(0x37D)));

__asm("FSR0H_SHAD equ 037Dh");


typedef union {
    struct {
        unsigned FSR0H :6;
    };
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __attribute__((address(0x37D)));
# 49533 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short FSR1SH __attribute__((address(0x37E)));

__asm("FSR1SH equ 037Eh");




extern volatile unsigned char FSR1L_SHAD __attribute__((address(0x37E)));

__asm("FSR1L_SHAD equ 037Eh");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __attribute__((address(0x37E)));
# 49560 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char FSR1H_SHAD __attribute__((address(0x37F)));

__asm("FSR1H_SHAD equ 037Fh");


typedef union {
    struct {
        unsigned FSR1H :6;
    };
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __attribute__((address(0x37F)));
# 49580 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short FSR2SH __attribute__((address(0x380)));

__asm("FSR2SH equ 0380h");




extern volatile unsigned char FSR2L_SHAD __attribute__((address(0x380)));

__asm("FSR2L_SHAD equ 0380h");


typedef union {
    struct {
        unsigned FSR2L :8;
    };
} FSR2L_SHADbits_t;
extern volatile FSR2L_SHADbits_t FSR2L_SHADbits __attribute__((address(0x380)));
# 49607 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char FSR2H_SHAD __attribute__((address(0x381)));

__asm("FSR2H_SHAD equ 0381h");


typedef union {
    struct {
        unsigned FSR2H :6;
    };
} FSR2H_SHADbits_t;
extern volatile FSR2H_SHADbits_t FSR2H_SHADbits __attribute__((address(0x381)));
# 49627 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PRODSH __attribute__((address(0x382)));

__asm("PRODSH equ 0382h");




extern volatile unsigned char PRODL_SHAD __attribute__((address(0x382)));

__asm("PRODL_SHAD equ 0382h");


typedef union {
    struct {
        unsigned PRODL :8;
    };
} PRODL_SHADbits_t;
extern volatile PRODL_SHADbits_t PRODL_SHADbits __attribute__((address(0x382)));
# 49654 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PRODH_SHAD __attribute__((address(0x383)));

__asm("PRODH_SHAD equ 0383h");


typedef union {
    struct {
        unsigned PRODH :8;
    };
} PRODH_SHADbits_t;
extern volatile PRODH_SHADbits_t PRODH_SHADbits __attribute__((address(0x383)));
# 49674 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16ACON0 __attribute__((address(0x387)));

__asm("TU16ACON0 equ 0387h");


typedef union {
    struct {
        unsigned CIE :1;
        unsigned ZIE :1;
        unsigned PRIE :1;
        unsigned RDSEL :1;
        unsigned OPOL :1;
        unsigned OM :1;
        unsigned CPOL :1;
        unsigned ON :1;
    };
    struct {
        unsigned TU16ACIE :1;
        unsigned TU16AZIE :1;
        unsigned TU16APRIE :1;
        unsigned TU16ARDSEL :1;
        unsigned TU16AOPOL :1;
        unsigned TU16AOM :1;
        unsigned TU16ACPOL :1;
        unsigned TU16AON :1;
    };
} TU16ACON0bits_t;
extern volatile TU16ACON0bits_t TU16ACON0bits __attribute__((address(0x387)));
# 49786 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16ACON1 __attribute__((address(0x388)));

__asm("TU16ACON1 equ 0388h");


typedef union {
    struct {
        unsigned CIF :1;
        unsigned ZIF :1;
        unsigned PRIF :1;
        unsigned CAPT :1;
        unsigned LIMIT :1;
        unsigned CLR :1;
        unsigned OSEN :1;
        unsigned RUN :1;
    };
    struct {
        unsigned TU16ACIF :1;
        unsigned TU16AZIF :1;
        unsigned TU16APRIF :1;
        unsigned TU16ACAPT :1;
        unsigned TU16ALIMIT :1;
        unsigned TU16ACLR :1;
        unsigned TMRAOSEN :1;
        unsigned TU16ARUN :1;
    };
} TU16ACON1bits_t;
extern volatile TU16ACON1bits_t TU16ACON1bits __attribute__((address(0x388)));
# 49898 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16AHLT __attribute__((address(0x389)));

__asm("TU16AHLT equ 0389h");


typedef union {
    struct {
        unsigned STOP :2;
        unsigned RESET :2;
        unsigned START :2;
        unsigned CSYNC :1;
        unsigned EPOL :1;
    };
    struct {
        unsigned STOP0 :1;
        unsigned STOP1 :1;
        unsigned RESET0 :1;
        unsigned RESET1 :1;
        unsigned START0 :1;
        unsigned START1 :1;
    };
    struct {
        unsigned TU16ASTOP :2;
        unsigned TU16ARESET :2;
        unsigned TU16ASTART :2;
        unsigned TU16ACSYNC :1;
        unsigned TU16AEPOL :1;
    };
    struct {
        unsigned TU16ASTOP0 :1;
        unsigned TU16ASTOP1 :1;
        unsigned TU16ARESET0 :1;
        unsigned TU16ARESET1 :1;
        unsigned TU16ASTART0 :1;
        unsigned TU16ASTART1 :1;
    };
} TU16AHLTbits_t;
extern volatile TU16AHLTbits_t TU16AHLTbits __attribute__((address(0x389)));
# 50050 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16APS __attribute__((address(0x38A)));

__asm("TU16APS equ 038Ah");


typedef union {
    struct {
        unsigned PS :8;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
        unsigned PS3 :1;
        unsigned PS4 :1;
        unsigned PS5 :1;
        unsigned PS6 :1;
        unsigned PS7 :1;
    };
    struct {
        unsigned TU16APS0 :1;
        unsigned TU16APS1 :1;
        unsigned TU16APS2 :1;
        unsigned TU16APS3 :1;
        unsigned TU16APS4 :1;
        unsigned TU16APS5 :1;
        unsigned TU16APS6 :1;
        unsigned TU16APS7 :1;
    };
    struct {
        unsigned TU16APS :8;
    };
} TU16APSbits_t;
extern volatile TU16APSbits_t TU16APSbits __attribute__((address(0x38A)));
# 50178 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short TU16ATMR __attribute__((address(0x38B)));

__asm("TU16ATMR equ 038Bh");


extern volatile unsigned short TU16ACR __attribute__((address(0x38B)));

__asm("TU16ACR equ 038Bh");




extern volatile unsigned char TU16ATMRL __attribute__((address(0x38B)));

__asm("TU16ATMRL equ 038Bh");


typedef union {
    struct {
        unsigned TMRL :8;
    };
    struct {
        unsigned TMRL0 :1;
        unsigned TMRL1 :1;
        unsigned TMRL2 :1;
        unsigned TMRL3 :1;
        unsigned TMRL4 :1;
        unsigned TMRL5 :1;
        unsigned TMRL6 :1;
        unsigned TMRL7 :1;
    };
    struct {
        unsigned TU16ATMRL0 :1;
        unsigned TU16ATMRL1 :1;
        unsigned TU16ATMRL2 :1;
        unsigned TU16ATMRL3 :1;
        unsigned TU16ATMRL4 :1;
        unsigned TU16ATMRL5 :1;
        unsigned TU16ATMRL6 :1;
        unsigned TU16ATMRL7 :1;
    };
    struct {
        unsigned TU16ATMR0 :1;
        unsigned TU16ATMR1 :1;
        unsigned TU16ATMR2 :1;
        unsigned TU16ATMR3 :1;
        unsigned TU16ATMR4 :1;
        unsigned TU16ATMR5 :1;
        unsigned TU16ATMR6 :1;
        unsigned TU16ATMR7 :1;
    };
} TU16ATMRLbits_t;
extern volatile TU16ATMRLbits_t TU16ATMRLbits __attribute__((address(0x38B)));
# 50360 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16ACRL __attribute__((address(0x38B)));

__asm("TU16ACRL equ 038Bh");


typedef union {
    struct {
        unsigned CRL :8;
    };
    struct {
        unsigned CRL0 :1;
        unsigned CRL1 :1;
        unsigned CRL2 :1;
        unsigned CRL3 :1;
        unsigned CRL4 :1;
        unsigned CRL5 :1;
        unsigned CRL6 :1;
        unsigned CRL7 :1;
    };
    struct {
        unsigned TU16ACRL0 :1;
        unsigned TU16ACRL1 :1;
        unsigned TU16ACRL2 :1;
        unsigned TU16ACRL3 :1;
        unsigned TU16ACRL4 :1;
        unsigned TU16ACRL5 :1;
        unsigned TU16ACRL6 :1;
        unsigned TU16ACRL7 :1;
    };
    struct {
        unsigned TU16ACR0 :1;
        unsigned TU16ACR1 :1;
        unsigned TU16ACR2 :1;
        unsigned TU16ACR3 :1;
        unsigned TU16ACR4 :1;
        unsigned TU16ACR5 :1;
        unsigned TU16ACR6 :1;
        unsigned TU16ACR7 :1;
    };
} TU16ACRLbits_t;
extern volatile TU16ACRLbits_t TU16ACRLbits __attribute__((address(0x38B)));
# 50530 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16ATMRH __attribute__((address(0x38C)));

__asm("TU16ATMRH equ 038Ch");


typedef union {
    struct {
        unsigned TMRH :8;
    };
    struct {
        unsigned TMRH0 :1;
        unsigned TMRH1 :1;
        unsigned TMRH2 :1;
        unsigned TMRH3 :1;
        unsigned TMRH4 :1;
        unsigned TMRH5 :1;
        unsigned TMRH6 :1;
        unsigned TMRH7 :1;
    };
    struct {
        unsigned TU16ATMRH0 :1;
        unsigned TU16ATMRH1 :1;
        unsigned TU16ATMRH2 :1;
        unsigned TU16ATMRH3 :1;
        unsigned TU16ATMRH4 :1;
        unsigned TU16ATMRH5 :1;
        unsigned TU16ATMRH6 :1;
        unsigned TU16ATMRH7 :1;
    };
    struct {
        unsigned TU16ATMR8 :1;
        unsigned TU16ATMR9 :1;
        unsigned TU16ATMR10 :1;
        unsigned TU16ATMR11 :1;
        unsigned TU16ATMR12 :1;
        unsigned TU16ATMR13 :1;
        unsigned TU16ATMR14 :1;
        unsigned TU16ATMR15 :1;
    };
} TU16ATMRHbits_t;
extern volatile TU16ATMRHbits_t TU16ATMRHbits __attribute__((address(0x38C)));
# 50700 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16ACRH __attribute__((address(0x38C)));

__asm("TU16ACRH equ 038Ch");


typedef union {
    struct {
        unsigned CRH :8;
    };
    struct {
        unsigned CRH0 :1;
        unsigned CRH1 :1;
        unsigned CRH2 :1;
        unsigned CRH3 :1;
        unsigned CRH4 :1;
        unsigned CRH5 :1;
        unsigned CRH6 :1;
        unsigned CRH7 :1;
    };
    struct {
        unsigned TU16ACRH0 :1;
        unsigned TU16ACRH1 :1;
        unsigned TU16ACRH2 :1;
        unsigned TU16ACRH3 :1;
        unsigned TU16ACRH4 :1;
        unsigned TU16ACRH5 :1;
        unsigned TU16ACRH6 :1;
        unsigned TU16ACRH7 :1;
    };
    struct {
        unsigned TU16ACR8 :1;
        unsigned TU16ACR9 :1;
        unsigned TU16ACR10 :1;
        unsigned TU16ACR11 :1;
        unsigned TU16ACR12 :1;
        unsigned TU16ACR13 :1;
        unsigned TU16ACR14 :1;
        unsigned TU16ACR15 :1;
    };
} TU16ACRHbits_t;
extern volatile TU16ACRHbits_t TU16ACRHbits __attribute__((address(0x38C)));
# 50870 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short TU16APR __attribute__((address(0x38D)));

__asm("TU16APR equ 038Dh");




extern volatile unsigned char TU16APRL __attribute__((address(0x38D)));

__asm("TU16APRL equ 038Dh");


typedef union {
    struct {
        unsigned PRL :8;
    };
    struct {
        unsigned PRL0 :1;
        unsigned PRL1 :1;
        unsigned PRL2 :1;
        unsigned PRL3 :1;
        unsigned PRL4 :1;
        unsigned PRL5 :1;
        unsigned PRL6 :1;
        unsigned PRL7 :1;
    };
    struct {
        unsigned TU16APRL0 :1;
        unsigned TU16APRL1 :1;
        unsigned TU16APRL2 :1;
        unsigned TU16APRL3 :1;
        unsigned TU16APRL4 :1;
        unsigned TU16APRL5 :1;
        unsigned TU16APRL6 :1;
        unsigned TU16APRL7 :1;
    };
    struct {
        unsigned TU16APR0 :1;
        unsigned TU16APR1 :1;
        unsigned TU16APR2 :1;
        unsigned TU16APR3 :1;
        unsigned TU16APR4 :1;
        unsigned TU16APR5 :1;
        unsigned TU16APR6 :1;
        unsigned TU16APR7 :1;
    };
} TU16APRLbits_t;
extern volatile TU16APRLbits_t TU16APRLbits __attribute__((address(0x38D)));
# 51047 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16APRH __attribute__((address(0x38E)));

__asm("TU16APRH equ 038Eh");


typedef union {
    struct {
        unsigned PRH :8;
    };
    struct {
        unsigned PRH0 :1;
        unsigned PRH1 :1;
        unsigned PRH2 :1;
        unsigned PRH3 :1;
        unsigned PRH4 :1;
        unsigned PRH5 :1;
        unsigned PRH6 :1;
        unsigned PRH7 :1;
    };
    struct {
        unsigned TU16APRH0 :1;
        unsigned TU16APRH1 :1;
        unsigned TU16APRH2 :1;
        unsigned TU16APRH3 :1;
        unsigned TU16APRH4 :1;
        unsigned TU16APRH5 :1;
        unsigned TU16APRH6 :1;
        unsigned TU16APRH7 :1;
    };
    struct {
        unsigned TU16APR8 :1;
        unsigned TU16APR9 :1;
        unsigned TU16APR10 :1;
        unsigned TU16APR11 :1;
        unsigned TU16APR12 :1;
        unsigned TU16APR13 :1;
        unsigned TU16APR14 :1;
        unsigned TU16APR15 :1;
    };
} TU16APRHbits_t;
extern volatile TU16APRHbits_t TU16APRHbits __attribute__((address(0x38E)));
# 51217 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16ACLK __attribute__((address(0x38F)));

__asm("TU16ACLK equ 038Fh");


typedef union {
    struct {
        unsigned CLK :8;
    };
    struct {
        unsigned CLK0 :1;
        unsigned CLK1 :1;
        unsigned CLK2 :1;
        unsigned CLK3 :1;
        unsigned CLK4 :1;
    };
    struct {
        unsigned TU16ACLK0 :1;
        unsigned TU16ACLK1 :1;
        unsigned TU16ACLK2 :1;
        unsigned TU16ACLK3 :1;
        unsigned TU16ACLK4 :1;
    };
} TU16ACLKbits_t;
extern volatile TU16ACLKbits_t TU16ACLKbits __attribute__((address(0x38F)));
# 51301 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16AERS __attribute__((address(0x390)));

__asm("TU16AERS equ 0390h");


typedef union {
    struct {
        unsigned ERS :8;
    };
    struct {
        unsigned ERS0 :1;
        unsigned ERS1 :1;
        unsigned ERS2 :1;
        unsigned ERS3 :1;
        unsigned ERS4 :1;
        unsigned ERS5 :1;
    };
    struct {
        unsigned TU16AERS0 :1;
        unsigned TU16AERS1 :1;
        unsigned TU16AERS2 :1;
        unsigned TU16AERS3 :1;
        unsigned TU16AERS4 :1;
        unsigned TU16AERS5 :1;
    };
} TU16AERSbits_t;
extern volatile TU16AERSbits_t TU16AERSbits __attribute__((address(0x390)));
# 51397 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BCON0 __attribute__((address(0x393)));

__asm("TU16BCON0 equ 0393h");


typedef union {
    struct {
        unsigned CIE :1;
        unsigned ZIE :1;
        unsigned PRIE :1;
        unsigned RDSEL :1;
        unsigned OPOL :1;
        unsigned OM :1;
        unsigned CPOL :1;
        unsigned ON :1;
    };
    struct {
        unsigned TU16BCIE :1;
        unsigned TU16BZIE :1;
        unsigned TU16BPRIE :1;
        unsigned TU16BRDSEL :1;
        unsigned TU16BOPOL :1;
        unsigned TU16BOM :1;
        unsigned TU16BCPOL :1;
        unsigned TU16BON :1;
    };
} TU16BCON0bits_t;
extern volatile TU16BCON0bits_t TU16BCON0bits __attribute__((address(0x393)));
# 51509 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BCON1 __attribute__((address(0x394)));

__asm("TU16BCON1 equ 0394h");


typedef union {
    struct {
        unsigned CIF :1;
        unsigned ZIF :1;
        unsigned PRIF :1;
        unsigned CAPT :1;
        unsigned LIMIT :1;
        unsigned CLR :1;
        unsigned OSEN :1;
        unsigned RUN :1;
    };
    struct {
        unsigned TU16BCIF :1;
        unsigned TU16BZIF :1;
        unsigned TU16BPRIF :1;
        unsigned TU16BCAPT :1;
        unsigned TU16BLIMIT :1;
        unsigned TU16BCLR :1;
        unsigned TMRBOSEN :1;
        unsigned TU16BRUN :1;
    };
} TU16BCON1bits_t;
extern volatile TU16BCON1bits_t TU16BCON1bits __attribute__((address(0x394)));
# 51621 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BHLT __attribute__((address(0x395)));

__asm("TU16BHLT equ 0395h");


typedef union {
    struct {
        unsigned STOP :2;
        unsigned RESET :2;
        unsigned START :2;
        unsigned CSYNC :1;
        unsigned EPOL :1;
    };
    struct {
        unsigned STOP0 :1;
        unsigned STOP1 :1;
        unsigned RESET0 :1;
        unsigned RESET1 :1;
        unsigned START0 :1;
        unsigned START1 :1;
    };
    struct {
        unsigned TU16BSTOP :2;
        unsigned TU16BRESET :2;
        unsigned TU16BSTART :2;
        unsigned TU16BCSYNC :1;
        unsigned TU16BEPOL :1;
    };
    struct {
        unsigned TU16BSTOP0 :1;
        unsigned TU16BSTOP1 :1;
        unsigned TU16BRESET0 :1;
        unsigned TU16BRESET1 :1;
        unsigned TU16BSTART0 :1;
        unsigned TU16BSTART1 :1;
    };
} TU16BHLTbits_t;
extern volatile TU16BHLTbits_t TU16BHLTbits __attribute__((address(0x395)));
# 51773 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BPS __attribute__((address(0x396)));

__asm("TU16BPS equ 0396h");


typedef union {
    struct {
        unsigned PS :8;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
        unsigned PS3 :1;
        unsigned PS4 :1;
        unsigned PS5 :1;
        unsigned PS6 :1;
        unsigned PS7 :1;
    };
    struct {
        unsigned TU16BPS0 :1;
        unsigned TU16BPS1 :1;
        unsigned TU16BPS2 :1;
        unsigned TU16BPS3 :1;
        unsigned TU16BPS4 :1;
        unsigned TU16BPS5 :1;
        unsigned TU16BPS6 :1;
        unsigned TU16BPS7 :1;
    };
    struct {
        unsigned TU16BPS :8;
    };
} TU16BPSbits_t;
extern volatile TU16BPSbits_t TU16BPSbits __attribute__((address(0x396)));
# 51901 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short TU16BTMR __attribute__((address(0x397)));

__asm("TU16BTMR equ 0397h");


extern volatile unsigned short TU16BCR __attribute__((address(0x397)));

__asm("TU16BCR equ 0397h");




extern volatile unsigned char TU16BTMRL __attribute__((address(0x397)));

__asm("TU16BTMRL equ 0397h");


typedef union {
    struct {
        unsigned TMRL :8;
    };
    struct {
        unsigned TMRL0 :1;
        unsigned TMRL1 :1;
        unsigned TMRL2 :1;
        unsigned TMRL3 :1;
        unsigned TMRL4 :1;
        unsigned TMRL5 :1;
        unsigned TMRL6 :1;
        unsigned TMRL7 :1;
    };
    struct {
        unsigned TU16BTMRL0 :1;
        unsigned TU16BTMRL1 :1;
        unsigned TU16BTMRL2 :1;
        unsigned TU16BTMRL3 :1;
        unsigned TU16BTMRL4 :1;
        unsigned TU16BTMRL5 :1;
        unsigned TU16BTMRL6 :1;
        unsigned TU16BTMRL7 :1;
    };
    struct {
        unsigned TU16BTMR0 :1;
        unsigned TU16BTMR1 :1;
        unsigned TU16BTMR2 :1;
        unsigned TU16BTMR3 :1;
        unsigned TU16BTMR4 :1;
        unsigned TU16BTMR5 :1;
        unsigned TU16BTMR6 :1;
        unsigned TU16BTMR7 :1;
    };
} TU16BTMRLbits_t;
extern volatile TU16BTMRLbits_t TU16BTMRLbits __attribute__((address(0x397)));
# 52083 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BCRL __attribute__((address(0x397)));

__asm("TU16BCRL equ 0397h");


typedef union {
    struct {
        unsigned CRL :8;
    };
    struct {
        unsigned CRL0 :1;
        unsigned CRL1 :1;
        unsigned CRL2 :1;
        unsigned CRL3 :1;
        unsigned CRL4 :1;
        unsigned CRL5 :1;
        unsigned CRL6 :1;
        unsigned CRL7 :1;
    };
    struct {
        unsigned TU16BCRL0 :1;
        unsigned TU16BCRL1 :1;
        unsigned TU16BCRL2 :1;
        unsigned TU16BCRL3 :1;
        unsigned TU16BCRL4 :1;
        unsigned TU16BCRL5 :1;
        unsigned TU16BCRL6 :1;
        unsigned TU16BCRL7 :1;
    };
    struct {
        unsigned TU16BCR0 :1;
        unsigned TU16BCR1 :1;
        unsigned TU16BCR2 :1;
        unsigned TU16BCR3 :1;
        unsigned TU16BCR4 :1;
        unsigned TU16BCR5 :1;
        unsigned TU16BCR6 :1;
        unsigned TU16BCR7 :1;
    };
} TU16BCRLbits_t;
extern volatile TU16BCRLbits_t TU16BCRLbits __attribute__((address(0x397)));
# 52253 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BTMRH __attribute__((address(0x398)));

__asm("TU16BTMRH equ 0398h");


typedef union {
    struct {
        unsigned TMRH :8;
    };
    struct {
        unsigned TMRH0 :1;
        unsigned TMRH1 :1;
        unsigned TMRH2 :1;
        unsigned TMRH3 :1;
        unsigned TMRH4 :1;
        unsigned TMRH5 :1;
        unsigned TMRH6 :1;
        unsigned TMRH7 :1;
    };
    struct {
        unsigned TU16BTMRH0 :1;
        unsigned TU16BTMRH1 :1;
        unsigned TU16BTMRH2 :1;
        unsigned TU16BTMRH3 :1;
        unsigned TU16BTMRH4 :1;
        unsigned TU16BTMRH5 :1;
        unsigned TU16BTMRH6 :1;
        unsigned TU16BTMRH7 :1;
    };
    struct {
        unsigned TU16BTMR8 :1;
        unsigned TU16BTMR9 :1;
        unsigned TU16BTMR10 :1;
        unsigned TU16BTMR11 :1;
        unsigned TU16BTMR12 :1;
        unsigned TU16BTMR13 :1;
        unsigned TU16BTMR14 :1;
        unsigned TU16BTMR15 :1;
    };
} TU16BTMRHbits_t;
extern volatile TU16BTMRHbits_t TU16BTMRHbits __attribute__((address(0x398)));
# 52423 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BCRH __attribute__((address(0x398)));

__asm("TU16BCRH equ 0398h");


typedef union {
    struct {
        unsigned CRH :8;
    };
    struct {
        unsigned CRH0 :1;
        unsigned CRH1 :1;
        unsigned CRH2 :1;
        unsigned CRH3 :1;
        unsigned CRH4 :1;
        unsigned CRH5 :1;
        unsigned CRH6 :1;
        unsigned CRH7 :1;
    };
    struct {
        unsigned TU16BCRH0 :1;
        unsigned TU16BCRH1 :1;
        unsigned TU16BCRH2 :1;
        unsigned TU16BCRH3 :1;
        unsigned TU16BCRH4 :1;
        unsigned TU16BCRH5 :1;
        unsigned TU16BCRH6 :1;
        unsigned TU16BCRH7 :1;
    };
    struct {
        unsigned TU16BCR8 :1;
        unsigned TU16BCR9 :1;
        unsigned TU16BCR10 :1;
        unsigned TU16BCR11 :1;
        unsigned TU16BCR12 :1;
        unsigned TU16BCR13 :1;
        unsigned TU16BCR14 :1;
        unsigned TU16BCR15 :1;
    };
} TU16BCRHbits_t;
extern volatile TU16BCRHbits_t TU16BCRHbits __attribute__((address(0x398)));
# 52593 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short TU16BPR __attribute__((address(0x399)));

__asm("TU16BPR equ 0399h");




extern volatile unsigned char TU16BPRL __attribute__((address(0x399)));

__asm("TU16BPRL equ 0399h");


typedef union {
    struct {
        unsigned PRL :8;
    };
    struct {
        unsigned PRL0 :1;
        unsigned PRL1 :1;
        unsigned PRL2 :1;
        unsigned PRL3 :1;
        unsigned PRL4 :1;
        unsigned PRL5 :1;
        unsigned PRL6 :1;
        unsigned PRL7 :1;
    };
    struct {
        unsigned TU16BPRL0 :1;
        unsigned TU16BPRL1 :1;
        unsigned TU16BPRL2 :1;
        unsigned TU16BPRL3 :1;
        unsigned TU16BPRL4 :1;
        unsigned TU16BPRL5 :1;
        unsigned TU16BPRL6 :1;
        unsigned TU16BPRL7 :1;
    };
    struct {
        unsigned TU16BPR0 :1;
        unsigned TU16BPR1 :1;
        unsigned TU16BPR2 :1;
        unsigned TU16BPR3 :1;
        unsigned TU16BPR4 :1;
        unsigned TU16BPR5 :1;
        unsigned TU16BPR6 :1;
        unsigned TU16BPR7 :1;
    };
} TU16BPRLbits_t;
extern volatile TU16BPRLbits_t TU16BPRLbits __attribute__((address(0x399)));
# 52770 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BPRH __attribute__((address(0x39A)));

__asm("TU16BPRH equ 039Ah");


typedef union {
    struct {
        unsigned PRH :8;
    };
    struct {
        unsigned PRH0 :1;
        unsigned PRH1 :1;
        unsigned PRH2 :1;
        unsigned PRH3 :1;
        unsigned PRH4 :1;
        unsigned PRH5 :1;
        unsigned PRH6 :1;
        unsigned PRH7 :1;
    };
    struct {
        unsigned TU16BPRH0 :1;
        unsigned TU16BPRH1 :1;
        unsigned TU16BPRH2 :1;
        unsigned TU16BPRH3 :1;
        unsigned TU16BPRH4 :1;
        unsigned TU16BPRH5 :1;
        unsigned TU16BPRH6 :1;
        unsigned TU16BPRH7 :1;
    };
    struct {
        unsigned TU16BPR8 :1;
        unsigned TU16BPR9 :1;
        unsigned TU16BPR10 :1;
        unsigned TU16BPR11 :1;
        unsigned TU16BPR12 :1;
        unsigned TU16BPR13 :1;
        unsigned TU16BPR14 :1;
        unsigned TU16BPR15 :1;
    };
} TU16BPRHbits_t;
extern volatile TU16BPRHbits_t TU16BPRHbits __attribute__((address(0x39A)));
# 52940 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BCLK __attribute__((address(0x39B)));

__asm("TU16BCLK equ 039Bh");


typedef union {
    struct {
        unsigned CLK :8;
    };
    struct {
        unsigned CLK0 :1;
        unsigned CLK1 :1;
        unsigned CLK2 :1;
        unsigned CLK3 :1;
        unsigned CLK4 :1;
    };
    struct {
        unsigned TU16BCLK0 :1;
        unsigned TU16BCLK1 :1;
        unsigned TU16BCLK2 :1;
        unsigned TU16BCLK3 :1;
        unsigned TU16BCLK4 :1;
    };
} TU16BCLKbits_t;
extern volatile TU16BCLKbits_t TU16BCLKbits __attribute__((address(0x39B)));
# 53024 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TU16BERS __attribute__((address(0x39C)));

__asm("TU16BERS equ 039Ch");


typedef union {
    struct {
        unsigned ERS :8;
    };
    struct {
        unsigned ERS0 :1;
        unsigned ERS1 :1;
        unsigned ERS2 :1;
        unsigned ERS3 :1;
        unsigned ERS4 :1;
        unsigned ERS5 :1;
    };
    struct {
        unsigned TU16BERS0 :1;
        unsigned TU16BERS1 :1;
        unsigned TU16BERS2 :1;
        unsigned TU16BERS3 :1;
        unsigned TU16BERS4 :1;
        unsigned TU16BERS5 :1;
    };
} TU16BERSbits_t;
extern volatile TU16BERSbits_t TU16BERSbits __attribute__((address(0x39C)));
# 53120 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TUCHAIN __attribute__((address(0x3BB)));

__asm("TUCHAIN equ 03BBh");


typedef union {
    struct {
        unsigned CH16AB :1;
    };
} TUCHAINbits_t;
extern volatile TUCHAINbits_t TUCHAINbits __attribute__((address(0x3BB)));
# 53140 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1CLK __attribute__((address(0x3BC)));

__asm("CWG1CLK equ 03BCh");


extern volatile unsigned char CWG1CLKCON __attribute__((address(0x3BC)));

__asm("CWG1CLKCON equ 03BCh");


typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG1CS :1;
    };
} CWG1CLKbits_t;
extern volatile CWG1CLKbits_t CWG1CLKbits __attribute__((address(0x3BC)));
# 53171 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG1CS :1;
    };
} CWG1CLKCONbits_t;
extern volatile CWG1CLKCONbits_t CWG1CLKCONbits __attribute__((address(0x3BC)));
# 53194 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1ISM __attribute__((address(0x3BD)));

__asm("CWG1ISM equ 03BDh");


typedef union {
    struct {
        unsigned IS :5;
    };
    struct {
        unsigned CWG1ISM0 :1;
        unsigned CWG1ISM1 :1;
        unsigned CWG1ISM2 :1;
        unsigned CWG1ISM3 :1;
        unsigned CWG1ISM4 :1;
    };
} CWG1ISMbits_t;
extern volatile CWG1ISMbits_t CWG1ISMbits __attribute__((address(0x3BD)));
# 53246 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1DBR __attribute__((address(0x3BE)));

__asm("CWG1DBR equ 03BEh");


typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
    struct {
        unsigned CWG1DBR :6;
    };
    struct {
        unsigned CWG1DBR0 :1;
        unsigned CWG1DBR1 :1;
        unsigned CWG1DBR2 :1;
        unsigned CWG1DBR3 :1;
        unsigned CWG1DBR4 :1;
        unsigned CWG1DBR5 :1;
    };
} CWG1DBRbits_t;
extern volatile CWG1DBRbits_t CWG1DBRbits __attribute__((address(0x3BE)));
# 53350 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1DBF __attribute__((address(0x3BF)));

__asm("CWG1DBF equ 03BFh");


typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
    struct {
        unsigned CWG1DBF :6;
    };
    struct {
        unsigned CWG1DBF0 :1;
        unsigned CWG1DBF1 :1;
        unsigned CWG1DBF2 :1;
        unsigned CWG1DBF3 :1;
        unsigned CWG1DBF4 :1;
        unsigned CWG1DBF5 :1;
    };
} CWG1DBFbits_t;
extern volatile CWG1DBFbits_t CWG1DBFbits __attribute__((address(0x3BF)));
# 53454 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1CON0 __attribute__((address(0x3C0)));

__asm("CWG1CON0 equ 03C0h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G1EN :1;
    };
    struct {
        unsigned CWG1MODE :3;
        unsigned :3;
        unsigned CWG1LD :1;
        unsigned CWG1EN :1;
    };
    struct {
        unsigned CWG1MODE0 :1;
        unsigned CWG1MODE1 :1;
        unsigned CWG1MODE2 :1;
    };
} CWG1CON0bits_t;
extern volatile CWG1CON0bits_t CWG1CON0bits __attribute__((address(0x3C0)));
# 53555 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1CON1 __attribute__((address(0x3C1)));

__asm("CWG1CON1 equ 03C1h");


typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG1POLA :1;
        unsigned CWG1POLB :1;
        unsigned CWG1POLC :1;
        unsigned CWG1POLD :1;
        unsigned :1;
        unsigned CWG1IN :1;
    };
} CWG1CON1bits_t;
extern volatile CWG1CON1bits_t CWG1CON1bits __attribute__((address(0x3C1)));
# 53633 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1AS0 __attribute__((address(0x3C2)));

__asm("CWG1AS0 equ 03C2h");


typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSAC1 :1;
        unsigned LSBD0 :1;
        unsigned LSBD1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG1LSAC :2;
        unsigned CWG1LSBD :2;
        unsigned CWG1REN :1;
        unsigned CWG1SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG1LSAC0 :1;
        unsigned CWG1LSAC1 :1;
        unsigned CWG1LSBD0 :1;
        unsigned CWG1LSBD1 :1;
    };
} CWG1AS0bits_t;
extern volatile CWG1AS0bits_t CWG1AS0bits __attribute__((address(0x3C2)));
# 53753 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1AS1 __attribute__((address(0x3C3)));

__asm("CWG1AS1 equ 03C3h");


typedef union {
    struct {
        unsigned AS0E :1;
        unsigned AS1E :1;
        unsigned AS2E :1;
        unsigned AS3E :1;
        unsigned AS4E :1;
        unsigned AS5E :1;
        unsigned AS6E :1;
        unsigned AS7E :1;
    };
} CWG1AS1bits_t;
extern volatile CWG1AS1bits_t CWG1AS1bits __attribute__((address(0x3C3)));
# 53815 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG1STR __attribute__((address(0x3C4)));

__asm("CWG1STR equ 03C4h");


typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG1STRA :1;
        unsigned CWG1STRB :1;
        unsigned CWG1STRC :1;
        unsigned CWG1STRD :1;
        unsigned CWG1OVRA :1;
        unsigned CWG1OVRB :1;
        unsigned CWG1OVRC :1;
        unsigned CWG1OVRD :1;
    };
} CWG1STRbits_t;
extern volatile CWG1STRbits_t CWG1STRbits __attribute__((address(0x3C4)));
# 53927 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2CLK __attribute__((address(0x3C5)));

__asm("CWG2CLK equ 03C5h");


extern volatile unsigned char CWG2CLKCON __attribute__((address(0x3C5)));

__asm("CWG2CLKCON equ 03C5h");


typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG2CS :1;
    };
} CWG2CLKbits_t;
extern volatile CWG2CLKbits_t CWG2CLKbits __attribute__((address(0x3C5)));
# 53958 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG2CS :1;
    };
} CWG2CLKCONbits_t;
extern volatile CWG2CLKCONbits_t CWG2CLKCONbits __attribute__((address(0x3C5)));
# 53981 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2ISM __attribute__((address(0x3C6)));

__asm("CWG2ISM equ 03C6h");


typedef union {
    struct {
        unsigned IS :5;
    };
    struct {
        unsigned CWG2ISM0 :1;
        unsigned CWG2ISM1 :1;
        unsigned CWG2ISM2 :1;
        unsigned CWG2ISM3 :1;
        unsigned CWG2ISM4 :1;
    };
} CWG2ISMbits_t;
extern volatile CWG2ISMbits_t CWG2ISMbits __attribute__((address(0x3C6)));
# 54033 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2DBR __attribute__((address(0x3C7)));

__asm("CWG2DBR equ 03C7h");


typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
    struct {
        unsigned CWG2DBR :6;
    };
    struct {
        unsigned CWG2DBR0 :1;
        unsigned CWG2DBR1 :1;
        unsigned CWG2DBR2 :1;
        unsigned CWG2DBR3 :1;
        unsigned CWG2DBR4 :1;
        unsigned CWG2DBR5 :1;
    };
} CWG2DBRbits_t;
extern volatile CWG2DBRbits_t CWG2DBRbits __attribute__((address(0x3C7)));
# 54137 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2DBF __attribute__((address(0x3C8)));

__asm("CWG2DBF equ 03C8h");


typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
    struct {
        unsigned CWG2DBF :6;
    };
    struct {
        unsigned CWG2DBF0 :1;
        unsigned CWG2DBF1 :1;
        unsigned CWG2DBF2 :1;
        unsigned CWG2DBF3 :1;
        unsigned CWG2DBF4 :1;
        unsigned CWG2DBF5 :1;
    };
} CWG2DBFbits_t;
extern volatile CWG2DBFbits_t CWG2DBFbits __attribute__((address(0x3C8)));
# 54241 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2CON0 __attribute__((address(0x3C9)));

__asm("CWG2CON0 equ 03C9h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G2EN :1;
    };
    struct {
        unsigned CWG2MODE :3;
        unsigned :3;
        unsigned CWG2LD :1;
        unsigned CWG2EN :1;
    };
    struct {
        unsigned CWG2MODE0 :1;
        unsigned CWG2MODE1 :1;
        unsigned CWG2MODE2 :1;
    };
} CWG2CON0bits_t;
extern volatile CWG2CON0bits_t CWG2CON0bits __attribute__((address(0x3C9)));
# 54342 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2CON1 __attribute__((address(0x3CA)));

__asm("CWG2CON1 equ 03CAh");


typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG2POLA :1;
        unsigned CWG2POLB :1;
        unsigned CWG2POLC :1;
        unsigned CWG2POLD :1;
        unsigned :1;
        unsigned CWG2IN :1;
    };
} CWG2CON1bits_t;
extern volatile CWG2CON1bits_t CWG2CON1bits __attribute__((address(0x3CA)));
# 54420 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2AS0 __attribute__((address(0x3CB)));

__asm("CWG2AS0 equ 03CBh");


typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSAC1 :1;
        unsigned LSBD0 :1;
        unsigned LSBD1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG2LSAC :2;
        unsigned CWG2LSBD :2;
        unsigned CWG2REN :1;
        unsigned CWG2SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG2LSAC0 :1;
        unsigned CWG2LSAC1 :1;
        unsigned CWG2LSBD0 :1;
        unsigned CWG2LSBD1 :1;
    };
} CWG2AS0bits_t;
extern volatile CWG2AS0bits_t CWG2AS0bits __attribute__((address(0x3CB)));
# 54540 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2AS1 __attribute__((address(0x3CC)));

__asm("CWG2AS1 equ 03CCh");


typedef union {
    struct {
        unsigned AS0E :1;
        unsigned AS1E :1;
        unsigned AS2E :1;
        unsigned AS3E :1;
        unsigned AS4E :1;
        unsigned AS5E :1;
        unsigned AS6E :1;
        unsigned AS7E :1;
    };
} CWG2AS1bits_t;
extern volatile CWG2AS1bits_t CWG2AS1bits __attribute__((address(0x3CC)));
# 54602 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG2STR __attribute__((address(0x3CD)));

__asm("CWG2STR equ 03CDh");


typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG2STRA :1;
        unsigned CWG2STRB :1;
        unsigned CWG2STRC :1;
        unsigned CWG2STRD :1;
        unsigned CWG2OVRA :1;
        unsigned CWG2OVRB :1;
        unsigned CWG2OVRC :1;
        unsigned CWG2OVRD :1;
    };
} CWG2STRbits_t;
extern volatile CWG2STRbits_t CWG2STRbits __attribute__((address(0x3CD)));
# 54714 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3CLK __attribute__((address(0x3CE)));

__asm("CWG3CLK equ 03CEh");


extern volatile unsigned char CWG3CLKCON __attribute__((address(0x3CE)));

__asm("CWG3CLKCON equ 03CEh");


typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG3CS :1;
    };
} CWG3CLKbits_t;
extern volatile CWG3CLKbits_t CWG3CLKbits __attribute__((address(0x3CE)));
# 54745 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CS :1;
    };
    struct {
        unsigned CWG3CS :1;
    };
} CWG3CLKCONbits_t;
extern volatile CWG3CLKCONbits_t CWG3CLKCONbits __attribute__((address(0x3CE)));
# 54768 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3ISM __attribute__((address(0x3CF)));

__asm("CWG3ISM equ 03CFh");


typedef union {
    struct {
        unsigned IS :5;
    };
    struct {
        unsigned CWG3ISM0 :1;
        unsigned CWG3ISM1 :1;
        unsigned CWG3ISM2 :1;
        unsigned CWG3ISM3 :1;
        unsigned CWG3ISM4 :1;
    };
} CWG3ISMbits_t;
extern volatile CWG3ISMbits_t CWG3ISMbits __attribute__((address(0x3CF)));
# 54820 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3DBR __attribute__((address(0x3D0)));

__asm("CWG3DBR equ 03D0h");


typedef union {
    struct {
        unsigned DBR :6;
    };
    struct {
        unsigned DBR0 :1;
        unsigned DBR1 :1;
        unsigned DBR2 :1;
        unsigned DBR3 :1;
        unsigned DBR4 :1;
        unsigned DBR5 :1;
    };
    struct {
        unsigned CWG3DBR :6;
    };
    struct {
        unsigned CWG3DBR0 :1;
        unsigned CWG3DBR1 :1;
        unsigned CWG3DBR2 :1;
        unsigned CWG3DBR3 :1;
        unsigned CWG3DBR4 :1;
        unsigned CWG3DBR5 :1;
    };
} CWG3DBRbits_t;
extern volatile CWG3DBRbits_t CWG3DBRbits __attribute__((address(0x3D0)));
# 54924 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3DBF __attribute__((address(0x3D1)));

__asm("CWG3DBF equ 03D1h");


typedef union {
    struct {
        unsigned DBF :6;
    };
    struct {
        unsigned DBF0 :1;
        unsigned DBF1 :1;
        unsigned DBF2 :1;
        unsigned DBF3 :1;
        unsigned DBF4 :1;
        unsigned DBF5 :1;
    };
    struct {
        unsigned CWG3DBF :6;
    };
    struct {
        unsigned CWG3DBF0 :1;
        unsigned CWG3DBF1 :1;
        unsigned CWG3DBF2 :1;
        unsigned CWG3DBF3 :1;
        unsigned CWG3DBF4 :1;
        unsigned CWG3DBF5 :1;
    };
} CWG3DBFbits_t;
extern volatile CWG3DBFbits_t CWG3DBFbits __attribute__((address(0x3D1)));
# 55028 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3CON0 __attribute__((address(0x3D2)));

__asm("CWG3CON0 equ 03D2h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned :3;
        unsigned LD :1;
        unsigned EN :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :4;
        unsigned G3EN :1;
    };
    struct {
        unsigned CWG3MODE :3;
        unsigned :3;
        unsigned CWG3LD :1;
        unsigned CWG3EN :1;
    };
    struct {
        unsigned CWG3MODE0 :1;
        unsigned CWG3MODE1 :1;
        unsigned CWG3MODE2 :1;
    };
} CWG3CON0bits_t;
extern volatile CWG3CON0bits_t CWG3CON0bits __attribute__((address(0x3D2)));
# 55129 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3CON1 __attribute__((address(0x3D3)));

__asm("CWG3CON1 equ 03D3h");


typedef union {
    struct {
        unsigned POLA :1;
        unsigned POLB :1;
        unsigned POLC :1;
        unsigned POLD :1;
        unsigned :1;
        unsigned IN :1;
    };
    struct {
        unsigned CWG3POLA :1;
        unsigned CWG3POLB :1;
        unsigned CWG3POLC :1;
        unsigned CWG3POLD :1;
        unsigned :1;
        unsigned CWG3IN :1;
    };
} CWG3CON1bits_t;
extern volatile CWG3CON1bits_t CWG3CON1bits __attribute__((address(0x3D3)));
# 55207 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3AS0 __attribute__((address(0x3D4)));

__asm("CWG3AS0 equ 03D4h");


typedef union {
    struct {
        unsigned :2;
        unsigned LSAC :2;
        unsigned LSBD :2;
        unsigned REN :1;
        unsigned SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned LSAC0 :1;
        unsigned LSAC1 :1;
        unsigned LSBD0 :1;
        unsigned LSBD1 :1;
    };
    struct {
        unsigned :2;
        unsigned CWG3LSAC :2;
        unsigned CWG3LSBD :2;
        unsigned CWG3REN :1;
        unsigned CWG3SHUTDOWN :1;
    };
    struct {
        unsigned :2;
        unsigned CWG3LSAC0 :1;
        unsigned CWG3LSAC1 :1;
        unsigned CWG3LSBD0 :1;
        unsigned CWG3LSBD1 :1;
    };
} CWG3AS0bits_t;
extern volatile CWG3AS0bits_t CWG3AS0bits __attribute__((address(0x3D4)));
# 55327 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3AS1 __attribute__((address(0x3D5)));

__asm("CWG3AS1 equ 03D5h");


typedef union {
    struct {
        unsigned AS0E :1;
        unsigned AS1E :1;
        unsigned AS2E :1;
        unsigned AS3E :1;
        unsigned AS4E :1;
        unsigned AS5E :1;
        unsigned AS6E :1;
        unsigned AS7E :1;
    };
} CWG3AS1bits_t;
extern volatile CWG3AS1bits_t CWG3AS1bits __attribute__((address(0x3D5)));
# 55389 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CWG3STR __attribute__((address(0x3D6)));

__asm("CWG3STR equ 03D6h");


typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned OVRA :1;
        unsigned OVRB :1;
        unsigned OVRC :1;
        unsigned OVRD :1;
    };
    struct {
        unsigned CWG3STRA :1;
        unsigned CWG3STRB :1;
        unsigned CWG3STRC :1;
        unsigned CWG3STRD :1;
        unsigned CWG3OVRA :1;
        unsigned CWG3OVRB :1;
        unsigned CWG3OVRC :1;
        unsigned CWG3OVRD :1;
    };
} CWG3STRbits_t;
extern volatile CWG3STRbits_t CWG3STRbits __attribute__((address(0x3D6)));
# 55501 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x3D7)));

__asm("FVRCON equ 03D7h");


typedef union {
    struct {
        unsigned ADFVR :2;
        unsigned CDAFVR :2;
        unsigned TSRNG :1;
        unsigned TSEN :1;
        unsigned RDY :1;
        unsigned EN :1;
    };
    struct {
        unsigned ADFVR0 :1;
        unsigned ADFVR1 :1;
        unsigned CDAFVR0 :1;
        unsigned CDAFVR1 :1;
        unsigned :2;
        unsigned FVRRDY :1;
        unsigned FVREN :1;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x3D7)));
# 55590 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCPCON __attribute__((address(0x3D8)));

__asm("ADCPCON equ 03D8h");


extern volatile unsigned char ADCP __attribute__((address(0x3D8)));

__asm("ADCP equ 03D8h");


typedef union {
    struct {
        unsigned CPRDY :1;
        unsigned :6;
        unsigned ON :1;
    };
    struct {
        unsigned ADCPRDY :1;
        unsigned :6;
        unsigned CPON :1;
    };
    struct {
        unsigned :7;
        unsigned ADCPON :1;
    };
} ADCPCONbits_t;
extern volatile ADCPCONbits_t ADCPCONbits __attribute__((address(0x3D8)));
# 55644 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
typedef union {
    struct {
        unsigned CPRDY :1;
        unsigned :6;
        unsigned ON :1;
    };
    struct {
        unsigned ADCPRDY :1;
        unsigned :6;
        unsigned CPON :1;
    };
    struct {
        unsigned :7;
        unsigned ADCPON :1;
    };
} ADCPbits_t;
extern volatile ADCPbits_t ADCPbits __attribute__((address(0x3D8)));
# 55690 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADLTH __attribute__((address(0x3D9)));

__asm("ADLTH equ 03D9h");




extern volatile unsigned char ADLTHL __attribute__((address(0x3D9)));

__asm("ADLTHL equ 03D9h");


typedef union {
    struct {
        unsigned LTH :8;
    };
    struct {
        unsigned ADLTH0 :1;
        unsigned ADLTH1 :1;
        unsigned ADLTH2 :1;
        unsigned ADLTH3 :1;
        unsigned ADLTH4 :1;
        unsigned ADLTH5 :1;
        unsigned ADLTH6 :1;
        unsigned ADLTH7 :1;
    };
    struct {
        unsigned ADLTH :8;
    };
    struct {
        unsigned LTH0 :1;
        unsigned LTH1 :1;
        unsigned LTH2 :1;
        unsigned LTH3 :1;
        unsigned LTH4 :1;
        unsigned LTH5 :1;
        unsigned LTH6 :1;
        unsigned LTH7 :1;
    };
} ADLTHLbits_t;
extern volatile ADLTHLbits_t ADLTHLbits __attribute__((address(0x3D9)));
# 55825 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADLTHH __attribute__((address(0x3DA)));

__asm("ADLTHH equ 03DAh");


typedef union {
    struct {
        unsigned LTH :8;
    };
    struct {
        unsigned ADLTH8 :1;
        unsigned ADLTH9 :1;
        unsigned ADLTH10 :1;
        unsigned ADLTH11 :1;
        unsigned ADLTH12 :1;
        unsigned ADLTH13 :1;
        unsigned ADLTH14 :1;
        unsigned ADLTH15 :1;
    };
    struct {
        unsigned ADLTH :8;
    };
    struct {
        unsigned LTH8 :1;
        unsigned LTH9 :1;
        unsigned LTH10 :1;
        unsigned LTH11 :1;
        unsigned LTH12 :1;
        unsigned LTH13 :1;
        unsigned LTH14 :1;
        unsigned LTH15 :1;
    };
} ADLTHHbits_t;
extern volatile ADLTHHbits_t ADLTHHbits __attribute__((address(0x3DA)));
# 55953 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADUTH __attribute__((address(0x3DB)));

__asm("ADUTH equ 03DBh");




extern volatile unsigned char ADUTHL __attribute__((address(0x3DB)));

__asm("ADUTHL equ 03DBh");


typedef union {
    struct {
        unsigned UTH :8;
    };
    struct {
        unsigned ADUTH0 :1;
        unsigned ADUTH1 :1;
        unsigned ADUTH2 :1;
        unsigned ADUTH3 :1;
        unsigned ADUTH4 :1;
        unsigned ADUTH5 :1;
        unsigned ADUTH6 :1;
        unsigned ADUTH7 :1;
    };
    struct {
        unsigned ADUTH :8;
    };
    struct {
        unsigned UTH0 :1;
        unsigned UTH1 :1;
        unsigned UTH2 :1;
        unsigned UTH3 :1;
        unsigned UTH4 :1;
        unsigned UTH5 :1;
        unsigned UTH6 :1;
        unsigned UTH7 :1;
    };
} ADUTHLbits_t;
extern volatile ADUTHLbits_t ADUTHLbits __attribute__((address(0x3DB)));
# 56088 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADUTHH __attribute__((address(0x3DC)));

__asm("ADUTHH equ 03DCh");


typedef union {
    struct {
        unsigned UTH :8;
    };
    struct {
        unsigned ADUTH8 :1;
        unsigned ADUTH9 :1;
        unsigned ADUTH10 :1;
        unsigned ADUTH11 :1;
        unsigned ADUTH12 :1;
        unsigned ADUTH13 :1;
        unsigned ADUTH14 :1;
        unsigned ADUTH15 :1;
    };
    struct {
        unsigned ADUTH :8;
    };
    struct {
        unsigned UTH8 :1;
        unsigned UTH9 :1;
        unsigned UTH10 :1;
        unsigned UTH11 :1;
        unsigned UTH12 :1;
        unsigned UTH13 :1;
        unsigned UTH14 :1;
        unsigned UTH15 :1;
    };
} ADUTHHbits_t;
extern volatile ADUTHHbits_t ADUTHHbits __attribute__((address(0x3DC)));
# 56216 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADERR __attribute__((address(0x3DD)));

__asm("ADERR equ 03DDh");




extern volatile unsigned char ADERRL __attribute__((address(0x3DD)));

__asm("ADERRL equ 03DDh");


typedef union {
    struct {
        unsigned ERR :8;
    };
    struct {
        unsigned ADERR0 :1;
        unsigned ADERR1 :1;
        unsigned ADERR2 :1;
        unsigned ADERR3 :1;
        unsigned ADERR4 :1;
        unsigned ADERR5 :1;
        unsigned ADERR6 :1;
        unsigned ADERR7 :1;
    };
    struct {
        unsigned ADERR :8;
    };
    struct {
        unsigned ERR0 :1;
        unsigned ERR1 :1;
        unsigned ERR2 :1;
        unsigned ERR3 :1;
        unsigned ERR4 :1;
        unsigned ERR5 :1;
        unsigned ERR6 :1;
        unsigned ERR7 :1;
    };
} ADERRLbits_t;
extern volatile ADERRLbits_t ADERRLbits __attribute__((address(0x3DD)));
# 56351 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADERRH __attribute__((address(0x3DE)));

__asm("ADERRH equ 03DEh");


typedef union {
    struct {
        unsigned ERR :8;
    };
    struct {
        unsigned ADERR8 :1;
        unsigned ADERR9 :1;
        unsigned ADERR10 :1;
        unsigned ADERR11 :1;
        unsigned ADERR12 :1;
        unsigned ADERR13 :1;
        unsigned ADERR14 :1;
        unsigned ADERR15 :1;
    };
    struct {
        unsigned ADERR :8;
    };
    struct {
        unsigned ERR8 :1;
        unsigned ERR9 :1;
        unsigned ERR10 :1;
        unsigned ERR11 :1;
        unsigned ERR12 :1;
        unsigned ERR13 :1;
        unsigned ERR14 :1;
        unsigned ERR15 :1;
    };
} ADERRHbits_t;
extern volatile ADERRHbits_t ADERRHbits __attribute__((address(0x3DE)));
# 56479 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADSTPT __attribute__((address(0x3DF)));

__asm("ADSTPT equ 03DFh");




extern volatile unsigned char ADSTPTL __attribute__((address(0x3DF)));

__asm("ADSTPTL equ 03DFh");


typedef union {
    struct {
        unsigned STPT :8;
    };
    struct {
        unsigned ADSTPT0 :1;
        unsigned ADSTPT1 :1;
        unsigned ADSTPT2 :1;
        unsigned ADSTPT3 :1;
        unsigned ADSTPT4 :1;
        unsigned ADSTPT5 :1;
        unsigned ADSTPT6 :1;
        unsigned ADSTPT7 :1;
    };
    struct {
        unsigned ADSTPT :8;
    };
    struct {
        unsigned STPT0 :1;
        unsigned STPT1 :1;
        unsigned STPT2 :1;
        unsigned STPT3 :1;
        unsigned STPT4 :1;
        unsigned STPT5 :1;
        unsigned STPT6 :1;
        unsigned STPT7 :1;
    };
} ADSTPTLbits_t;
extern volatile ADSTPTLbits_t ADSTPTLbits __attribute__((address(0x3DF)));
# 56614 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADSTPTH __attribute__((address(0x3E0)));

__asm("ADSTPTH equ 03E0h");


typedef union {
    struct {
        unsigned STPT :8;
    };
    struct {
        unsigned ADSTPT8 :1;
        unsigned ADSTPT9 :1;
        unsigned ADSTPT10 :1;
        unsigned ADSTPT11 :1;
        unsigned ADSTPT12 :1;
        unsigned ADSTPT13 :1;
        unsigned ADSTPT14 :1;
        unsigned ADSTPT15 :1;
    };
    struct {
        unsigned ADSTPT :8;
    };
    struct {
        unsigned STPT8 :1;
        unsigned STPT9 :1;
        unsigned STPT10 :1;
        unsigned STPT11 :1;
        unsigned STPT12 :1;
        unsigned STPT13 :1;
        unsigned STPT15 :1;
        unsigned STPT16 :1;
    };
} ADSTPTHbits_t;
extern volatile ADSTPTHbits_t ADSTPTHbits __attribute__((address(0x3E0)));
# 56742 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADFLTR __attribute__((address(0x3E1)));

__asm("ADFLTR equ 03E1h");




extern volatile unsigned char ADFLTRL __attribute__((address(0x3E1)));

__asm("ADFLTRL equ 03E1h");


typedef union {
    struct {
        unsigned FLTR :8;
    };
    struct {
        unsigned ADFLTR0 :1;
        unsigned ADFLTR1 :1;
        unsigned ADFLTR2 :1;
        unsigned ADFLTR3 :1;
        unsigned ADFLTR4 :1;
        unsigned ADFLTR5 :1;
        unsigned ADFLTR6 :1;
        unsigned ADFLTR7 :1;
    };
    struct {
        unsigned ADFLTR :8;
    };
    struct {
        unsigned FLTR0 :1;
        unsigned FLTR1 :1;
        unsigned FLTR2 :1;
        unsigned FLTR3 :1;
        unsigned FLTR4 :1;
        unsigned FLTR5 :1;
        unsigned FLTR6 :1;
        unsigned FLTR7 :1;
    };
} ADFLTRLbits_t;
extern volatile ADFLTRLbits_t ADFLTRLbits __attribute__((address(0x3E1)));
# 56877 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADFLTRH __attribute__((address(0x3E2)));

__asm("ADFLTRH equ 03E2h");


typedef union {
    struct {
        unsigned FLTR :8;
    };
    struct {
        unsigned ADFLTR8 :1;
        unsigned ADFLTR9 :1;
        unsigned ADFLTR10 :1;
        unsigned ADFLTR11 :1;
        unsigned ADFLTR12 :1;
        unsigned ADFLTR13 :1;
        unsigned ADFLTR14 :1;
        unsigned ADFLTR15 :1;
    };
    struct {
        unsigned ADFLTR :8;
    };
    struct {
        unsigned FLTR8 :1;
        unsigned FLTR9 :1;
        unsigned FLTR10 :1;
        unsigned FLTR11 :1;
        unsigned FLTR12 :1;
        unsigned FLTR13 :1;
        unsigned FLTR14 :1;
        unsigned FLTR15 :1;
    };
} ADFLTRHbits_t;
extern volatile ADFLTRHbits_t ADFLTRHbits __attribute__((address(0x3E2)));
# 57006 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 ADACC __attribute__((address(0x3E3)));


__asm("ADACC equ 03E3h");




extern volatile unsigned char ADACCL __attribute__((address(0x3E3)));

__asm("ADACCL equ 03E3h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned ADACC0 :1;
        unsigned ADACC1 :1;
        unsigned ADACC2 :1;
        unsigned ADACC3 :1;
        unsigned ADACC4 :1;
        unsigned ADACC5 :1;
        unsigned ADACC6 :1;
        unsigned ADACC7 :1;
    };
    struct {
        unsigned ADACC :8;
    };
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
} ADACCLbits_t;
extern volatile ADACCLbits_t ADACCLbits __attribute__((address(0x3E3)));
# 57142 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADACCH __attribute__((address(0x3E4)));

__asm("ADACCH equ 03E4h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned ADACC8 :1;
        unsigned ADACC9 :1;
        unsigned ADACC10 :1;
        unsigned ADACC11 :1;
        unsigned ADACC12 :1;
        unsigned ADACC13 :1;
        unsigned ADACC14 :1;
        unsigned ADACC15 :1;
    };
    struct {
        unsigned ADACC :8;
    };
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
} ADACCHbits_t;
extern volatile ADACCHbits_t ADACCHbits __attribute__((address(0x3E4)));
# 57270 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADACCU __attribute__((address(0x3E5)));

__asm("ADACCU equ 03E5h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned ADACC16 :1;
        unsigned ADACC17 :1;
    };
    struct {
        unsigned ADACC :8;
    };
    struct {
        unsigned ACC16 :1;
        unsigned ACC17 :1;
    };
} ADACCUbits_t;
extern volatile ADACCUbits_t ADACCUbits __attribute__((address(0x3E5)));
# 57326 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCNT __attribute__((address(0x3E6)));

__asm("ADCNT equ 03E6h");


typedef union {
    struct {
        unsigned CNT :8;
    };
    struct {
        unsigned ADCNT0 :1;
        unsigned ADCNT1 :1;
        unsigned ADCNT2 :1;
        unsigned ADCNT3 :1;
        unsigned ADCNT4 :1;
        unsigned ADCNT5 :1;
        unsigned ADCNT6 :1;
        unsigned ADCNT7 :1;
    };
    struct {
        unsigned ADCNT :8;
    };
    struct {
        unsigned CNT0 :1;
        unsigned CNT1 :1;
        unsigned CNT2 :1;
        unsigned CNT3 :1;
        unsigned CNT4 :1;
        unsigned CNT5 :1;
        unsigned CNT6 :1;
        unsigned CNT7 :1;
    };
} ADCNTbits_t;
extern volatile ADCNTbits_t ADCNTbits __attribute__((address(0x3E6)));
# 57454 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADRPT __attribute__((address(0x3E7)));

__asm("ADRPT equ 03E7h");


typedef union {
    struct {
        unsigned RPT :8;
    };
    struct {
        unsigned ADRPT0 :1;
        unsigned ADRPT1 :1;
        unsigned ADRPT2 :1;
        unsigned ADRPT3 :1;
        unsigned ADRPT4 :1;
        unsigned ADRPT5 :1;
        unsigned ADRPT6 :1;
        unsigned ADRPT7 :1;
    };
    struct {
        unsigned ADRPT :8;
    };
    struct {
        unsigned RPT0 :1;
        unsigned RPT1 :1;
        unsigned RPT2 :1;
        unsigned RPT3 :1;
        unsigned RPT4 :1;
        unsigned RPT5 :1;
        unsigned RPT6 :1;
        unsigned RPT7 :1;
    };
} ADRPTbits_t;
extern volatile ADRPTbits_t ADRPTbits __attribute__((address(0x3E7)));
# 57582 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADPREV __attribute__((address(0x3E8)));

__asm("ADPREV equ 03E8h");




extern volatile unsigned char ADPREVL __attribute__((address(0x3E8)));

__asm("ADPREVL equ 03E8h");


typedef union {
    struct {
        unsigned PREV :8;
    };
    struct {
        unsigned ADPREV0 :1;
        unsigned ADPREV1 :1;
        unsigned ADPREV2 :1;
        unsigned ADPREV3 :1;
        unsigned ADPREV4 :1;
        unsigned ADPREV5 :1;
        unsigned ADPREV6 :1;
        unsigned ADPREV7 :1;
    };
    struct {
        unsigned ADPREV :8;
    };
    struct {
        unsigned PREV0 :1;
        unsigned PREV1 :1;
        unsigned PREV2 :1;
        unsigned PREV3 :1;
        unsigned PREV4 :1;
        unsigned PREV5 :1;
        unsigned PREV6 :1;
        unsigned PREV7 :1;
    };
} ADPREVLbits_t;
extern volatile ADPREVLbits_t ADPREVLbits __attribute__((address(0x3E8)));
# 57717 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADPREVH __attribute__((address(0x3E9)));

__asm("ADPREVH equ 03E9h");


typedef union {
    struct {
        unsigned PREV :8;
    };
    struct {
        unsigned ADPREV8 :1;
        unsigned ADPREV9 :1;
        unsigned ADPREV10 :1;
        unsigned ADPREV11 :1;
        unsigned ADPREV12 :1;
        unsigned ADPREV13 :1;
        unsigned ADPREV14 :1;
        unsigned ADPREV15 :1;
    };
    struct {
        unsigned ADPREV :8;
    };
    struct {
        unsigned PREV8 :1;
        unsigned PREV9 :1;
        unsigned PREV10 :1;
        unsigned PREV11 :1;
        unsigned PREV12 :1;
        unsigned PREV13 :1;
        unsigned PREV14 :1;
        unsigned PREV15 :1;
    };
} ADPREVHbits_t;
extern volatile ADPREVHbits_t ADPREVHbits __attribute__((address(0x3E9)));
# 57845 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x3EA)));

__asm("ADRES equ 03EAh");




extern volatile unsigned char ADRESL __attribute__((address(0x3EA)));

__asm("ADRESL equ 03EAh");


typedef union {
    struct {
        unsigned RES :8;
    };
    struct {
        unsigned ADRES0 :1;
        unsigned ADRES1 :1;
        unsigned ADRES2 :1;
        unsigned ADRES3 :1;
        unsigned ADRES4 :1;
        unsigned ADRES5 :1;
        unsigned ADRES6 :1;
        unsigned ADRES7 :1;
    };
    struct {
        unsigned ADRES :8;
    };
    struct {
        unsigned RES0 :1;
        unsigned RES1 :1;
        unsigned RES2 :1;
        unsigned RES3 :1;
        unsigned RES4 :1;
        unsigned RES5 :1;
        unsigned RES6 :1;
        unsigned RES7 :1;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x3EA)));
# 57980 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x3EB)));

__asm("ADRESH equ 03EBh");


typedef union {
    struct {
        unsigned ADRES8 :1;
        unsigned ADRES9 :1;
        unsigned ADRES10 :1;
        unsigned ADRES11 :1;
        unsigned ADRES12 :1;
        unsigned ADRES13 :1;
        unsigned ADRES14 :1;
        unsigned ADRES15 :1;
    };
    struct {
        unsigned ADRES :8;
    };
    struct {
        unsigned RES8 :1;
        unsigned RES9 :1;
        unsigned RES10 :1;
        unsigned RES11 :1;
        unsigned RES12 :1;
        unsigned RES13 :1;
        unsigned RES14 :1;
        unsigned RES15 :1;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x3EB)));
# 58100 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADPCH __attribute__((address(0x3EC)));

__asm("ADPCH equ 03ECh");


typedef union {
    struct {
        unsigned ADPCH :6;
    };
    struct {
        unsigned ADPCH0 :1;
        unsigned ADPCH1 :1;
        unsigned ADPCH2 :1;
        unsigned ADPCH3 :1;
        unsigned ADPCH4 :1;
        unsigned ADPCH5 :1;
    };
} ADPCHbits_t;
extern volatile ADPCHbits_t ADPCHbits __attribute__((address(0x3EC)));
# 58158 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADACQ __attribute__((address(0x3EE)));

__asm("ADACQ equ 03EEh");




extern volatile unsigned char ADACQL __attribute__((address(0x3EE)));

__asm("ADACQL equ 03EEh");


typedef union {
    struct {
        unsigned ACQ :8;
    };
    struct {
        unsigned ADACQ0 :1;
        unsigned ADACQ1 :1;
        unsigned ADACQ2 :1;
        unsigned ADACQ3 :1;
        unsigned ADACQ4 :1;
        unsigned ADACQ5 :1;
        unsigned ADACQ6 :1;
        unsigned ADACQ7 :1;
    };
    struct {
        unsigned ADACQ :8;
    };
    struct {
        unsigned ACQ0 :1;
        unsigned ACQ1 :1;
        unsigned ACQ2 :1;
        unsigned ACQ3 :1;
        unsigned ACQ4 :1;
        unsigned ACQ5 :1;
        unsigned ACQ6 :1;
        unsigned ACQ7 :1;
    };
} ADACQLbits_t;
extern volatile ADACQLbits_t ADACQLbits __attribute__((address(0x3EE)));
# 58293 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADACQH __attribute__((address(0x3EF)));

__asm("ADACQH equ 03EFh");


typedef union {
    struct {
        unsigned ACQ :5;
    };
    struct {
        unsigned ADACQ8 :1;
        unsigned ADACQ9 :1;
        unsigned ADACQ10 :1;
        unsigned ADACQ11 :1;
        unsigned ADACQ12 :1;
    };
    struct {
        unsigned ADACQ :5;
    };
    struct {
        unsigned ACQ8 :1;
        unsigned ACQ9 :1;
        unsigned ACQ10 :1;
        unsigned ACQ11 :1;
        unsigned ACQ12 :1;
    };
} ADACQHbits_t;
extern volatile ADACQHbits_t ADACQHbits __attribute__((address(0x3EF)));
# 58385 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCAP __attribute__((address(0x3F0)));

__asm("ADCAP equ 03F0h");


typedef union {
    struct {
        unsigned ADCAP :5;
    };
    struct {
        unsigned ADCAP0 :1;
        unsigned ADCAP1 :1;
        unsigned ADCAP2 :1;
        unsigned ADCAP3 :1;
        unsigned ADCAP4 :1;
    };
} ADCAPbits_t;
extern volatile ADCAPbits_t ADCAPbits __attribute__((address(0x3F0)));
# 58437 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short ADPRE __attribute__((address(0x3F1)));

__asm("ADPRE equ 03F1h");




extern volatile unsigned char ADPREL __attribute__((address(0x3F1)));

__asm("ADPREL equ 03F1h");


typedef union {
    struct {
        unsigned PRE :8;
    };
    struct {
        unsigned PRE0 :1;
        unsigned PRE1 :1;
        unsigned PRE2 :1;
        unsigned PRE3 :1;
        unsigned PRE4 :1;
        unsigned PRE5 :1;
        unsigned PRE6 :1;
        unsigned PRE7 :1;
    };
    struct {
        unsigned ADPRE :8;
    };
    struct {
        unsigned ADPRE0 :1;
        unsigned ADPRE1 :1;
        unsigned ADPRE2 :1;
        unsigned ADPRE3 :1;
        unsigned ADPRE4 :1;
        unsigned ADPRE5 :1;
        unsigned ADPRE6 :1;
        unsigned ADPRE7 :1;
    };
} ADPRELbits_t;
extern volatile ADPRELbits_t ADPRELbits __attribute__((address(0x3F1)));
# 58572 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADPREH __attribute__((address(0x3F2)));

__asm("ADPREH equ 03F2h");


typedef union {
    struct {
        unsigned PRE :5;
    };
    struct {
        unsigned PRE8 :1;
        unsigned PRE9 :1;
        unsigned PRE10 :1;
        unsigned PRE11 :1;
        unsigned PRE12 :1;
    };
    struct {
        unsigned ADPRE :5;
    };
    struct {
        unsigned ADPRE8 :1;
        unsigned ADPRE9 :1;
        unsigned ADPRE10 :1;
        unsigned ADPRE11 :1;
        unsigned ADPRE12 :1;
    };
} ADPREHbits_t;
extern volatile ADPREHbits_t ADPREHbits __attribute__((address(0x3F2)));
# 58664 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x3F3)));

__asm("ADCON0 equ 03F3h");


typedef union {
    struct {
        unsigned GO :1;
        unsigned :1;
        unsigned FM :2;
        unsigned CS :1;
        unsigned CSEN :1;
        unsigned CONT :1;
        unsigned ON :1;
    };
    struct {
        unsigned ADGO :1;
        unsigned :1;
        unsigned ADFM :2;
        unsigned ADCS :1;
        unsigned ADCSEN :1;
        unsigned ADCONT :1;
        unsigned ADON :1;
    };
    struct {
        unsigned DONE :1;
        unsigned :1;
        unsigned FM0 :1;
    };
    struct {
        unsigned GO_NOT_DONE :1;
    };
    struct {
        unsigned GO_nDONE :1;
        unsigned :1;
        unsigned ADFM0 :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x3F3)));
# 58792 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x3F4)));

__asm("ADCON1 equ 03F4h");


typedef union {
    struct {
        unsigned DSEN :1;
        unsigned :4;
        unsigned GPOL :1;
        unsigned IPEN :1;
        unsigned PPOL :1;
    };
    struct {
        unsigned ADDSEN :1;
        unsigned :4;
        unsigned ADGPOL :1;
        unsigned ADIPEN :1;
        unsigned ADPPOL :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x3F4)));
# 58858 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0x3F5)));

__asm("ADCON2 equ 03F5h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned ACLR :1;
        unsigned CRS :3;
        unsigned PSIS :1;
    };
    struct {
        unsigned ADMD0 :1;
        unsigned ADMD1 :1;
        unsigned ADMD2 :1;
        unsigned ADACLR :1;
        unsigned ADCRS0 :1;
        unsigned ADCRS1 :1;
        unsigned ADCRS2 :1;
        unsigned ADPSIS :1;
    };
    struct {
        unsigned ADMD :3;
        unsigned :1;
        unsigned ADCRS :3;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
        unsigned :1;
        unsigned CRS0 :1;
        unsigned CRS1 :1;
        unsigned CRS2 :1;
    };
    struct {
        unsigned MD :3;
    };
    struct {
        unsigned MD0 :1;
        unsigned MD1 :1;
        unsigned MD2 :1;
    };
    struct {
        unsigned ADMODE :3;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0x3F5)));
# 59036 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCON3 __attribute__((address(0x3F6)));

__asm("ADCON3 equ 03F6h");


typedef union {
    struct {
        unsigned TMD :3;
        unsigned SOI :1;
        unsigned CALC :3;
    };
    struct {
        unsigned ADTMD0 :1;
        unsigned ADTMD1 :1;
        unsigned ADTMD2 :1;
        unsigned ADSOI :1;
        unsigned ADCALC0 :1;
        unsigned ADCALC1 :1;
        unsigned ADCALC2 :1;
    };
    struct {
        unsigned ADTMD :3;
        unsigned :1;
        unsigned ADCALC :3;
    };
    struct {
        unsigned TMD0 :1;
        unsigned TMD1 :1;
        unsigned TMD2 :1;
        unsigned :1;
        unsigned CALC0 :1;
        unsigned CALC1 :1;
        unsigned CALC2 :1;
    };
} ADCON3bits_t;
extern volatile ADCON3bits_t ADCON3bits __attribute__((address(0x3F6)));
# 59166 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADSTAT __attribute__((address(0x3F7)));

__asm("ADSTAT equ 03F7h");


typedef union {
    struct {
        unsigned STAT :3;
        unsigned :1;
        unsigned MATH :1;
        unsigned LTHR :1;
        unsigned UTHR :1;
        unsigned OV :1;
    };
    struct {
        unsigned ADSTAT0 :1;
        unsigned ADSTAT1 :1;
        unsigned ADSTAT2 :1;
        unsigned :1;
        unsigned ADMATH :1;
        unsigned ADLTHR :1;
        unsigned ADUTHR :1;
        unsigned ADAOV :1;
    };
    struct {
        unsigned ADSTAT :3;
        unsigned :4;
        unsigned ADOV :1;
    };
    struct {
        unsigned STAT0 :1;
        unsigned STAT1 :1;
        unsigned STAT2 :1;
    };
} ADSTATbits_t;
extern volatile ADSTATbits_t ADSTATbits __attribute__((address(0x3F7)));
# 59291 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADREF __attribute__((address(0x3F8)));

__asm("ADREF equ 03F8h");


typedef union {
    struct {
        unsigned PREF :4;
        unsigned NREF :4;
    };
    struct {
        unsigned ADPREF :4;
        unsigned ADNREF :4;
    };
    struct {
        unsigned PREF0 :1;
        unsigned PREF1 :1;
        unsigned :2;
        unsigned NREF0 :1;
    };
    struct {
        unsigned ADPREF0 :1;
        unsigned ADPREF1 :1;
        unsigned :2;
        unsigned ADNREF0 :1;
    };
} ADREFbits_t;
extern volatile ADREFbits_t ADREFbits __attribute__((address(0x3F8)));
# 59373 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADACT __attribute__((address(0x3F9)));

__asm("ADACT equ 03F9h");


typedef union {
    struct {
        unsigned ACT :6;
    };
    struct {
        unsigned ADACT0 :1;
        unsigned ADACT1 :1;
        unsigned ADACT2 :1;
        unsigned ADACT3 :1;
        unsigned ADACT4 :1;
        unsigned ADACT5 :1;
    };
    struct {
        unsigned ADACT :6;
    };
    struct {
        unsigned ACT0 :1;
        unsigned ACT1 :1;
        unsigned ACT2 :1;
        unsigned ACT3 :1;
        unsigned ACT4 :1;
        unsigned ACT5 :1;
    };
} ADACTbits_t;
extern volatile ADACTbits_t ADACTbits __attribute__((address(0x3F9)));
# 59477 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCLK __attribute__((address(0x3FA)));

__asm("ADCLK equ 03FAh");


typedef union {
    struct {
        unsigned CS :6;
    };
    struct {
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
        unsigned ADCS3 :1;
        unsigned ADCS4 :1;
        unsigned ADCS5 :1;
    };
    struct {
        unsigned ADCS :6;
    };
    struct {
        unsigned CS0 :1;
        unsigned CS1 :1;
        unsigned CS2 :1;
        unsigned CS3 :1;
        unsigned CS4 :1;
        unsigned CS5 :1;
    };
} ADCLKbits_t;
extern volatile ADCLKbits_t ADCLKbits __attribute__((address(0x3FA)));
# 59581 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCTX __attribute__((address(0x3FB)));

__asm("ADCTX equ 03FBh");


typedef union {
    struct {
        unsigned CTX :2;
        unsigned :5;
        unsigned CTXSW :1;
    };
    struct {
        unsigned CTX0 :1;
        unsigned CTX1 :1;
    };
    struct {
        unsigned ADCTX :2;
        unsigned :5;
        unsigned ADCTXSW :1;
    };
    struct {
        unsigned ADCTX0 :1;
        unsigned ADCTX1 :1;
    };
} ADCTXbits_t;
extern volatile ADCTXbits_t ADCTXbits __attribute__((address(0x3FB)));
# 59651 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCSEL1 __attribute__((address(0x3FC)));

__asm("ADCSEL1 equ 03FCh");


typedef union {
    struct {
        unsigned :6;
        unsigned SSI :1;
        unsigned CHEN :1;
    };
} ADCSEL1bits_t;
extern volatile ADCSEL1bits_t ADCSEL1bits __attribute__((address(0x3FC)));
# 59678 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCSEL2 __attribute__((address(0x3FD)));

__asm("ADCSEL2 equ 03FDh");


typedef union {
    struct {
        unsigned :6;
        unsigned SSI :1;
        unsigned CHEN :1;
    };
} ADCSEL2bits_t;
extern volatile ADCSEL2bits_t ADCSEL2bits __attribute__((address(0x3FD)));
# 59705 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCSEL3 __attribute__((address(0x3FE)));

__asm("ADCSEL3 equ 03FEh");


typedef union {
    struct {
        unsigned :6;
        unsigned SSI :1;
        unsigned CHEN :1;
    };
} ADCSEL3bits_t;
extern volatile ADCSEL3bits_t ADCSEL3bits __attribute__((address(0x3FE)));
# 59732 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ADCSEL4 __attribute__((address(0x3FF)));

__asm("ADCSEL4 equ 03FFh");


typedef union {
    struct {
        unsigned :6;
        unsigned SSI :1;
        unsigned CHEN :1;
    };
} ADCSEL4bits_t;
extern volatile ADCSEL4bits_t ADCSEL4bits __attribute__((address(0x3FF)));
# 59759 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x400)));

__asm("ANSELA equ 0400h");


typedef union {
    struct {
        unsigned ANSELA0 :1;
        unsigned ANSELA1 :1;
        unsigned ANSELA2 :1;
        unsigned ANSELA3 :1;
        unsigned ANSELA4 :1;
        unsigned ANSELA5 :1;
        unsigned ANSELA6 :1;
        unsigned ANSELA7 :1;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x400)));
# 59821 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WPUA __attribute__((address(0x401)));

__asm("WPUA equ 0401h");


typedef union {
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned WPUA4 :1;
        unsigned WPUA5 :1;
        unsigned WPUA6 :1;
        unsigned WPUA7 :1;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0x401)));
# 59883 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ODCONA __attribute__((address(0x402)));

__asm("ODCONA equ 0402h");


typedef union {
    struct {
        unsigned ODCA0 :1;
        unsigned ODCA1 :1;
        unsigned ODCA2 :1;
        unsigned ODCA3 :1;
        unsigned ODCA4 :1;
        unsigned ODCA5 :1;
        unsigned ODCA6 :1;
        unsigned ODCA7 :1;
    };
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __attribute__((address(0x402)));
# 59945 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SLRCONA __attribute__((address(0x403)));

__asm("SLRCONA equ 0403h");


typedef union {
    struct {
        unsigned SLRA0 :1;
        unsigned SLRA1 :1;
        unsigned SLRA2 :1;
        unsigned SLRA3 :1;
        unsigned SLRA4 :1;
        unsigned SLRA5 :1;
        unsigned SLRA6 :1;
        unsigned SLRA7 :1;
    };
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __attribute__((address(0x403)));
# 60007 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INLVLA __attribute__((address(0x404)));

__asm("INLVLA equ 0404h");


typedef union {
    struct {
        unsigned INLVLA0 :1;
        unsigned INLVLA1 :1;
        unsigned INLVLA2 :1;
        unsigned INLVLA3 :1;
        unsigned INLVLA4 :1;
        unsigned INLVLA5 :1;
        unsigned INLVLA6 :1;
        unsigned INLVLA7 :1;
    };
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __attribute__((address(0x404)));
# 60069 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCAP __attribute__((address(0x405)));

__asm("IOCAP equ 0405h");


typedef union {
    struct {
        unsigned IOCAP0 :1;
        unsigned IOCAP1 :1;
        unsigned IOCAP2 :1;
        unsigned IOCAP3 :1;
        unsigned IOCAP4 :1;
        unsigned IOCAP5 :1;
        unsigned IOCAP6 :1;
        unsigned IOCAP7 :1;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0x405)));
# 60131 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCAN __attribute__((address(0x406)));

__asm("IOCAN equ 0406h");


typedef union {
    struct {
        unsigned IOCAN0 :1;
        unsigned IOCAN1 :1;
        unsigned IOCAN2 :1;
        unsigned IOCAN3 :1;
        unsigned IOCAN4 :1;
        unsigned IOCAN5 :1;
        unsigned IOCAN6 :1;
        unsigned IOCAN7 :1;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0x406)));
# 60193 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCAF __attribute__((address(0x407)));

__asm("IOCAF equ 0407h");


typedef union {
    struct {
        unsigned IOCAF0 :1;
        unsigned IOCAF1 :1;
        unsigned IOCAF2 :1;
        unsigned IOCAF3 :1;
        unsigned IOCAF4 :1;
        unsigned IOCAF5 :1;
        unsigned IOCAF6 :1;
        unsigned IOCAF7 :1;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0x407)));
# 60255 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0x408)));

__asm("ANSELB equ 0408h");


typedef union {
    struct {
        unsigned ANSELB0 :1;
        unsigned ANSELB1 :1;
        unsigned ANSELB2 :1;
        unsigned ANSELB3 :1;
        unsigned ANSELB4 :1;
        unsigned ANSELB5 :1;
        unsigned ANSELB6 :1;
        unsigned ANSELB7 :1;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0x408)));
# 60317 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WPUB __attribute__((address(0x409)));

__asm("WPUB equ 0409h");


typedef union {
    struct {
        unsigned WPUB0 :1;
        unsigned WPUB1 :1;
        unsigned WPUB2 :1;
        unsigned WPUB3 :1;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0x409)));
# 60379 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ODCONB __attribute__((address(0x40A)));

__asm("ODCONB equ 040Ah");


typedef union {
    struct {
        unsigned ODCB0 :1;
        unsigned ODCB1 :1;
        unsigned ODCB2 :1;
        unsigned ODCB3 :1;
        unsigned ODCB4 :1;
        unsigned ODCB5 :1;
        unsigned ODCB6 :1;
        unsigned ODCB7 :1;
    };
} ODCONBbits_t;
extern volatile ODCONBbits_t ODCONBbits __attribute__((address(0x40A)));
# 60441 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SLRCONB __attribute__((address(0x40B)));

__asm("SLRCONB equ 040Bh");


typedef union {
    struct {
        unsigned SLRB0 :1;
        unsigned SLRB1 :1;
        unsigned SLRB2 :1;
        unsigned SLRB3 :1;
        unsigned SLRB4 :1;
        unsigned SLRB5 :1;
        unsigned SLRB6 :1;
        unsigned SLRB7 :1;
    };
} SLRCONBbits_t;
extern volatile SLRCONBbits_t SLRCONBbits __attribute__((address(0x40B)));
# 60503 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INLVLB __attribute__((address(0x40C)));

__asm("INLVLB equ 040Ch");


typedef union {
    struct {
        unsigned INLVLB0 :1;
        unsigned INLVLB1 :1;
        unsigned INLVLB2 :1;
        unsigned INLVLB3 :1;
        unsigned INLVLB4 :1;
        unsigned INLVLB5 :1;
        unsigned INLVLB6 :1;
        unsigned INLVLB7 :1;
    };
} INLVLBbits_t;
extern volatile INLVLBbits_t INLVLBbits __attribute__((address(0x40C)));
# 60565 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCBP __attribute__((address(0x40D)));

__asm("IOCBP equ 040Dh");


typedef union {
    struct {
        unsigned IOCBP0 :1;
        unsigned IOCBP1 :1;
        unsigned IOCBP2 :1;
        unsigned IOCBP3 :1;
        unsigned IOCBP4 :1;
        unsigned IOCBP5 :1;
        unsigned IOCBP6 :1;
        unsigned IOCBP7 :1;
    };
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __attribute__((address(0x40D)));
# 60627 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCBN __attribute__((address(0x40E)));

__asm("IOCBN equ 040Eh");


typedef union {
    struct {
        unsigned IOCBN0 :1;
        unsigned IOCBN1 :1;
        unsigned IOCBN2 :1;
        unsigned IOCBN3 :1;
        unsigned IOCBN4 :1;
        unsigned IOCBN5 :1;
        unsigned IOCBN6 :1;
        unsigned IOCBN7 :1;
    };
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __attribute__((address(0x40E)));
# 60689 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCBF __attribute__((address(0x40F)));

__asm("IOCBF equ 040Fh");


typedef union {
    struct {
        unsigned IOCBF0 :1;
        unsigned IOCBF1 :1;
        unsigned IOCBF2 :1;
        unsigned IOCBF3 :1;
        unsigned IOCBF4 :1;
        unsigned IOCBF5 :1;
        unsigned IOCBF6 :1;
        unsigned IOCBF7 :1;
    };
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __attribute__((address(0x40F)));
# 60751 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ANSELC __attribute__((address(0x410)));

__asm("ANSELC equ 0410h");


typedef union {
    struct {
        unsigned ANSELC0 :1;
        unsigned ANSELC1 :1;
        unsigned ANSELC2 :1;
        unsigned ANSELC3 :1;
        unsigned ANSELC4 :1;
        unsigned ANSELC5 :1;
        unsigned ANSELC6 :1;
        unsigned ANSELC7 :1;
    };
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __attribute__((address(0x410)));
# 60813 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WPUC __attribute__((address(0x411)));

__asm("WPUC equ 0411h");


typedef union {
    struct {
        unsigned WPUC0 :1;
        unsigned WPUC1 :1;
        unsigned WPUC2 :1;
        unsigned WPUC3 :1;
        unsigned WPUC4 :1;
        unsigned WPUC5 :1;
        unsigned WPUC6 :1;
        unsigned WPUC7 :1;
    };
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __attribute__((address(0x411)));
# 60875 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ODCONC __attribute__((address(0x412)));

__asm("ODCONC equ 0412h");


typedef union {
    struct {
        unsigned ODCC0 :1;
        unsigned ODCC1 :1;
        unsigned ODCC2 :1;
        unsigned ODCC3 :1;
        unsigned ODCC4 :1;
        unsigned ODCC5 :1;
        unsigned ODCC6 :1;
        unsigned ODCC7 :1;
    };
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __attribute__((address(0x412)));
# 60937 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SLRCONC __attribute__((address(0x413)));

__asm("SLRCONC equ 0413h");


typedef union {
    struct {
        unsigned SLRC0 :1;
        unsigned SLRC1 :1;
        unsigned SLRC2 :1;
        unsigned SLRC3 :1;
        unsigned SLRC4 :1;
        unsigned SLRC5 :1;
        unsigned SLRC6 :1;
        unsigned SLRC7 :1;
    };
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __attribute__((address(0x413)));
# 60999 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INLVLC __attribute__((address(0x414)));

__asm("INLVLC equ 0414h");


typedef union {
    struct {
        unsigned INLVLC0 :1;
        unsigned INLVLC1 :1;
        unsigned INLVLC2 :1;
        unsigned INLVLC3 :1;
        unsigned INLVLC4 :1;
        unsigned INLVLC5 :1;
        unsigned INLVLC6 :1;
        unsigned INLVLC7 :1;
    };
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __attribute__((address(0x414)));
# 61061 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCCP __attribute__((address(0x415)));

__asm("IOCCP equ 0415h");


typedef union {
    struct {
        unsigned IOCCP0 :1;
        unsigned IOCCP1 :1;
        unsigned IOCCP2 :1;
        unsigned IOCCP3 :1;
        unsigned IOCCP4 :1;
        unsigned IOCCP5 :1;
        unsigned IOCCP6 :1;
        unsigned IOCCP7 :1;
    };
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __attribute__((address(0x415)));
# 61123 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCCN __attribute__((address(0x416)));

__asm("IOCCN equ 0416h");


typedef union {
    struct {
        unsigned IOCCN0 :1;
        unsigned IOCCN1 :1;
        unsigned IOCCN2 :1;
        unsigned IOCCN3 :1;
        unsigned IOCCN4 :1;
        unsigned IOCCN5 :1;
        unsigned IOCCN6 :1;
        unsigned IOCCN7 :1;
    };
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __attribute__((address(0x416)));
# 61185 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCCF __attribute__((address(0x417)));

__asm("IOCCF equ 0417h");


typedef union {
    struct {
        unsigned IOCCF0 :1;
        unsigned IOCCF1 :1;
        unsigned IOCCF2 :1;
        unsigned IOCCF3 :1;
        unsigned IOCCF4 :1;
        unsigned IOCCF5 :1;
        unsigned IOCCF6 :1;
        unsigned IOCCF7 :1;
    };
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __attribute__((address(0x417)));
# 61247 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ANSELD __attribute__((address(0x418)));

__asm("ANSELD equ 0418h");


typedef union {
    struct {
        unsigned ANSELD0 :1;
        unsigned ANSELD1 :1;
        unsigned ANSELD2 :1;
        unsigned ANSELD3 :1;
        unsigned ANSELD4 :1;
        unsigned ANSELD5 :1;
        unsigned ANSELD6 :1;
        unsigned ANSELD7 :1;
    };
} ANSELDbits_t;
extern volatile ANSELDbits_t ANSELDbits __attribute__((address(0x418)));
# 61309 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WPUD __attribute__((address(0x419)));

__asm("WPUD equ 0419h");


typedef union {
    struct {
        unsigned WPUD0 :1;
        unsigned WPUD1 :1;
        unsigned WPUD2 :1;
        unsigned WPUD3 :1;
        unsigned WPUD4 :1;
        unsigned WPUD5 :1;
        unsigned WPUD6 :1;
        unsigned WPUD7 :1;
    };
} WPUDbits_t;
extern volatile WPUDbits_t WPUDbits __attribute__((address(0x419)));
# 61371 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ODCOND __attribute__((address(0x41A)));

__asm("ODCOND equ 041Ah");


typedef union {
    struct {
        unsigned ODCD0 :1;
        unsigned ODCD1 :1;
        unsigned ODCD2 :1;
        unsigned ODCD3 :1;
        unsigned ODCD4 :1;
        unsigned ODCD5 :1;
        unsigned ODCD6 :1;
        unsigned ODCD7 :1;
    };
} ODCONDbits_t;
extern volatile ODCONDbits_t ODCONDbits __attribute__((address(0x41A)));
# 61433 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SLRCOND __attribute__((address(0x41B)));

__asm("SLRCOND equ 041Bh");


typedef union {
    struct {
        unsigned SLRD0 :1;
        unsigned SLRD1 :1;
        unsigned SLRD2 :1;
        unsigned SLRD3 :1;
        unsigned SLRD4 :1;
        unsigned SLRD5 :1;
        unsigned SLRD6 :1;
        unsigned SLRD7 :1;
    };
} SLRCONDbits_t;
extern volatile SLRCONDbits_t SLRCONDbits __attribute__((address(0x41B)));
# 61495 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INLVLD __attribute__((address(0x41C)));

__asm("INLVLD equ 041Ch");


typedef union {
    struct {
        unsigned INLVLD0 :1;
        unsigned INLVLD1 :1;
        unsigned INLVLD2 :1;
        unsigned INLVLD3 :1;
        unsigned INLVLD4 :1;
        unsigned INLVLD5 :1;
        unsigned INLVLD6 :1;
        unsigned INLVLD7 :1;
    };
} INLVLDbits_t;
extern volatile INLVLDbits_t INLVLDbits __attribute__((address(0x41C)));
# 61557 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ANSELE __attribute__((address(0x420)));

__asm("ANSELE equ 0420h");


typedef union {
    struct {
        unsigned ANSELE0 :1;
        unsigned ANSELE1 :1;
        unsigned ANSELE2 :1;
    };
} ANSELEbits_t;
extern volatile ANSELEbits_t ANSELEbits __attribute__((address(0x420)));
# 61589 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WPUE __attribute__((address(0x421)));

__asm("WPUE equ 0421h");


typedef union {
    struct {
        unsigned WPUE0 :1;
        unsigned WPUE1 :1;
        unsigned WPUE2 :1;
        unsigned WPUE3 :1;
    };
} WPUEbits_t;
extern volatile WPUEbits_t WPUEbits __attribute__((address(0x421)));
# 61627 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char ODCONE __attribute__((address(0x422)));

__asm("ODCONE equ 0422h");


typedef union {
    struct {
        unsigned ODCE0 :1;
        unsigned ODCE1 :1;
        unsigned ODCE2 :1;
    };
} ODCONEbits_t;
extern volatile ODCONEbits_t ODCONEbits __attribute__((address(0x422)));
# 61659 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char SLRCONE __attribute__((address(0x423)));

__asm("SLRCONE equ 0423h");


typedef union {
    struct {
        unsigned SLRE0 :1;
        unsigned SLRE1 :1;
        unsigned SLRE2 :1;
    };
} SLRCONEbits_t;
extern volatile SLRCONEbits_t SLRCONEbits __attribute__((address(0x423)));
# 61691 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INLVLE __attribute__((address(0x424)));

__asm("INLVLE equ 0424h");


typedef union {
    struct {
        unsigned INLVLE0 :1;
        unsigned INLVLE1 :1;
        unsigned INLVLE2 :1;
        unsigned INLVLE3 :1;
    };
} INLVLEbits_t;
extern volatile INLVLEbits_t INLVLEbits __attribute__((address(0x424)));
# 61729 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCEP __attribute__((address(0x425)));

__asm("IOCEP equ 0425h");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEP3 :1;
    };
} IOCEPbits_t;
extern volatile IOCEPbits_t IOCEPbits __attribute__((address(0x425)));
# 61750 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCEN __attribute__((address(0x426)));

__asm("IOCEN equ 0426h");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEN3 :1;
    };
} IOCENbits_t;
extern volatile IOCENbits_t IOCENbits __attribute__((address(0x426)));
# 61771 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IOCEF __attribute__((address(0x427)));

__asm("IOCEF equ 0427h");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEF3 :1;
    };
} IOCEFbits_t;
extern volatile IOCEFbits_t IOCEFbits __attribute__((address(0x427)));
# 61793 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 NCO1ACC __attribute__((address(0x440)));


__asm("NCO1ACC equ 0440h");




extern volatile unsigned char NCO1ACCL __attribute__((address(0x440)));

__asm("NCO1ACCL equ 0440h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO1ACC0 :1;
        unsigned NCO1ACC1 :1;
        unsigned NCO1ACC2 :1;
        unsigned NCO1ACC3 :1;
        unsigned NCO1ACC4 :1;
        unsigned NCO1ACC5 :1;
        unsigned NCO1ACC6 :1;
        unsigned NCO1ACC7 :1;
    };
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
    struct {
        unsigned NCO1ACC :8;
    };
} NCO1ACCLbits_t;
extern volatile NCO1ACCLbits_t NCO1ACCLbits __attribute__((address(0x440)));
# 61929 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO1ACCH __attribute__((address(0x441)));

__asm("NCO1ACCH equ 0441h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO1ACC8 :1;
        unsigned NCO1ACC9 :1;
        unsigned NCO1ACC10 :1;
        unsigned NCO1ACC11 :1;
        unsigned NCO1ACC12 :1;
        unsigned NCO1ACC13 :1;
        unsigned NCO1ACC14 :1;
        unsigned NCO1ACC15 :1;
    };
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
    struct {
        unsigned NCO1ACC :8;
    };
} NCO1ACCHbits_t;
extern volatile NCO1ACCHbits_t NCO1ACCHbits __attribute__((address(0x441)));
# 62057 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO1ACCU __attribute__((address(0x442)));

__asm("NCO1ACCU equ 0442h");


typedef union {
    struct {
        unsigned ACC :4;
    };
    struct {
        unsigned NCO1ACC16 :1;
        unsigned NCO1ACC17 :1;
        unsigned NCO1ACC18 :1;
        unsigned NCO1ACC19 :1;
    };
    struct {
        unsigned ACC16 :1;
        unsigned ACC17 :1;
        unsigned ACC18 :1;
        unsigned ACC19 :1;
    };
    struct {
        unsigned NCO1ACC :4;
    };
} NCO1ACCUbits_t;
extern volatile NCO1ACCUbits_t NCO1ACCUbits __attribute__((address(0x442)));
# 62138 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 NCO1INC __attribute__((address(0x443)));


__asm("NCO1INC equ 0443h");




extern volatile unsigned char NCO1INCL __attribute__((address(0x443)));

__asm("NCO1INCL equ 0443h");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO1INC0 :1;
        unsigned NCO1INC1 :1;
        unsigned NCO1INC2 :1;
        unsigned NCO1INC3 :1;
        unsigned NCO1INC4 :1;
        unsigned NCO1INC5 :1;
        unsigned NCO1INC6 :1;
        unsigned NCO1INC7 :1;
    };
    struct {
        unsigned INC0 :1;
        unsigned INC1 :1;
        unsigned INC2 :1;
        unsigned INC3 :1;
        unsigned INC4 :1;
        unsigned INC5 :1;
        unsigned INC6 :1;
        unsigned INC7 :1;
    };
    struct {
        unsigned NCO1INC :8;
    };
} NCO1INCLbits_t;
extern volatile NCO1INCLbits_t NCO1INCLbits __attribute__((address(0x443)));
# 62274 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO1INCH __attribute__((address(0x444)));

__asm("NCO1INCH equ 0444h");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO1INC8 :1;
        unsigned NCO1INC9 :1;
        unsigned NCO1INC10 :1;
        unsigned NCO1INC11 :1;
        unsigned NCO1INC12 :1;
        unsigned NCO1INC13 :1;
        unsigned NCO1INC14 :1;
        unsigned NCO1INC15 :1;
    };
    struct {
        unsigned INC8 :1;
        unsigned INC9 :1;
        unsigned INC10 :1;
        unsigned INC11 :1;
        unsigned INC12 :1;
        unsigned INC13 :1;
        unsigned INC14 :1;
        unsigned INC15 :1;
    };
    struct {
        unsigned NCO1INC :8;
    };
} NCO1INCHbits_t;
extern volatile NCO1INCHbits_t NCO1INCHbits __attribute__((address(0x444)));
# 62402 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO1INCU __attribute__((address(0x445)));

__asm("NCO1INCU equ 0445h");


typedef union {
    struct {
        unsigned INC :4;
    };
    struct {
        unsigned NCO1INC16 :1;
        unsigned NCO1INC17 :1;
        unsigned NCO1INC18 :1;
        unsigned NCO1INC19 :1;
    };
    struct {
        unsigned INC16 :1;
        unsigned INC17 :1;
        unsigned INC18 :1;
        unsigned INC19 :1;
    };
    struct {
        unsigned NCO1INC :4;
    };
} NCO1INCUbits_t;
extern volatile NCO1INCUbits_t NCO1INCUbits __attribute__((address(0x445)));
# 62482 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO1CON __attribute__((address(0x446)));

__asm("NCO1CON equ 0446h");


typedef union {
    struct {
        unsigned PFM :1;
        unsigned :3;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned NCO1PFM :1;
        unsigned :3;
        unsigned NCO1POL :1;
        unsigned NCO1OUT :1;
        unsigned :1;
        unsigned NCO1EN :1;
    };
} NCO1CONbits_t;
extern volatile NCO1CONbits_t NCO1CONbits __attribute__((address(0x446)));
# 62550 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO1CLK __attribute__((address(0x447)));

__asm("NCO1CLK equ 0447h");


typedef union {
    struct {
        unsigned CKS :4;
        unsigned :1;
        unsigned PWS :3;
    };
    struct {
        unsigned CKS0 :1;
        unsigned CKS1 :1;
        unsigned CKS2 :1;
        unsigned CKS3 :1;
        unsigned :1;
        unsigned PWS0 :1;
        unsigned PWS1 :1;
        unsigned PWS2 :1;
    };
    struct {
        unsigned NCO1CKS :4;
        unsigned :1;
        unsigned NCO1PWS :3;
    };
    struct {
        unsigned NCO1CKS0 :1;
        unsigned NCO1CKS1 :1;
        unsigned NCO1CKS2 :1;
        unsigned NCO1CKS3 :1;
        unsigned :1;
        unsigned NCO1PWS0 :1;
        unsigned NCO1PWS1 :1;
        unsigned NCO1PWS2 :1;
    };
} NCO1CLKbits_t;
extern volatile NCO1CLKbits_t NCO1CLKbits __attribute__((address(0x447)));
# 62683 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 NCO2ACC __attribute__((address(0x448)));


__asm("NCO2ACC equ 0448h");




extern volatile unsigned char NCO2ACCL __attribute__((address(0x448)));

__asm("NCO2ACCL equ 0448h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO2ACC0 :1;
        unsigned NCO2ACC1 :1;
        unsigned NCO2ACC2 :1;
        unsigned NCO2ACC3 :1;
        unsigned NCO2ACC4 :1;
        unsigned NCO2ACC5 :1;
        unsigned NCO2ACC6 :1;
        unsigned NCO2ACC7 :1;
    };
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
    struct {
        unsigned NCO2ACC :8;
    };
} NCO2ACCLbits_t;
extern volatile NCO2ACCLbits_t NCO2ACCLbits __attribute__((address(0x448)));
# 62819 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO2ACCH __attribute__((address(0x449)));

__asm("NCO2ACCH equ 0449h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO2ACC8 :1;
        unsigned NCO2ACC9 :1;
        unsigned NCO2ACC10 :1;
        unsigned NCO2ACC11 :1;
        unsigned NCO2ACC12 :1;
        unsigned NCO2ACC13 :1;
        unsigned NCO2ACC14 :1;
        unsigned NCO2ACC15 :1;
    };
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
    struct {
        unsigned NCO2ACC :8;
    };
} NCO2ACCHbits_t;
extern volatile NCO2ACCHbits_t NCO2ACCHbits __attribute__((address(0x449)));
# 62947 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO2ACCU __attribute__((address(0x44A)));

__asm("NCO2ACCU equ 044Ah");


typedef union {
    struct {
        unsigned ACC :4;
    };
    struct {
        unsigned NCO2ACC16 :1;
        unsigned NCO2ACC17 :1;
        unsigned NCO2ACC18 :1;
        unsigned NCO2ACC19 :1;
    };
    struct {
        unsigned ACC16 :1;
        unsigned ACC17 :1;
        unsigned ACC18 :1;
        unsigned ACC19 :1;
    };
    struct {
        unsigned NCO2ACC :4;
    };
} NCO2ACCUbits_t;
extern volatile NCO2ACCUbits_t NCO2ACCUbits __attribute__((address(0x44A)));
# 63028 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 NCO2INC __attribute__((address(0x44B)));


__asm("NCO2INC equ 044Bh");




extern volatile unsigned char NCO2INCL __attribute__((address(0x44B)));

__asm("NCO2INCL equ 044Bh");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO2INC0 :1;
        unsigned NCO2INC1 :1;
        unsigned NCO2INC2 :1;
        unsigned NCO2INC3 :1;
        unsigned NCO2INC4 :1;
        unsigned NCO2INC5 :1;
        unsigned NCO2INC6 :1;
        unsigned NCO2INC7 :1;
    };
    struct {
        unsigned INC0 :1;
        unsigned INC1 :1;
        unsigned INC2 :1;
        unsigned INC3 :1;
        unsigned INC4 :1;
        unsigned INC5 :1;
        unsigned INC6 :1;
        unsigned INC7 :1;
    };
    struct {
        unsigned NCO2INC :8;
    };
} NCO2INCLbits_t;
extern volatile NCO2INCLbits_t NCO2INCLbits __attribute__((address(0x44B)));
# 63164 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO2INCH __attribute__((address(0x44C)));

__asm("NCO2INCH equ 044Ch");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO2INC8 :1;
        unsigned NCO2INC9 :1;
        unsigned NCO2INC10 :1;
        unsigned NCO2INC11 :1;
        unsigned NCO2INC12 :1;
        unsigned NCO2INC13 :1;
        unsigned NCO2INC14 :1;
        unsigned NCO2INC15 :1;
    };
    struct {
        unsigned INC8 :1;
        unsigned INC9 :1;
        unsigned INC10 :1;
        unsigned INC11 :1;
        unsigned INC12 :1;
        unsigned INC13 :1;
        unsigned INC14 :1;
        unsigned INC15 :1;
    };
    struct {
        unsigned NCO2INC :8;
    };
} NCO2INCHbits_t;
extern volatile NCO2INCHbits_t NCO2INCHbits __attribute__((address(0x44C)));
# 63292 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO2INCU __attribute__((address(0x44D)));

__asm("NCO2INCU equ 044Dh");


typedef union {
    struct {
        unsigned INC :4;
    };
    struct {
        unsigned NCO2INC16 :1;
        unsigned NCO2INC17 :1;
        unsigned NCO2INC18 :1;
        unsigned NCO2INC19 :1;
    };
    struct {
        unsigned INC16 :1;
        unsigned INC17 :1;
        unsigned INC18 :1;
        unsigned INC19 :1;
    };
    struct {
        unsigned NCO2INC :4;
    };
} NCO2INCUbits_t;
extern volatile NCO2INCUbits_t NCO2INCUbits __attribute__((address(0x44D)));
# 63372 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO2CON __attribute__((address(0x44E)));

__asm("NCO2CON equ 044Eh");


typedef union {
    struct {
        unsigned PFM :1;
        unsigned :3;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned NCO2PFM :1;
        unsigned :3;
        unsigned NCO2POL :1;
        unsigned NCO2OUT :1;
        unsigned :1;
        unsigned NCO2EN :1;
    };
} NCO2CONbits_t;
extern volatile NCO2CONbits_t NCO2CONbits __attribute__((address(0x44E)));
# 63440 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO2CLK __attribute__((address(0x44F)));

__asm("NCO2CLK equ 044Fh");


typedef union {
    struct {
        unsigned CKS :4;
        unsigned :1;
        unsigned PWS :3;
    };
    struct {
        unsigned CKS0 :1;
        unsigned CKS1 :1;
        unsigned CKS2 :1;
        unsigned CKS3 :1;
        unsigned :1;
        unsigned PWS0 :1;
        unsigned PWS1 :1;
        unsigned PWS2 :1;
    };
    struct {
        unsigned NCO2CKS :4;
        unsigned :1;
        unsigned NCO2PWS :3;
    };
    struct {
        unsigned NCO2CKS0 :1;
        unsigned NCO2CKS1 :1;
        unsigned NCO2CKS2 :1;
        unsigned NCO2CKS3 :1;
        unsigned :1;
        unsigned NCO2PWS0 :1;
        unsigned NCO2PWS1 :1;
        unsigned NCO2PWS2 :1;
    };
} NCO2CLKbits_t;
extern volatile NCO2CLKbits_t NCO2CLKbits __attribute__((address(0x44F)));
# 63573 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 NCO3ACC __attribute__((address(0x450)));


__asm("NCO3ACC equ 0450h");




extern volatile unsigned char NCO3ACCL __attribute__((address(0x450)));

__asm("NCO3ACCL equ 0450h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO3ACC0 :1;
        unsigned NCO3ACC1 :1;
        unsigned NCO3ACC2 :1;
        unsigned NCO3ACC3 :1;
        unsigned NCO3ACC4 :1;
        unsigned NCO3ACC5 :1;
        unsigned NCO3ACC6 :1;
        unsigned NCO3ACC7 :1;
    };
    struct {
        unsigned ACC0 :1;
        unsigned ACC1 :1;
        unsigned ACC2 :1;
        unsigned ACC3 :1;
        unsigned ACC4 :1;
        unsigned ACC5 :1;
        unsigned ACC6 :1;
        unsigned ACC7 :1;
    };
    struct {
        unsigned NCO3ACC :8;
    };
} NCO3ACCLbits_t;
extern volatile NCO3ACCLbits_t NCO3ACCLbits __attribute__((address(0x450)));
# 63709 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO3ACCH __attribute__((address(0x451)));

__asm("NCO3ACCH equ 0451h");


typedef union {
    struct {
        unsigned ACC :8;
    };
    struct {
        unsigned NCO3ACC8 :1;
        unsigned NCO3ACC9 :1;
        unsigned NCO3ACC10 :1;
        unsigned NCO3ACC11 :1;
        unsigned NCO3ACC12 :1;
        unsigned NCO3ACC13 :1;
        unsigned NCO3ACC14 :1;
        unsigned NCO3ACC15 :1;
    };
    struct {
        unsigned ACC8 :1;
        unsigned ACC9 :1;
        unsigned ACC10 :1;
        unsigned ACC11 :1;
        unsigned ACC12 :1;
        unsigned ACC13 :1;
        unsigned ACC14 :1;
        unsigned ACC15 :1;
    };
    struct {
        unsigned NCO3ACC :8;
    };
} NCO3ACCHbits_t;
extern volatile NCO3ACCHbits_t NCO3ACCHbits __attribute__((address(0x451)));
# 63837 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO3ACCU __attribute__((address(0x452)));

__asm("NCO3ACCU equ 0452h");


typedef union {
    struct {
        unsigned ACC :4;
    };
    struct {
        unsigned NCO3ACC16 :1;
        unsigned NCO3ACC17 :1;
        unsigned NCO3ACC18 :1;
        unsigned NCO3ACC19 :1;
    };
    struct {
        unsigned ACC16 :1;
        unsigned ACC17 :1;
        unsigned ACC18 :1;
        unsigned ACC19 :1;
    };
    struct {
        unsigned NCO3ACC :4;
    };
} NCO3ACCUbits_t;
extern volatile NCO3ACCUbits_t NCO3ACCUbits __attribute__((address(0x452)));
# 63918 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 NCO3INC __attribute__((address(0x453)));


__asm("NCO3INC equ 0453h");




extern volatile unsigned char NCO3INCL __attribute__((address(0x453)));

__asm("NCO3INCL equ 0453h");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO3INC0 :1;
        unsigned NCO3INC1 :1;
        unsigned NCO3INC2 :1;
        unsigned NCO3INC3 :1;
        unsigned NCO3INC4 :1;
        unsigned NCO3INC5 :1;
        unsigned NCO3INC6 :1;
        unsigned NCO3INC7 :1;
    };
    struct {
        unsigned INC0 :1;
        unsigned INC1 :1;
        unsigned INC2 :1;
        unsigned INC3 :1;
        unsigned INC4 :1;
        unsigned INC5 :1;
        unsigned INC6 :1;
        unsigned INC7 :1;
    };
    struct {
        unsigned NCO3INC :8;
    };
} NCO3INCLbits_t;
extern volatile NCO3INCLbits_t NCO3INCLbits __attribute__((address(0x453)));
# 64054 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO3INCH __attribute__((address(0x454)));

__asm("NCO3INCH equ 0454h");


typedef union {
    struct {
        unsigned INC :8;
    };
    struct {
        unsigned NCO3INC8 :1;
        unsigned NCO3INC9 :1;
        unsigned NCO3INC10 :1;
        unsigned NCO3INC11 :1;
        unsigned NCO3INC12 :1;
        unsigned NCO3INC13 :1;
        unsigned NCO3INC14 :1;
        unsigned NCO3INC15 :1;
    };
    struct {
        unsigned INC8 :1;
        unsigned INC9 :1;
        unsigned INC10 :1;
        unsigned INC11 :1;
        unsigned INC12 :1;
        unsigned INC13 :1;
        unsigned INC14 :1;
        unsigned INC15 :1;
    };
    struct {
        unsigned NCO3INC :8;
    };
} NCO3INCHbits_t;
extern volatile NCO3INCHbits_t NCO3INCHbits __attribute__((address(0x454)));
# 64182 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO3INCU __attribute__((address(0x455)));

__asm("NCO3INCU equ 0455h");


typedef union {
    struct {
        unsigned INC :4;
    };
    struct {
        unsigned NCO3INC16 :1;
        unsigned NCO3INC17 :1;
        unsigned NCO3INC18 :1;
        unsigned NCO3INC19 :1;
    };
    struct {
        unsigned INC16 :1;
        unsigned INC17 :1;
        unsigned INC18 :1;
        unsigned INC19 :1;
    };
    struct {
        unsigned NCO3INC :4;
    };
} NCO3INCUbits_t;
extern volatile NCO3INCUbits_t NCO3INCUbits __attribute__((address(0x455)));
# 64262 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO3CON __attribute__((address(0x456)));

__asm("NCO3CON equ 0456h");


typedef union {
    struct {
        unsigned PFM :1;
        unsigned :3;
        unsigned POL :1;
        unsigned OUT :1;
        unsigned :1;
        unsigned EN :1;
    };
    struct {
        unsigned NCO3PFM :1;
        unsigned :3;
        unsigned NCO3POL :1;
        unsigned NCO3OUT :1;
        unsigned :1;
        unsigned NCO3EN :1;
    };
} NCO3CONbits_t;
extern volatile NCO3CONbits_t NCO3CONbits __attribute__((address(0x456)));
# 64330 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char NCO3CLK __attribute__((address(0x457)));

__asm("NCO3CLK equ 0457h");


typedef union {
    struct {
        unsigned CKS :4;
        unsigned :1;
        unsigned PWS :3;
    };
    struct {
        unsigned CKS0 :1;
        unsigned CKS1 :1;
        unsigned CKS2 :1;
        unsigned CKS3 :1;
        unsigned :1;
        unsigned PWS0 :1;
        unsigned PWS1 :1;
        unsigned PWS2 :1;
    };
    struct {
        unsigned NCO3CKS :4;
        unsigned :1;
        unsigned NCO3PWS :3;
    };
    struct {
        unsigned NCO3CKS0 :1;
        unsigned NCO3CKS1 :1;
        unsigned NCO3CKS2 :1;
        unsigned NCO3CKS3 :1;
        unsigned :1;
        unsigned NCO3PWS0 :1;
        unsigned NCO3PWS1 :1;
        unsigned NCO3PWS2 :1;
    };
} NCO3CLKbits_t;
extern volatile NCO3CLKbits_t NCO3CLKbits __attribute__((address(0x457)));
# 64462 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char FSCMCON __attribute__((address(0x458)));

__asm("FSCMCON equ 0458h");


typedef union {
    struct {
        unsigned FSCMFEV :1;
        unsigned FSCMFFI :1;
        unsigned FSCMPEV :1;
        unsigned FSCMPFI :1;
        unsigned FSCMSEV :1;
        unsigned FSCMSFI :1;
    };
} FSCMCONbits_t;
extern volatile FSCMCONbits_t FSCMCONbits __attribute__((address(0x458)));
# 64512 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IVTLOCK __attribute__((address(0x459)));

__asm("IVTLOCK equ 0459h");


typedef union {
    struct {
        unsigned IVTLOCKED :1;
    };
} IVTLOCKbits_t;
extern volatile IVTLOCKbits_t IVTLOCKbits __attribute__((address(0x459)));
# 64533 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 IVTAD __attribute__((address(0x45A)));


__asm("IVTAD equ 045Ah");




extern volatile unsigned char IVTADL __attribute__((address(0x45A)));

__asm("IVTADL equ 045Ah");


typedef union {
    struct {
        unsigned AD0 :1;
        unsigned AD1 :1;
        unsigned AD2 :1;
        unsigned AD3 :1;
        unsigned AD4 :1;
        unsigned AD5 :1;
        unsigned AD6 :1;
        unsigned AD7 :1;
    };
} IVTADLbits_t;
extern volatile IVTADLbits_t IVTADLbits __attribute__((address(0x45A)));
# 64603 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IVTADH __attribute__((address(0x45B)));

__asm("IVTADH equ 045Bh");


typedef union {
    struct {
        unsigned AD8 :1;
        unsigned AD9 :1;
        unsigned AD10 :1;
        unsigned AD11 :1;
        unsigned AD12 :1;
        unsigned AD13 :1;
        unsigned AD14 :1;
        unsigned AD15 :1;
    };
} IVTADHbits_t;
extern volatile IVTADHbits_t IVTADHbits __attribute__((address(0x45B)));
# 64665 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IVTADU __attribute__((address(0x45C)));

__asm("IVTADU equ 045Ch");


typedef union {
    struct {
        unsigned AD16 :1;
        unsigned AD17 :1;
        unsigned AD18 :1;
        unsigned AD19 :1;
        unsigned AD20 :1;
    };
} IVTADUbits_t;
extern volatile IVTADUbits_t IVTADUbits __attribute__((address(0x45C)));
# 64710 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 IVTBASE __attribute__((address(0x45D)));


__asm("IVTBASE equ 045Dh");




extern volatile unsigned char IVTBASEL __attribute__((address(0x45D)));

__asm("IVTBASEL equ 045Dh");


typedef union {
    struct {
        unsigned BASE0 :1;
        unsigned BASE1 :1;
        unsigned BASE2 :1;
        unsigned BASE3 :1;
        unsigned BASE4 :1;
        unsigned BASE5 :1;
        unsigned BASE6 :1;
        unsigned BASE7 :1;
    };
} IVTBASELbits_t;
extern volatile IVTBASELbits_t IVTBASELbits __attribute__((address(0x45D)));
# 64780 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IVTBASEH __attribute__((address(0x45E)));

__asm("IVTBASEH equ 045Eh");


typedef union {
    struct {
        unsigned BASE8 :1;
        unsigned BASE9 :1;
        unsigned BASE10 :1;
        unsigned BASE11 :1;
        unsigned BASE12 :1;
        unsigned BASE13 :1;
        unsigned BASE14 :1;
        unsigned BASE15 :1;
    };
} IVTBASEHbits_t;
extern volatile IVTBASEHbits_t IVTBASEHbits __attribute__((address(0x45E)));
# 64842 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char IVTBASEU __attribute__((address(0x45F)));

__asm("IVTBASEU equ 045Fh");


typedef union {
    struct {
        unsigned BASE16 :1;
        unsigned BASE17 :1;
        unsigned BASE18 :1;
        unsigned BASE19 :1;
        unsigned BASE20 :1;
    };
} IVTBASEUbits_t;
extern volatile IVTBASEUbits_t IVTBASEUbits __attribute__((address(0x45F)));
# 64886 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1ERS __attribute__((address(0x460)));

__asm("PWM1ERS equ 0460h");


typedef union {
    struct {
        unsigned ERS :8;
    };
    struct {
        unsigned ERS0 :1;
        unsigned ERS1 :1;
        unsigned ERS2 :1;
        unsigned ERS3 :1;
        unsigned ERS4 :1;
        unsigned ERS5 :1;
        unsigned ERS6 :1;
        unsigned ERS7 :1;
    };
} PWM1ERSbits_t;
extern volatile PWM1ERSbits_t PWM1ERSbits __attribute__((address(0x460)));
# 64956 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1CLK __attribute__((address(0x461)));

__asm("PWM1CLK equ 0461h");


typedef union {
    struct {
        unsigned CLK :8;
    };
    struct {
        unsigned CLK0 :1;
        unsigned CLK1 :1;
        unsigned CLK2 :1;
        unsigned CLK3 :1;
        unsigned CLK4 :1;
        unsigned CLK5 :1;
        unsigned CLK6 :1;
        unsigned CLK7 :1;
    };
} PWM1CLKbits_t;
extern volatile PWM1CLKbits_t PWM1CLKbits __attribute__((address(0x461)));
# 65026 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1LDS __attribute__((address(0x462)));

__asm("PWM1LDS equ 0462h");


typedef union {
    struct {
        unsigned LDS :8;
    };
    struct {
        unsigned LDS0 :1;
        unsigned LDS1 :1;
        unsigned LDS2 :1;
        unsigned LDS3 :1;
        unsigned LDS4 :1;
        unsigned LDS5 :1;
        unsigned LDS6 :1;
        unsigned LDS7 :1;
    };
} PWM1LDSbits_t;
extern volatile PWM1LDSbits_t PWM1LDSbits __attribute__((address(0x462)));
# 65096 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM1PR __attribute__((address(0x463)));

__asm("PWM1PR equ 0463h");




extern volatile unsigned char PWM1PRL __attribute__((address(0x463)));

__asm("PWM1PRL equ 0463h");


typedef union {
    struct {
        unsigned PRL :8;
    };
} PWM1PRLbits_t;
extern volatile PWM1PRLbits_t PWM1PRLbits __attribute__((address(0x463)));
# 65123 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1PRH __attribute__((address(0x464)));

__asm("PWM1PRH equ 0464h");


typedef union {
    struct {
        unsigned PRH :8;
    };
} PWM1PRHbits_t;
extern volatile PWM1PRHbits_t PWM1PRHbits __attribute__((address(0x464)));
# 65143 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1CPRE __attribute__((address(0x465)));

__asm("PWM1CPRE equ 0465h");


typedef union {
    struct {
        unsigned CPRE :8;
    };
} PWM1CPREbits_t;
extern volatile PWM1CPREbits_t PWM1CPREbits __attribute__((address(0x465)));
# 65163 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1PIPOS __attribute__((address(0x466)));

__asm("PWM1PIPOS equ 0466h");


typedef union {
    struct {
        unsigned PIPOS :8;
    };
} PWM1PIPOSbits_t;
extern volatile PWM1PIPOSbits_t PWM1PIPOSbits __attribute__((address(0x466)));
# 65183 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1GIR __attribute__((address(0x467)));

__asm("PWM1GIR equ 0467h");


typedef union {
    struct {
        unsigned S1P1IF :1;
        unsigned S1P2IF :1;
    };
} PWM1GIRbits_t;
extern volatile PWM1GIRbits_t PWM1GIRbits __attribute__((address(0x467)));
# 65209 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1GIE __attribute__((address(0x468)));

__asm("PWM1GIE equ 0468h");


typedef union {
    struct {
        unsigned S1P1IE :1;
        unsigned S1P2IE :1;
    };
} PWM1GIEbits_t;
extern volatile PWM1GIEbits_t PWM1GIEbits __attribute__((address(0x468)));
# 65235 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1CON __attribute__((address(0x469)));

__asm("PWM1CON equ 0469h");


typedef union {
    struct {
        unsigned ERSNOW :1;
        unsigned ERSPOL :1;
        unsigned LD :1;
        unsigned :4;
        unsigned EN :1;
    };
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __attribute__((address(0x469)));
# 65274 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1S1CFG __attribute__((address(0x46A)));

__asm("PWM1S1CFG equ 046Ah");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned PPEN :1;
        unsigned :2;
        unsigned POL1 :1;
        unsigned POL2 :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} PWM1S1CFGbits_t;
extern volatile PWM1S1CFGbits_t PWM1S1CFGbits __attribute__((address(0x46A)));
# 65333 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM1S1P1 __attribute__((address(0x46B)));

__asm("PWM1S1P1 equ 046Bh");




extern volatile unsigned char PWM1S1P1L __attribute__((address(0x46B)));

__asm("PWM1S1P1L equ 046Bh");


typedef union {
    struct {
        unsigned S1P1L :8;
    };
} PWM1S1P1Lbits_t;
extern volatile PWM1S1P1Lbits_t PWM1S1P1Lbits __attribute__((address(0x46B)));
# 65360 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1S1P1H __attribute__((address(0x46C)));

__asm("PWM1S1P1H equ 046Ch");


typedef union {
    struct {
        unsigned S1P1H :8;
    };
} PWM1S1P1Hbits_t;
extern volatile PWM1S1P1Hbits_t PWM1S1P1Hbits __attribute__((address(0x46C)));
# 65380 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM1S1P2 __attribute__((address(0x46D)));

__asm("PWM1S1P2 equ 046Dh");




extern volatile unsigned char PWM1S1P2L __attribute__((address(0x46D)));

__asm("PWM1S1P2L equ 046Dh");


typedef union {
    struct {
        unsigned S1P2L :8;
    };
} PWM1S1P2Lbits_t;
extern volatile PWM1S1P2Lbits_t PWM1S1P2Lbits __attribute__((address(0x46D)));
# 65407 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM1S1P2H __attribute__((address(0x46E)));

__asm("PWM1S1P2H equ 046Eh");


typedef union {
    struct {
        unsigned S1P2H :8;
    };
} PWM1S1P2Hbits_t;
extern volatile PWM1S1P2Hbits_t PWM1S1P2Hbits __attribute__((address(0x46E)));
# 65427 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2ERS __attribute__((address(0x46F)));

__asm("PWM2ERS equ 046Fh");


typedef union {
    struct {
        unsigned ERS :8;
    };
    struct {
        unsigned ERS0 :1;
        unsigned ERS1 :1;
        unsigned ERS2 :1;
        unsigned ERS3 :1;
        unsigned ERS4 :1;
        unsigned ERS5 :1;
        unsigned ERS6 :1;
        unsigned ERS7 :1;
    };
} PWM2ERSbits_t;
extern volatile PWM2ERSbits_t PWM2ERSbits __attribute__((address(0x46F)));
# 65497 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2CLK __attribute__((address(0x470)));

__asm("PWM2CLK equ 0470h");


typedef union {
    struct {
        unsigned CLK :8;
    };
    struct {
        unsigned CLK0 :1;
        unsigned CLK1 :1;
        unsigned CLK2 :1;
        unsigned CLK3 :1;
        unsigned CLK4 :1;
        unsigned CLK5 :1;
        unsigned CLK6 :1;
        unsigned CLK7 :1;
    };
} PWM2CLKbits_t;
extern volatile PWM2CLKbits_t PWM2CLKbits __attribute__((address(0x470)));
# 65567 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2LDS __attribute__((address(0x471)));

__asm("PWM2LDS equ 0471h");


typedef union {
    struct {
        unsigned LDS :8;
    };
    struct {
        unsigned LDS0 :1;
        unsigned LDS1 :1;
        unsigned LDS2 :1;
        unsigned LDS3 :1;
        unsigned LDS4 :1;
        unsigned LDS5 :1;
        unsigned LDS6 :1;
        unsigned LDS7 :1;
    };
} PWM2LDSbits_t;
extern volatile PWM2LDSbits_t PWM2LDSbits __attribute__((address(0x471)));
# 65637 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM2PR __attribute__((address(0x472)));

__asm("PWM2PR equ 0472h");




extern volatile unsigned char PWM2PRL __attribute__((address(0x472)));

__asm("PWM2PRL equ 0472h");


typedef union {
    struct {
        unsigned PRL :8;
    };
} PWM2PRLbits_t;
extern volatile PWM2PRLbits_t PWM2PRLbits __attribute__((address(0x472)));
# 65664 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2PRH __attribute__((address(0x473)));

__asm("PWM2PRH equ 0473h");


typedef union {
    struct {
        unsigned PRH :8;
    };
} PWM2PRHbits_t;
extern volatile PWM2PRHbits_t PWM2PRHbits __attribute__((address(0x473)));
# 65684 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2CPRE __attribute__((address(0x474)));

__asm("PWM2CPRE equ 0474h");


typedef union {
    struct {
        unsigned CPRE :8;
    };
} PWM2CPREbits_t;
extern volatile PWM2CPREbits_t PWM2CPREbits __attribute__((address(0x474)));
# 65704 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2PIPOS __attribute__((address(0x475)));

__asm("PWM2PIPOS equ 0475h");


typedef union {
    struct {
        unsigned PIPOS :8;
    };
} PWM2PIPOSbits_t;
extern volatile PWM2PIPOSbits_t PWM2PIPOSbits __attribute__((address(0x475)));
# 65724 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2GIR __attribute__((address(0x476)));

__asm("PWM2GIR equ 0476h");


typedef union {
    struct {
        unsigned S1P1IF :1;
        unsigned S1P2IF :1;
    };
} PWM2GIRbits_t;
extern volatile PWM2GIRbits_t PWM2GIRbits __attribute__((address(0x476)));
# 65750 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2GIE __attribute__((address(0x477)));

__asm("PWM2GIE equ 0477h");


typedef union {
    struct {
        unsigned S1P1IE :1;
        unsigned S1P2IE :1;
    };
} PWM2GIEbits_t;
extern volatile PWM2GIEbits_t PWM2GIEbits __attribute__((address(0x477)));
# 65776 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2CON __attribute__((address(0x478)));

__asm("PWM2CON equ 0478h");


typedef union {
    struct {
        unsigned ERSNOW :1;
        unsigned ERSPOL :1;
        unsigned LD :1;
        unsigned :4;
        unsigned EN :1;
    };
} PWM2CONbits_t;
extern volatile PWM2CONbits_t PWM2CONbits __attribute__((address(0x478)));
# 65815 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2S1CFG __attribute__((address(0x479)));

__asm("PWM2S1CFG equ 0479h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned PPEN :1;
        unsigned :2;
        unsigned POL1 :1;
        unsigned POL2 :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} PWM2S1CFGbits_t;
extern volatile PWM2S1CFGbits_t PWM2S1CFGbits __attribute__((address(0x479)));
# 65874 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM2S1P1 __attribute__((address(0x47A)));

__asm("PWM2S1P1 equ 047Ah");




extern volatile unsigned char PWM2S1P1L __attribute__((address(0x47A)));

__asm("PWM2S1P1L equ 047Ah");


typedef union {
    struct {
        unsigned S1P1L :8;
    };
} PWM2S1P1Lbits_t;
extern volatile PWM2S1P1Lbits_t PWM2S1P1Lbits __attribute__((address(0x47A)));
# 65901 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2S1P1H __attribute__((address(0x47B)));

__asm("PWM2S1P1H equ 047Bh");


typedef union {
    struct {
        unsigned S1P1H :8;
    };
} PWM2S1P1Hbits_t;
extern volatile PWM2S1P1Hbits_t PWM2S1P1Hbits __attribute__((address(0x47B)));
# 65921 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM2S1P2 __attribute__((address(0x47C)));

__asm("PWM2S1P2 equ 047Ch");




extern volatile unsigned char PWM2S1P2L __attribute__((address(0x47C)));

__asm("PWM2S1P2L equ 047Ch");


typedef union {
    struct {
        unsigned S1P2L :8;
    };
} PWM2S1P2Lbits_t;
extern volatile PWM2S1P2Lbits_t PWM2S1P2Lbits __attribute__((address(0x47C)));
# 65948 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM2S1P2H __attribute__((address(0x47D)));

__asm("PWM2S1P2H equ 047Dh");


typedef union {
    struct {
        unsigned S1P2H :8;
    };
} PWM2S1P2Hbits_t;
extern volatile PWM2S1P2Hbits_t PWM2S1P2Hbits __attribute__((address(0x47D)));
# 65968 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3ERS __attribute__((address(0x47E)));

__asm("PWM3ERS equ 047Eh");


typedef union {
    struct {
        unsigned ERS :8;
    };
    struct {
        unsigned ERS0 :1;
        unsigned ERS1 :1;
        unsigned ERS2 :1;
        unsigned ERS3 :1;
        unsigned ERS4 :1;
        unsigned ERS5 :1;
        unsigned ERS6 :1;
        unsigned ERS7 :1;
    };
} PWM3ERSbits_t;
extern volatile PWM3ERSbits_t PWM3ERSbits __attribute__((address(0x47E)));
# 66038 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3CLK __attribute__((address(0x47F)));

__asm("PWM3CLK equ 047Fh");


typedef union {
    struct {
        unsigned CLK :8;
    };
    struct {
        unsigned CLK0 :1;
        unsigned CLK1 :1;
        unsigned CLK2 :1;
        unsigned CLK3 :1;
        unsigned CLK4 :1;
        unsigned CLK5 :1;
        unsigned CLK6 :1;
        unsigned CLK7 :1;
    };
} PWM3CLKbits_t;
extern volatile PWM3CLKbits_t PWM3CLKbits __attribute__((address(0x47F)));
# 66108 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3LDS __attribute__((address(0x480)));

__asm("PWM3LDS equ 0480h");


typedef union {
    struct {
        unsigned LDS :8;
    };
    struct {
        unsigned LDS0 :1;
        unsigned LDS1 :1;
        unsigned LDS2 :1;
        unsigned LDS3 :1;
        unsigned LDS4 :1;
        unsigned LDS5 :1;
        unsigned LDS6 :1;
        unsigned LDS7 :1;
    };
} PWM3LDSbits_t;
extern volatile PWM3LDSbits_t PWM3LDSbits __attribute__((address(0x480)));
# 66178 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM3PR __attribute__((address(0x481)));

__asm("PWM3PR equ 0481h");




extern volatile unsigned char PWM3PRL __attribute__((address(0x481)));

__asm("PWM3PRL equ 0481h");


typedef union {
    struct {
        unsigned PRL :8;
    };
} PWM3PRLbits_t;
extern volatile PWM3PRLbits_t PWM3PRLbits __attribute__((address(0x481)));
# 66205 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3PRH __attribute__((address(0x482)));

__asm("PWM3PRH equ 0482h");


typedef union {
    struct {
        unsigned PRH :8;
    };
} PWM3PRHbits_t;
extern volatile PWM3PRHbits_t PWM3PRHbits __attribute__((address(0x482)));
# 66225 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3CPRE __attribute__((address(0x483)));

__asm("PWM3CPRE equ 0483h");


typedef union {
    struct {
        unsigned CPRE :8;
    };
} PWM3CPREbits_t;
extern volatile PWM3CPREbits_t PWM3CPREbits __attribute__((address(0x483)));
# 66245 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3PIPOS __attribute__((address(0x484)));

__asm("PWM3PIPOS equ 0484h");


typedef union {
    struct {
        unsigned PIPOS :8;
    };
} PWM3PIPOSbits_t;
extern volatile PWM3PIPOSbits_t PWM3PIPOSbits __attribute__((address(0x484)));
# 66265 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3GIR __attribute__((address(0x485)));

__asm("PWM3GIR equ 0485h");


typedef union {
    struct {
        unsigned S1P1IF :1;
        unsigned S1P2IF :1;
    };
} PWM3GIRbits_t;
extern volatile PWM3GIRbits_t PWM3GIRbits __attribute__((address(0x485)));
# 66291 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3GIE __attribute__((address(0x486)));

__asm("PWM3GIE equ 0486h");


typedef union {
    struct {
        unsigned S1P1IE :1;
        unsigned S1P2IE :1;
    };
} PWM3GIEbits_t;
extern volatile PWM3GIEbits_t PWM3GIEbits __attribute__((address(0x486)));
# 66317 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3CON __attribute__((address(0x487)));

__asm("PWM3CON equ 0487h");


typedef union {
    struct {
        unsigned ERSNOW :1;
        unsigned ERSPOL :1;
        unsigned LD :1;
        unsigned :4;
        unsigned EN :1;
    };
} PWM3CONbits_t;
extern volatile PWM3CONbits_t PWM3CONbits __attribute__((address(0x487)));
# 66356 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3S1CFG __attribute__((address(0x488)));

__asm("PWM3S1CFG equ 0488h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned PPEN :1;
        unsigned :2;
        unsigned POL1 :1;
        unsigned POL2 :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} PWM3S1CFGbits_t;
extern volatile PWM3S1CFGbits_t PWM3S1CFGbits __attribute__((address(0x488)));
# 66415 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM3S1P1 __attribute__((address(0x489)));

__asm("PWM3S1P1 equ 0489h");




extern volatile unsigned char PWM3S1P1L __attribute__((address(0x489)));

__asm("PWM3S1P1L equ 0489h");


typedef union {
    struct {
        unsigned S1P1L :8;
    };
} PWM3S1P1Lbits_t;
extern volatile PWM3S1P1Lbits_t PWM3S1P1Lbits __attribute__((address(0x489)));
# 66442 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3S1P1H __attribute__((address(0x48A)));

__asm("PWM3S1P1H equ 048Ah");


typedef union {
    struct {
        unsigned S1P1H :8;
    };
} PWM3S1P1Hbits_t;
extern volatile PWM3S1P1Hbits_t PWM3S1P1Hbits __attribute__((address(0x48A)));
# 66462 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM3S1P2 __attribute__((address(0x48B)));

__asm("PWM3S1P2 equ 048Bh");




extern volatile unsigned char PWM3S1P2L __attribute__((address(0x48B)));

__asm("PWM3S1P2L equ 048Bh");


typedef union {
    struct {
        unsigned S1P2L :8;
    };
} PWM3S1P2Lbits_t;
extern volatile PWM3S1P2Lbits_t PWM3S1P2Lbits __attribute__((address(0x48B)));
# 66489 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM3S1P2H __attribute__((address(0x48C)));

__asm("PWM3S1P2H equ 048Ch");


typedef union {
    struct {
        unsigned S1P2H :8;
    };
} PWM3S1P2Hbits_t;
extern volatile PWM3S1P2Hbits_t PWM3S1P2Hbits __attribute__((address(0x48C)));
# 66509 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4ERS __attribute__((address(0x48D)));

__asm("PWM4ERS equ 048Dh");


typedef union {
    struct {
        unsigned ERS :8;
    };
    struct {
        unsigned ERS0 :1;
        unsigned ERS1 :1;
        unsigned ERS2 :1;
        unsigned ERS3 :1;
        unsigned ERS4 :1;
        unsigned ERS5 :1;
        unsigned ERS6 :1;
        unsigned ERS7 :1;
    };
} PWM4ERSbits_t;
extern volatile PWM4ERSbits_t PWM4ERSbits __attribute__((address(0x48D)));
# 66579 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4CLK __attribute__((address(0x48E)));

__asm("PWM4CLK equ 048Eh");


typedef union {
    struct {
        unsigned CLK :8;
    };
    struct {
        unsigned CLK0 :1;
        unsigned CLK1 :1;
        unsigned CLK2 :1;
        unsigned CLK3 :1;
        unsigned CLK4 :1;
        unsigned CLK5 :1;
        unsigned CLK6 :1;
        unsigned CLK7 :1;
    };
} PWM4CLKbits_t;
extern volatile PWM4CLKbits_t PWM4CLKbits __attribute__((address(0x48E)));
# 66649 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4LDS __attribute__((address(0x48F)));

__asm("PWM4LDS equ 048Fh");


typedef union {
    struct {
        unsigned LDS :8;
    };
    struct {
        unsigned LDS0 :1;
        unsigned LDS1 :1;
        unsigned LDS2 :1;
        unsigned LDS3 :1;
        unsigned LDS4 :1;
        unsigned LDS5 :1;
        unsigned LDS6 :1;
        unsigned LDS7 :1;
    };
} PWM4LDSbits_t;
extern volatile PWM4LDSbits_t PWM4LDSbits __attribute__((address(0x48F)));
# 66719 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM4PR __attribute__((address(0x490)));

__asm("PWM4PR equ 0490h");




extern volatile unsigned char PWM4PRL __attribute__((address(0x490)));

__asm("PWM4PRL equ 0490h");


typedef union {
    struct {
        unsigned PRL :8;
    };
} PWM4PRLbits_t;
extern volatile PWM4PRLbits_t PWM4PRLbits __attribute__((address(0x490)));
# 66746 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4PRH __attribute__((address(0x491)));

__asm("PWM4PRH equ 0491h");


typedef union {
    struct {
        unsigned PRH :8;
    };
} PWM4PRHbits_t;
extern volatile PWM4PRHbits_t PWM4PRHbits __attribute__((address(0x491)));
# 66766 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4CPRE __attribute__((address(0x492)));

__asm("PWM4CPRE equ 0492h");


typedef union {
    struct {
        unsigned CPRE :8;
    };
} PWM4CPREbits_t;
extern volatile PWM4CPREbits_t PWM4CPREbits __attribute__((address(0x492)));
# 66786 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4PIPOS __attribute__((address(0x493)));

__asm("PWM4PIPOS equ 0493h");


typedef union {
    struct {
        unsigned PIPOS :8;
    };
} PWM4PIPOSbits_t;
extern volatile PWM4PIPOSbits_t PWM4PIPOSbits __attribute__((address(0x493)));
# 66806 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4GIR __attribute__((address(0x494)));

__asm("PWM4GIR equ 0494h");


typedef union {
    struct {
        unsigned S1P1IF :1;
        unsigned S1P2IF :1;
    };
} PWM4GIRbits_t;
extern volatile PWM4GIRbits_t PWM4GIRbits __attribute__((address(0x494)));
# 66832 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4GIE __attribute__((address(0x495)));

__asm("PWM4GIE equ 0495h");


typedef union {
    struct {
        unsigned S1P1IE :1;
        unsigned S1P2IE :1;
    };
} PWM4GIEbits_t;
extern volatile PWM4GIEbits_t PWM4GIEbits __attribute__((address(0x495)));
# 66858 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4CON __attribute__((address(0x496)));

__asm("PWM4CON equ 0496h");


typedef union {
    struct {
        unsigned ERSNOW :1;
        unsigned ERSPOL :1;
        unsigned LD :1;
        unsigned :4;
        unsigned EN :1;
    };
} PWM4CONbits_t;
extern volatile PWM4CONbits_t PWM4CONbits __attribute__((address(0x496)));
# 66897 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4S1CFG __attribute__((address(0x497)));

__asm("PWM4S1CFG equ 0497h");


typedef union {
    struct {
        unsigned MODE :3;
        unsigned PPEN :1;
        unsigned :2;
        unsigned POL1 :1;
        unsigned POL2 :1;
    };
    struct {
        unsigned MODE0 :1;
        unsigned MODE1 :1;
        unsigned MODE2 :1;
    };
} PWM4S1CFGbits_t;
extern volatile PWM4S1CFGbits_t PWM4S1CFGbits __attribute__((address(0x497)));
# 66956 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM4S1P1 __attribute__((address(0x498)));

__asm("PWM4S1P1 equ 0498h");




extern volatile unsigned char PWM4S1P1L __attribute__((address(0x498)));

__asm("PWM4S1P1L equ 0498h");


typedef union {
    struct {
        unsigned S1P1L :8;
    };
} PWM4S1P1Lbits_t;
extern volatile PWM4S1P1Lbits_t PWM4S1P1Lbits __attribute__((address(0x498)));
# 66983 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4S1P1H __attribute__((address(0x499)));

__asm("PWM4S1P1H equ 0499h");


typedef union {
    struct {
        unsigned S1P1H :8;
    };
} PWM4S1P1Hbits_t;
extern volatile PWM4S1P1Hbits_t PWM4S1P1Hbits __attribute__((address(0x499)));
# 67003 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PWM4S1P2 __attribute__((address(0x49A)));

__asm("PWM4S1P2 equ 049Ah");




extern volatile unsigned char PWM4S1P2L __attribute__((address(0x49A)));

__asm("PWM4S1P2L equ 049Ah");


typedef union {
    struct {
        unsigned S1P2L :8;
    };
} PWM4S1P2Lbits_t;
extern volatile PWM4S1P2Lbits_t PWM4S1P2Lbits __attribute__((address(0x49A)));
# 67030 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWM4S1P2H __attribute__((address(0x49B)));

__asm("PWM4S1P2H equ 049Bh");


typedef union {
    struct {
        unsigned S1P2H :8;
    };
} PWM4S1P2Hbits_t;
extern volatile PWM4S1P2Hbits_t PWM4S1P2Hbits __attribute__((address(0x49B)));
# 67050 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWMLOAD __attribute__((address(0x49C)));

__asm("PWMLOAD equ 049Ch");


typedef union {
    struct {
        unsigned PWM1LD :1;
        unsigned PWM2LD :1;
        unsigned PWM3LD :1;
        unsigned PWM4LD :1;
    };
} PWMLOADbits_t;
extern volatile PWMLOADbits_t PWMLOADbits __attribute__((address(0x49C)));
# 67088 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PWMEN __attribute__((address(0x49D)));

__asm("PWMEN equ 049Dh");


typedef union {
    struct {
        unsigned PWM1EN :1;
        unsigned PWM2EN :1;
        unsigned PWM3EN :1;
        unsigned PWM4EN :1;
    };
} PWMENbits_t;
extern volatile PWMENbits_t PWMENbits __attribute__((address(0x49D)));
# 67126 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE0 __attribute__((address(0x49E)));

__asm("PIE0 equ 049Eh");


typedef union {
    struct {
        unsigned SWIE :1;
        unsigned HLVDIE :1;
        unsigned OSFIE :1;
        unsigned CSWIE :1;
        unsigned TU16AIE :1;
        unsigned CLC1IE :1;
        unsigned CANIE :1;
        unsigned IOCIE :1;
    };
} PIE0bits_t;
extern volatile PIE0bits_t PIE0bits __attribute__((address(0x49E)));
# 67188 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x49F)));

__asm("PIE1 equ 049Fh");


typedef union {
    struct {
        unsigned INT0IE :1;
        unsigned ZCDIE :1;
        unsigned ADIE :1;
        unsigned ACTIE :1;
        unsigned C1IE :1;
        unsigned SMT1IE :1;
        unsigned SMT1PRAIE :1;
        unsigned SMT1PWAIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x49F)));
# 67250 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x4A0)));

__asm("PIE2 equ 04A0h");


typedef union {
    struct {
        unsigned ADTIE :1;
        unsigned ADCH2IE :1;
        unsigned ADCH3IE :1;
        unsigned ADCH4IE :1;
        unsigned DMA1SCNTIE :1;
        unsigned DMA1DCNTIE :1;
        unsigned DMA1ORIE :1;
        unsigned DMA1AIE :1;
    };
    struct {
        unsigned ADCH1IE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x4A0)));
# 67320 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0x4A1)));

__asm("PIE3 equ 04A1h");


typedef union {
    struct {
        unsigned SPI1RXIE :1;
        unsigned SPI1TXIE :1;
        unsigned SPI1IE :1;
        unsigned TMR2IE :1;
        unsigned TMR1IE :1;
        unsigned TMR1GIE :1;
        unsigned CCP1IE :1;
        unsigned TMR0IE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0x4A1)));
# 67382 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE4 __attribute__((address(0x4A2)));

__asm("PIE4 equ 04A2h");


typedef union {
    struct {
        unsigned U1RXIE :1;
        unsigned U1TXIE :1;
        unsigned U1EIE :1;
        unsigned U1IE :1;
        unsigned CANRXIE :1;
        unsigned CANTXIE :1;
        unsigned PWM1PIE :1;
        unsigned PWM1IE :1;
    };
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __attribute__((address(0x4A2)));
# 67444 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE5 __attribute__((address(0x4A3)));

__asm("PIE5 equ 04A3h");


typedef union {
    struct {
        unsigned SPI2RXIE :1;
        unsigned SPI2TXIE :1;
        unsigned SPI2IE :1;
        unsigned TU16BIE :1;
        unsigned TMR3IE :1;
        unsigned TMR3GIE :1;
        unsigned PWM2PIE :1;
        unsigned PWM2IE :1;
    };
} PIE5bits_t;
extern volatile PIE5bits_t PIE5bits __attribute__((address(0x4A3)));
# 67506 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE6 __attribute__((address(0x4A4)));

__asm("PIE6 equ 04A4h");


typedef union {
    struct {
        unsigned INT1IE :1;
        unsigned CLC2IE :1;
        unsigned CWG1IE :1;
        unsigned NCO1IE :1;
        unsigned DMA2SCNTIE :1;
        unsigned DMA2DCNTIE :1;
        unsigned DMA2ORIE :1;
        unsigned DMA2AIE :1;
    };
} PIE6bits_t;
extern volatile PIE6bits_t PIE6bits __attribute__((address(0x4A4)));
# 67568 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE7 __attribute__((address(0x4A5)));

__asm("PIE7 equ 04A5h");


typedef union {
    struct {
        unsigned I2C1RXIE :1;
        unsigned I2C1TXIE :1;
        unsigned I2C1IE :1;
        unsigned I2C1EIE :1;
        unsigned :1;
        unsigned CLC3IE :1;
        unsigned PWM3PIE :1;
        unsigned PWM3IE :1;
    };
} PIE7bits_t;
extern volatile PIE7bits_t PIE7bits __attribute__((address(0x4A5)));
# 67625 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE8 __attribute__((address(0x4A6)));

__asm("PIE8 equ 04A6h");


typedef union {
    struct {
        unsigned U2RXIE :1;
        unsigned U2TXIE :1;
        unsigned U2EIE :1;
        unsigned U2IE :1;
        unsigned TMR5IE :1;
        unsigned TMR5GIE :1;
        unsigned CCP2IE :1;
        unsigned SCANIE :1;
    };
} PIE8bits_t;
extern volatile PIE8bits_t PIE8bits __attribute__((address(0x4A6)));
# 67687 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE9 __attribute__((address(0x4A7)));

__asm("PIE9 equ 04A7h");


typedef union {
    struct {
        unsigned U3RXIE :1;
        unsigned U3TXIE :1;
        unsigned U3EIE :1;
        unsigned U3IE :1;
        unsigned :1;
        unsigned CLC4IE :1;
        unsigned PWM4PIE :1;
        unsigned PWM4IE :1;
    };
} PIE9bits_t;
extern volatile PIE9bits_t PIE9bits __attribute__((address(0x4A7)));
# 67744 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE10 __attribute__((address(0x4A8)));

__asm("PIE10 equ 04A8h");


typedef union {
    struct {
        unsigned INT2IE :1;
        unsigned CLC5IE :1;
        unsigned CWG2IE :1;
        unsigned NCO2IE :1;
        unsigned DMA3SCNTIE :1;
        unsigned DMA3DCNTIE :1;
        unsigned DMA3ORIE :1;
        unsigned DMA3AIE :1;
    };
} PIE10bits_t;
extern volatile PIE10bits_t PIE10bits __attribute__((address(0x4A8)));
# 67806 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE11 __attribute__((address(0x4A9)));

__asm("PIE11 equ 04A9h");


typedef union {
    struct {
        unsigned CCP3IE :1;
        unsigned CLC6IE :1;
        unsigned CWG3IE :1;
        unsigned TMR4IE :1;
        unsigned DMA4SCNTIE :1;
        unsigned DMA4DCNTIE :1;
        unsigned DMA4ORIE :1;
        unsigned DMA4AIE :1;
    };
} PIE11bits_t;
extern volatile PIE11bits_t PIE11bits __attribute__((address(0x4A9)));
# 67868 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE12 __attribute__((address(0x4AA)));

__asm("PIE12 equ 04AAh");


typedef union {
    struct {
        unsigned U4RXIE :1;
        unsigned U4TXIE :1;
        unsigned U4EIE :1;
        unsigned U4IE :1;
        unsigned DMA5SCNTIE :1;
        unsigned DMA5DCNTIE :1;
        unsigned DMA5ORIE :1;
        unsigned DMA5AIE :1;
    };
} PIE12bits_t;
extern volatile PIE12bits_t PIE12bits __attribute__((address(0x4AA)));
# 67930 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE13 __attribute__((address(0x4AB)));

__asm("PIE13 equ 04ABh");


typedef union {
    struct {
        unsigned U5RXIE :1;
        unsigned U5TXIE :1;
        unsigned U5EIE :1;
        unsigned U5IE :1;
        unsigned DMA6SCNTIE :1;
        unsigned DMA6DCNTIE :1;
        unsigned DMA6ORIE :1;
        unsigned DMA6AIE :1;
    };
} PIE13bits_t;
extern volatile PIE13bits_t PIE13bits __attribute__((address(0x4AB)));
# 67992 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE14 __attribute__((address(0x4AC)));

__asm("PIE14 equ 04ACh");


typedef union {
    struct {
        unsigned :1;
        unsigned CLC7IE :1;
        unsigned C2IE :1;
        unsigned NCO3IE :1;
        unsigned DMA7SCNTIE :1;
        unsigned DMA7DCNTIE :1;
        unsigned DMA7ORIE :1;
        unsigned DMA7AIE :1;
    };
} PIE14bits_t;
extern volatile PIE14bits_t PIE14bits __attribute__((address(0x4AC)));
# 68049 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIE15 __attribute__((address(0x4AD)));

__asm("PIE15 equ 04ADh");


typedef union {
    struct {
        unsigned NVMIE :1;
        unsigned CLC8IE :1;
        unsigned CRCIE :1;
        unsigned TMR6IE :1;
        unsigned DMA8SCNTIE :1;
        unsigned DMA8DCNTIE :1;
        unsigned DMA8ORIE :1;
        unsigned DMA8AIE :1;
    };
} PIE15bits_t;
extern volatile PIE15bits_t PIE15bits __attribute__((address(0x4AD)));
# 68111 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR0 __attribute__((address(0x4AE)));

__asm("PIR0 equ 04AEh");


typedef union {
    struct {
        unsigned SWIF :1;
        unsigned HLVDIF :1;
        unsigned OSFIF :1;
        unsigned CSWIF :1;
        unsigned TU16AIF :1;
        unsigned CLC1IF :1;
        unsigned CANIF :1;
        unsigned IOCIF :1;
    };
} PIR0bits_t;
extern volatile PIR0bits_t PIR0bits __attribute__((address(0x4AE)));
# 68173 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x4AF)));

__asm("PIR1 equ 04AFh");


typedef union {
    struct {
        unsigned INT0IF :1;
        unsigned ZCDIF :1;
        unsigned ADIF :1;
        unsigned ACTIF :1;
        unsigned C1IF :1;
        unsigned SMT1IF :1;
        unsigned SMT1PRAIF :1;
        unsigned SMT1PWAIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x4AF)));
# 68235 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x4B0)));

__asm("PIR2 equ 04B0h");


typedef union {
    struct {
        unsigned ADTIF :1;
        unsigned ADCH2IF :1;
        unsigned ADCH3IF :1;
        unsigned ADCH4IF :1;
        unsigned DMA1SCNTIF :1;
        unsigned DMA1DCNTIF :1;
        unsigned DMA1ORIF :1;
        unsigned DMA1AIF :1;
    };
    struct {
        unsigned ADCH1IF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x4B0)));
# 68305 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0x4B1)));

__asm("PIR3 equ 04B1h");


typedef union {
    struct {
        unsigned SPI1RXIF :1;
        unsigned SPI1TXIF :1;
        unsigned SPI1IF :1;
        unsigned TMR2IF :1;
        unsigned TMR1IF :1;
        unsigned TMR1GIF :1;
        unsigned CCP1IF :1;
        unsigned TMR0IF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0x4B1)));
# 68367 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR4 __attribute__((address(0x4B2)));

__asm("PIR4 equ 04B2h");


typedef union {
    struct {
        unsigned U1RXIF :1;
        unsigned U1TXIF :1;
        unsigned U1EIF :1;
        unsigned U1IF :1;
        unsigned CANRXIF :1;
        unsigned CANTXIF :1;
        unsigned PWM1PIF :1;
        unsigned PWM1IF :1;
    };
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __attribute__((address(0x4B2)));
# 68429 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR5 __attribute__((address(0x4B3)));

__asm("PIR5 equ 04B3h");


typedef union {
    struct {
        unsigned SPI2RXIF :1;
        unsigned SPI2TXIF :1;
        unsigned SPI2IF :1;
        unsigned TU16BIF :1;
        unsigned TMR3IF :1;
        unsigned TMR3GIF :1;
        unsigned PWM2PIF :1;
        unsigned PWM2IF :1;
    };
} PIR5bits_t;
extern volatile PIR5bits_t PIR5bits __attribute__((address(0x4B3)));
# 68491 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR6 __attribute__((address(0x4B4)));

__asm("PIR6 equ 04B4h");


typedef union {
    struct {
        unsigned INT1IF :1;
        unsigned CLC2IF :1;
        unsigned CWG1IF :1;
        unsigned NCO1IF :1;
        unsigned DMA2SCNTIF :1;
        unsigned DMA2DCNTIF :1;
        unsigned DMA2ORIF :1;
        unsigned DMA2AIF :1;
    };
} PIR6bits_t;
extern volatile PIR6bits_t PIR6bits __attribute__((address(0x4B4)));
# 68553 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR7 __attribute__((address(0x4B5)));

__asm("PIR7 equ 04B5h");


typedef union {
    struct {
        unsigned I2C1RXIF :1;
        unsigned I2C1TXIF :1;
        unsigned I2C1IF :1;
        unsigned I2C1EIF :1;
        unsigned :1;
        unsigned CLC3IF :1;
        unsigned PWM3PIF :1;
        unsigned PWM3IF :1;
    };
} PIR7bits_t;
extern volatile PIR7bits_t PIR7bits __attribute__((address(0x4B5)));
# 68610 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR8 __attribute__((address(0x4B6)));

__asm("PIR8 equ 04B6h");


typedef union {
    struct {
        unsigned U2RXIF :1;
        unsigned U2TXIF :1;
        unsigned U2EIF :1;
        unsigned U2IF :1;
        unsigned TMR5IF :1;
        unsigned TMR5GIF :1;
        unsigned CCP2IF :1;
        unsigned SCANIF :1;
    };
} PIR8bits_t;
extern volatile PIR8bits_t PIR8bits __attribute__((address(0x4B6)));
# 68672 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR9 __attribute__((address(0x4B7)));

__asm("PIR9 equ 04B7h");


typedef union {
    struct {
        unsigned U3RXIF :1;
        unsigned U3TXIF :1;
        unsigned U3EIF :1;
        unsigned U3IF :1;
        unsigned :1;
        unsigned CLC4IF :1;
        unsigned PWM4PIF :1;
        unsigned PWM4IF :1;
    };
} PIR9bits_t;
extern volatile PIR9bits_t PIR9bits __attribute__((address(0x4B7)));
# 68729 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR10 __attribute__((address(0x4B8)));

__asm("PIR10 equ 04B8h");


typedef union {
    struct {
        unsigned INT2IF :1;
        unsigned CLC5IF :1;
        unsigned CWG2IF :1;
        unsigned NCO2IF :1;
        unsigned DMA3SCNTIF :1;
        unsigned DMA3DCNTIF :1;
        unsigned DMA3ORIF :1;
        unsigned DMA3AIF :1;
    };
} PIR10bits_t;
extern volatile PIR10bits_t PIR10bits __attribute__((address(0x4B8)));
# 68791 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR11 __attribute__((address(0x4B9)));

__asm("PIR11 equ 04B9h");


typedef union {
    struct {
        unsigned CCP3IF :1;
        unsigned CLC6IF :1;
        unsigned CWG3IF :1;
        unsigned TMR4IF :1;
        unsigned DMA4SCNTIF :1;
        unsigned DMA4DCNTIF :1;
        unsigned DMA4ORIF :1;
        unsigned DMA4AIF :1;
    };
} PIR11bits_t;
extern volatile PIR11bits_t PIR11bits __attribute__((address(0x4B9)));
# 68853 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR12 __attribute__((address(0x4BA)));

__asm("PIR12 equ 04BAh");


typedef union {
    struct {
        unsigned U4RXIF :1;
        unsigned U4TXIF :1;
        unsigned U4EIF :1;
        unsigned U4IF :1;
        unsigned DMA5SCNTIF :1;
        unsigned DMA5DCNTIF :1;
        unsigned DMA5ORIF :1;
        unsigned DMA5AIF :1;
    };
} PIR12bits_t;
extern volatile PIR12bits_t PIR12bits __attribute__((address(0x4BA)));
# 68915 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR13 __attribute__((address(0x4BB)));

__asm("PIR13 equ 04BBh");


typedef union {
    struct {
        unsigned U5RXIF :1;
        unsigned U5TXIF :1;
        unsigned U5EIF :1;
        unsigned U5IF :1;
        unsigned DMA6SCNTIF :1;
        unsigned DMA6DCNTIF :1;
        unsigned DMA6ORIF :1;
        unsigned DMA6AIF :1;
    };
} PIR13bits_t;
extern volatile PIR13bits_t PIR13bits __attribute__((address(0x4BB)));
# 68977 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR14 __attribute__((address(0x4BC)));

__asm("PIR14 equ 04BCh");


typedef union {
    struct {
        unsigned :1;
        unsigned CLC7IF :1;
        unsigned C2IF :1;
        unsigned NCO3IF :1;
        unsigned DMA7SCNTIF :1;
        unsigned DMA7DCNTIF :1;
        unsigned DMA7ORIF :1;
        unsigned DMA7AIF :1;
    };
} PIR14bits_t;
extern volatile PIR14bits_t PIR14bits __attribute__((address(0x4BC)));
# 69034 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PIR15 __attribute__((address(0x4BD)));

__asm("PIR15 equ 04BDh");


typedef union {
    struct {
        unsigned NVMIF :1;
        unsigned CLC8IF :1;
        unsigned CRCIF :1;
        unsigned TMR6IF :1;
        unsigned DMA8SCNTIF :1;
        unsigned DMA8DCNTIF :1;
        unsigned DMA8ORIF :1;
        unsigned DMA8AIF :1;
    };
} PIR15bits_t;
extern volatile PIR15bits_t PIR15bits __attribute__((address(0x4BD)));
# 69096 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char LATA __attribute__((address(0x4BE)));

__asm("LATA equ 04BEh");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
        unsigned LATA6 :1;
        unsigned LATA7 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x4BE)));
# 69158 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char LATB __attribute__((address(0x4BF)));

__asm("LATB equ 04BFh");


typedef union {
    struct {
        unsigned LATB0 :1;
        unsigned LATB1 :1;
        unsigned LATB2 :1;
        unsigned LATB3 :1;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0x4BF)));
# 69220 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char LATC __attribute__((address(0x4C0)));

__asm("LATC equ 04C0h");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned LATC3 :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0x4C0)));
# 69282 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char LATD __attribute__((address(0x4C1)));

__asm("LATD equ 04C1h");


typedef union {
    struct {
        unsigned LATD0 :1;
        unsigned LATD1 :1;
        unsigned LATD2 :1;
        unsigned LATD3 :1;
        unsigned LATD4 :1;
        unsigned LATD5 :1;
        unsigned LATD6 :1;
        unsigned LATD7 :1;
    };
} LATDbits_t;
extern volatile LATDbits_t LATDbits __attribute__((address(0x4C1)));
# 69344 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char LATE __attribute__((address(0x4C2)));

__asm("LATE equ 04C2h");


typedef union {
    struct {
        unsigned LATE0 :1;
        unsigned LATE1 :1;
        unsigned LATE2 :1;
    };
} LATEbits_t;
extern volatile LATEbits_t LATEbits __attribute__((address(0x4C2)));
# 69376 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x4C6)));

__asm("TRISA equ 04C6h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x4C6)));
# 69438 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x4C7)));

__asm("TRISB equ 04C7h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x4C7)));
# 69500 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x4C8)));

__asm("TRISC equ 04C8h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x4C8)));
# 69562 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TRISD __attribute__((address(0x4C9)));

__asm("TRISD equ 04C9h");


typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0x4C9)));
# 69624 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TRISE __attribute__((address(0x4CA)));

__asm("TRISE equ 04CAh");


typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0x4CA)));
# 69656 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PORTA __attribute__((address(0x4CE)));

__asm("PORTA equ 04CEh");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x4CE)));
# 69718 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x4CF)));

__asm("PORTB equ 04CFh");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x4CF)));
# 69780 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x4D0)));

__asm("PORTC equ 04D0h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x4D0)));
# 69842 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PORTD __attribute__((address(0x4D1)));

__asm("PORTD equ 04D1h");


typedef union {
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0x4D1)));
# 69904 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PORTE __attribute__((address(0x4D2)));

__asm("PORTE equ 04D2h");


typedef union {
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
        unsigned RE3 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x4D2)));
# 69942 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INTCON0 __attribute__((address(0x4D6)));

__asm("INTCON0 equ 04D6h");


typedef union {
    struct {
        unsigned INT0EDG :1;
        unsigned INT1EDG :1;
        unsigned INT2EDG :1;
        unsigned :2;
        unsigned IPEN :1;
        unsigned GIEL :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :7;
        unsigned GIEH :1;
    };
} INTCON0bits_t;
extern volatile INTCON0bits_t INTCON0bits __attribute__((address(0x4D6)));
# 70002 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INTCON1 __attribute__((address(0x4D7)));

__asm("INTCON1 equ 04D7h");


typedef union {
    struct {
        unsigned :6;
        unsigned STAT :2;
    };
    struct {
        unsigned :6;
        unsigned STAT0 :1;
        unsigned STAT1 :1;
    };
} INTCON1bits_t;
extern volatile INTCON1bits_t INTCON1bits __attribute__((address(0x4D7)));
# 70038 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x4D8)));

__asm("STATUS equ 04D8h");


typedef union {
    struct {
        unsigned :5;
        unsigned NOT_PD :1;
    };
    struct {
        unsigned :6;
        unsigned NOT_TO :1;
    };
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned OV :1;
        unsigned N :1;
        unsigned nPD :1;
        unsigned nTO :1;
    };
    struct {
        unsigned :5;
        unsigned PD :1;
        unsigned TO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x4D8)));
# 70127 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short FSR2 __attribute__((address(0x4D9)));

__asm("FSR2 equ 04D9h");




extern volatile unsigned char FSR2L __attribute__((address(0x4D9)));

__asm("FSR2L equ 04D9h");


typedef union {
    struct {
        unsigned FSR2L :8;
    };
} FSR2Lbits_t;
extern volatile FSR2Lbits_t FSR2Lbits __attribute__((address(0x4D9)));
# 70154 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char FSR2H __attribute__((address(0x4DA)));

__asm("FSR2H equ 04DAh");




extern volatile unsigned char PLUSW2 __attribute__((address(0x4DB)));

__asm("PLUSW2 equ 04DBh");


typedef union {
    struct {
        unsigned PLUSW2 :8;
    };
} PLUSW2bits_t;
extern volatile PLUSW2bits_t PLUSW2bits __attribute__((address(0x4DB)));
# 70181 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PREINC2 __attribute__((address(0x4DC)));

__asm("PREINC2 equ 04DCh");


typedef union {
    struct {
        unsigned PREINC2 :8;
    };
} PREINC2bits_t;
extern volatile PREINC2bits_t PREINC2bits __attribute__((address(0x4DC)));
# 70201 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char POSTDEC2 __attribute__((address(0x4DD)));

__asm("POSTDEC2 equ 04DDh");


typedef union {
    struct {
        unsigned POSTDEC2 :8;
    };
} POSTDEC2bits_t;
extern volatile POSTDEC2bits_t POSTDEC2bits __attribute__((address(0x4DD)));
# 70221 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char POSTINC2 __attribute__((address(0x4DE)));

__asm("POSTINC2 equ 04DEh");


typedef union {
    struct {
        unsigned POSTINC2 :8;
    };
} POSTINC2bits_t;
extern volatile POSTINC2bits_t POSTINC2bits __attribute__((address(0x4DE)));
# 70241 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INDF2 __attribute__((address(0x4DF)));

__asm("INDF2 equ 04DFh");


typedef union {
    struct {
        unsigned INDF2 :8;
    };
} INDF2bits_t;
extern volatile INDF2bits_t INDF2bits __attribute__((address(0x4DF)));
# 70261 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char BSR __attribute__((address(0x4E0)));

__asm("BSR equ 04E0h");




extern volatile unsigned short FSR1 __attribute__((address(0x4E1)));

__asm("FSR1 equ 04E1h");




extern volatile unsigned char FSR1L __attribute__((address(0x4E1)));

__asm("FSR1L equ 04E1h");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0x4E1)));
# 70295 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0x4E2)));

__asm("FSR1H equ 04E2h");




extern volatile unsigned char PLUSW1 __attribute__((address(0x4E3)));

__asm("PLUSW1 equ 04E3h");


typedef union {
    struct {
        unsigned PLUSW1 :8;
    };
} PLUSW1bits_t;
extern volatile PLUSW1bits_t PLUSW1bits __attribute__((address(0x4E3)));
# 70322 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PREINC1 __attribute__((address(0x4E4)));

__asm("PREINC1 equ 04E4h");


typedef union {
    struct {
        unsigned PREINC1 :8;
    };
} PREINC1bits_t;
extern volatile PREINC1bits_t PREINC1bits __attribute__((address(0x4E4)));
# 70342 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char POSTDEC1 __attribute__((address(0x4E5)));

__asm("POSTDEC1 equ 04E5h");


typedef union {
    struct {
        unsigned POSTDEC1 :8;
    };
} POSTDEC1bits_t;
extern volatile POSTDEC1bits_t POSTDEC1bits __attribute__((address(0x4E5)));
# 70362 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char POSTINC1 __attribute__((address(0x4E6)));

__asm("POSTINC1 equ 04E6h");


typedef union {
    struct {
        unsigned POSTINC1 :8;
    };
} POSTINC1bits_t;
extern volatile POSTINC1bits_t POSTINC1bits __attribute__((address(0x4E6)));
# 70382 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0x4E7)));

__asm("INDF1 equ 04E7h");


typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0x4E7)));
# 70402 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char WREG __attribute__((address(0x4E8)));

__asm("WREG equ 04E8h");







typedef union {
    struct {
        unsigned WREG :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0x4E8)));







typedef union {
    struct {
        unsigned WREG :8;
    };
} Wbits_t;
extern volatile Wbits_t Wbits __attribute__((address(0x4E8)));
# 70440 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0x4E9)));

__asm("FSR0 equ 04E9h");




extern volatile unsigned char FSR0L __attribute__((address(0x4E9)));

__asm("FSR0L equ 04E9h");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0x4E9)));
# 70467 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0x4EA)));

__asm("FSR0H equ 04EAh");




extern volatile unsigned char PLUSW0 __attribute__((address(0x4EB)));

__asm("PLUSW0 equ 04EBh");


typedef union {
    struct {
        unsigned PLUSW0 :8;
    };
} PLUSW0bits_t;
extern volatile PLUSW0bits_t PLUSW0bits __attribute__((address(0x4EB)));
# 70494 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PREINC0 __attribute__((address(0x4EC)));

__asm("PREINC0 equ 04ECh");


typedef union {
    struct {
        unsigned PREINC0 :8;
    };
} PREINC0bits_t;
extern volatile PREINC0bits_t PREINC0bits __attribute__((address(0x4EC)));
# 70514 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char POSTDEC0 __attribute__((address(0x4ED)));

__asm("POSTDEC0 equ 04EDh");


typedef union {
    struct {
        unsigned POSTDEC0 :8;
    };
} POSTDEC0bits_t;
extern volatile POSTDEC0bits_t POSTDEC0bits __attribute__((address(0x4ED)));
# 70534 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char POSTINC0 __attribute__((address(0x4EE)));

__asm("POSTINC0 equ 04EEh");


typedef union {
    struct {
        unsigned POSTINC0 :8;
    };
} POSTINC0bits_t;
extern volatile POSTINC0bits_t POSTINC0bits __attribute__((address(0x4EE)));
# 70554 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char INDF0 __attribute__((address(0x4EF)));

__asm("INDF0 equ 04EFh");


typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0x4EF)));
# 70574 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PCON0 __attribute__((address(0x4F0)));

__asm("PCON0 equ 04F0h");


typedef union {
    struct {
        unsigned NOT_BOR :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_POR :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_RI :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_RMCLR :1;
    };
    struct {
        unsigned :4;
        unsigned NOT_RWDT :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_WDTWV :1;
    };
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nRI :1;
        unsigned nRMCLR :1;
        unsigned nRWDT :1;
        unsigned nWDTWV :1;
        unsigned STKUNF :1;
        unsigned STKOVF :1;
    };
    struct {
        unsigned BOR :1;
        unsigned POR :1;
        unsigned RI :1;
        unsigned RMCLR :1;
        unsigned RWDT :1;
        unsigned WDTWV :1;
    };
} PCON0bits_t;
extern volatile PCON0bits_t PCON0bits __attribute__((address(0x4F0)));
# 70727 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PCON1 __attribute__((address(0x4F1)));

__asm("PCON1 equ 04F1h");


typedef union {
    struct {
        unsigned :1;
        unsigned NOT_MEMV :1;
    };
    struct {
        unsigned :1;
        unsigned nMEMV :1;
    };
    struct {
        unsigned :1;
        unsigned MEMV :1;
    };
} PCON1bits_t;
extern volatile PCON1bits_t PCON1bits __attribute__((address(0x4F1)));
# 70766 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char CPUDOZE __attribute__((address(0x4F2)));

__asm("CPUDOZE equ 04F2h");


typedef union {
    struct {
        unsigned DOZE :3;
        unsigned :1;
        unsigned DOE :1;
        unsigned ROI :1;
        unsigned DOZEN :1;
        unsigned IDLEN :1;
    };
    struct {
        unsigned DOZE0 :1;
        unsigned DOZE1 :1;
        unsigned DOZE2 :1;
    };
} CPUDOZEbits_t;
extern volatile CPUDOZEbits_t CPUDOZEbits __attribute__((address(0x4F2)));
# 70831 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned short PROD __attribute__((address(0x4F3)));

__asm("PROD equ 04F3h");




extern volatile unsigned char PRODL __attribute__((address(0x4F3)));

__asm("PRODL equ 04F3h");


typedef union {
    struct {
        unsigned PRODL :8;
    };
} PRODLbits_t;
extern volatile PRODLbits_t PRODLbits __attribute__((address(0x4F3)));
# 70858 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PRODH __attribute__((address(0x4F4)));

__asm("PRODH equ 04F4h");


typedef union {
    struct {
        unsigned PRODH :8;
    };
} PRODHbits_t;
extern volatile PRODHbits_t PRODHbits __attribute__((address(0x4F4)));
# 70878 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TABLAT __attribute__((address(0x4F5)));

__asm("TABLAT equ 04F5h");


typedef union {
    struct {
        unsigned TABLAT :8;
    };
} TABLATbits_t;
extern volatile TABLATbits_t TABLATbits __attribute__((address(0x4F5)));
# 70899 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 TBLPTR __attribute__((address(0x4F6)));


__asm("TBLPTR equ 04F6h");




extern volatile unsigned char TBLPTRL __attribute__((address(0x4F6)));

__asm("TBLPTRL equ 04F6h");


typedef union {
    struct {
        unsigned TBLPTRL :8;
    };
} TBLPTRLbits_t;
extern volatile TBLPTRLbits_t TBLPTRLbits __attribute__((address(0x4F6)));
# 70927 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TBLPTRH __attribute__((address(0x4F7)));

__asm("TBLPTRH equ 04F7h");


typedef union {
    struct {
        unsigned TBLPTRH :8;
    };
} TBLPTRHbits_t;
extern volatile TBLPTRHbits_t TBLPTRHbits __attribute__((address(0x4F7)));
# 70947 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TBLPTRU __attribute__((address(0x4F8)));

__asm("TBLPTRU equ 04F8h");


typedef union {
    struct {
        unsigned TBLPTRU :6;
    };
    struct {
        unsigned :5;
        unsigned ACSS :1;
    };
} TBLPTRUbits_t;
extern volatile TBLPTRUbits_t TBLPTRUbits __attribute__((address(0x4F8)));
# 70977 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 PCLAT __attribute__((address(0x4F9)));


__asm("PCLAT equ 04F9h");




extern volatile unsigned char PCL __attribute__((address(0x4F9)));

__asm("PCL equ 04F9h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x4F9)));
# 71005 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x4FA)));

__asm("PCLATH equ 04FAh");


typedef union {
    struct {
        unsigned PCH :8;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x4FA)));
# 71025 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char PCLATU __attribute__((address(0x4FB)));

__asm("PCLATU equ 04FBh");


typedef union {
    struct {
        unsigned PCU :5;
    };
} PCLATUbits_t;
extern volatile PCLATUbits_t PCLATUbits __attribute__((address(0x4FB)));
# 71045 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char STKPTR __attribute__((address(0x4FC)));

__asm("STKPTR equ 04FCh");


typedef union {
    struct {
        unsigned STKPTR :7;
    };
    struct {
        unsigned STKPTR0 :1;
        unsigned STKPTR1 :1;
        unsigned STKPTR2 :1;
        unsigned STKPTR3 :1;
        unsigned STKPTR4 :1;
        unsigned STKPTR5 :1;
        unsigned STKPTR6 :1;
    };
    struct {
        unsigned SP0 :1;
        unsigned SP1 :1;
        unsigned SP2 :1;
        unsigned SP3 :1;
        unsigned SP4 :1;
        unsigned SP5 :1;
        unsigned SP6 :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0x4FC)));
# 71154 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __uint24 TOS __attribute__((address(0x4FD)));


__asm("TOS equ 04FDh");




extern volatile unsigned char TOSL __attribute__((address(0x4FD)));

__asm("TOSL equ 04FDh");


typedef union {
    struct {
        unsigned TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0x4FD)));
# 71182 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TOSH __attribute__((address(0x4FE)));

__asm("TOSH equ 04FEh");


typedef union {
    struct {
        unsigned TOSH :8;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0x4FE)));
# 71202 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile unsigned char TOSU __attribute__((address(0x4FF)));

__asm("TOSU equ 04FFh");
# 72039 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/proc/pic18f47q84.h" 3
extern volatile __bit ABAT __attribute__((address(0x81B)));


extern volatile __bit ABD __attribute__((address(0x14B4)));


extern volatile __bit ACCM __attribute__((address(0x1ABC)));


extern volatile __bit ACCMOD __attribute__((address(0x1ABC)));


extern volatile __bit ACKCNT __attribute__((address(0x14AF)));


extern volatile __bit ACKDT __attribute__((address(0x14AE)));


extern volatile __bit ACKSTAT __attribute__((address(0x14AD)));


extern volatile __bit ACKT __attribute__((address(0x14AC)));


extern volatile __bit ACKT1IE __attribute__((address(0x14DE)));


extern volatile __bit ACKT1IF __attribute__((address(0x14D6)));


extern volatile __bit ACKTIE __attribute__((address(0x14DE)));


extern volatile __bit ACKTIF __attribute__((address(0x14D6)));


extern volatile __bit ACLR __attribute__((address(0x1FAB)));


extern volatile __bit ACNT __attribute__((address(0x14B7)));


extern volatile __bit ACQ0 __attribute__((address(0x1F70)));


extern volatile __bit ACQ1 __attribute__((address(0x1F71)));


extern volatile __bit ACQ10 __attribute__((address(0x1F7A)));


extern volatile __bit ACQ11 __attribute__((address(0x1F7B)));


extern volatile __bit ACQ12 __attribute__((address(0x1F7C)));


extern volatile __bit ACQ2 __attribute__((address(0x1F72)));


extern volatile __bit ACQ3 __attribute__((address(0x1F73)));


extern volatile __bit ACQ4 __attribute__((address(0x1F74)));


extern volatile __bit ACQ5 __attribute__((address(0x1F75)));


extern volatile __bit ACQ6 __attribute__((address(0x1F76)));


extern volatile __bit ACQ7 __attribute__((address(0x1F77)));


extern volatile __bit ACQ8 __attribute__((address(0x1F78)));


extern volatile __bit ACQ9 __attribute__((address(0x1F79)));


extern volatile __bit ACSS __attribute__((address(0x27C5)));


extern volatile __bit ACT0 __attribute__((address(0x1FC8)));


extern volatile __bit ACT1 __attribute__((address(0x1FC9)));


extern volatile __bit ACT2 __attribute__((address(0x1FCA)));


extern volatile __bit ACT3 __attribute__((address(0x1FCB)));


extern volatile __bit ACT4 __attribute__((address(0x1FCC)));


extern volatile __bit ACT5 __attribute__((address(0x1FCD)));


extern volatile __bit ACTEN __attribute__((address(0x567)));


extern volatile __bit ACTIE __attribute__((address(0x24FB)));


extern volatile __bit ACTIF __attribute__((address(0x257B)));


extern volatile __bit ACTIP __attribute__((address(0x1B1B)));


extern volatile __bit ACTLOCK __attribute__((address(0x563)));


extern volatile __bit ACTMD __attribute__((address(0x31F)));


extern volatile __bit ACTORS __attribute__((address(0x561)));


extern volatile __bit ACTUD __attribute__((address(0x566)));


extern volatile __bit AD0 __attribute__((address(0x22D0)));


extern volatile __bit AD1 __attribute__((address(0x22D1)));


extern volatile __bit AD10 __attribute__((address(0x22DA)));


extern volatile __bit AD11 __attribute__((address(0x22DB)));


extern volatile __bit AD12 __attribute__((address(0x22DC)));


extern volatile __bit AD13 __attribute__((address(0x22DD)));


extern volatile __bit AD14 __attribute__((address(0x22DE)));


extern volatile __bit AD15 __attribute__((address(0x22DF)));


extern volatile __bit AD16 __attribute__((address(0x22E0)));


extern volatile __bit AD17 __attribute__((address(0x22E1)));


extern volatile __bit AD18 __attribute__((address(0x22E2)));


extern volatile __bit AD19 __attribute__((address(0x22E3)));


extern volatile __bit AD2 __attribute__((address(0x22D2)));


extern volatile __bit AD20 __attribute__((address(0x22E4)));


extern volatile __bit AD3 __attribute__((address(0x22D3)));


extern volatile __bit AD4 __attribute__((address(0x22D4)));


extern volatile __bit AD5 __attribute__((address(0x22D5)));


extern volatile __bit AD6 __attribute__((address(0x22D6)));


extern volatile __bit AD7 __attribute__((address(0x22D7)));


extern volatile __bit AD8 __attribute__((address(0x22D8)));


extern volatile __bit AD9 __attribute__((address(0x22D9)));


extern volatile __bit ADACC0 __attribute__((address(0x1F18)));


extern volatile __bit ADACC1 __attribute__((address(0x1F19)));


extern volatile __bit ADACC10 __attribute__((address(0x1F22)));


extern volatile __bit ADACC11 __attribute__((address(0x1F23)));


extern volatile __bit ADACC12 __attribute__((address(0x1F24)));


extern volatile __bit ADACC13 __attribute__((address(0x1F25)));


extern volatile __bit ADACC14 __attribute__((address(0x1F26)));


extern volatile __bit ADACC15 __attribute__((address(0x1F27)));


extern volatile __bit ADACC16 __attribute__((address(0x1F28)));


extern volatile __bit ADACC17 __attribute__((address(0x1F29)));


extern volatile __bit ADACC2 __attribute__((address(0x1F1A)));


extern volatile __bit ADACC3 __attribute__((address(0x1F1B)));


extern volatile __bit ADACC4 __attribute__((address(0x1F1C)));


extern volatile __bit ADACC5 __attribute__((address(0x1F1D)));


extern volatile __bit ADACC6 __attribute__((address(0x1F1E)));


extern volatile __bit ADACC7 __attribute__((address(0x1F1F)));


extern volatile __bit ADACC8 __attribute__((address(0x1F20)));


extern volatile __bit ADACC9 __attribute__((address(0x1F21)));


extern volatile __bit ADACLR __attribute__((address(0x1FAB)));


extern volatile __bit ADACQ0 __attribute__((address(0x1F70)));


extern volatile __bit ADACQ1 __attribute__((address(0x1F71)));


extern volatile __bit ADACQ10 __attribute__((address(0x1F7A)));


extern volatile __bit ADACQ11 __attribute__((address(0x1F7B)));


extern volatile __bit ADACQ12 __attribute__((address(0x1F7C)));


extern volatile __bit ADACQ2 __attribute__((address(0x1F72)));


extern volatile __bit ADACQ3 __attribute__((address(0x1F73)));


extern volatile __bit ADACQ4 __attribute__((address(0x1F74)));


extern volatile __bit ADACQ5 __attribute__((address(0x1F75)));


extern volatile __bit ADACQ6 __attribute__((address(0x1F76)));


extern volatile __bit ADACQ7 __attribute__((address(0x1F77)));


extern volatile __bit ADACQ8 __attribute__((address(0x1F78)));


extern volatile __bit ADACQ9 __attribute__((address(0x1F79)));


extern volatile __bit ADACT0 __attribute__((address(0x1FC8)));


extern volatile __bit ADACT1 __attribute__((address(0x1FC9)));


extern volatile __bit ADACT2 __attribute__((address(0x1FCA)));


extern volatile __bit ADACT3 __attribute__((address(0x1FCB)));


extern volatile __bit ADACT4 __attribute__((address(0x1FCC)));


extern volatile __bit ADACT5 __attribute__((address(0x1FCD)));


extern volatile __bit ADACTPPS0 __attribute__((address(0x1348)));


extern volatile __bit ADACTPPS1 __attribute__((address(0x1349)));


extern volatile __bit ADACTPPS2 __attribute__((address(0x134A)));


extern volatile __bit ADACTPPS3 __attribute__((address(0x134B)));


extern volatile __bit ADACTPPS4 __attribute__((address(0x134C)));


extern volatile __bit ADAOV __attribute__((address(0x1FBF)));


extern volatile __bit ADCALC0 __attribute__((address(0x1FB4)));


extern volatile __bit ADCALC1 __attribute__((address(0x1FB5)));


extern volatile __bit ADCALC2 __attribute__((address(0x1FB6)));


extern volatile __bit ADCAP0 __attribute__((address(0x1F80)));


extern volatile __bit ADCAP1 __attribute__((address(0x1F81)));


extern volatile __bit ADCAP2 __attribute__((address(0x1F82)));


extern volatile __bit ADCAP3 __attribute__((address(0x1F83)));


extern volatile __bit ADCAP4 __attribute__((address(0x1F84)));


extern volatile __bit ADCH1IE __attribute__((address(0x2500)));


extern volatile __bit ADCH1IF __attribute__((address(0x2580)));


extern volatile __bit ADCH1IP __attribute__((address(0x1B20)));


extern volatile __bit ADCH2IE __attribute__((address(0x2501)));


extern volatile __bit ADCH2IF __attribute__((address(0x2581)));


extern volatile __bit ADCH2IP __attribute__((address(0x1B21)));


extern volatile __bit ADCH3IE __attribute__((address(0x2502)));


extern volatile __bit ADCH3IF __attribute__((address(0x2582)));


extern volatile __bit ADCH3IP __attribute__((address(0x1B22)));


extern volatile __bit ADCH4IE __attribute__((address(0x2503)));


extern volatile __bit ADCH4IF __attribute__((address(0x2583)));


extern volatile __bit ADCH4IP __attribute__((address(0x1B23)));


extern volatile __bit ADCMD __attribute__((address(0x31D)));


extern volatile __bit ADCNT0 __attribute__((address(0x1F30)));


extern volatile __bit ADCNT1 __attribute__((address(0x1F31)));


extern volatile __bit ADCNT2 __attribute__((address(0x1F32)));


extern volatile __bit ADCNT3 __attribute__((address(0x1F33)));


extern volatile __bit ADCNT4 __attribute__((address(0x1F34)));


extern volatile __bit ADCNT5 __attribute__((address(0x1F35)));


extern volatile __bit ADCNT6 __attribute__((address(0x1F36)));


extern volatile __bit ADCNT7 __attribute__((address(0x1F37)));


extern volatile __bit ADCONT __attribute__((address(0x1F9E)));


extern volatile __bit ADCPON __attribute__((address(0x1EC7)));


extern volatile __bit ADCPRDY __attribute__((address(0x1EC0)));


extern volatile __bit ADCRS0 __attribute__((address(0x1FAC)));


extern volatile __bit ADCRS1 __attribute__((address(0x1FAD)));


extern volatile __bit ADCRS2 __attribute__((address(0x1FAE)));


extern volatile __bit ADCS __attribute__((address(0x1F9C)));


extern volatile __bit ADCS0 __attribute__((address(0x1FD0)));


extern volatile __bit ADCS1 __attribute__((address(0x1FD1)));


extern volatile __bit ADCS2 __attribute__((address(0x1FD2)));


extern volatile __bit ADCS3 __attribute__((address(0x1FD3)));


extern volatile __bit ADCS4 __attribute__((address(0x1FD4)));


extern volatile __bit ADCS5 __attribute__((address(0x1FD5)));


extern volatile __bit ADCSEN __attribute__((address(0x1F9D)));


extern volatile __bit ADCTX0 __attribute__((address(0x1FD8)));


extern volatile __bit ADCTX1 __attribute__((address(0x1FD9)));


extern volatile __bit ADCTXSW __attribute__((address(0x1FDF)));


extern volatile __bit ADDSEN __attribute__((address(0x1FA0)));


extern volatile __bit ADERR0 __attribute__((address(0x1EE8)));


extern volatile __bit ADERR1 __attribute__((address(0x1EE9)));


extern volatile __bit ADERR10 __attribute__((address(0x1EF2)));


extern volatile __bit ADERR11 __attribute__((address(0x1EF3)));


extern volatile __bit ADERR12 __attribute__((address(0x1EF4)));


extern volatile __bit ADERR13 __attribute__((address(0x1EF5)));


extern volatile __bit ADERR14 __attribute__((address(0x1EF6)));


extern volatile __bit ADERR15 __attribute__((address(0x1EF7)));


extern volatile __bit ADERR2 __attribute__((address(0x1EEA)));


extern volatile __bit ADERR3 __attribute__((address(0x1EEB)));


extern volatile __bit ADERR4 __attribute__((address(0x1EEC)));


extern volatile __bit ADERR5 __attribute__((address(0x1EED)));


extern volatile __bit ADERR6 __attribute__((address(0x1EEE)));


extern volatile __bit ADERR7 __attribute__((address(0x1EEF)));


extern volatile __bit ADERR8 __attribute__((address(0x1EF0)));


extern volatile __bit ADERR9 __attribute__((address(0x1EF1)));


extern volatile __bit ADFLTR0 __attribute__((address(0x1F08)));


extern volatile __bit ADFLTR1 __attribute__((address(0x1F09)));


extern volatile __bit ADFLTR10 __attribute__((address(0x1F12)));


extern volatile __bit ADFLTR11 __attribute__((address(0x1F13)));


extern volatile __bit ADFLTR12 __attribute__((address(0x1F14)));


extern volatile __bit ADFLTR13 __attribute__((address(0x1F15)));


extern volatile __bit ADFLTR14 __attribute__((address(0x1F16)));


extern volatile __bit ADFLTR15 __attribute__((address(0x1F17)));


extern volatile __bit ADFLTR2 __attribute__((address(0x1F0A)));


extern volatile __bit ADFLTR3 __attribute__((address(0x1F0B)));


extern volatile __bit ADFLTR4 __attribute__((address(0x1F0C)));


extern volatile __bit ADFLTR5 __attribute__((address(0x1F0D)));


extern volatile __bit ADFLTR6 __attribute__((address(0x1F0E)));


extern volatile __bit ADFLTR7 __attribute__((address(0x1F0F)));


extern volatile __bit ADFLTR8 __attribute__((address(0x1F10)));


extern volatile __bit ADFLTR9 __attribute__((address(0x1F11)));


extern volatile __bit ADFM0 __attribute__((address(0x1F9A)));


extern volatile __bit ADFVR0 __attribute__((address(0x1EB8)));


extern volatile __bit ADFVR1 __attribute__((address(0x1EB9)));


extern volatile __bit ADGO __attribute__((address(0x1F98)));


extern volatile __bit ADGPOL __attribute__((address(0x1FA5)));


extern volatile __bit ADIE __attribute__((address(0x24FA)));


extern volatile __bit ADIF __attribute__((address(0x257A)));


extern volatile __bit ADIP __attribute__((address(0x1B1A)));


extern volatile __bit ADIPEN __attribute__((address(0x1FA6)));


extern volatile __bit ADLTH0 __attribute__((address(0x1EC8)));


extern volatile __bit ADLTH1 __attribute__((address(0x1EC9)));


extern volatile __bit ADLTH10 __attribute__((address(0x1ED2)));


extern volatile __bit ADLTH11 __attribute__((address(0x1ED3)));


extern volatile __bit ADLTH12 __attribute__((address(0x1ED4)));


extern volatile __bit ADLTH13 __attribute__((address(0x1ED5)));


extern volatile __bit ADLTH14 __attribute__((address(0x1ED6)));


extern volatile __bit ADLTH15 __attribute__((address(0x1ED7)));


extern volatile __bit ADLTH2 __attribute__((address(0x1ECA)));


extern volatile __bit ADLTH3 __attribute__((address(0x1ECB)));


extern volatile __bit ADLTH4 __attribute__((address(0x1ECC)));


extern volatile __bit ADLTH5 __attribute__((address(0x1ECD)));


extern volatile __bit ADLTH6 __attribute__((address(0x1ECE)));


extern volatile __bit ADLTH7 __attribute__((address(0x1ECF)));


extern volatile __bit ADLTH8 __attribute__((address(0x1ED0)));


extern volatile __bit ADLTH9 __attribute__((address(0x1ED1)));


extern volatile __bit ADLTHR __attribute__((address(0x1FBD)));


extern volatile __bit ADMATH __attribute__((address(0x1FBC)));


extern volatile __bit ADMD0 __attribute__((address(0x1FA8)));


extern volatile __bit ADMD1 __attribute__((address(0x1FA9)));


extern volatile __bit ADMD2 __attribute__((address(0x1FAA)));


extern volatile __bit ADNREF0 __attribute__((address(0x1FC4)));


extern volatile __bit ADOEN __attribute__((address(0x59A)));


extern volatile __bit ADON __attribute__((address(0x1F9F)));


extern volatile __bit ADOR __attribute__((address(0x592)));


extern volatile __bit ADOV __attribute__((address(0x1FBF)));


extern volatile __bit ADPCH0 __attribute__((address(0x1F60)));


extern volatile __bit ADPCH1 __attribute__((address(0x1F61)));


extern volatile __bit ADPCH2 __attribute__((address(0x1F62)));


extern volatile __bit ADPCH3 __attribute__((address(0x1F63)));


extern volatile __bit ADPCH4 __attribute__((address(0x1F64)));


extern volatile __bit ADPCH5 __attribute__((address(0x1F65)));


extern volatile __bit ADPPOL __attribute__((address(0x1FA7)));


extern volatile __bit ADPRE0 __attribute__((address(0x1F88)));


extern volatile __bit ADPRE1 __attribute__((address(0x1F89)));


extern volatile __bit ADPRE10 __attribute__((address(0x1F92)));


extern volatile __bit ADPRE11 __attribute__((address(0x1F93)));


extern volatile __bit ADPRE12 __attribute__((address(0x1F94)));


extern volatile __bit ADPRE2 __attribute__((address(0x1F8A)));


extern volatile __bit ADPRE3 __attribute__((address(0x1F8B)));


extern volatile __bit ADPRE4 __attribute__((address(0x1F8C)));


extern volatile __bit ADPRE5 __attribute__((address(0x1F8D)));


extern volatile __bit ADPRE6 __attribute__((address(0x1F8E)));


extern volatile __bit ADPRE7 __attribute__((address(0x1F8F)));


extern volatile __bit ADPRE8 __attribute__((address(0x1F90)));


extern volatile __bit ADPRE9 __attribute__((address(0x1F91)));


extern volatile __bit ADPREF0 __attribute__((address(0x1FC0)));


extern volatile __bit ADPREF1 __attribute__((address(0x1FC1)));


extern volatile __bit ADPREV0 __attribute__((address(0x1F40)));


extern volatile __bit ADPREV1 __attribute__((address(0x1F41)));


extern volatile __bit ADPREV10 __attribute__((address(0x1F4A)));


extern volatile __bit ADPREV11 __attribute__((address(0x1F4B)));


extern volatile __bit ADPREV12 __attribute__((address(0x1F4C)));


extern volatile __bit ADPREV13 __attribute__((address(0x1F4D)));


extern volatile __bit ADPREV14 __attribute__((address(0x1F4E)));


extern volatile __bit ADPREV15 __attribute__((address(0x1F4F)));


extern volatile __bit ADPREV2 __attribute__((address(0x1F42)));


extern volatile __bit ADPREV3 __attribute__((address(0x1F43)));


extern volatile __bit ADPREV4 __attribute__((address(0x1F44)));


extern volatile __bit ADPREV5 __attribute__((address(0x1F45)));


extern volatile __bit ADPREV6 __attribute__((address(0x1F46)));


extern volatile __bit ADPREV7 __attribute__((address(0x1F47)));


extern volatile __bit ADPREV8 __attribute__((address(0x1F48)));


extern volatile __bit ADPREV9 __attribute__((address(0x1F49)));


extern volatile __bit ADPSIS __attribute__((address(0x1FAF)));


extern volatile __bit ADR1IE __attribute__((address(0x14DB)));


extern volatile __bit ADR1IF __attribute__((address(0x14D3)));


extern volatile __bit ADRES0 __attribute__((address(0x1F50)));


extern volatile __bit ADRES1 __attribute__((address(0x1F51)));


extern volatile __bit ADRES10 __attribute__((address(0x1F5A)));


extern volatile __bit ADRES11 __attribute__((address(0x1F5B)));


extern volatile __bit ADRES12 __attribute__((address(0x1F5C)));


extern volatile __bit ADRES13 __attribute__((address(0x1F5D)));


extern volatile __bit ADRES14 __attribute__((address(0x1F5E)));


extern volatile __bit ADRES15 __attribute__((address(0x1F5F)));


extern volatile __bit ADRES2 __attribute__((address(0x1F52)));


extern volatile __bit ADRES3 __attribute__((address(0x1F53)));


extern volatile __bit ADRES4 __attribute__((address(0x1F54)));


extern volatile __bit ADRES5 __attribute__((address(0x1F55)));


extern volatile __bit ADRES6 __attribute__((address(0x1F56)));


extern volatile __bit ADRES7 __attribute__((address(0x1F57)));


extern volatile __bit ADRES8 __attribute__((address(0x1F58)));


extern volatile __bit ADRES9 __attribute__((address(0x1F59)));


extern volatile __bit ADRIE __attribute__((address(0x14DB)));


extern volatile __bit ADRIF __attribute__((address(0x14D3)));


extern volatile __bit ADRPT0 __attribute__((address(0x1F38)));


extern volatile __bit ADRPT1 __attribute__((address(0x1F39)));


extern volatile __bit ADRPT2 __attribute__((address(0x1F3A)));


extern volatile __bit ADRPT3 __attribute__((address(0x1F3B)));


extern volatile __bit ADRPT4 __attribute__((address(0x1F3C)));


extern volatile __bit ADRPT5 __attribute__((address(0x1F3D)));


extern volatile __bit ADRPT6 __attribute__((address(0x1F3E)));


extern volatile __bit ADRPT7 __attribute__((address(0x1F3F)));


extern volatile __bit ADSOI __attribute__((address(0x1FB3)));


extern volatile __bit ADSTAT0 __attribute__((address(0x1FB8)));


extern volatile __bit ADSTAT1 __attribute__((address(0x1FB9)));


extern volatile __bit ADSTAT2 __attribute__((address(0x1FBA)));


extern volatile __bit ADSTPT0 __attribute__((address(0x1EF8)));


extern volatile __bit ADSTPT1 __attribute__((address(0x1EF9)));


extern volatile __bit ADSTPT10 __attribute__((address(0x1F02)));


extern volatile __bit ADSTPT11 __attribute__((address(0x1F03)));


extern volatile __bit ADSTPT12 __attribute__((address(0x1F04)));


extern volatile __bit ADSTPT13 __attribute__((address(0x1F05)));


extern volatile __bit ADSTPT14 __attribute__((address(0x1F06)));


extern volatile __bit ADSTPT15 __attribute__((address(0x1F07)));


extern volatile __bit ADSTPT2 __attribute__((address(0x1EFA)));


extern volatile __bit ADSTPT3 __attribute__((address(0x1EFB)));


extern volatile __bit ADSTPT4 __attribute__((address(0x1EFC)));


extern volatile __bit ADSTPT5 __attribute__((address(0x1EFD)));


extern volatile __bit ADSTPT6 __attribute__((address(0x1EFE)));


extern volatile __bit ADSTPT7 __attribute__((address(0x1EFF)));


extern volatile __bit ADSTPT8 __attribute__((address(0x1F00)));


extern volatile __bit ADSTPT9 __attribute__((address(0x1F01)));


extern volatile __bit ADTIE __attribute__((address(0x2500)));


extern volatile __bit ADTIF __attribute__((address(0x2580)));


extern volatile __bit ADTIP __attribute__((address(0x1B20)));


extern volatile __bit ADTMD0 __attribute__((address(0x1FB0)));


extern volatile __bit ADTMD1 __attribute__((address(0x1FB1)));


extern volatile __bit ADTMD2 __attribute__((address(0x1FB2)));


extern volatile __bit ADUTH0 __attribute__((address(0x1ED8)));


extern volatile __bit ADUTH1 __attribute__((address(0x1ED9)));


extern volatile __bit ADUTH10 __attribute__((address(0x1EE2)));


extern volatile __bit ADUTH11 __attribute__((address(0x1EE3)));


extern volatile __bit ADUTH12 __attribute__((address(0x1EE4)));


extern volatile __bit ADUTH13 __attribute__((address(0x1EE5)));


extern volatile __bit ADUTH14 __attribute__((address(0x1EE6)));


extern volatile __bit ADUTH15 __attribute__((address(0x1EE7)));


extern volatile __bit ADUTH2 __attribute__((address(0x1EDA)));


extern volatile __bit ADUTH3 __attribute__((address(0x1EDB)));


extern volatile __bit ADUTH4 __attribute__((address(0x1EDC)));


extern volatile __bit ADUTH5 __attribute__((address(0x1EDD)));


extern volatile __bit ADUTH6 __attribute__((address(0x1EDE)));


extern volatile __bit ADUTH7 __attribute__((address(0x1EDF)));


extern volatile __bit ADUTH8 __attribute__((address(0x1EE0)));


extern volatile __bit ADUTH9 __attribute__((address(0x1EE1)));


extern volatile __bit ADUTHR __attribute__((address(0x1FBE)));


extern volatile __bit AIRQ0 __attribute__((address(0x7F0)));


extern volatile __bit AIRQ1 __attribute__((address(0x7F1)));


extern volatile __bit AIRQ2 __attribute__((address(0x7F2)));


extern volatile __bit AIRQ3 __attribute__((address(0x7F3)));


extern volatile __bit AIRQ4 __attribute__((address(0x7F4)));


extern volatile __bit AIRQ5 __attribute__((address(0x7F5)));


extern volatile __bit AIRQ6 __attribute__((address(0x7F6)));


extern volatile __bit AIRQ7 __attribute__((address(0x7F7)));


extern volatile __bit AIRQEN __attribute__((address(0x7E2)));


extern volatile __bit ANSELA0 __attribute__((address(0x2000)));


extern volatile __bit ANSELA1 __attribute__((address(0x2001)));


extern volatile __bit ANSELA2 __attribute__((address(0x2002)));


extern volatile __bit ANSELA3 __attribute__((address(0x2003)));


extern volatile __bit ANSELA4 __attribute__((address(0x2004)));


extern volatile __bit ANSELA5 __attribute__((address(0x2005)));


extern volatile __bit ANSELA6 __attribute__((address(0x2006)));


extern volatile __bit ANSELA7 __attribute__((address(0x2007)));


extern volatile __bit ANSELB0 __attribute__((address(0x2040)));


extern volatile __bit ANSELB1 __attribute__((address(0x2041)));


extern volatile __bit ANSELB2 __attribute__((address(0x2042)));


extern volatile __bit ANSELB3 __attribute__((address(0x2043)));


extern volatile __bit ANSELB4 __attribute__((address(0x2044)));


extern volatile __bit ANSELB5 __attribute__((address(0x2045)));


extern volatile __bit ANSELB6 __attribute__((address(0x2046)));


extern volatile __bit ANSELB7 __attribute__((address(0x2047)));


extern volatile __bit ANSELC0 __attribute__((address(0x2080)));


extern volatile __bit ANSELC1 __attribute__((address(0x2081)));


extern volatile __bit ANSELC2 __attribute__((address(0x2082)));


extern volatile __bit ANSELC3 __attribute__((address(0x2083)));


extern volatile __bit ANSELC4 __attribute__((address(0x2084)));


extern volatile __bit ANSELC5 __attribute__((address(0x2085)));


extern volatile __bit ANSELC6 __attribute__((address(0x2086)));


extern volatile __bit ANSELC7 __attribute__((address(0x2087)));


extern volatile __bit ANSELD0 __attribute__((address(0x20C0)));


extern volatile __bit ANSELD1 __attribute__((address(0x20C1)));


extern volatile __bit ANSELD2 __attribute__((address(0x20C2)));


extern volatile __bit ANSELD3 __attribute__((address(0x20C3)));


extern volatile __bit ANSELD4 __attribute__((address(0x20C4)));


extern volatile __bit ANSELD5 __attribute__((address(0x20C5)));


extern volatile __bit ANSELD6 __attribute__((address(0x20C6)));


extern volatile __bit ANSELD7 __attribute__((address(0x20C7)));


extern volatile __bit ANSELE0 __attribute__((address(0x2100)));


extern volatile __bit ANSELE1 __attribute__((address(0x2101)));


extern volatile __bit ANSELE2 __attribute__((address(0x2102)));


extern volatile __bit AS __attribute__((address(0x1870)));


extern volatile __bit ASYNC __attribute__((address(0x18DC)));


extern volatile __bit BASE0 __attribute__((address(0x22E8)));


extern volatile __bit BASE1 __attribute__((address(0x22E9)));


extern volatile __bit BASE10 __attribute__((address(0x22F2)));


extern volatile __bit BASE11 __attribute__((address(0x22F3)));


extern volatile __bit BASE12 __attribute__((address(0x22F4)));


extern volatile __bit BASE13 __attribute__((address(0x22F5)));


extern volatile __bit BASE14 __attribute__((address(0x22F6)));


extern volatile __bit BASE15 __attribute__((address(0x22F7)));


extern volatile __bit BASE16 __attribute__((address(0x22F8)));


extern volatile __bit BASE17 __attribute__((address(0x22F9)));


extern volatile __bit BASE18 __attribute__((address(0x22FA)));


extern volatile __bit BASE19 __attribute__((address(0x22FB)));


extern volatile __bit BASE2 __attribute__((address(0x22EA)));


extern volatile __bit BASE20 __attribute__((address(0x22FC)));


extern volatile __bit BASE3 __attribute__((address(0x22EB)));


extern volatile __bit BASE4 __attribute__((address(0x22EC)));


extern volatile __bit BASE5 __attribute__((address(0x22ED)));


extern volatile __bit BASE6 __attribute__((address(0x22EE)));


extern volatile __bit BASE7 __attribute__((address(0x22EF)));


extern volatile __bit BASE8 __attribute__((address(0x22F0)));


extern volatile __bit BASE9 __attribute__((address(0x22F1)));


extern volatile __bit BCL1IE __attribute__((address(0x14B9)));


extern volatile __bit BCL1IF __attribute__((address(0x14BD)));


extern volatile __bit BCLIE __attribute__((address(0x14B9)));


extern volatile __bit BCLIF __attribute__((address(0x14BD)));


extern volatile __bit BFRE __attribute__((address(0x14C7)));


extern volatile __bit BFRET0 __attribute__((address(0x14B0)));


extern volatile __bit BFRET1 __attribute__((address(0x14B1)));


extern volatile __bit BIT __attribute__((address(0x350)));


extern volatile __bit BOOTDONE __attribute__((address(0x1C6)));


extern volatile __bit BOR __attribute__((address(0x2780)));


extern volatile __bit BORRDY __attribute__((address(0x248)));


extern volatile __bit BPOUT __attribute__((address(0x1C7)));


extern volatile __bit BRSDIS __attribute__((address(0x80C)));


extern volatile __bit BTO1IE __attribute__((address(0x14BA)));


extern volatile __bit BTO1IF __attribute__((address(0x14BE)));


extern volatile __bit BTOC0 __attribute__((address(0x14F8)));


extern volatile __bit BTOC1 __attribute__((address(0x14F9)));


extern volatile __bit BTOC2 __attribute__((address(0x14FA)));


extern volatile __bit BTOC3 __attribute__((address(0x14FB)));


extern volatile __bit BTOIE __attribute__((address(0x14BA)));


extern volatile __bit BTOIF __attribute__((address(0x14BE)));


extern volatile __bit BUF0 __attribute__((address(0x748)));


extern volatile __bit BUF1 __attribute__((address(0x749)));


extern volatile __bit BUF2 __attribute__((address(0x74A)));


extern volatile __bit BUF3 __attribute__((address(0x74B)));


extern volatile __bit BUF4 __attribute__((address(0x74C)));


extern volatile __bit BUF5 __attribute__((address(0x74D)));


extern volatile __bit BUF6 __attribute__((address(0x74E)));


extern volatile __bit BUF7 __attribute__((address(0x74F)));


extern volatile __bit BURSTMD __attribute__((address(0x1B01)));


extern volatile __bit C1EN __attribute__((address(0x387)));


extern volatile __bit C1HYS __attribute__((address(0x381)));


extern volatile __bit C1IE __attribute__((address(0x24FC)));


extern volatile __bit C1IF __attribute__((address(0x257C)));


extern volatile __bit C1INTN __attribute__((address(0x388)));


extern volatile __bit C1INTP __attribute__((address(0x389)));


extern volatile __bit C1IP __attribute__((address(0x1B1C)));


extern volatile __bit C1NCH0 __attribute__((address(0x390)));


extern volatile __bit C1NCH1 __attribute__((address(0x391)));


extern volatile __bit C1NCH2 __attribute__((address(0x392)));


extern volatile __bit C1OUT __attribute__((address(0x386)));


extern volatile __bit C1PCH0 __attribute__((address(0x398)));


extern volatile __bit C1PCH1 __attribute__((address(0x399)));


extern volatile __bit C1PCH2 __attribute__((address(0x39A)));


extern volatile __bit C1POL __attribute__((address(0x384)));


extern volatile __bit C1SYNC __attribute__((address(0x380)));


extern volatile __bit C1TSEL0 __attribute__((address(0x1A60)));


extern volatile __bit C1TSEL1 __attribute__((address(0x1A61)));


extern volatile __bit C2EN __attribute__((address(0x3A7)));


extern volatile __bit C2HYS __attribute__((address(0x3A1)));


extern volatile __bit C2IE __attribute__((address(0x2562)));


extern volatile __bit C2IF __attribute__((address(0x25E2)));


extern volatile __bit C2INTN __attribute__((address(0x3A8)));


extern volatile __bit C2INTP __attribute__((address(0x3A9)));


extern volatile __bit C2IP __attribute__((address(0x1B82)));


extern volatile __bit C2NCH0 __attribute__((address(0x3B0)));


extern volatile __bit C2NCH1 __attribute__((address(0x3B1)));


extern volatile __bit C2NCH2 __attribute__((address(0x3B2)));


extern volatile __bit C2OUT __attribute__((address(0x3A6)));


extern volatile __bit C2PCH0 __attribute__((address(0x3B8)));


extern volatile __bit C2PCH1 __attribute__((address(0x3B9)));


extern volatile __bit C2PCH2 __attribute__((address(0x3BA)));


extern volatile __bit C2POL __attribute__((address(0x3A4)));


extern volatile __bit C2SYNC __attribute__((address(0x3A0)));


extern volatile __bit C2TSEL0 __attribute__((address(0x1A62)));


extern volatile __bit C2TSEL1 __attribute__((address(0x1A63)));


extern volatile __bit C3TSEL0 __attribute__((address(0x1A64)));


extern volatile __bit C3TSEL1 __attribute__((address(0x1A65)));


extern volatile __bit CALC0 __attribute__((address(0x1FB4)));


extern volatile __bit CALC1 __attribute__((address(0x1FB5)));


extern volatile __bit CALC2 __attribute__((address(0x1FB6)));


extern volatile __bit CANIE __attribute__((address(0x24F6)));


extern volatile __bit CANIF __attribute__((address(0x2576)));


extern volatile __bit CANIP __attribute__((address(0x1B16)));


extern volatile __bit CANMD __attribute__((address(0x317)));


extern volatile __bit CANRXIE __attribute__((address(0x2514)));


extern volatile __bit CANRXIF __attribute__((address(0x2594)));


extern volatile __bit CANRXIP __attribute__((address(0x1B34)));


extern volatile __bit CANRXPPS0 __attribute__((address(0x11E8)));


extern volatile __bit CANRXPPS1 __attribute__((address(0x11E9)));


extern volatile __bit CANRXPPS2 __attribute__((address(0x11EA)));


extern volatile __bit CANRXPPS3 __attribute__((address(0x11EB)));


extern volatile __bit CANRXPPS4 __attribute__((address(0x11EC)));


extern volatile __bit CANTXIE __attribute__((address(0x2515)));


extern volatile __bit CANTXIF __attribute__((address(0x2595)));


extern volatile __bit CANTXIP __attribute__((address(0x1B35)));


extern volatile __bit CCP1CTS0 __attribute__((address(0x1A18)));


extern volatile __bit CCP1CTS1 __attribute__((address(0x1A19)));


extern volatile __bit CCP1CTS2 __attribute__((address(0x1A1A)));


extern volatile __bit CCP1CTS3 __attribute__((address(0x1A1B)));


extern volatile __bit CCP1EN __attribute__((address(0x1A17)));


extern volatile __bit CCP1FMT __attribute__((address(0x1A14)));


extern volatile __bit CCP1IE __attribute__((address(0x250E)));


extern volatile __bit CCP1IF __attribute__((address(0x258E)));


extern volatile __bit CCP1IP __attribute__((address(0x1B2E)));


extern volatile __bit CCP1MD __attribute__((address(0x328)));


extern volatile __bit CCP1MODE0 __attribute__((address(0x1A10)));


extern volatile __bit CCP1MODE1 __attribute__((address(0x1A11)));


extern volatile __bit CCP1MODE2 __attribute__((address(0x1A12)));


extern volatile __bit CCP1MODE3 __attribute__((address(0x1A13)));


extern volatile __bit CCP1OUT __attribute__((address(0x1A15)));


extern volatile __bit CCP1PPS0 __attribute__((address(0x1278)));


extern volatile __bit CCP1PPS1 __attribute__((address(0x1279)));


extern volatile __bit CCP1PPS2 __attribute__((address(0x127A)));


extern volatile __bit CCP1PPS3 __attribute__((address(0x127B)));


extern volatile __bit CCP1PPS4 __attribute__((address(0x127C)));


extern volatile __bit CCP1PPS5 __attribute__((address(0x127D)));


extern volatile __bit CCP2CTS0 __attribute__((address(0x1A38)));


extern volatile __bit CCP2CTS1 __attribute__((address(0x1A39)));


extern volatile __bit CCP2CTS2 __attribute__((address(0x1A3A)));


extern volatile __bit CCP2CTS3 __attribute__((address(0x1A3B)));


extern volatile __bit CCP2EN __attribute__((address(0x1A37)));


extern volatile __bit CCP2FMT __attribute__((address(0x1A34)));


extern volatile __bit CCP2IE __attribute__((address(0x2536)));


extern volatile __bit CCP2IF __attribute__((address(0x25B6)));


extern volatile __bit CCP2IP __attribute__((address(0x1B56)));


extern volatile __bit CCP2MD __attribute__((address(0x329)));


extern volatile __bit CCP2MODE0 __attribute__((address(0x1A30)));


extern volatile __bit CCP2MODE1 __attribute__((address(0x1A31)));


extern volatile __bit CCP2MODE2 __attribute__((address(0x1A32)));


extern volatile __bit CCP2MODE3 __attribute__((address(0x1A33)));


extern volatile __bit CCP2OUT __attribute__((address(0x1A35)));


extern volatile __bit CCP2PPS0 __attribute__((address(0x1280)));


extern volatile __bit CCP2PPS1 __attribute__((address(0x1281)));


extern volatile __bit CCP2PPS2 __attribute__((address(0x1282)));


extern volatile __bit CCP2PPS3 __attribute__((address(0x1283)));


extern volatile __bit CCP2PPS4 __attribute__((address(0x1284)));


extern volatile __bit CCP2PPS5 __attribute__((address(0x1285)));


extern volatile __bit CCP3CTS0 __attribute__((address(0x1A58)));


extern volatile __bit CCP3CTS1 __attribute__((address(0x1A59)));


extern volatile __bit CCP3CTS2 __attribute__((address(0x1A5A)));


extern volatile __bit CCP3CTS3 __attribute__((address(0x1A5B)));


extern volatile __bit CCP3EN __attribute__((address(0x1A57)));


extern volatile __bit CCP3FMT __attribute__((address(0x1A54)));


extern volatile __bit CCP3IE __attribute__((address(0x2548)));


extern volatile __bit CCP3IF __attribute__((address(0x25C8)));


extern volatile __bit CCP3IP __attribute__((address(0x1B68)));


extern volatile __bit CCP3MD __attribute__((address(0x32A)));


extern volatile __bit CCP3MODE0 __attribute__((address(0x1A50)));


extern volatile __bit CCP3MODE1 __attribute__((address(0x1A51)));


extern volatile __bit CCP3MODE2 __attribute__((address(0x1A52)));


extern volatile __bit CCP3MODE3 __attribute__((address(0x1A53)));


extern volatile __bit CCP3OUT __attribute__((address(0x1A55)));


extern volatile __bit CCP3PPS0 __attribute__((address(0x1288)));


extern volatile __bit CCP3PPS1 __attribute__((address(0x1289)));


extern volatile __bit CCP3PPS2 __attribute__((address(0x128A)));


extern volatile __bit CCP3PPS3 __attribute__((address(0x128B)));


extern volatile __bit CCP3PPS4 __attribute__((address(0x128C)));


extern volatile __bit CDAFVR0 __attribute__((address(0x1EBA)));


extern volatile __bit CDAFVR1 __attribute__((address(0x1EBB)));


extern volatile __bit CDIV0 __attribute__((address(0x570)));


extern volatile __bit CDIV1 __attribute__((address(0x571)));


extern volatile __bit CDIV2 __attribute__((address(0x572)));


extern volatile __bit CDIV3 __attribute__((address(0x573)));


extern volatile __bit CERRIE __attribute__((address(0x8FD)));


extern volatile __bit CERRIF __attribute__((address(0x8ED)));


extern volatile __bit CH0 __attribute__((address(0x370)));


extern volatile __bit CH1 __attribute__((address(0x371)));


extern volatile __bit CH16AB __attribute__((address(0x1DD8)));


extern volatile __bit CH2 __attribute__((address(0x372)));


extern volatile __bit CH3 __attribute__((address(0x373)));


extern volatile __bit CH4 __attribute__((address(0x374)));


extern volatile __bit CHPOL __attribute__((address(0x35D)));


extern volatile __bit CHSYNC __attribute__((address(0x35C)));


extern volatile __bit CKPS3 __attribute__((address(0x18DB)));


extern volatile __bit CL0 __attribute__((address(0x368)));


extern volatile __bit CL1 __attribute__((address(0x369)));


extern volatile __bit CL2 __attribute__((address(0x36A)));


extern volatile __bit CL3 __attribute__((address(0x36B)));


extern volatile __bit CL4 __attribute__((address(0x36C)));


extern volatile __bit CLC1IE __attribute__((address(0x24F5)));


extern volatile __bit CLC1IF __attribute__((address(0x2575)));


extern volatile __bit CLC1IP __attribute__((address(0x1B15)));


extern volatile __bit CLC1MD __attribute__((address(0x338)));


extern volatile __bit CLC1OUT __attribute__((address(0x6A0)));


extern volatile __bit CLC2IE __attribute__((address(0x2521)));


extern volatile __bit CLC2IF __attribute__((address(0x25A1)));


extern volatile __bit CLC2IP __attribute__((address(0x1B41)));


extern volatile __bit CLC2MD __attribute__((address(0x339)));


extern volatile __bit CLC2OUT __attribute__((address(0x6A1)));


extern volatile __bit CLC3IE __attribute__((address(0x252D)));


extern volatile __bit CLC3IF __attribute__((address(0x25AD)));


extern volatile __bit CLC3IP __attribute__((address(0x1B4D)));


extern volatile __bit CLC3MD __attribute__((address(0x33A)));


extern volatile __bit CLC3OUT __attribute__((address(0x6A2)));


extern volatile __bit CLC4IE __attribute__((address(0x253D)));


extern volatile __bit CLC4IF __attribute__((address(0x25BD)));


extern volatile __bit CLC4IP __attribute__((address(0x1B5D)));


extern volatile __bit CLC4MD __attribute__((address(0x33B)));


extern volatile __bit CLC4OUT __attribute__((address(0x6A3)));


extern volatile __bit CLC5IE __attribute__((address(0x2541)));


extern volatile __bit CLC5IF __attribute__((address(0x25C1)));


extern volatile __bit CLC5IP __attribute__((address(0x1B61)));


extern volatile __bit CLC5MD __attribute__((address(0x33C)));


extern volatile __bit CLC5OUT __attribute__((address(0x6A4)));


extern volatile __bit CLC6IE __attribute__((address(0x2549)));


extern volatile __bit CLC6IF __attribute__((address(0x25C9)));


extern volatile __bit CLC6IP __attribute__((address(0x1B69)));


extern volatile __bit CLC6MD __attribute__((address(0x33D)));


extern volatile __bit CLC6OUT __attribute__((address(0x6A5)));


extern volatile __bit CLC7IE __attribute__((address(0x2561)));


extern volatile __bit CLC7IF __attribute__((address(0x25E1)));


extern volatile __bit CLC7IP __attribute__((address(0x1B81)));


extern volatile __bit CLC7MD __attribute__((address(0x33E)));


extern volatile __bit CLC7OUT __attribute__((address(0x6A6)));


extern volatile __bit CLC8IE __attribute__((address(0x2569)));


extern volatile __bit CLC8IF __attribute__((address(0x25E9)));


extern volatile __bit CLC8IP __attribute__((address(0x1B89)));


extern volatile __bit CLC8MD __attribute__((address(0x33F)));


extern volatile __bit CLC8OUT __attribute__((address(0x6A7)));


extern volatile __bit CLCIN0PPS0 __attribute__((address(0x1308)));


extern volatile __bit CLCIN0PPS1 __attribute__((address(0x1309)));


extern volatile __bit CLCIN0PPS2 __attribute__((address(0x130A)));


extern volatile __bit CLCIN0PPS3 __attribute__((address(0x130B)));


extern volatile __bit CLCIN0PPS4 __attribute__((address(0x130C)));


extern volatile __bit CLCIN1PPS0 __attribute__((address(0x1310)));


extern volatile __bit CLCIN1PPS1 __attribute__((address(0x1311)));


extern volatile __bit CLCIN1PPS2 __attribute__((address(0x1312)));


extern volatile __bit CLCIN1PPS3 __attribute__((address(0x1313)));


extern volatile __bit CLCIN1PPS4 __attribute__((address(0x1314)));


extern volatile __bit CLCIN2PPS0 __attribute__((address(0x1318)));


extern volatile __bit CLCIN2PPS1 __attribute__((address(0x1319)));


extern volatile __bit CLCIN2PPS2 __attribute__((address(0x131A)));


extern volatile __bit CLCIN2PPS3 __attribute__((address(0x131B)));


extern volatile __bit CLCIN2PPS4 __attribute__((address(0x131C)));


extern volatile __bit CLCIN3PPS0 __attribute__((address(0x1320)));


extern volatile __bit CLCIN3PPS1 __attribute__((address(0x1321)));


extern volatile __bit CLCIN3PPS2 __attribute__((address(0x1322)));


extern volatile __bit CLCIN3PPS3 __attribute__((address(0x1323)));


extern volatile __bit CLCIN3PPS4 __attribute__((address(0x1324)));


extern volatile __bit CLCIN4PPS0 __attribute__((address(0x1328)));


extern volatile __bit CLCIN4PPS1 __attribute__((address(0x1329)));


extern volatile __bit CLCIN4PPS2 __attribute__((address(0x132A)));


extern volatile __bit CLCIN4PPS3 __attribute__((address(0x132B)));


extern volatile __bit CLCIN4PPS4 __attribute__((address(0x132C)));


extern volatile __bit CLCIN5PPS0 __attribute__((address(0x1330)));


extern volatile __bit CLCIN5PPS1 __attribute__((address(0x1331)));


extern volatile __bit CLCIN5PPS2 __attribute__((address(0x1332)));


extern volatile __bit CLCIN5PPS3 __attribute__((address(0x1333)));


extern volatile __bit CLCIN5PPS4 __attribute__((address(0x1334)));


extern volatile __bit CLCIN6PPS0 __attribute__((address(0x1338)));


extern volatile __bit CLCIN6PPS1 __attribute__((address(0x1339)));


extern volatile __bit CLCIN6PPS2 __attribute__((address(0x133A)));


extern volatile __bit CLCIN6PPS3 __attribute__((address(0x133B)));


extern volatile __bit CLCIN6PPS4 __attribute__((address(0x133C)));


extern volatile __bit CLCIN7PPS0 __attribute__((address(0x1340)));


extern volatile __bit CLCIN7PPS1 __attribute__((address(0x1341)));


extern volatile __bit CLCIN7PPS2 __attribute__((address(0x1342)));


extern volatile __bit CLCIN7PPS3 __attribute__((address(0x1343)));


extern volatile __bit CLCIN7PPS4 __attribute__((address(0x1344)));


extern volatile __bit CLKRCLK0 __attribute__((address(0x1D0)));


extern volatile __bit CLKRCLK1 __attribute__((address(0x1D1)));


extern volatile __bit CLKRCLK2 __attribute__((address(0x1D2)));


extern volatile __bit CLKRCLK3 __attribute__((address(0x1D3)));


extern volatile __bit CLKRCLK4 __attribute__((address(0x1D4)));


extern volatile __bit CLKRDC0 __attribute__((address(0x1CB)));


extern volatile __bit CLKRDC1 __attribute__((address(0x1CC)));


extern volatile __bit CLKRDIV0 __attribute__((address(0x1C8)));


extern volatile __bit CLKRDIV1 __attribute__((address(0x1C9)));


extern volatile __bit CLKRDIV2 __attribute__((address(0x1CA)));


extern volatile __bit CLKREN __attribute__((address(0x1CF)));


extern volatile __bit CLKRMD __attribute__((address(0x301)));


extern volatile __bit CLPOL __attribute__((address(0x359)));


extern volatile __bit CLSYNC __attribute__((address(0x358)));


extern volatile __bit CM1MD __attribute__((address(0x319)));


extern volatile __bit CM2MD __attribute__((address(0x31A)));


extern volatile __bit CNT10 __attribute__((address(0x146A)));


extern volatile __bit CNT11 __attribute__((address(0x146B)));


extern volatile __bit CNT12 __attribute__((address(0x146C)));


extern volatile __bit CNT13 __attribute__((address(0x146D)));


extern volatile __bit CNT14 __attribute__((address(0x146E)));


extern volatile __bit CNT15 __attribute__((address(0x146F)));


extern volatile __bit CNT1IE __attribute__((address(0x14DF)));


extern volatile __bit CNT1IF __attribute__((address(0x14D7)));


extern volatile __bit CNT8 __attribute__((address(0x1468)));


extern volatile __bit CNT9 __attribute__((address(0x1469)));


extern volatile __bit CNTIE __attribute__((address(0x14DF)));


extern volatile __bit CNTIF __attribute__((address(0x14D7)));


extern volatile __bit CONT __attribute__((address(0x1F9E)));


extern volatile __bit COSC0 __attribute__((address(0x574)));


extern volatile __bit COSC1 __attribute__((address(0x575)));


extern volatile __bit COSC2 __attribute__((address(0x576)));


extern volatile __bit CPON __attribute__((address(0x1EC7)));


extern volatile __bit CPR0 __attribute__((address(0x1818)));


extern volatile __bit CPR1 __attribute__((address(0x1819)));


extern volatile __bit CPR10 __attribute__((address(0x1822)));


extern volatile __bit CPR11 __attribute__((address(0x1823)));


extern volatile __bit CPR12 __attribute__((address(0x1824)));


extern volatile __bit CPR13 __attribute__((address(0x1825)));


extern volatile __bit CPR14 __attribute__((address(0x1826)));


extern volatile __bit CPR15 __attribute__((address(0x1827)));


extern volatile __bit CPR16 __attribute__((address(0x1828)));


extern volatile __bit CPR17 __attribute__((address(0x1829)));


extern volatile __bit CPR18 __attribute__((address(0x182A)));


extern volatile __bit CPR19 __attribute__((address(0x182B)));


extern volatile __bit CPR2 __attribute__((address(0x181A)));


extern volatile __bit CPR20 __attribute__((address(0x182C)));


extern volatile __bit CPR21 __attribute__((address(0x182D)));


extern volatile __bit CPR22 __attribute__((address(0x182E)));


extern volatile __bit CPR23 __attribute__((address(0x182F)));


extern volatile __bit CPR3 __attribute__((address(0x181B)));


extern volatile __bit CPR4 __attribute__((address(0x181C)));


extern volatile __bit CPR5 __attribute__((address(0x181D)));


extern volatile __bit CPR6 __attribute__((address(0x181E)));


extern volatile __bit CPR7 __attribute__((address(0x181F)));


extern volatile __bit CPR8 __attribute__((address(0x1820)));


extern volatile __bit CPR9 __attribute__((address(0x1821)));


extern volatile __bit CPRDY __attribute__((address(0x1EC0)));


extern volatile __bit CPRUP __attribute__((address(0x1877)));


extern volatile __bit CPW0 __attribute__((address(0x1830)));


extern volatile __bit CPW1 __attribute__((address(0x1831)));


extern volatile __bit CPW10 __attribute__((address(0x183A)));


extern volatile __bit CPW11 __attribute__((address(0x183B)));


extern volatile __bit CPW12 __attribute__((address(0x183C)));


extern volatile __bit CPW13 __attribute__((address(0x183D)));


extern volatile __bit CPW14 __attribute__((address(0x183E)));


extern volatile __bit CPW15 __attribute__((address(0x183F)));


extern volatile __bit CPW16 __attribute__((address(0x1840)));


extern volatile __bit CPW17 __attribute__((address(0x1841)));


extern volatile __bit CPW18 __attribute__((address(0x1842)));


extern volatile __bit CPW19 __attribute__((address(0x1843)));


extern volatile __bit CPW2 __attribute__((address(0x1832)));


extern volatile __bit CPW20 __attribute__((address(0x1844)));


extern volatile __bit CPW21 __attribute__((address(0x1845)));


extern volatile __bit CPW22 __attribute__((address(0x1846)));


extern volatile __bit CPW23 __attribute__((address(0x1847)));


extern volatile __bit CPW3 __attribute__((address(0x1833)));


extern volatile __bit CPW4 __attribute__((address(0x1834)));


extern volatile __bit CPW5 __attribute__((address(0x1835)));


extern volatile __bit CPW6 __attribute__((address(0x1836)));


extern volatile __bit CPW7 __attribute__((address(0x1837)));


extern volatile __bit CPW8 __attribute__((address(0x1838)));


extern volatile __bit CPW9 __attribute__((address(0x1839)));


extern volatile __bit CPWUP __attribute__((address(0x1876)));


extern volatile __bit CRCBUSY __attribute__((address(0x1ABD)));


extern volatile __bit CRCEN __attribute__((address(0x1ABF)));


extern volatile __bit CRCGO __attribute__((address(0x1ABE)));


extern volatile __bit CRCIE __attribute__((address(0x256A)));


extern volatile __bit CRCIF __attribute__((address(0x25EA)));


extern volatile __bit CRCIP __attribute__((address(0x1B8A)));


extern volatile __bit CRCMD __attribute__((address(0x304)));


extern volatile __bit CRS0 __attribute__((address(0x1FAC)));


extern volatile __bit CRS1 __attribute__((address(0x1FAD)));


extern volatile __bit CRS2 __attribute__((address(0x1FAE)));


extern volatile __bit CS5 __attribute__((address(0x1FD5)));


extern volatile __bit CSD __attribute__((address(0x14A8)));


extern volatile __bit CSEL0 __attribute__((address(0x1878)));


extern volatile __bit CSEL1 __attribute__((address(0x1879)));


extern volatile __bit CSEL2 __attribute__((address(0x187A)));


extern volatile __bit CSEN __attribute__((address(0x1F9D)));


extern volatile __bit CSTR __attribute__((address(0x14A4)));


extern volatile __bit CSWHOLD __attribute__((address(0x57F)));


extern volatile __bit CSWIE __attribute__((address(0x24F3)));


extern volatile __bit CSWIF __attribute__((address(0x2573)));


extern volatile __bit CSWIP __attribute__((address(0x1B13)));


extern volatile __bit CTX0 __attribute__((address(0x1FD8)));


extern volatile __bit CTX1 __attribute__((address(0x1FD9)));


extern volatile __bit CTXSW __attribute__((address(0x1FDF)));


extern volatile __bit CWG1CS __attribute__((address(0x1DE0)));


extern volatile __bit CWG1DBF0 __attribute__((address(0x1DF8)));


extern volatile __bit CWG1DBF1 __attribute__((address(0x1DF9)));


extern volatile __bit CWG1DBF2 __attribute__((address(0x1DFA)));


extern volatile __bit CWG1DBF3 __attribute__((address(0x1DFB)));


extern volatile __bit CWG1DBF4 __attribute__((address(0x1DFC)));


extern volatile __bit CWG1DBF5 __attribute__((address(0x1DFD)));


extern volatile __bit CWG1DBR0 __attribute__((address(0x1DF0)));


extern volatile __bit CWG1DBR1 __attribute__((address(0x1DF1)));


extern volatile __bit CWG1DBR2 __attribute__((address(0x1DF2)));


extern volatile __bit CWG1DBR3 __attribute__((address(0x1DF3)));


extern volatile __bit CWG1DBR4 __attribute__((address(0x1DF4)));


extern volatile __bit CWG1DBR5 __attribute__((address(0x1DF5)));


extern volatile __bit CWG1EN __attribute__((address(0x1E07)));


extern volatile __bit CWG1IE __attribute__((address(0x2522)));


extern volatile __bit CWG1IF __attribute__((address(0x25A2)));


extern volatile __bit CWG1IN __attribute__((address(0x1E0D)));


extern volatile __bit CWG1INPPS0 __attribute__((address(0x12D8)));


extern volatile __bit CWG1INPPS1 __attribute__((address(0x12D9)));


extern volatile __bit CWG1INPPS2 __attribute__((address(0x12DA)));


extern volatile __bit CWG1INPPS3 __attribute__((address(0x12DB)));


extern volatile __bit CWG1INPPS4 __attribute__((address(0x12DC)));


extern volatile __bit CWG1IP __attribute__((address(0x1B42)));


extern volatile __bit CWG1ISM0 __attribute__((address(0x1DE8)));


extern volatile __bit CWG1ISM1 __attribute__((address(0x1DE9)));


extern volatile __bit CWG1ISM2 __attribute__((address(0x1DEA)));


extern volatile __bit CWG1ISM3 __attribute__((address(0x1DEB)));


extern volatile __bit CWG1ISM4 __attribute__((address(0x1DEC)));


extern volatile __bit CWG1LD __attribute__((address(0x1E06)));


extern volatile __bit CWG1LSAC0 __attribute__((address(0x1E12)));


extern volatile __bit CWG1LSAC1 __attribute__((address(0x1E13)));


extern volatile __bit CWG1LSBD0 __attribute__((address(0x1E14)));


extern volatile __bit CWG1LSBD1 __attribute__((address(0x1E15)));


extern volatile __bit CWG1MD __attribute__((address(0x324)));


extern volatile __bit CWG1MODE0 __attribute__((address(0x1E00)));


extern volatile __bit CWG1MODE1 __attribute__((address(0x1E01)));


extern volatile __bit CWG1MODE2 __attribute__((address(0x1E02)));


extern volatile __bit CWG1OVRA __attribute__((address(0x1E24)));


extern volatile __bit CWG1OVRB __attribute__((address(0x1E25)));


extern volatile __bit CWG1OVRC __attribute__((address(0x1E26)));


extern volatile __bit CWG1OVRD __attribute__((address(0x1E27)));


extern volatile __bit CWG1POLA __attribute__((address(0x1E08)));


extern volatile __bit CWG1POLB __attribute__((address(0x1E09)));


extern volatile __bit CWG1POLC __attribute__((address(0x1E0A)));


extern volatile __bit CWG1POLD __attribute__((address(0x1E0B)));


extern volatile __bit CWG1REN __attribute__((address(0x1E16)));


extern volatile __bit CWG1SHUTDOWN __attribute__((address(0x1E17)));


extern volatile __bit CWG1STRA __attribute__((address(0x1E20)));


extern volatile __bit CWG1STRB __attribute__((address(0x1E21)));


extern volatile __bit CWG1STRC __attribute__((address(0x1E22)));


extern volatile __bit CWG1STRD __attribute__((address(0x1E23)));


extern volatile __bit CWG2CS __attribute__((address(0x1E28)));


extern volatile __bit CWG2DBF0 __attribute__((address(0x1E40)));


extern volatile __bit CWG2DBF1 __attribute__((address(0x1E41)));


extern volatile __bit CWG2DBF2 __attribute__((address(0x1E42)));


extern volatile __bit CWG2DBF3 __attribute__((address(0x1E43)));


extern volatile __bit CWG2DBF4 __attribute__((address(0x1E44)));


extern volatile __bit CWG2DBF5 __attribute__((address(0x1E45)));


extern volatile __bit CWG2DBR0 __attribute__((address(0x1E38)));


extern volatile __bit CWG2DBR1 __attribute__((address(0x1E39)));


extern volatile __bit CWG2DBR2 __attribute__((address(0x1E3A)));


extern volatile __bit CWG2DBR3 __attribute__((address(0x1E3B)));


extern volatile __bit CWG2DBR4 __attribute__((address(0x1E3C)));


extern volatile __bit CWG2DBR5 __attribute__((address(0x1E3D)));


extern volatile __bit CWG2EN __attribute__((address(0x1E4F)));


extern volatile __bit CWG2IE __attribute__((address(0x2542)));


extern volatile __bit CWG2IF __attribute__((address(0x25C2)));


extern volatile __bit CWG2IN __attribute__((address(0x1E55)));


extern volatile __bit CWG2INPPS0 __attribute__((address(0x12E0)));


extern volatile __bit CWG2INPPS1 __attribute__((address(0x12E1)));


extern volatile __bit CWG2INPPS2 __attribute__((address(0x12E2)));


extern volatile __bit CWG2INPPS3 __attribute__((address(0x12E3)));


extern volatile __bit CWG2INPPS4 __attribute__((address(0x12E4)));


extern volatile __bit CWG2IP __attribute__((address(0x1B62)));


extern volatile __bit CWG2ISM0 __attribute__((address(0x1E30)));


extern volatile __bit CWG2ISM1 __attribute__((address(0x1E31)));


extern volatile __bit CWG2ISM2 __attribute__((address(0x1E32)));


extern volatile __bit CWG2ISM3 __attribute__((address(0x1E33)));


extern volatile __bit CWG2ISM4 __attribute__((address(0x1E34)));


extern volatile __bit CWG2LD __attribute__((address(0x1E4E)));


extern volatile __bit CWG2LSAC0 __attribute__((address(0x1E5A)));


extern volatile __bit CWG2LSAC1 __attribute__((address(0x1E5B)));


extern volatile __bit CWG2LSBD0 __attribute__((address(0x1E5C)));


extern volatile __bit CWG2LSBD1 __attribute__((address(0x1E5D)));


extern volatile __bit CWG2MD __attribute__((address(0x325)));


extern volatile __bit CWG2MODE0 __attribute__((address(0x1E48)));


extern volatile __bit CWG2MODE1 __attribute__((address(0x1E49)));


extern volatile __bit CWG2MODE2 __attribute__((address(0x1E4A)));


extern volatile __bit CWG2OVRA __attribute__((address(0x1E6C)));


extern volatile __bit CWG2OVRB __attribute__((address(0x1E6D)));


extern volatile __bit CWG2OVRC __attribute__((address(0x1E6E)));


extern volatile __bit CWG2OVRD __attribute__((address(0x1E6F)));


extern volatile __bit CWG2POLA __attribute__((address(0x1E50)));


extern volatile __bit CWG2POLB __attribute__((address(0x1E51)));


extern volatile __bit CWG2POLC __attribute__((address(0x1E52)));


extern volatile __bit CWG2POLD __attribute__((address(0x1E53)));


extern volatile __bit CWG2REN __attribute__((address(0x1E5E)));


extern volatile __bit CWG2SHUTDOWN __attribute__((address(0x1E5F)));


extern volatile __bit CWG2STRA __attribute__((address(0x1E68)));


extern volatile __bit CWG2STRB __attribute__((address(0x1E69)));


extern volatile __bit CWG2STRC __attribute__((address(0x1E6A)));


extern volatile __bit CWG2STRD __attribute__((address(0x1E6B)));


extern volatile __bit CWG3CS __attribute__((address(0x1E70)));


extern volatile __bit CWG3DBF0 __attribute__((address(0x1E88)));


extern volatile __bit CWG3DBF1 __attribute__((address(0x1E89)));


extern volatile __bit CWG3DBF2 __attribute__((address(0x1E8A)));


extern volatile __bit CWG3DBF3 __attribute__((address(0x1E8B)));


extern volatile __bit CWG3DBF4 __attribute__((address(0x1E8C)));


extern volatile __bit CWG3DBF5 __attribute__((address(0x1E8D)));


extern volatile __bit CWG3DBR0 __attribute__((address(0x1E80)));


extern volatile __bit CWG3DBR1 __attribute__((address(0x1E81)));


extern volatile __bit CWG3DBR2 __attribute__((address(0x1E82)));


extern volatile __bit CWG3DBR3 __attribute__((address(0x1E83)));


extern volatile __bit CWG3DBR4 __attribute__((address(0x1E84)));


extern volatile __bit CWG3DBR5 __attribute__((address(0x1E85)));


extern volatile __bit CWG3EN __attribute__((address(0x1E97)));


extern volatile __bit CWG3IE __attribute__((address(0x254A)));


extern volatile __bit CWG3IF __attribute__((address(0x25CA)));


extern volatile __bit CWG3IN __attribute__((address(0x1E9D)));


extern volatile __bit CWG3INPPS0 __attribute__((address(0x12E8)));


extern volatile __bit CWG3INPPS1 __attribute__((address(0x12E9)));


extern volatile __bit CWG3INPPS2 __attribute__((address(0x12EA)));


extern volatile __bit CWG3INPPS3 __attribute__((address(0x12EB)));


extern volatile __bit CWG3INPPS4 __attribute__((address(0x12EC)));


extern volatile __bit CWG3IP __attribute__((address(0x1B6A)));


extern volatile __bit CWG3ISM0 __attribute__((address(0x1E78)));


extern volatile __bit CWG3ISM1 __attribute__((address(0x1E79)));


extern volatile __bit CWG3ISM2 __attribute__((address(0x1E7A)));


extern volatile __bit CWG3ISM3 __attribute__((address(0x1E7B)));


extern volatile __bit CWG3ISM4 __attribute__((address(0x1E7C)));


extern volatile __bit CWG3LD __attribute__((address(0x1E96)));


extern volatile __bit CWG3LSAC0 __attribute__((address(0x1EA2)));


extern volatile __bit CWG3LSAC1 __attribute__((address(0x1EA3)));


extern volatile __bit CWG3LSBD0 __attribute__((address(0x1EA4)));


extern volatile __bit CWG3LSBD1 __attribute__((address(0x1EA5)));


extern volatile __bit CWG3MD __attribute__((address(0x326)));


extern volatile __bit CWG3MODE0 __attribute__((address(0x1E90)));


extern volatile __bit CWG3MODE1 __attribute__((address(0x1E91)));


extern volatile __bit CWG3MODE2 __attribute__((address(0x1E92)));


extern volatile __bit CWG3OVRA __attribute__((address(0x1EB4)));


extern volatile __bit CWG3OVRB __attribute__((address(0x1EB5)));


extern volatile __bit CWG3OVRC __attribute__((address(0x1EB6)));


extern volatile __bit CWG3OVRD __attribute__((address(0x1EB7)));


extern volatile __bit CWG3POLA __attribute__((address(0x1E98)));


extern volatile __bit CWG3POLB __attribute__((address(0x1E99)));


extern volatile __bit CWG3POLC __attribute__((address(0x1E9A)));


extern volatile __bit CWG3POLD __attribute__((address(0x1E9B)));


extern volatile __bit CWG3REN __attribute__((address(0x1EA6)));


extern volatile __bit CWG3SHUTDOWN __attribute__((address(0x1EA7)));


extern volatile __bit CWG3STRA __attribute__((address(0x1EB0)));


extern volatile __bit CWG3STRB __attribute__((address(0x1EB1)));


extern volatile __bit CWG3STRC __attribute__((address(0x1EB2)));


extern volatile __bit CWG3STRD __attribute__((address(0x1EB3)));


extern volatile __bit D1S0 __attribute__((address(0x6C0)));


extern volatile __bit D1S1 __attribute__((address(0x6C1)));


extern volatile __bit D1S2 __attribute__((address(0x6C2)));


extern volatile __bit D1S3 __attribute__((address(0x6C3)));


extern volatile __bit D1S4 __attribute__((address(0x6C4)));


extern volatile __bit D1S5 __attribute__((address(0x6C5)));


extern volatile __bit D1S6 __attribute__((address(0x6C6)));


extern volatile __bit D1S7 __attribute__((address(0x6C7)));


extern volatile __bit D2S0 __attribute__((address(0x6C8)));


extern volatile __bit D2S1 __attribute__((address(0x6C9)));


extern volatile __bit D2S2 __attribute__((address(0x6CA)));


extern volatile __bit D2S3 __attribute__((address(0x6CB)));


extern volatile __bit D2S4 __attribute__((address(0x6CC)));


extern volatile __bit D2S5 __attribute__((address(0x6CD)));


extern volatile __bit D2S6 __attribute__((address(0x6CE)));


extern volatile __bit D2S7 __attribute__((address(0x6CF)));


extern volatile __bit D3S0 __attribute__((address(0x6D0)));


extern volatile __bit D3S1 __attribute__((address(0x6D1)));


extern volatile __bit D3S2 __attribute__((address(0x6D2)));


extern volatile __bit D3S3 __attribute__((address(0x6D3)));


extern volatile __bit D3S4 __attribute__((address(0x6D4)));


extern volatile __bit D3S5 __attribute__((address(0x6D5)));


extern volatile __bit D3S6 __attribute__((address(0x6D6)));


extern volatile __bit D3S7 __attribute__((address(0x6D7)));


extern volatile __bit D4S0 __attribute__((address(0x6D8)));


extern volatile __bit D4S1 __attribute__((address(0x6D9)));


extern volatile __bit D4S2 __attribute__((address(0x6DA)));


extern volatile __bit D4S3 __attribute__((address(0x6DB)));


extern volatile __bit D4S4 __attribute__((address(0x6DC)));


extern volatile __bit D4S5 __attribute__((address(0x6DD)));


extern volatile __bit D4S6 __attribute__((address(0x6DE)));


extern volatile __bit D4S7 __attribute__((address(0x6DF)));


extern volatile __bit DAC1EN __attribute__((address(0x3FF)));


extern volatile __bit DAC1PSS0 __attribute__((address(0x3FA)));


extern volatile __bit DAC1PSS1 __attribute__((address(0x3FB)));


extern volatile __bit DAC1R0 __attribute__((address(0x3E8)));


extern volatile __bit DAC1R1 __attribute__((address(0x3E9)));


extern volatile __bit DAC1R2 __attribute__((address(0x3EA)));


extern volatile __bit DAC1R3 __attribute__((address(0x3EB)));


extern volatile __bit DAC1R4 __attribute__((address(0x3EC)));


extern volatile __bit DAC1R5 __attribute__((address(0x3ED)));


extern volatile __bit DAC1R6 __attribute__((address(0x3EE)));


extern volatile __bit DAC1R7 __attribute__((address(0x3EF)));


extern volatile __bit DACMD __attribute__((address(0x31E)));


extern volatile __bit DATA __attribute__((address(0x14C3)));


extern volatile __bit DATA0 __attribute__((address(0x1A78)));


extern volatile __bit DATA1 __attribute__((address(0x1A79)));


extern volatile __bit DATA10 __attribute__((address(0x1A82)));


extern volatile __bit DATA11 __attribute__((address(0x1A83)));


extern volatile __bit DATA12 __attribute__((address(0x1A84)));


extern volatile __bit DATA13 __attribute__((address(0x1A85)));


extern volatile __bit DATA14 __attribute__((address(0x1A86)));


extern volatile __bit DATA15 __attribute__((address(0x1A87)));


extern volatile __bit DATA16 __attribute__((address(0x1A88)));


extern volatile __bit DATA17 __attribute__((address(0x1A89)));


extern volatile __bit DATA18 __attribute__((address(0x1A8A)));


extern volatile __bit DATA19 __attribute__((address(0x1A8B)));


extern volatile __bit DATA2 __attribute__((address(0x1A7A)));


extern volatile __bit DATA20 __attribute__((address(0x1A8C)));


extern volatile __bit DATA21 __attribute__((address(0x1A8D)));


extern volatile __bit DATA22 __attribute__((address(0x1A8E)));


extern volatile __bit DATA23 __attribute__((address(0x1A8F)));


extern volatile __bit DATA24 __attribute__((address(0x1A90)));


extern volatile __bit DATA25 __attribute__((address(0x1A91)));


extern volatile __bit DATA26 __attribute__((address(0x1A92)));


extern volatile __bit DATA27 __attribute__((address(0x1A93)));


extern volatile __bit DATA28 __attribute__((address(0x1A94)));


extern volatile __bit DATA29 __attribute__((address(0x1A95)));


extern volatile __bit DATA3 __attribute__((address(0x1A7B)));


extern volatile __bit DATA30 __attribute__((address(0x1A96)));


extern volatile __bit DATA31 __attribute__((address(0x1A97)));


extern volatile __bit DATA4 __attribute__((address(0x1A7C)));


extern volatile __bit DATA5 __attribute__((address(0x1A7D)));


extern volatile __bit DATA6 __attribute__((address(0x1A7E)));


extern volatile __bit DATA7 __attribute__((address(0x1A7F)));


extern volatile __bit DATA8 __attribute__((address(0x1A80)));


extern volatile __bit DATA9 __attribute__((address(0x1A81)));


extern volatile __bit DBIT0ERR __attribute__((address(0x9F8)));


extern volatile __bit DBIT1ERR __attribute__((address(0x9F9)));


extern volatile __bit DC0 __attribute__((address(0x1CB)));


extern volatile __bit DC1 __attribute__((address(0x1CC)));


extern volatile __bit DCNT0 __attribute__((address(0x750)));


extern volatile __bit DCNT1 __attribute__((address(0x751)));


extern volatile __bit DCNT10 __attribute__((address(0x75A)));


extern volatile __bit DCNT11 __attribute__((address(0x75B)));


extern volatile __bit DCNT2 __attribute__((address(0x752)));


extern volatile __bit DCNT3 __attribute__((address(0x753)));


extern volatile __bit DCNT4 __attribute__((address(0x754)));


extern volatile __bit DCNT5 __attribute__((address(0x755)));


extern volatile __bit DCNT6 __attribute__((address(0x756)));


extern volatile __bit DCNT7 __attribute__((address(0x757)));


extern volatile __bit DCNT8 __attribute__((address(0x758)));


extern volatile __bit DCNT9 __attribute__((address(0x759)));


extern volatile __bit DCRCERR __attribute__((address(0x9FD)));


extern volatile __bit DFORMERR __attribute__((address(0x9FB)));


extern volatile __bit DGO __attribute__((address(0x7E5)));


extern volatile __bit DIV0 __attribute__((address(0x1C8)));


extern volatile __bit DIV1 __attribute__((address(0x1C9)));


extern volatile __bit DIV2 __attribute__((address(0x1CA)));


extern volatile __bit DLCMM __attribute__((address(0x9FF)));


extern volatile __bit DLEN0 __attribute__((address(0x1AC8)));


extern volatile __bit DLEN1 __attribute__((address(0x1AC9)));


extern volatile __bit DLEN2 __attribute__((address(0x1ACA)));


extern volatile __bit DLEN3 __attribute__((address(0x1ACB)));


extern volatile __bit DLEN4 __attribute__((address(0x1ACC)));


extern volatile __bit DMA1AIE __attribute__((address(0x2507)));


extern volatile __bit DMA1AIF __attribute__((address(0x2587)));


extern volatile __bit DMA1AIP __attribute__((address(0x1B27)));


extern volatile __bit DMA1DCNTIE __attribute__((address(0x2505)));


extern volatile __bit DMA1DCNTIF __attribute__((address(0x2585)));


extern volatile __bit DMA1DCNTIP __attribute__((address(0x1B25)));


extern volatile __bit DMA1MD __attribute__((address(0x340)));


extern volatile __bit DMA1ORIE __attribute__((address(0x2506)));


extern volatile __bit DMA1ORIF __attribute__((address(0x2586)));


extern volatile __bit DMA1ORIP __attribute__((address(0x1B26)));


extern volatile __bit DMA1PR0 __attribute__((address(0x5B0)));


extern volatile __bit DMA1PR1 __attribute__((address(0x5B1)));


extern volatile __bit DMA1PR2 __attribute__((address(0x5B2)));


extern volatile __bit DMA1SCNTIE __attribute__((address(0x2504)));


extern volatile __bit DMA1SCNTIF __attribute__((address(0x2584)));


extern volatile __bit DMA1SCNTIP __attribute__((address(0x1B24)));


extern volatile __bit DMA2AIE __attribute__((address(0x2527)));


extern volatile __bit DMA2AIF __attribute__((address(0x25A7)));


extern volatile __bit DMA2AIP __attribute__((address(0x1B47)));


extern volatile __bit DMA2DCNTIE __attribute__((address(0x2525)));


extern volatile __bit DMA2DCNTIF __attribute__((address(0x25A5)));


extern volatile __bit DMA2DCNTIP __attribute__((address(0x1B45)));


extern volatile __bit DMA2MD __attribute__((address(0x341)));


extern volatile __bit DMA2ORIE __attribute__((address(0x2526)));


extern volatile __bit DMA2ORIF __attribute__((address(0x25A6)));


extern volatile __bit DMA2ORIP __attribute__((address(0x1B46)));


extern volatile __bit DMA2PR0 __attribute__((address(0x5B8)));


extern volatile __bit DMA2PR1 __attribute__((address(0x5B9)));


extern volatile __bit DMA2PR2 __attribute__((address(0x5BA)));


extern volatile __bit DMA2SCNTIE __attribute__((address(0x2524)));


extern volatile __bit DMA2SCNTIF __attribute__((address(0x25A4)));


extern volatile __bit DMA2SCNTIP __attribute__((address(0x1B44)));


extern volatile __bit DMA3AIE __attribute__((address(0x2547)));


extern volatile __bit DMA3AIF __attribute__((address(0x25C7)));


extern volatile __bit DMA3AIP __attribute__((address(0x1B67)));


extern volatile __bit DMA3DCNTIE __attribute__((address(0x2545)));


extern volatile __bit DMA3DCNTIF __attribute__((address(0x25C5)));


extern volatile __bit DMA3DCNTIP __attribute__((address(0x1B65)));


extern volatile __bit DMA3MD __attribute__((address(0x342)));


extern volatile __bit DMA3ORIE __attribute__((address(0x2546)));


extern volatile __bit DMA3ORIF __attribute__((address(0x25C6)));


extern volatile __bit DMA3ORIP __attribute__((address(0x1B66)));


extern volatile __bit DMA3PR0 __attribute__((address(0x5C0)));


extern volatile __bit DMA3PR1 __attribute__((address(0x5C1)));


extern volatile __bit DMA3PR2 __attribute__((address(0x5C2)));


extern volatile __bit DMA3SCNTIE __attribute__((address(0x2544)));


extern volatile __bit DMA3SCNTIF __attribute__((address(0x25C4)));


extern volatile __bit DMA3SCNTIP __attribute__((address(0x1B64)));


extern volatile __bit DMA4AIE __attribute__((address(0x254F)));


extern volatile __bit DMA4AIF __attribute__((address(0x25CF)));


extern volatile __bit DMA4AIP __attribute__((address(0x1B6F)));


extern volatile __bit DMA4DCNTIE __attribute__((address(0x254D)));


extern volatile __bit DMA4DCNTIF __attribute__((address(0x25CD)));


extern volatile __bit DMA4DCNTIP __attribute__((address(0x1B6D)));


extern volatile __bit DMA4MD __attribute__((address(0x343)));


extern volatile __bit DMA4ORIE __attribute__((address(0x254E)));


extern volatile __bit DMA4ORIF __attribute__((address(0x25CE)));


extern volatile __bit DMA4ORIP __attribute__((address(0x1B6E)));


extern volatile __bit DMA4PR0 __attribute__((address(0x5C8)));


extern volatile __bit DMA4PR1 __attribute__((address(0x5C9)));


extern volatile __bit DMA4PR2 __attribute__((address(0x5CA)));


extern volatile __bit DMA4SCNTIE __attribute__((address(0x254C)));


extern volatile __bit DMA4SCNTIF __attribute__((address(0x25CC)));


extern volatile __bit DMA4SCNTIP __attribute__((address(0x1B6C)));


extern volatile __bit DMA5AIE __attribute__((address(0x2557)));


extern volatile __bit DMA5AIF __attribute__((address(0x25D7)));


extern volatile __bit DMA5AIP __attribute__((address(0x1B77)));


extern volatile __bit DMA5DCNTIE __attribute__((address(0x2555)));


extern volatile __bit DMA5DCNTIF __attribute__((address(0x25D5)));


extern volatile __bit DMA5DCNTIP __attribute__((address(0x1B75)));


extern volatile __bit DMA5MD __attribute__((address(0x344)));


extern volatile __bit DMA5ORIE __attribute__((address(0x2556)));


extern volatile __bit DMA5ORIF __attribute__((address(0x25D6)));


extern volatile __bit DMA5ORIP __attribute__((address(0x1B76)));


extern volatile __bit DMA5PR0 __attribute__((address(0x5D0)));


extern volatile __bit DMA5PR1 __attribute__((address(0x5D1)));


extern volatile __bit DMA5PR2 __attribute__((address(0x5D2)));


extern volatile __bit DMA5SCNTIE __attribute__((address(0x2554)));


extern volatile __bit DMA5SCNTIF __attribute__((address(0x25D4)));


extern volatile __bit DMA5SCNTIP __attribute__((address(0x1B74)));


extern volatile __bit DMA6AIE __attribute__((address(0x255F)));


extern volatile __bit DMA6AIF __attribute__((address(0x25DF)));


extern volatile __bit DMA6AIP __attribute__((address(0x1B7F)));


extern volatile __bit DMA6DCNTIE __attribute__((address(0x255D)));


extern volatile __bit DMA6DCNTIF __attribute__((address(0x25DD)));


extern volatile __bit DMA6DCNTIP __attribute__((address(0x1B7D)));


extern volatile __bit DMA6MD __attribute__((address(0x345)));


extern volatile __bit DMA6ORIE __attribute__((address(0x255E)));


extern volatile __bit DMA6ORIF __attribute__((address(0x25DE)));


extern volatile __bit DMA6ORIP __attribute__((address(0x1B7E)));


extern volatile __bit DMA6PR0 __attribute__((address(0x5D8)));


extern volatile __bit DMA6PR1 __attribute__((address(0x5D9)));


extern volatile __bit DMA6PR2 __attribute__((address(0x5DA)));


extern volatile __bit DMA6SCNTIE __attribute__((address(0x255C)));


extern volatile __bit DMA6SCNTIF __attribute__((address(0x25DC)));


extern volatile __bit DMA6SCNTIP __attribute__((address(0x1B7C)));


extern volatile __bit DMA7AIE __attribute__((address(0x2567)));


extern volatile __bit DMA7AIF __attribute__((address(0x25E7)));


extern volatile __bit DMA7AIP __attribute__((address(0x1B87)));


extern volatile __bit DMA7DCNTIE __attribute__((address(0x2565)));


extern volatile __bit DMA7DCNTIF __attribute__((address(0x25E5)));


extern volatile __bit DMA7DCNTIP __attribute__((address(0x1B85)));


extern volatile __bit DMA7MD __attribute__((address(0x346)));


extern volatile __bit DMA7ORIE __attribute__((address(0x2566)));


extern volatile __bit DMA7ORIF __attribute__((address(0x25E6)));


extern volatile __bit DMA7ORIP __attribute__((address(0x1B86)));


extern volatile __bit DMA7PR0 __attribute__((address(0x5E0)));


extern volatile __bit DMA7PR1 __attribute__((address(0x5E1)));


extern volatile __bit DMA7PR2 __attribute__((address(0x5E2)));


extern volatile __bit DMA7SCNTIE __attribute__((address(0x2564)));


extern volatile __bit DMA7SCNTIF __attribute__((address(0x25E4)));


extern volatile __bit DMA7SCNTIP __attribute__((address(0x1B84)));


extern volatile __bit DMA8AIE __attribute__((address(0x256F)));


extern volatile __bit DMA8AIF __attribute__((address(0x25EF)));


extern volatile __bit DMA8AIP __attribute__((address(0x1B8F)));


extern volatile __bit DMA8DCNTIE __attribute__((address(0x256D)));


extern volatile __bit DMA8DCNTIF __attribute__((address(0x25ED)));


extern volatile __bit DMA8DCNTIP __attribute__((address(0x1B8D)));


extern volatile __bit DMA8MD __attribute__((address(0x347)));


extern volatile __bit DMA8ORIE __attribute__((address(0x256E)));


extern volatile __bit DMA8ORIF __attribute__((address(0x25EE)));


extern volatile __bit DMA8ORIP __attribute__((address(0x1B8E)));


extern volatile __bit DMA8PR0 __attribute__((address(0x5E8)));


extern volatile __bit DMA8PR1 __attribute__((address(0x5E9)));


extern volatile __bit DMA8PR2 __attribute__((address(0x5EA)));


extern volatile __bit DMA8SCNTIE __attribute__((address(0x256C)));


extern volatile __bit DMA8SCNTIF __attribute__((address(0x25EC)));


extern volatile __bit DMA8SCNTIP __attribute__((address(0x1B8C)));


extern volatile __bit DNCNT0 __attribute__((address(0x800)));


extern volatile __bit DNCNT1 __attribute__((address(0x801)));


extern volatile __bit DNCNT2 __attribute__((address(0x802)));


extern volatile __bit DNCNT3 __attribute__((address(0x803)));


extern volatile __bit DNCNT4 __attribute__((address(0x804)));


extern volatile __bit DOE __attribute__((address(0x2794)));


extern volatile __bit DONE __attribute__((address(0x1F98)));


extern volatile __bit DOZE0 __attribute__((address(0x2790)));


extern volatile __bit DOZE1 __attribute__((address(0x2791)));


extern volatile __bit DOZE2 __attribute__((address(0x2792)));


extern volatile __bit DOZEN __attribute__((address(0x2796)));


extern volatile __bit DPTR0 __attribute__((address(0x760)));


extern volatile __bit DPTR1 __attribute__((address(0x761)));


extern volatile __bit DPTR10 __attribute__((address(0x76A)));


extern volatile __bit DPTR11 __attribute__((address(0x76B)));


extern volatile __bit DPTR12 __attribute__((address(0x76C)));


extern volatile __bit DPTR13 __attribute__((address(0x76D)));


extern volatile __bit DPTR14 __attribute__((address(0x76E)));


extern volatile __bit DPTR15 __attribute__((address(0x76F)));


extern volatile __bit DPTR2 __attribute__((address(0x762)));


extern volatile __bit DPTR3 __attribute__((address(0x763)));


extern volatile __bit DPTR4 __attribute__((address(0x764)));


extern volatile __bit DPTR5 __attribute__((address(0x765)));


extern volatile __bit DPTR6 __attribute__((address(0x766)));


extern volatile __bit DPTR7 __attribute__((address(0x767)));


extern volatile __bit DPTR8 __attribute__((address(0x768)));


extern volatile __bit DPTR9 __attribute__((address(0x769)));


extern volatile __bit DRERRCNT0 __attribute__((address(0x9D0)));


extern volatile __bit DRERRCNT1 __attribute__((address(0x9D1)));


extern volatile __bit DRERRCNT2 __attribute__((address(0x9D2)));


extern volatile __bit DRERRCNT3 __attribute__((address(0x9D3)));


extern volatile __bit DRERRCNT4 __attribute__((address(0x9D4)));


extern volatile __bit DRERRCNT5 __attribute__((address(0x9D5)));


extern volatile __bit DRERRCNT6 __attribute__((address(0x9D6)));


extern volatile __bit DRERRCNT7 __attribute__((address(0x9D7)));


extern volatile __bit DSA0 __attribute__((address(0x780)));


extern volatile __bit DSA1 __attribute__((address(0x781)));


extern volatile __bit DSA10 __attribute__((address(0x78A)));


extern volatile __bit DSA11 __attribute__((address(0x78B)));


extern volatile __bit DSA12 __attribute__((address(0x78C)));


extern volatile __bit DSA13 __attribute__((address(0x78D)));


extern volatile __bit DSA14 __attribute__((address(0x78E)));


extern volatile __bit DSA15 __attribute__((address(0x78F)));


extern volatile __bit DSA2 __attribute__((address(0x782)));


extern volatile __bit DSA3 __attribute__((address(0x783)));


extern volatile __bit DSA4 __attribute__((address(0x784)));


extern volatile __bit DSA5 __attribute__((address(0x785)));


extern volatile __bit DSA6 __attribute__((address(0x786)));


extern volatile __bit DSA7 __attribute__((address(0x787)));


extern volatile __bit DSA8 __attribute__((address(0x788)));


extern volatile __bit DSA9 __attribute__((address(0x789)));


extern volatile __bit DSEN __attribute__((address(0x1FA0)));


extern volatile __bit DSM1MD __attribute__((address(0x323)));


extern volatile __bit DSTP __attribute__((address(0x7ED)));


extern volatile __bit DSTUFERR __attribute__((address(0x9FC)));


extern volatile __bit DSZ0 __attribute__((address(0x770)));


extern volatile __bit DSZ1 __attribute__((address(0x771)));


extern volatile __bit DSZ10 __attribute__((address(0x77A)));


extern volatile __bit DSZ11 __attribute__((address(0x77B)));


extern volatile __bit DSZ2 __attribute__((address(0x772)));


extern volatile __bit DSZ3 __attribute__((address(0x773)));


extern volatile __bit DSZ4 __attribute__((address(0x774)));


extern volatile __bit DSZ5 __attribute__((address(0x775)));


extern volatile __bit DSZ6 __attribute__((address(0x776)));


extern volatile __bit DSZ7 __attribute__((address(0x777)));


extern volatile __bit DSZ8 __attribute__((address(0x778)));


extern volatile __bit DSZ9 __attribute__((address(0x779)));


extern volatile __bit DTERRCNT0 __attribute__((address(0x9D8)));


extern volatile __bit DTERRCNT1 __attribute__((address(0x9D9)));


extern volatile __bit DTERRCNT2 __attribute__((address(0x9DA)));


extern volatile __bit DTERRCNT3 __attribute__((address(0x9DB)));


extern volatile __bit DTERRCNT4 __attribute__((address(0x9DC)));


extern volatile __bit DTERRCNT5 __attribute__((address(0x9DD)));


extern volatile __bit DTERRCNT6 __attribute__((address(0x9DE)));


extern volatile __bit DTERRCNT7 __attribute__((address(0x9DF)));


extern volatile __bit EDGFLTEN __attribute__((address(0x879)));


extern volatile __bit EFMSGCNT0 __attribute__((address(0x9E0)));


extern volatile __bit EFMSGCNT1 __attribute__((address(0x9E1)));


extern volatile __bit EFMSGCNT10 __attribute__((address(0x9EA)));


extern volatile __bit EFMSGCNT11 __attribute__((address(0x9EB)));


extern volatile __bit EFMSGCNT12 __attribute__((address(0x9EC)));


extern volatile __bit EFMSGCNT13 __attribute__((address(0x9ED)));


extern volatile __bit EFMSGCNT14 __attribute__((address(0x9EE)));


extern volatile __bit EFMSGCNT15 __attribute__((address(0x9EF)));


extern volatile __bit EFMSGCNT2 __attribute__((address(0x9E2)));


extern volatile __bit EFMSGCNT3 __attribute__((address(0x9E3)));


extern volatile __bit EFMSGCNT4 __attribute__((address(0x9E4)));


extern volatile __bit EFMSGCNT5 __attribute__((address(0x9E5)));


extern volatile __bit EFMSGCNT6 __attribute__((address(0x9E6)));


extern volatile __bit EFMSGCNT7 __attribute__((address(0x9E7)));


extern volatile __bit EFMSGCNT8 __attribute__((address(0x9E8)));


extern volatile __bit EFMSGCNT9 __attribute__((address(0x9E9)));


extern volatile __bit ERR0 __attribute__((address(0x1EE8)));


extern volatile __bit ERR1 __attribute__((address(0x1EE9)));


extern volatile __bit ERR10 __attribute__((address(0x1EF2)));


extern volatile __bit ERR11 __attribute__((address(0x1EF3)));


extern volatile __bit ERR12 __attribute__((address(0x1EF4)));


extern volatile __bit ERR13 __attribute__((address(0x1EF5)));


extern volatile __bit ERR14 __attribute__((address(0x1EF6)));


extern volatile __bit ERR15 __attribute__((address(0x1EF7)));


extern volatile __bit ERR2 __attribute__((address(0x1EEA)));


extern volatile __bit ERR3 __attribute__((address(0x1EEB)));


extern volatile __bit ERR4 __attribute__((address(0x1EEC)));


extern volatile __bit ERR5 __attribute__((address(0x1EED)));


extern volatile __bit ERR6 __attribute__((address(0x1EEE)));


extern volatile __bit ERR7 __attribute__((address(0x1EEF)));


extern volatile __bit ERR8 __attribute__((address(0x1EF0)));


extern volatile __bit ERR9 __attribute__((address(0x1EF1)));


extern volatile __bit ESI __attribute__((address(0x9FE)));


extern volatile __bit ESIGM __attribute__((address(0x811)));


extern volatile __bit EWARN __attribute__((address(0x9B0)));


extern volatile __bit EXTOEN __attribute__((address(0x59F)));


extern volatile __bit EXTOR __attribute__((address(0x597)));


extern volatile __bit F0BP0 __attribute__((address(0xC00)));


extern volatile __bit F0BP1 __attribute__((address(0xC01)));


extern volatile __bit F0BP2 __attribute__((address(0xC02)));


extern volatile __bit F0BP3 __attribute__((address(0xC03)));


extern volatile __bit F0BP4 __attribute__((address(0xC04)));


extern volatile __bit F10BP0 __attribute__((address(0xC50)));


extern volatile __bit F10BP1 __attribute__((address(0xC51)));


extern volatile __bit F10BP2 __attribute__((address(0xC52)));


extern volatile __bit F10BP3 __attribute__((address(0xC53)));


extern volatile __bit F10BP4 __attribute__((address(0xC54)));


extern volatile __bit F11BP0 __attribute__((address(0xC58)));


extern volatile __bit F11BP1 __attribute__((address(0xC59)));


extern volatile __bit F11BP2 __attribute__((address(0xC5A)));


extern volatile __bit F11BP3 __attribute__((address(0xC5B)));


extern volatile __bit F11BP4 __attribute__((address(0xC5C)));


extern volatile __bit F1BP0 __attribute__((address(0xC08)));


extern volatile __bit F1BP1 __attribute__((address(0xC09)));


extern volatile __bit F1BP2 __attribute__((address(0xC0A)));


extern volatile __bit F1BP3 __attribute__((address(0xC0B)));


extern volatile __bit F1BP4 __attribute__((address(0xC0C)));


extern volatile __bit F2BP0 __attribute__((address(0xC10)));


extern volatile __bit F2BP1 __attribute__((address(0xC11)));


extern volatile __bit F2BP2 __attribute__((address(0xC12)));


extern volatile __bit F2BP3 __attribute__((address(0xC13)));


extern volatile __bit F2BP4 __attribute__((address(0xC14)));


extern volatile __bit F3BP0 __attribute__((address(0xC18)));


extern volatile __bit F3BP1 __attribute__((address(0xC19)));


extern volatile __bit F3BP2 __attribute__((address(0xC1A)));


extern volatile __bit F3BP3 __attribute__((address(0xC1B)));


extern volatile __bit F3BP4 __attribute__((address(0xC1C)));


extern volatile __bit F4BP0 __attribute__((address(0xC20)));


extern volatile __bit F4BP1 __attribute__((address(0xC21)));


extern volatile __bit F4BP2 __attribute__((address(0xC22)));


extern volatile __bit F4BP3 __attribute__((address(0xC23)));


extern volatile __bit F4BP4 __attribute__((address(0xC24)));


extern volatile __bit F5BP0 __attribute__((address(0xC28)));


extern volatile __bit F5BP1 __attribute__((address(0xC29)));


extern volatile __bit F5BP2 __attribute__((address(0xC2A)));


extern volatile __bit F5BP3 __attribute__((address(0xC2B)));


extern volatile __bit F5BP4 __attribute__((address(0xC2C)));


extern volatile __bit F6BP0 __attribute__((address(0xC30)));


extern volatile __bit F6BP1 __attribute__((address(0xC31)));


extern volatile __bit F6BP2 __attribute__((address(0xC32)));


extern volatile __bit F6BP3 __attribute__((address(0xC33)));


extern volatile __bit F6BP4 __attribute__((address(0xC34)));


extern volatile __bit F7BP0 __attribute__((address(0xC38)));


extern volatile __bit F7BP1 __attribute__((address(0xC39)));


extern volatile __bit F7BP2 __attribute__((address(0xC3A)));


extern volatile __bit F7BP3 __attribute__((address(0xC3B)));


extern volatile __bit F7BP4 __attribute__((address(0xC3C)));


extern volatile __bit F8BP0 __attribute__((address(0xC40)));


extern volatile __bit F8BP1 __attribute__((address(0xC41)));


extern volatile __bit F8BP2 __attribute__((address(0xC42)));


extern volatile __bit F8BP3 __attribute__((address(0xC43)));


extern volatile __bit F8BP4 __attribute__((address(0xC44)));


extern volatile __bit F9BP0 __attribute__((address(0xC48)));


extern volatile __bit F9BP1 __attribute__((address(0xC49)));


extern volatile __bit F9BP2 __attribute__((address(0xC4A)));


extern volatile __bit F9BP3 __attribute__((address(0xC4B)));


extern volatile __bit F9BP4 __attribute__((address(0xC4C)));


extern volatile __bit FIFOBA0 __attribute__((address(0xA60)));


extern volatile __bit FIFOBA1 __attribute__((address(0xA61)));


extern volatile __bit FIFOBA10 __attribute__((address(0xA6A)));


extern volatile __bit FIFOBA11 __attribute__((address(0xA6B)));


extern volatile __bit FIFOBA12 __attribute__((address(0xA6C)));


extern volatile __bit FIFOBA13 __attribute__((address(0xA6D)));


extern volatile __bit FIFOBA14 __attribute__((address(0xA6E)));


extern volatile __bit FIFOBA15 __attribute__((address(0xA6F)));


extern volatile __bit FIFOBA16 __attribute__((address(0xA70)));


extern volatile __bit FIFOBA17 __attribute__((address(0xA71)));


extern volatile __bit FIFOBA18 __attribute__((address(0xA72)));


extern volatile __bit FIFOBA19 __attribute__((address(0xA73)));


extern volatile __bit FIFOBA2 __attribute__((address(0xA62)));


extern volatile __bit FIFOBA20 __attribute__((address(0xA74)));


extern volatile __bit FIFOBA21 __attribute__((address(0xA75)));


extern volatile __bit FIFOBA22 __attribute__((address(0xA76)));


extern volatile __bit FIFOBA23 __attribute__((address(0xA77)));


extern volatile __bit FIFOBA24 __attribute__((address(0xA78)));


extern volatile __bit FIFOBA25 __attribute__((address(0xA79)));


extern volatile __bit FIFOBA26 __attribute__((address(0xA7A)));


extern volatile __bit FIFOBA27 __attribute__((address(0xA7B)));


extern volatile __bit FIFOBA28 __attribute__((address(0xA7C)));


extern volatile __bit FIFOBA29 __attribute__((address(0xA7D)));


extern volatile __bit FIFOBA3 __attribute__((address(0xA63)));


extern volatile __bit FIFOBA30 __attribute__((address(0xA7E)));


extern volatile __bit FIFOBA31 __attribute__((address(0xA7F)));


extern volatile __bit FIFOBA4 __attribute__((address(0xA64)));


extern volatile __bit FIFOBA5 __attribute__((address(0xA65)));


extern volatile __bit FIFOBA6 __attribute__((address(0xA66)));


extern volatile __bit FIFOBA7 __attribute__((address(0xA67)));


extern volatile __bit FIFOBA8 __attribute__((address(0xA68)));


extern volatile __bit FIFOBA9 __attribute__((address(0xA69)));


extern volatile __bit FLTEN0 __attribute__((address(0xC07)));


extern volatile __bit FLTEN1 __attribute__((address(0xC0F)));


extern volatile __bit FLTEN10 __attribute__((address(0xC57)));


extern volatile __bit FLTEN11 __attribute__((address(0xC5F)));


extern volatile __bit FLTEN2 __attribute__((address(0xC17)));


extern volatile __bit FLTEN3 __attribute__((address(0xC1F)));


extern volatile __bit FLTEN4 __attribute__((address(0xC27)));


extern volatile __bit FLTEN5 __attribute__((address(0xC2F)));


extern volatile __bit FLTEN6 __attribute__((address(0xC37)));


extern volatile __bit FLTEN7 __attribute__((address(0xC3F)));


extern volatile __bit FLTEN8 __attribute__((address(0xC47)));


extern volatile __bit FLTEN9 __attribute__((address(0xC4F)));


extern volatile __bit FLTR0 __attribute__((address(0x1F08)));


extern volatile __bit FLTR1 __attribute__((address(0x1F09)));


extern volatile __bit FLTR10 __attribute__((address(0x1F12)));


extern volatile __bit FLTR11 __attribute__((address(0x1F13)));


extern volatile __bit FLTR12 __attribute__((address(0x1F14)));


extern volatile __bit FLTR13 __attribute__((address(0x1F15)));


extern volatile __bit FLTR14 __attribute__((address(0x1F16)));


extern volatile __bit FLTR15 __attribute__((address(0x1F17)));


extern volatile __bit FLTR2 __attribute__((address(0x1F0A)));


extern volatile __bit FLTR3 __attribute__((address(0x1F0B)));


extern volatile __bit FLTR4 __attribute__((address(0x1F0C)));


extern volatile __bit FLTR5 __attribute__((address(0x1F0D)));


extern volatile __bit FLTR6 __attribute__((address(0x1F0E)));


extern volatile __bit FLTR7 __attribute__((address(0x1F0F)));


extern volatile __bit FLTR8 __attribute__((address(0x1F10)));


extern volatile __bit FLTR9 __attribute__((address(0x1F11)));


extern volatile __bit FM0 __attribute__((address(0x1F9A)));


extern volatile __bit FME __attribute__((address(0x14B5)));


extern volatile __bit FRQ0 __attribute__((address(0x588)));


extern volatile __bit FRQ1 __attribute__((address(0x589)));


extern volatile __bit FRQ2 __attribute__((address(0x58A)));


extern volatile __bit FRQ3 __attribute__((address(0x58B)));


extern volatile __bit FRZ __attribute__((address(0x80E)));


extern volatile __bit FSCMFEV __attribute__((address(0x22C0)));


extern volatile __bit FSCMFFI __attribute__((address(0x22C1)));


extern volatile __bit FSCMPEV __attribute__((address(0x22C2)));


extern volatile __bit FSCMPFI __attribute__((address(0x22C3)));


extern volatile __bit FSCMSEV __attribute__((address(0x22C4)));


extern volatile __bit FSCMSFI __attribute__((address(0x22C5)));


extern volatile __bit FULL __attribute__((address(0x1AB8)));


extern volatile __bit FVREN __attribute__((address(0x1EBF)));


extern volatile __bit FVRMD __attribute__((address(0x306)));


extern volatile __bit FVRRDY __attribute__((address(0x1EBE)));


extern volatile __bit G1D1N __attribute__((address(0x6E0)));


extern volatile __bit G1D1T __attribute__((address(0x6E1)));


extern volatile __bit G1D2N __attribute__((address(0x6E2)));


extern volatile __bit G1D2T __attribute__((address(0x6E3)));


extern volatile __bit G1D3N __attribute__((address(0x6E4)));


extern volatile __bit G1D3T __attribute__((address(0x6E5)));


extern volatile __bit G1D4N __attribute__((address(0x6E6)));


extern volatile __bit G1D4T __attribute__((address(0x6E7)));


extern volatile __bit G1EN __attribute__((address(0x1E07)));


extern volatile __bit G1POL __attribute__((address(0x6B8)));


extern volatile __bit G2D1N __attribute__((address(0x6E8)));


extern volatile __bit G2D1T __attribute__((address(0x6E9)));


extern volatile __bit G2D2N __attribute__((address(0x6EA)));


extern volatile __bit G2D2T __attribute__((address(0x6EB)));


extern volatile __bit G2D3N __attribute__((address(0x6EC)));


extern volatile __bit G2D3T __attribute__((address(0x6ED)));


extern volatile __bit G2D4N __attribute__((address(0x6EE)));


extern volatile __bit G2D4T __attribute__((address(0x6EF)));


extern volatile __bit G2EN __attribute__((address(0x1E4F)));


extern volatile __bit G2POL __attribute__((address(0x6B9)));


extern volatile __bit G3D1N __attribute__((address(0x6F0)));


extern volatile __bit G3D1T __attribute__((address(0x6F1)));


extern volatile __bit G3D2N __attribute__((address(0x6F2)));


extern volatile __bit G3D2T __attribute__((address(0x6F3)));


extern volatile __bit G3D3N __attribute__((address(0x6F4)));


extern volatile __bit G3D3T __attribute__((address(0x6F5)));


extern volatile __bit G3D4N __attribute__((address(0x6F6)));


extern volatile __bit G3D4T __attribute__((address(0x6F7)));


extern volatile __bit G3EN __attribute__((address(0x1E97)));


extern volatile __bit G3POL __attribute__((address(0x6BA)));


extern volatile __bit G4D1N __attribute__((address(0x6F8)));


extern volatile __bit G4D1T __attribute__((address(0x6F9)));


extern volatile __bit G4D2N __attribute__((address(0x6FA)));


extern volatile __bit G4D2T __attribute__((address(0x6FB)));


extern volatile __bit G4D3N __attribute__((address(0x6FC)));


extern volatile __bit G4D3T __attribute__((address(0x6FD)));


extern volatile __bit G4D4N __attribute__((address(0x6FE)));


extern volatile __bit G4D4T __attribute__((address(0x6FF)));


extern volatile __bit G4POL __attribute__((address(0x6BB)));


extern volatile __bit GCEN __attribute__((address(0x14B6)));


extern volatile __bit GIE __attribute__((address(0x26B7)));


extern volatile __bit GIEH __attribute__((address(0x26B7)));


extern volatile __bit GIEL __attribute__((address(0x26B6)));


extern volatile __bit GO_NOT_DONE __attribute__((address(0x1F98)));


extern volatile __bit GO_nDONE __attribute__((address(0x1F98)));


extern volatile __bit HADR0 __attribute__((address(0x1AE8)));


extern volatile __bit HADR1 __attribute__((address(0x1AE9)));


extern volatile __bit HADR10 __attribute__((address(0x1AF2)));


extern volatile __bit HADR11 __attribute__((address(0x1AF3)));


extern volatile __bit HADR12 __attribute__((address(0x1AF4)));


extern volatile __bit HADR13 __attribute__((address(0x1AF5)));


extern volatile __bit HADR14 __attribute__((address(0x1AF6)));


extern volatile __bit HADR15 __attribute__((address(0x1AF7)));


extern volatile __bit HADR16 __attribute__((address(0x1AF8)));


extern volatile __bit HADR17 __attribute__((address(0x1AF9)));


extern volatile __bit HADR18 __attribute__((address(0x1AFA)));


extern volatile __bit HADR19 __attribute__((address(0x1AFB)));


extern volatile __bit HADR2 __attribute__((address(0x1AEA)));


extern volatile __bit HADR20 __attribute__((address(0x1AFC)));


extern volatile __bit HADR21 __attribute__((address(0x1AFD)));


extern volatile __bit HADR3 __attribute__((address(0x1AEB)));


extern volatile __bit HADR4 __attribute__((address(0x1AEC)));


extern volatile __bit HADR5 __attribute__((address(0x1AED)));


extern volatile __bit HADR6 __attribute__((address(0x1AEE)));


extern volatile __bit HADR7 __attribute__((address(0x1AEF)));


extern volatile __bit HADR8 __attribute__((address(0x1AF0)));


extern volatile __bit HADR9 __attribute__((address(0x1AF1)));


extern volatile __bit HFOEN __attribute__((address(0x59E)));


extern volatile __bit HFOR __attribute__((address(0x596)));


extern volatile __bit HLVDEN __attribute__((address(0x257)));


extern volatile __bit HLVDIE __attribute__((address(0x24F1)));


extern volatile __bit HLVDIF __attribute__((address(0x2571)));


extern volatile __bit HLVDINTH __attribute__((address(0x251)));


extern volatile __bit HLVDINTL __attribute__((address(0x250)));


extern volatile __bit HLVDIP __attribute__((address(0x1B11)));


extern volatile __bit HLVDMD __attribute__((address(0x305)));


extern volatile __bit HLVDOUT __attribute__((address(0x255)));


extern volatile __bit HLVDRDY __attribute__((address(0x254)));


extern volatile __bit HLVDSEL0 __attribute__((address(0x258)));


extern volatile __bit HLVDSEL1 __attribute__((address(0x259)));


extern volatile __bit HLVDSEL2 __attribute__((address(0x25A)));


extern volatile __bit HLVDSEL3 __attribute__((address(0x25B)));


extern volatile __bit I2C1EIE __attribute__((address(0x252B)));


extern volatile __bit I2C1EIF __attribute__((address(0x25AB)));


extern volatile __bit I2C1EIP __attribute__((address(0x1B4B)));


extern volatile __bit I2C1IE __attribute__((address(0x252A)));


extern volatile __bit I2C1IF __attribute__((address(0x25AA)));


extern volatile __bit I2C1IP __attribute__((address(0x1B4A)));


extern volatile __bit I2C1MD __attribute__((address(0x330)));


extern volatile __bit I2C1RXIE __attribute__((address(0x2528)));


extern volatile __bit I2C1RXIF __attribute__((address(0x25A8)));


extern volatile __bit I2C1RXIP __attribute__((address(0x1B48)));


extern volatile __bit I2C1SCLPPS0 __attribute__((address(0x1388)));


extern volatile __bit I2C1SCLPPS1 __attribute__((address(0x1389)));


extern volatile __bit I2C1SCLPPS2 __attribute__((address(0x138A)));


extern volatile __bit I2C1SCLPPS3 __attribute__((address(0x138B)));


extern volatile __bit I2C1SCLPPS4 __attribute__((address(0x138C)));


extern volatile __bit I2C1SDAPPS0 __attribute__((address(0x1380)));


extern volatile __bit I2C1SDAPPS1 __attribute__((address(0x1381)));


extern volatile __bit I2C1SDAPPS2 __attribute__((address(0x1382)));


extern volatile __bit I2C1SDAPPS3 __attribute__((address(0x1383)));


extern volatile __bit I2C1SDAPPS4 __attribute__((address(0x1384)));


extern volatile __bit I2C1TXIE __attribute__((address(0x2529)));


extern volatile __bit I2C1TXIF __attribute__((address(0x25A9)));


extern volatile __bit I2C1TXIP __attribute__((address(0x1B49)));


extern volatile __bit I2CBTOC0 __attribute__((address(0x14F8)));


extern volatile __bit I2CBTOC1 __attribute__((address(0x14F9)));


extern volatile __bit I2CBTOC2 __attribute__((address(0x14FA)));


extern volatile __bit I2CBTOC3 __attribute__((address(0x14FB)));


extern volatile __bit I2CCLK0 __attribute__((address(0x14F0)));


extern volatile __bit I2CCLK1 __attribute__((address(0x14F1)));


extern volatile __bit I2CCLK2 __attribute__((address(0x14F2)));


extern volatile __bit I2CCLK3 __attribute__((address(0x14F3)));


extern volatile __bit I2CCLK4 __attribute__((address(0x14F4)));


extern volatile __bit I2CEN __attribute__((address(0x14A7)));


extern volatile __bit IDLEN __attribute__((address(0x2797)));


extern volatile __bit INLVLA0 __attribute__((address(0x2020)));


extern volatile __bit INLVLA1 __attribute__((address(0x2021)));


extern volatile __bit INLVLA2 __attribute__((address(0x2022)));


extern volatile __bit INLVLA3 __attribute__((address(0x2023)));


extern volatile __bit INLVLA4 __attribute__((address(0x2024)));


extern volatile __bit INLVLA5 __attribute__((address(0x2025)));


extern volatile __bit INLVLA6 __attribute__((address(0x2026)));


extern volatile __bit INLVLA7 __attribute__((address(0x2027)));


extern volatile __bit INLVLB0 __attribute__((address(0x2060)));


extern volatile __bit INLVLB1 __attribute__((address(0x2061)));


extern volatile __bit INLVLB2 __attribute__((address(0x2062)));


extern volatile __bit INLVLB3 __attribute__((address(0x2063)));


extern volatile __bit INLVLB4 __attribute__((address(0x2064)));


extern volatile __bit INLVLB5 __attribute__((address(0x2065)));


extern volatile __bit INLVLB6 __attribute__((address(0x2066)));


extern volatile __bit INLVLB7 __attribute__((address(0x2067)));


extern volatile __bit INLVLC0 __attribute__((address(0x20A0)));


extern volatile __bit INLVLC1 __attribute__((address(0x20A1)));


extern volatile __bit INLVLC2 __attribute__((address(0x20A2)));


extern volatile __bit INLVLC3 __attribute__((address(0x20A3)));


extern volatile __bit INLVLC4 __attribute__((address(0x20A4)));


extern volatile __bit INLVLC5 __attribute__((address(0x20A5)));


extern volatile __bit INLVLC6 __attribute__((address(0x20A6)));


extern volatile __bit INLVLC7 __attribute__((address(0x20A7)));


extern volatile __bit INLVLD0 __attribute__((address(0x20E0)));


extern volatile __bit INLVLD1 __attribute__((address(0x20E1)));


extern volatile __bit INLVLD2 __attribute__((address(0x20E2)));


extern volatile __bit INLVLD3 __attribute__((address(0x20E3)));


extern volatile __bit INLVLD4 __attribute__((address(0x20E4)));


extern volatile __bit INLVLD5 __attribute__((address(0x20E5)));


extern volatile __bit INLVLD6 __attribute__((address(0x20E6)));


extern volatile __bit INLVLD7 __attribute__((address(0x20E7)));


extern volatile __bit INLVLE0 __attribute__((address(0x2120)));


extern volatile __bit INLVLE1 __attribute__((address(0x2121)));


extern volatile __bit INLVLE2 __attribute__((address(0x2122)));


extern volatile __bit INLVLE3 __attribute__((address(0x2123)));


extern volatile __bit INT0EDG __attribute__((address(0x26B0)));


extern volatile __bit INT0IE __attribute__((address(0x24F8)));


extern volatile __bit INT0IF __attribute__((address(0x2578)));


extern volatile __bit INT0IP __attribute__((address(0x1B18)));


extern volatile __bit INT0PPS0 __attribute__((address(0x11F0)));


extern volatile __bit INT0PPS1 __attribute__((address(0x11F1)));


extern volatile __bit INT0PPS2 __attribute__((address(0x11F2)));


extern volatile __bit INT0PPS3 __attribute__((address(0x11F3)));


extern volatile __bit INT1EDG __attribute__((address(0x26B1)));


extern volatile __bit INT1IE __attribute__((address(0x2520)));


extern volatile __bit INT1IF __attribute__((address(0x25A0)));


extern volatile __bit INT1IP __attribute__((address(0x1B40)));


extern volatile __bit INT1PPS0 __attribute__((address(0x11F8)));


extern volatile __bit INT1PPS1 __attribute__((address(0x11F9)));


extern volatile __bit INT1PPS2 __attribute__((address(0x11FA)));


extern volatile __bit INT1PPS3 __attribute__((address(0x11FB)));


extern volatile __bit INT1PPS4 __attribute__((address(0x11FC)));


extern volatile __bit INT2EDG __attribute__((address(0x26B2)));


extern volatile __bit INT2IE __attribute__((address(0x2540)));


extern volatile __bit INT2IF __attribute__((address(0x25C0)));


extern volatile __bit INT2IP __attribute__((address(0x1B60)));


extern volatile __bit INT2PPS0 __attribute__((address(0x1200)));


extern volatile __bit INT2PPS1 __attribute__((address(0x1201)));


extern volatile __bit INT2PPS2 __attribute__((address(0x1202)));


extern volatile __bit INT2PPS3 __attribute__((address(0x1203)));


extern volatile __bit INT2PPS4 __attribute__((address(0x1204)));


extern volatile __bit INT2PPS5 __attribute__((address(0x1205)));


extern volatile __bit INTH __attribute__((address(0x251)));


extern volatile __bit INTL __attribute__((address(0x250)));


extern volatile __bit IOCAF0 __attribute__((address(0x2038)));


extern volatile __bit IOCAF1 __attribute__((address(0x2039)));


extern volatile __bit IOCAF2 __attribute__((address(0x203A)));


extern volatile __bit IOCAF3 __attribute__((address(0x203B)));


extern volatile __bit IOCAF4 __attribute__((address(0x203C)));


extern volatile __bit IOCAF5 __attribute__((address(0x203D)));


extern volatile __bit IOCAF6 __attribute__((address(0x203E)));


extern volatile __bit IOCAF7 __attribute__((address(0x203F)));


extern volatile __bit IOCAN0 __attribute__((address(0x2030)));


extern volatile __bit IOCAN1 __attribute__((address(0x2031)));


extern volatile __bit IOCAN2 __attribute__((address(0x2032)));


extern volatile __bit IOCAN3 __attribute__((address(0x2033)));


extern volatile __bit IOCAN4 __attribute__((address(0x2034)));


extern volatile __bit IOCAN5 __attribute__((address(0x2035)));


extern volatile __bit IOCAN6 __attribute__((address(0x2036)));


extern volatile __bit IOCAN7 __attribute__((address(0x2037)));


extern volatile __bit IOCAP0 __attribute__((address(0x2028)));


extern volatile __bit IOCAP1 __attribute__((address(0x2029)));


extern volatile __bit IOCAP2 __attribute__((address(0x202A)));


extern volatile __bit IOCAP3 __attribute__((address(0x202B)));


extern volatile __bit IOCAP4 __attribute__((address(0x202C)));


extern volatile __bit IOCAP5 __attribute__((address(0x202D)));


extern volatile __bit IOCAP6 __attribute__((address(0x202E)));


extern volatile __bit IOCAP7 __attribute__((address(0x202F)));


extern volatile __bit IOCBF0 __attribute__((address(0x2078)));


extern volatile __bit IOCBF1 __attribute__((address(0x2079)));


extern volatile __bit IOCBF2 __attribute__((address(0x207A)));


extern volatile __bit IOCBF3 __attribute__((address(0x207B)));


extern volatile __bit IOCBF4 __attribute__((address(0x207C)));


extern volatile __bit IOCBF5 __attribute__((address(0x207D)));


extern volatile __bit IOCBF6 __attribute__((address(0x207E)));


extern volatile __bit IOCBF7 __attribute__((address(0x207F)));


extern volatile __bit IOCBN0 __attribute__((address(0x2070)));


extern volatile __bit IOCBN1 __attribute__((address(0x2071)));


extern volatile __bit IOCBN2 __attribute__((address(0x2072)));


extern volatile __bit IOCBN3 __attribute__((address(0x2073)));


extern volatile __bit IOCBN4 __attribute__((address(0x2074)));


extern volatile __bit IOCBN5 __attribute__((address(0x2075)));


extern volatile __bit IOCBN6 __attribute__((address(0x2076)));


extern volatile __bit IOCBN7 __attribute__((address(0x2077)));


extern volatile __bit IOCBP0 __attribute__((address(0x2068)));


extern volatile __bit IOCBP1 __attribute__((address(0x2069)));


extern volatile __bit IOCBP2 __attribute__((address(0x206A)));


extern volatile __bit IOCBP3 __attribute__((address(0x206B)));


extern volatile __bit IOCBP4 __attribute__((address(0x206C)));


extern volatile __bit IOCBP5 __attribute__((address(0x206D)));


extern volatile __bit IOCBP6 __attribute__((address(0x206E)));


extern volatile __bit IOCBP7 __attribute__((address(0x206F)));


extern volatile __bit IOCCF0 __attribute__((address(0x20B8)));


extern volatile __bit IOCCF1 __attribute__((address(0x20B9)));


extern volatile __bit IOCCF2 __attribute__((address(0x20BA)));


extern volatile __bit IOCCF3 __attribute__((address(0x20BB)));


extern volatile __bit IOCCF4 __attribute__((address(0x20BC)));


extern volatile __bit IOCCF5 __attribute__((address(0x20BD)));


extern volatile __bit IOCCF6 __attribute__((address(0x20BE)));


extern volatile __bit IOCCF7 __attribute__((address(0x20BF)));


extern volatile __bit IOCCN0 __attribute__((address(0x20B0)));


extern volatile __bit IOCCN1 __attribute__((address(0x20B1)));


extern volatile __bit IOCCN2 __attribute__((address(0x20B2)));


extern volatile __bit IOCCN3 __attribute__((address(0x20B3)));


extern volatile __bit IOCCN4 __attribute__((address(0x20B4)));


extern volatile __bit IOCCN5 __attribute__((address(0x20B5)));


extern volatile __bit IOCCN6 __attribute__((address(0x20B6)));


extern volatile __bit IOCCN7 __attribute__((address(0x20B7)));


extern volatile __bit IOCCP0 __attribute__((address(0x20A8)));


extern volatile __bit IOCCP1 __attribute__((address(0x20A9)));


extern volatile __bit IOCCP2 __attribute__((address(0x20AA)));


extern volatile __bit IOCCP3 __attribute__((address(0x20AB)));


extern volatile __bit IOCCP4 __attribute__((address(0x20AC)));


extern volatile __bit IOCCP5 __attribute__((address(0x20AD)));


extern volatile __bit IOCCP6 __attribute__((address(0x20AE)));


extern volatile __bit IOCCP7 __attribute__((address(0x20AF)));


extern volatile __bit IOCEF3 __attribute__((address(0x213B)));


extern volatile __bit IOCEN3 __attribute__((address(0x2133)));


extern volatile __bit IOCEP3 __attribute__((address(0x212B)));


extern volatile __bit IOCIE __attribute__((address(0x24F7)));


extern volatile __bit IOCIF __attribute__((address(0x2577)));


extern volatile __bit IOCIP __attribute__((address(0x1B17)));


extern volatile __bit IOCMD __attribute__((address(0x300)));


extern volatile __bit ISOCRCEN __attribute__((address(0x805)));


extern volatile __bit ISRPR0 __attribute__((address(0x5F8)));


extern volatile __bit ISRPR1 __attribute__((address(0x5F9)));


extern volatile __bit ISRPR2 __attribute__((address(0x5FA)));


extern volatile __bit IVMIE __attribute__((address(0x8FF)));


extern volatile __bit IVMIF __attribute__((address(0x8EF)));


extern volatile __bit IVTLOCKED __attribute__((address(0x22C8)));


extern volatile __bit LADR0 __attribute__((address(0x1AD0)));


extern volatile __bit LADR1 __attribute__((address(0x1AD1)));


extern volatile __bit LADR10 __attribute__((address(0x1ADA)));


extern volatile __bit LADR11 __attribute__((address(0x1ADB)));


extern volatile __bit LADR12 __attribute__((address(0x1ADC)));


extern volatile __bit LADR13 __attribute__((address(0x1ADD)));


extern volatile __bit LADR14 __attribute__((address(0x1ADE)));


extern volatile __bit LADR15 __attribute__((address(0x1ADF)));


extern volatile __bit LADR16 __attribute__((address(0x1AE0)));


extern volatile __bit LADR17 __attribute__((address(0x1AE1)));


extern volatile __bit LADR18 __attribute__((address(0x1AE2)));


extern volatile __bit LADR19 __attribute__((address(0x1AE3)));


extern volatile __bit LADR2 __attribute__((address(0x1AD2)));


extern volatile __bit LADR20 __attribute__((address(0x1AE4)));


extern volatile __bit LADR21 __attribute__((address(0x1AE5)));


extern volatile __bit LADR3 __attribute__((address(0x1AD3)));


extern volatile __bit LADR4 __attribute__((address(0x1AD4)));


extern volatile __bit LADR5 __attribute__((address(0x1AD5)));


extern volatile __bit LADR6 __attribute__((address(0x1AD6)));


extern volatile __bit LADR7 __attribute__((address(0x1AD7)));


extern volatile __bit LADR8 __attribute__((address(0x1AD8)));


extern volatile __bit LADR9 __attribute__((address(0x1AD9)));


extern volatile __bit LATA0 __attribute__((address(0x25F0)));


extern volatile __bit LATA1 __attribute__((address(0x25F1)));


extern volatile __bit LATA2 __attribute__((address(0x25F2)));


extern volatile __bit LATA3 __attribute__((address(0x25F3)));


extern volatile __bit LATA4 __attribute__((address(0x25F4)));


extern volatile __bit LATA5 __attribute__((address(0x25F5)));


extern volatile __bit LATA6 __attribute__((address(0x25F6)));


extern volatile __bit LATA7 __attribute__((address(0x25F7)));


extern volatile __bit LATB0 __attribute__((address(0x25F8)));


extern volatile __bit LATB1 __attribute__((address(0x25F9)));


extern volatile __bit LATB2 __attribute__((address(0x25FA)));


extern volatile __bit LATB3 __attribute__((address(0x25FB)));


extern volatile __bit LATB4 __attribute__((address(0x25FC)));


extern volatile __bit LATB5 __attribute__((address(0x25FD)));


extern volatile __bit LATB6 __attribute__((address(0x25FE)));


extern volatile __bit LATB7 __attribute__((address(0x25FF)));


extern volatile __bit LATC0 __attribute__((address(0x2600)));


extern volatile __bit LATC1 __attribute__((address(0x2601)));


extern volatile __bit LATC2 __attribute__((address(0x2602)));


extern volatile __bit LATC3 __attribute__((address(0x2603)));


extern volatile __bit LATC4 __attribute__((address(0x2604)));


extern volatile __bit LATC5 __attribute__((address(0x2605)));


extern volatile __bit LATC6 __attribute__((address(0x2606)));


extern volatile __bit LATC7 __attribute__((address(0x2607)));


extern volatile __bit LATD0 __attribute__((address(0x2608)));


extern volatile __bit LATD1 __attribute__((address(0x2609)));


extern volatile __bit LATD2 __attribute__((address(0x260A)));


extern volatile __bit LATD3 __attribute__((address(0x260B)));


extern volatile __bit LATD4 __attribute__((address(0x260C)));


extern volatile __bit LATD5 __attribute__((address(0x260D)));


extern volatile __bit LATD6 __attribute__((address(0x260E)));


extern volatile __bit LATD7 __attribute__((address(0x260F)));


extern volatile __bit LATE0 __attribute__((address(0x2610)));


extern volatile __bit LATE1 __attribute__((address(0x2611)));


extern volatile __bit LATE2 __attribute__((address(0x2612)));


extern volatile __bit LENDIAN __attribute__((address(0x1AB9)));


extern volatile __bit LFOEN __attribute__((address(0x59C)));


extern volatile __bit LFOR __attribute__((address(0x594)));


extern volatile __bit LTH0 __attribute__((address(0x1EC8)));


extern volatile __bit LTH1 __attribute__((address(0x1EC9)));


extern volatile __bit LTH10 __attribute__((address(0x1ED2)));


extern volatile __bit LTH11 __attribute__((address(0x1ED3)));


extern volatile __bit LTH12 __attribute__((address(0x1ED4)));


extern volatile __bit LTH13 __attribute__((address(0x1ED5)));


extern volatile __bit LTH14 __attribute__((address(0x1ED6)));


extern volatile __bit LTH15 __attribute__((address(0x1ED7)));


extern volatile __bit LTH2 __attribute__((address(0x1ECA)));


extern volatile __bit LTH3 __attribute__((address(0x1ECB)));


extern volatile __bit LTH4 __attribute__((address(0x1ECC)));


extern volatile __bit LTH5 __attribute__((address(0x1ECD)));


extern volatile __bit LTH6 __attribute__((address(0x1ECE)));


extern volatile __bit LTH7 __attribute__((address(0x1ECF)));


extern volatile __bit LTH8 __attribute__((address(0x1ED0)));


extern volatile __bit LTH9 __attribute__((address(0x1ED1)));


extern volatile __bit LTHR __attribute__((address(0x1FBD)));


extern volatile __bit LVDMD __attribute__((address(0x305)));


extern volatile __bit MAINPR0 __attribute__((address(0x5F0)));


extern volatile __bit MAINPR1 __attribute__((address(0x5F1)));


extern volatile __bit MAINPR2 __attribute__((address(0x5F2)));


extern volatile __bit MATH __attribute__((address(0x1FBC)));


extern volatile __bit MC1OUT __attribute__((address(0x378)));


extern volatile __bit MC2OUT __attribute__((address(0x379)));


extern volatile __bit MCLC0 __attribute__((address(0x6A0)));


extern volatile __bit MCLC1 __attribute__((address(0x6A1)));


extern volatile __bit MCLC2 __attribute__((address(0x6A2)));


extern volatile __bit MCLC3 __attribute__((address(0x6A3)));


extern volatile __bit MCLC4 __attribute__((address(0x6A4)));


extern volatile __bit MCLC5 __attribute__((address(0x6A5)));


extern volatile __bit MCLC6 __attribute__((address(0x6A6)));


extern volatile __bit MCLC7 __attribute__((address(0x6A7)));


extern volatile __bit MD0 __attribute__((address(0x1FA8)));


extern volatile __bit MD1 __attribute__((address(0x1FA9)));


extern volatile __bit MD16 __attribute__((address(0x18D4)));


extern volatile __bit MD1BIT __attribute__((address(0x350)));


extern volatile __bit MD1CH0 __attribute__((address(0x370)));


extern volatile __bit MD1CH1 __attribute__((address(0x371)));


extern volatile __bit MD1CH2 __attribute__((address(0x372)));


extern volatile __bit MD1CH3 __attribute__((address(0x373)));


extern volatile __bit MD1CH4 __attribute__((address(0x374)));


extern volatile __bit MD1CHPOL __attribute__((address(0x35D)));


extern volatile __bit MD1CHSYNC __attribute__((address(0x35C)));


extern volatile __bit MD1CL0 __attribute__((address(0x368)));


extern volatile __bit MD1CL1 __attribute__((address(0x369)));


extern volatile __bit MD1CL2 __attribute__((address(0x36A)));


extern volatile __bit MD1CL3 __attribute__((address(0x36B)));


extern volatile __bit MD1CL4 __attribute__((address(0x36C)));


extern volatile __bit MD1CLPOL __attribute__((address(0x359)));


extern volatile __bit MD1CLSYNC __attribute__((address(0x358)));


extern volatile __bit MD1EN __attribute__((address(0x357)));


extern volatile __bit MD1MS0 __attribute__((address(0x360)));


extern volatile __bit MD1MS1 __attribute__((address(0x361)));


extern volatile __bit MD1MS2 __attribute__((address(0x362)));


extern volatile __bit MD1MS3 __attribute__((address(0x363)));


extern volatile __bit MD1MS4 __attribute__((address(0x364)));


extern volatile __bit MD1MS5 __attribute__((address(0x365)));


extern volatile __bit MD1OPOL __attribute__((address(0x354)));


extern volatile __bit MD1OUT __attribute__((address(0x355)));


extern volatile __bit MD2 __attribute__((address(0x1FAA)));


extern volatile __bit MDCARHPPS0 __attribute__((address(0x12F8)));


extern volatile __bit MDCARHPPS1 __attribute__((address(0x12F9)));


extern volatile __bit MDCARHPPS2 __attribute__((address(0x12FA)));


extern volatile __bit MDCARHPPS3 __attribute__((address(0x12FB)));


extern volatile __bit MDCARHPPS4 __attribute__((address(0x12FC)));


extern volatile __bit MDCARLPPS0 __attribute__((address(0x12F0)));


extern volatile __bit MDCARLPPS1 __attribute__((address(0x12F1)));


extern volatile __bit MDCARLPPS2 __attribute__((address(0x12F2)));


extern volatile __bit MDCARLPPS3 __attribute__((address(0x12F3)));


extern volatile __bit MDCARLPPS4 __attribute__((address(0x12F4)));


extern volatile __bit MDR __attribute__((address(0x14A3)));


extern volatile __bit MDSRCPPS0 __attribute__((address(0x1300)));


extern volatile __bit MDSRCPPS1 __attribute__((address(0x1301)));


extern volatile __bit MDSRCPPS2 __attribute__((address(0x1302)));


extern volatile __bit MDSRCPPS3 __attribute__((address(0x1303)));


extern volatile __bit MDSRCPPS4 __attribute__((address(0x1304)));


extern volatile __bit MEMV __attribute__((address(0x2789)));


extern volatile __bit MFOEN __attribute__((address(0x59D)));


extern volatile __bit MFOR __attribute__((address(0x595)));


extern volatile __bit MMA __attribute__((address(0x14C5)));


extern volatile __bit MODIE __attribute__((address(0x8F3)));


extern volatile __bit MODIF __attribute__((address(0x8E3)));


extern volatile __bit MREG __attribute__((address(0x1B02)));


extern volatile __bit MS0 __attribute__((address(0x360)));


extern volatile __bit MS1 __attribute__((address(0x361)));


extern volatile __bit MS2 __attribute__((address(0x362)));


extern volatile __bit MS3 __attribute__((address(0x363)));


extern volatile __bit MS4 __attribute__((address(0x364)));


extern volatile __bit MS5 __attribute__((address(0x365)));


extern volatile __bit NACK1IE __attribute__((address(0x14B8)));


extern volatile __bit NACK1IF __attribute__((address(0x14BC)));


extern volatile __bit NACKERR __attribute__((address(0x9F2)));


extern volatile __bit NACKIE __attribute__((address(0x14B8)));


extern volatile __bit NACKIF __attribute__((address(0x14BC)));


extern volatile __bit NBIT0ERR __attribute__((address(0x9F0)));


extern volatile __bit NBIT1ERR __attribute__((address(0x9F1)));


extern volatile __bit NCO1ACC0 __attribute__((address(0x2200)));


extern volatile __bit NCO1ACC1 __attribute__((address(0x2201)));


extern volatile __bit NCO1ACC10 __attribute__((address(0x220A)));


extern volatile __bit NCO1ACC11 __attribute__((address(0x220B)));


extern volatile __bit NCO1ACC12 __attribute__((address(0x220C)));


extern volatile __bit NCO1ACC13 __attribute__((address(0x220D)));


extern volatile __bit NCO1ACC14 __attribute__((address(0x220E)));


extern volatile __bit NCO1ACC15 __attribute__((address(0x220F)));


extern volatile __bit NCO1ACC16 __attribute__((address(0x2210)));


extern volatile __bit NCO1ACC17 __attribute__((address(0x2211)));


extern volatile __bit NCO1ACC18 __attribute__((address(0x2212)));


extern volatile __bit NCO1ACC19 __attribute__((address(0x2213)));


extern volatile __bit NCO1ACC2 __attribute__((address(0x2202)));


extern volatile __bit NCO1ACC3 __attribute__((address(0x2203)));


extern volatile __bit NCO1ACC4 __attribute__((address(0x2204)));


extern volatile __bit NCO1ACC5 __attribute__((address(0x2205)));


extern volatile __bit NCO1ACC6 __attribute__((address(0x2206)));


extern volatile __bit NCO1ACC7 __attribute__((address(0x2207)));


extern volatile __bit NCO1ACC8 __attribute__((address(0x2208)));


extern volatile __bit NCO1ACC9 __attribute__((address(0x2209)));


extern volatile __bit NCO1CKS0 __attribute__((address(0x2238)));


extern volatile __bit NCO1CKS1 __attribute__((address(0x2239)));


extern volatile __bit NCO1CKS2 __attribute__((address(0x223A)));


extern volatile __bit NCO1CKS3 __attribute__((address(0x223B)));


extern volatile __bit NCO1EN __attribute__((address(0x2237)));


extern volatile __bit NCO1IE __attribute__((address(0x2523)));


extern volatile __bit NCO1IF __attribute__((address(0x25A3)));


extern volatile __bit NCO1INC0 __attribute__((address(0x2218)));


extern volatile __bit NCO1INC1 __attribute__((address(0x2219)));


extern volatile __bit NCO1INC10 __attribute__((address(0x2222)));


extern volatile __bit NCO1INC11 __attribute__((address(0x2223)));


extern volatile __bit NCO1INC12 __attribute__((address(0x2224)));


extern volatile __bit NCO1INC13 __attribute__((address(0x2225)));


extern volatile __bit NCO1INC14 __attribute__((address(0x2226)));


extern volatile __bit NCO1INC15 __attribute__((address(0x2227)));


extern volatile __bit NCO1INC16 __attribute__((address(0x2228)));


extern volatile __bit NCO1INC17 __attribute__((address(0x2229)));


extern volatile __bit NCO1INC18 __attribute__((address(0x222A)));


extern volatile __bit NCO1INC19 __attribute__((address(0x222B)));


extern volatile __bit NCO1INC2 __attribute__((address(0x221A)));


extern volatile __bit NCO1INC3 __attribute__((address(0x221B)));


extern volatile __bit NCO1INC4 __attribute__((address(0x221C)));


extern volatile __bit NCO1INC5 __attribute__((address(0x221D)));


extern volatile __bit NCO1INC6 __attribute__((address(0x221E)));


extern volatile __bit NCO1INC7 __attribute__((address(0x221F)));


extern volatile __bit NCO1INC8 __attribute__((address(0x2220)));


extern volatile __bit NCO1INC9 __attribute__((address(0x2221)));


extern volatile __bit NCO1IP __attribute__((address(0x1B43)));


extern volatile __bit NCO1MD __attribute__((address(0x320)));


extern volatile __bit NCO1OUT __attribute__((address(0x2235)));


extern volatile __bit NCO1PFM __attribute__((address(0x2230)));


extern volatile __bit NCO1POL __attribute__((address(0x2234)));


extern volatile __bit NCO1PWS0 __attribute__((address(0x223D)));


extern volatile __bit NCO1PWS1 __attribute__((address(0x223E)));


extern volatile __bit NCO1PWS2 __attribute__((address(0x223F)));


extern volatile __bit NCO2ACC0 __attribute__((address(0x2240)));


extern volatile __bit NCO2ACC1 __attribute__((address(0x2241)));


extern volatile __bit NCO2ACC10 __attribute__((address(0x224A)));


extern volatile __bit NCO2ACC11 __attribute__((address(0x224B)));


extern volatile __bit NCO2ACC12 __attribute__((address(0x224C)));


extern volatile __bit NCO2ACC13 __attribute__((address(0x224D)));


extern volatile __bit NCO2ACC14 __attribute__((address(0x224E)));


extern volatile __bit NCO2ACC15 __attribute__((address(0x224F)));


extern volatile __bit NCO2ACC16 __attribute__((address(0x2250)));


extern volatile __bit NCO2ACC17 __attribute__((address(0x2251)));


extern volatile __bit NCO2ACC18 __attribute__((address(0x2252)));


extern volatile __bit NCO2ACC19 __attribute__((address(0x2253)));


extern volatile __bit NCO2ACC2 __attribute__((address(0x2242)));


extern volatile __bit NCO2ACC3 __attribute__((address(0x2243)));


extern volatile __bit NCO2ACC4 __attribute__((address(0x2244)));


extern volatile __bit NCO2ACC5 __attribute__((address(0x2245)));


extern volatile __bit NCO2ACC6 __attribute__((address(0x2246)));


extern volatile __bit NCO2ACC7 __attribute__((address(0x2247)));


extern volatile __bit NCO2ACC8 __attribute__((address(0x2248)));


extern volatile __bit NCO2ACC9 __attribute__((address(0x2249)));


extern volatile __bit NCO2CKS0 __attribute__((address(0x2278)));


extern volatile __bit NCO2CKS1 __attribute__((address(0x2279)));


extern volatile __bit NCO2CKS2 __attribute__((address(0x227A)));


extern volatile __bit NCO2CKS3 __attribute__((address(0x227B)));


extern volatile __bit NCO2EN __attribute__((address(0x2277)));


extern volatile __bit NCO2IE __attribute__((address(0x2543)));


extern volatile __bit NCO2IF __attribute__((address(0x25C3)));


extern volatile __bit NCO2INC0 __attribute__((address(0x2258)));


extern volatile __bit NCO2INC1 __attribute__((address(0x2259)));


extern volatile __bit NCO2INC10 __attribute__((address(0x2262)));


extern volatile __bit NCO2INC11 __attribute__((address(0x2263)));


extern volatile __bit NCO2INC12 __attribute__((address(0x2264)));


extern volatile __bit NCO2INC13 __attribute__((address(0x2265)));


extern volatile __bit NCO2INC14 __attribute__((address(0x2266)));


extern volatile __bit NCO2INC15 __attribute__((address(0x2267)));


extern volatile __bit NCO2INC16 __attribute__((address(0x2268)));


extern volatile __bit NCO2INC17 __attribute__((address(0x2269)));


extern volatile __bit NCO2INC18 __attribute__((address(0x226A)));


extern volatile __bit NCO2INC19 __attribute__((address(0x226B)));


extern volatile __bit NCO2INC2 __attribute__((address(0x225A)));


extern volatile __bit NCO2INC3 __attribute__((address(0x225B)));


extern volatile __bit NCO2INC4 __attribute__((address(0x225C)));


extern volatile __bit NCO2INC5 __attribute__((address(0x225D)));


extern volatile __bit NCO2INC6 __attribute__((address(0x225E)));


extern volatile __bit NCO2INC7 __attribute__((address(0x225F)));


extern volatile __bit NCO2INC8 __attribute__((address(0x2260)));


extern volatile __bit NCO2INC9 __attribute__((address(0x2261)));


extern volatile __bit NCO2IP __attribute__((address(0x1B63)));


extern volatile __bit NCO2MD __attribute__((address(0x321)));


extern volatile __bit NCO2OUT __attribute__((address(0x2275)));


extern volatile __bit NCO2PFM __attribute__((address(0x2270)));


extern volatile __bit NCO2POL __attribute__((address(0x2274)));


extern volatile __bit NCO2PWS0 __attribute__((address(0x227D)));


extern volatile __bit NCO2PWS1 __attribute__((address(0x227E)));


extern volatile __bit NCO2PWS2 __attribute__((address(0x227F)));


extern volatile __bit NCO3ACC0 __attribute__((address(0x2280)));


extern volatile __bit NCO3ACC1 __attribute__((address(0x2281)));


extern volatile __bit NCO3ACC10 __attribute__((address(0x228A)));


extern volatile __bit NCO3ACC11 __attribute__((address(0x228B)));


extern volatile __bit NCO3ACC12 __attribute__((address(0x228C)));


extern volatile __bit NCO3ACC13 __attribute__((address(0x228D)));


extern volatile __bit NCO3ACC14 __attribute__((address(0x228E)));


extern volatile __bit NCO3ACC15 __attribute__((address(0x228F)));


extern volatile __bit NCO3ACC16 __attribute__((address(0x2290)));


extern volatile __bit NCO3ACC17 __attribute__((address(0x2291)));


extern volatile __bit NCO3ACC18 __attribute__((address(0x2292)));


extern volatile __bit NCO3ACC19 __attribute__((address(0x2293)));


extern volatile __bit NCO3ACC2 __attribute__((address(0x2282)));


extern volatile __bit NCO3ACC3 __attribute__((address(0x2283)));


extern volatile __bit NCO3ACC4 __attribute__((address(0x2284)));


extern volatile __bit NCO3ACC5 __attribute__((address(0x2285)));


extern volatile __bit NCO3ACC6 __attribute__((address(0x2286)));


extern volatile __bit NCO3ACC7 __attribute__((address(0x2287)));


extern volatile __bit NCO3ACC8 __attribute__((address(0x2288)));


extern volatile __bit NCO3ACC9 __attribute__((address(0x2289)));


extern volatile __bit NCO3CKS0 __attribute__((address(0x22B8)));


extern volatile __bit NCO3CKS1 __attribute__((address(0x22B9)));


extern volatile __bit NCO3CKS2 __attribute__((address(0x22BA)));


extern volatile __bit NCO3CKS3 __attribute__((address(0x22BB)));


extern volatile __bit NCO3EN __attribute__((address(0x22B7)));


extern volatile __bit NCO3IE __attribute__((address(0x2563)));


extern volatile __bit NCO3IF __attribute__((address(0x25E3)));


extern volatile __bit NCO3INC0 __attribute__((address(0x2298)));


extern volatile __bit NCO3INC1 __attribute__((address(0x2299)));


extern volatile __bit NCO3INC10 __attribute__((address(0x22A2)));


extern volatile __bit NCO3INC11 __attribute__((address(0x22A3)));


extern volatile __bit NCO3INC12 __attribute__((address(0x22A4)));


extern volatile __bit NCO3INC13 __attribute__((address(0x22A5)));


extern volatile __bit NCO3INC14 __attribute__((address(0x22A6)));


extern volatile __bit NCO3INC15 __attribute__((address(0x22A7)));


extern volatile __bit NCO3INC16 __attribute__((address(0x22A8)));


extern volatile __bit NCO3INC17 __attribute__((address(0x22A9)));


extern volatile __bit NCO3INC18 __attribute__((address(0x22AA)));


extern volatile __bit NCO3INC19 __attribute__((address(0x22AB)));


extern volatile __bit NCO3INC2 __attribute__((address(0x229A)));


extern volatile __bit NCO3INC3 __attribute__((address(0x229B)));


extern volatile __bit NCO3INC4 __attribute__((address(0x229C)));


extern volatile __bit NCO3INC5 __attribute__((address(0x229D)));


extern volatile __bit NCO3INC6 __attribute__((address(0x229E)));


extern volatile __bit NCO3INC7 __attribute__((address(0x229F)));


extern volatile __bit NCO3INC8 __attribute__((address(0x22A0)));


extern volatile __bit NCO3INC9 __attribute__((address(0x22A1)));


extern volatile __bit NCO3IP __attribute__((address(0x1B83)));


extern volatile __bit NCO3MD __attribute__((address(0x322)));


extern volatile __bit NCO3OUT __attribute__((address(0x22B5)));


extern volatile __bit NCO3PFM __attribute__((address(0x22B0)));


extern volatile __bit NCO3POL __attribute__((address(0x22B4)));


extern volatile __bit NCO3PWS0 __attribute__((address(0x22BD)));


extern volatile __bit NCO3PWS1 __attribute__((address(0x22BE)));


extern volatile __bit NCO3PWS2 __attribute__((address(0x22BF)));


extern volatile __bit NCRCERR __attribute__((address(0x9F5)));


extern volatile __bit NDIV0 __attribute__((address(0x568)));


extern volatile __bit NDIV1 __attribute__((address(0x569)));


extern volatile __bit NDIV2 __attribute__((address(0x56A)));


extern volatile __bit NDIV3 __attribute__((address(0x56B)));


extern volatile __bit NFORMERR __attribute__((address(0x9F3)));


extern volatile __bit NOSC0 __attribute__((address(0x56C)));


extern volatile __bit NOSC1 __attribute__((address(0x56D)));


extern volatile __bit NOSC2 __attribute__((address(0x56E)));


extern volatile __bit NOSCR __attribute__((address(0x57B)));


extern volatile __bit NOT_A __attribute__((address(0x14C3)));


extern volatile __bit NOT_ADDRESS __attribute__((address(0x14C3)));


extern volatile __bit NOT_BOR __attribute__((address(0x2780)));


extern volatile __bit NOT_MEMV __attribute__((address(0x2789)));


extern volatile __bit NOT_POR __attribute__((address(0x2781)));


extern volatile __bit NOT_RI __attribute__((address(0x2782)));


extern volatile __bit NOT_RMCLR __attribute__((address(0x2783)));


extern volatile __bit NOT_RWDT __attribute__((address(0x2784)));


extern volatile __bit NOT_T1DONE __attribute__((address(0x18FB)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x18F2)));


extern volatile __bit NOT_T3DONE __attribute__((address(0x195B)));


extern volatile __bit NOT_T3SYNC __attribute__((address(0x1952)));


extern volatile __bit NOT_T5DONE __attribute__((address(0x19BB)));


extern volatile __bit NOT_T5SYNC __attribute__((address(0x19B2)));


extern volatile __bit NOT_W __attribute__((address(0x14C4)));


extern volatile __bit NOT_WDTWV __attribute__((address(0x2785)));


extern volatile __bit NOT_WRITE __attribute__((address(0x14C4)));


extern volatile __bit NREF0 __attribute__((address(0x1FC4)));


extern volatile __bit NRERRCNT0 __attribute__((address(0x9C0)));


extern volatile __bit NRERRCNT1 __attribute__((address(0x9C1)));


extern volatile __bit NRERRCNT2 __attribute__((address(0x9C2)));


extern volatile __bit NRERRCNT3 __attribute__((address(0x9C3)));


extern volatile __bit NRERRCNT4 __attribute__((address(0x9C4)));


extern volatile __bit NRERRCNT5 __attribute__((address(0x9C5)));


extern volatile __bit NRERRCNT6 __attribute__((address(0x9C6)));


extern volatile __bit NRERRCNT7 __attribute__((address(0x9C7)));


extern volatile __bit NSS0 __attribute__((address(0x3F8)));


extern volatile __bit NSTUFERR __attribute__((address(0x9F4)));


extern volatile __bit NTERRCNT0 __attribute__((address(0x9C8)));


extern volatile __bit NTERRCNT1 __attribute__((address(0x9C9)));


extern volatile __bit NTERRCNT2 __attribute__((address(0x9CA)));


extern volatile __bit NTERRCNT3 __attribute__((address(0x9CB)));


extern volatile __bit NTERRCNT4 __attribute__((address(0x9CC)));


extern volatile __bit NTERRCNT5 __attribute__((address(0x9CD)));


extern volatile __bit NTERRCNT6 __attribute__((address(0x9CE)));


extern volatile __bit NTERRCNT7 __attribute__((address(0x9CF)));


extern volatile __bit NVMADR0 __attribute__((address(0x218)));


extern volatile __bit NVMADR1 __attribute__((address(0x219)));


extern volatile __bit NVMADR10 __attribute__((address(0x222)));


extern volatile __bit NVMADR11 __attribute__((address(0x223)));


extern volatile __bit NVMADR12 __attribute__((address(0x224)));


extern volatile __bit NVMADR13 __attribute__((address(0x225)));


extern volatile __bit NVMADR14 __attribute__((address(0x226)));


extern volatile __bit NVMADR15 __attribute__((address(0x227)));


extern volatile __bit NVMADR16 __attribute__((address(0x228)));


extern volatile __bit NVMADR17 __attribute__((address(0x229)));


extern volatile __bit NVMADR18 __attribute__((address(0x22A)));


extern volatile __bit NVMADR19 __attribute__((address(0x22B)));


extern volatile __bit NVMADR2 __attribute__((address(0x21A)));


extern volatile __bit NVMADR20 __attribute__((address(0x22C)));


extern volatile __bit NVMADR21 __attribute__((address(0x22D)));


extern volatile __bit NVMADR3 __attribute__((address(0x21B)));


extern volatile __bit NVMADR4 __attribute__((address(0x21C)));


extern volatile __bit NVMADR5 __attribute__((address(0x21D)));


extern volatile __bit NVMADR6 __attribute__((address(0x21E)));


extern volatile __bit NVMADR7 __attribute__((address(0x21F)));


extern volatile __bit NVMADR8 __attribute__((address(0x220)));


extern volatile __bit NVMADR9 __attribute__((address(0x221)));


extern volatile __bit NVMDAT0 __attribute__((address(0x230)));


extern volatile __bit NVMDAT1 __attribute__((address(0x231)));


extern volatile __bit NVMDAT10 __attribute__((address(0x23A)));


extern volatile __bit NVMDAT11 __attribute__((address(0x23B)));


extern volatile __bit NVMDAT12 __attribute__((address(0x23C)));


extern volatile __bit NVMDAT13 __attribute__((address(0x23D)));


extern volatile __bit NVMDAT14 __attribute__((address(0x23E)));


extern volatile __bit NVMDAT15 __attribute__((address(0x23F)));


extern volatile __bit NVMDAT2 __attribute__((address(0x232)));


extern volatile __bit NVMDAT3 __attribute__((address(0x233)));


extern volatile __bit NVMDAT4 __attribute__((address(0x234)));


extern volatile __bit NVMDAT5 __attribute__((address(0x235)));


extern volatile __bit NVMDAT6 __attribute__((address(0x236)));


extern volatile __bit NVMDAT7 __attribute__((address(0x237)));


extern volatile __bit NVMDAT8 __attribute__((address(0x238)));


extern volatile __bit NVMDAT9 __attribute__((address(0x239)));


extern volatile __bit NVMIE __attribute__((address(0x2568)));


extern volatile __bit NVMIF __attribute__((address(0x25E8)));


extern volatile __bit NVMIP __attribute__((address(0x1B88)));


extern volatile __bit ODCA0 __attribute__((address(0x2010)));


extern volatile __bit ODCA1 __attribute__((address(0x2011)));


extern volatile __bit ODCA2 __attribute__((address(0x2012)));


extern volatile __bit ODCA3 __attribute__((address(0x2013)));


extern volatile __bit ODCA4 __attribute__((address(0x2014)));


extern volatile __bit ODCA5 __attribute__((address(0x2015)));


extern volatile __bit ODCA6 __attribute__((address(0x2016)));


extern volatile __bit ODCA7 __attribute__((address(0x2017)));


extern volatile __bit ODCB0 __attribute__((address(0x2050)));


extern volatile __bit ODCB1 __attribute__((address(0x2051)));


extern volatile __bit ODCB2 __attribute__((address(0x2052)));


extern volatile __bit ODCB3 __attribute__((address(0x2053)));


extern volatile __bit ODCB4 __attribute__((address(0x2054)));


extern volatile __bit ODCB5 __attribute__((address(0x2055)));


extern volatile __bit ODCB6 __attribute__((address(0x2056)));


extern volatile __bit ODCB7 __attribute__((address(0x2057)));


extern volatile __bit ODCC0 __attribute__((address(0x2090)));


extern volatile __bit ODCC1 __attribute__((address(0x2091)));


extern volatile __bit ODCC2 __attribute__((address(0x2092)));


extern volatile __bit ODCC3 __attribute__((address(0x2093)));


extern volatile __bit ODCC4 __attribute__((address(0x2094)));


extern volatile __bit ODCC5 __attribute__((address(0x2095)));


extern volatile __bit ODCC6 __attribute__((address(0x2096)));


extern volatile __bit ODCC7 __attribute__((address(0x2097)));


extern volatile __bit ODCD0 __attribute__((address(0x20D0)));


extern volatile __bit ODCD1 __attribute__((address(0x20D1)));


extern volatile __bit ODCD2 __attribute__((address(0x20D2)));


extern volatile __bit ODCD3 __attribute__((address(0x20D3)));


extern volatile __bit ODCD4 __attribute__((address(0x20D4)));


extern volatile __bit ODCD5 __attribute__((address(0x20D5)));


extern volatile __bit ODCD6 __attribute__((address(0x20D6)));


extern volatile __bit ODCD7 __attribute__((address(0x20D7)));


extern volatile __bit ODCE0 __attribute__((address(0x2110)));


extern volatile __bit ODCE1 __attribute__((address(0x2111)));


extern volatile __bit ODCE2 __attribute__((address(0x2112)));


extern volatile __bit OE __attribute__((address(0x6B6)));


extern volatile __bit OE0 __attribute__((address(0x3FC)));


extern volatile __bit OE1 __attribute__((address(0x3FD)));


extern volatile __bit OPMOD0 __attribute__((address(0x815)));


extern volatile __bit OPMOD1 __attribute__((address(0x816)));


extern volatile __bit OPMOD2 __attribute__((address(0x817)));


extern volatile __bit ORDY __attribute__((address(0x57C)));


extern volatile __bit OSFIE __attribute__((address(0x24F2)));


extern volatile __bit OSFIF __attribute__((address(0x2572)));


extern volatile __bit OSFIP __attribute__((address(0x1B12)));


extern volatile __bit OUT0 __attribute__((address(0x1A98)));


extern volatile __bit OUT1 __attribute__((address(0x1A99)));


extern volatile __bit OUT10 __attribute__((address(0x1AA2)));


extern volatile __bit OUT11 __attribute__((address(0x1AA3)));


extern volatile __bit OUT12 __attribute__((address(0x1AA4)));


extern volatile __bit OUT13 __attribute__((address(0x1AA5)));


extern volatile __bit OUT14 __attribute__((address(0x1AA6)));


extern volatile __bit OUT15 __attribute__((address(0x1AA7)));


extern volatile __bit OUT16 __attribute__((address(0x1AA8)));


extern volatile __bit OUT17 __attribute__((address(0x1AA9)));


extern volatile __bit OUT18 __attribute__((address(0x1AAA)));


extern volatile __bit OUT19 __attribute__((address(0x1AAB)));


extern volatile __bit OUT2 __attribute__((address(0x1A9A)));


extern volatile __bit OUT20 __attribute__((address(0x1AAC)));


extern volatile __bit OUT21 __attribute__((address(0x1AAD)));


extern volatile __bit OUT22 __attribute__((address(0x1AAE)));


extern volatile __bit OUT23 __attribute__((address(0x1AAF)));


extern volatile __bit OUT24 __attribute__((address(0x1AB0)));


extern volatile __bit OUT25 __attribute__((address(0x1AB1)));


extern volatile __bit OUT26 __attribute__((address(0x1AB2)));


extern volatile __bit OUT27 __attribute__((address(0x1AB3)));


extern volatile __bit OUT28 __attribute__((address(0x1AB4)));


extern volatile __bit OUT29 __attribute__((address(0x1AB5)));


extern volatile __bit OUT3 __attribute__((address(0x1A9B)));


extern volatile __bit OUT30 __attribute__((address(0x1AB6)));


extern volatile __bit OUT31 __attribute__((address(0x1AB7)));


extern volatile __bit OUT4 __attribute__((address(0x1A9C)));


extern volatile __bit OUT5 __attribute__((address(0x1A9D)));


extern volatile __bit OUT6 __attribute__((address(0x1A9E)));


extern volatile __bit OUT7 __attribute__((address(0x1A9F)));


extern volatile __bit OUT8 __attribute__((address(0x1AA0)));


extern volatile __bit OUT9 __attribute__((address(0x1AA1)));


extern volatile __bit PC1IE __attribute__((address(0x14DA)));


extern volatile __bit PC1IF __attribute__((address(0x14D2)));


extern volatile __bit PCIE __attribute__((address(0x14DA)));


extern volatile __bit PCIF __attribute__((address(0x14D2)));


extern volatile __bit PLEN0 __attribute__((address(0x1AC0)));


extern volatile __bit PLEN1 __attribute__((address(0x1AC1)));


extern volatile __bit PLEN2 __attribute__((address(0x1AC2)));


extern volatile __bit PLEN3 __attribute__((address(0x1AC3)));


extern volatile __bit PLEN4 __attribute__((address(0x1AC4)));


extern volatile __bit PLLEN __attribute__((address(0x598)));


extern volatile __bit PLLR __attribute__((address(0x590)));


extern volatile __bit PMSYS0 __attribute__((address(0x244)));


extern volatile __bit PMSYS1 __attribute__((address(0x245)));


extern volatile __bit POR __attribute__((address(0x2781)));


extern volatile __bit PORT __attribute__((address(0x11F3)));


extern volatile __bit PPOL __attribute__((address(0x1FA7)));


extern volatile __bit PPSLOCKED __attribute__((address(0x1000)));


extern volatile __bit PR10 __attribute__((address(0x1852)));


extern volatile __bit PR11 __attribute__((address(0x1853)));


extern volatile __bit PR12 __attribute__((address(0x1854)));


extern volatile __bit PR13 __attribute__((address(0x1855)));


extern volatile __bit PR14 __attribute__((address(0x1856)));


extern volatile __bit PR15 __attribute__((address(0x1857)));


extern volatile __bit PR16 __attribute__((address(0x1858)));


extern volatile __bit PR17 __attribute__((address(0x1859)));


extern volatile __bit PR18 __attribute__((address(0x185A)));


extern volatile __bit PR19 __attribute__((address(0x185B)));


extern volatile __bit PR20 __attribute__((address(0x185C)));


extern volatile __bit PR21 __attribute__((address(0x185D)));


extern volatile __bit PR22 __attribute__((address(0x185E)));


extern volatile __bit PR23 __attribute__((address(0x185F)));


extern volatile __bit PR7 __attribute__((address(0x184F)));


extern volatile __bit PR8 __attribute__((address(0x1850)));


extern volatile __bit PR9 __attribute__((address(0x1851)));


extern volatile __bit PRE0 __attribute__((address(0x1F88)));


extern volatile __bit PRE1 __attribute__((address(0x1F89)));


extern volatile __bit PRE10 __attribute__((address(0x1F92)));


extern volatile __bit PRE11 __attribute__((address(0x1F93)));


extern volatile __bit PRE12 __attribute__((address(0x1F94)));


extern volatile __bit PRE2 __attribute__((address(0x1F8A)));


extern volatile __bit PRE3 __attribute__((address(0x1F8B)));


extern volatile __bit PRE4 __attribute__((address(0x1F8C)));


extern volatile __bit PRE5 __attribute__((address(0x1F8D)));


extern volatile __bit PRE6 __attribute__((address(0x1F8E)));


extern volatile __bit PRE7 __attribute__((address(0x1F8F)));


extern volatile __bit PRE8 __attribute__((address(0x1F90)));


extern volatile __bit PRE9 __attribute__((address(0x1F91)));


extern volatile __bit PREF0 __attribute__((address(0x1FC0)));


extern volatile __bit PREF1 __attribute__((address(0x1FC1)));


extern volatile __bit PREV0 __attribute__((address(0x1F40)));


extern volatile __bit PREV1 __attribute__((address(0x1F41)));


extern volatile __bit PREV10 __attribute__((address(0x1F4A)));


extern volatile __bit PREV11 __attribute__((address(0x1F4B)));


extern volatile __bit PREV12 __attribute__((address(0x1F4C)));


extern volatile __bit PREV13 __attribute__((address(0x1F4D)));


extern volatile __bit PREV14 __attribute__((address(0x1F4E)));


extern volatile __bit PREV15 __attribute__((address(0x1F4F)));


extern volatile __bit PREV2 __attribute__((address(0x1F42)));


extern volatile __bit PREV3 __attribute__((address(0x1F43)));


extern volatile __bit PREV4 __attribute__((address(0x1F44)));


extern volatile __bit PREV5 __attribute__((address(0x1F45)));


extern volatile __bit PREV6 __attribute__((address(0x1F46)));


extern volatile __bit PREV7 __attribute__((address(0x1F47)));


extern volatile __bit PREV8 __attribute__((address(0x1F48)));


extern volatile __bit PREV9 __attribute__((address(0x1F49)));


extern volatile __bit PRLOCKED __attribute__((address(0x5A0)));


extern volatile __bit PSCNT0 __attribute__((address(0x3D0)));


extern volatile __bit PSCNT1 __attribute__((address(0x3D1)));


extern volatile __bit PSCNT10 __attribute__((address(0x3DA)));


extern volatile __bit PSCNT11 __attribute__((address(0x3DB)));


extern volatile __bit PSCNT12 __attribute__((address(0x3DC)));


extern volatile __bit PSCNT13 __attribute__((address(0x3DD)));


extern volatile __bit PSCNT14 __attribute__((address(0x3DE)));


extern volatile __bit PSCNT15 __attribute__((address(0x3DF)));


extern volatile __bit PSCNT16 __attribute__((address(0x3E0)));


extern volatile __bit PSCNT17 __attribute__((address(0x3E1)));


extern volatile __bit PSCNT2 __attribute__((address(0x3D2)));


extern volatile __bit PSCNT3 __attribute__((address(0x3D3)));


extern volatile __bit PSCNT4 __attribute__((address(0x3D4)));


extern volatile __bit PSCNT5 __attribute__((address(0x3D5)));


extern volatile __bit PSCNT6 __attribute__((address(0x3D6)));


extern volatile __bit PSCNT7 __attribute__((address(0x3D7)));


extern volatile __bit PSCNT8 __attribute__((address(0x3D8)));


extern volatile __bit PSCNT9 __attribute__((address(0x3D9)));


extern volatile __bit PSIS __attribute__((address(0x1FAF)));


extern volatile __bit PSS0 __attribute__((address(0x3FA)));


extern volatile __bit PSS1 __attribute__((address(0x3FB)));


extern volatile __bit PWM1EN __attribute__((address(0x24E8)));


extern volatile __bit PWM1ERSPPS0 __attribute__((address(0x1298)));


extern volatile __bit PWM1ERSPPS1 __attribute__((address(0x1299)));


extern volatile __bit PWM1ERSPPS2 __attribute__((address(0x129A)));


extern volatile __bit PWM1ERSPPS3 __attribute__((address(0x129B)));


extern volatile __bit PWM1ERSPPS4 __attribute__((address(0x129C)));


extern volatile __bit PWM1IE __attribute__((address(0x2517)));


extern volatile __bit PWM1IF __attribute__((address(0x2597)));


extern volatile __bit PWM1IP __attribute__((address(0x1B37)));


extern volatile __bit PWM1LD __attribute__((address(0x24E0)));


extern volatile __bit PWM1MD __attribute__((address(0x32C)));


extern volatile __bit PWM1PIE __attribute__((address(0x2516)));


extern volatile __bit PWM1PIF __attribute__((address(0x2596)));


extern volatile __bit PWM1PIP __attribute__((address(0x1B36)));


extern volatile __bit PWM2EN __attribute__((address(0x24E9)));


extern volatile __bit PWM2ERSPPS0 __attribute__((address(0x12A0)));


extern volatile __bit PWM2ERSPPS1 __attribute__((address(0x12A1)));


extern volatile __bit PWM2ERSPPS2 __attribute__((address(0x12A2)));


extern volatile __bit PWM2ERSPPS3 __attribute__((address(0x12A3)));


extern volatile __bit PWM2ERSPPS4 __attribute__((address(0x12A4)));


extern volatile __bit PWM2ERSPPS5 __attribute__((address(0x12A5)));


extern volatile __bit PWM2IE __attribute__((address(0x251F)));


extern volatile __bit PWM2IF __attribute__((address(0x259F)));


extern volatile __bit PWM2IP __attribute__((address(0x1B3F)));


extern volatile __bit PWM2LD __attribute__((address(0x24E1)));


extern volatile __bit PWM2MD __attribute__((address(0x32D)));


extern volatile __bit PWM2PIE __attribute__((address(0x251E)));


extern volatile __bit PWM2PIF __attribute__((address(0x259E)));


extern volatile __bit PWM2PIP __attribute__((address(0x1B3E)));


extern volatile __bit PWM3EN __attribute__((address(0x24EA)));


extern volatile __bit PWM3ERSPPS0 __attribute__((address(0x12A8)));


extern volatile __bit PWM3ERSPPS1 __attribute__((address(0x12A9)));


extern volatile __bit PWM3ERSPPS2 __attribute__((address(0x12AA)));


extern volatile __bit PWM3ERSPPS3 __attribute__((address(0x12AB)));


extern volatile __bit PWM3ERSPPS4 __attribute__((address(0x12AC)));


extern volatile __bit PWM3IE __attribute__((address(0x252F)));


extern volatile __bit PWM3IF __attribute__((address(0x25AF)));


extern volatile __bit PWM3IP __attribute__((address(0x1B4F)));


extern volatile __bit PWM3LD __attribute__((address(0x24E2)));


extern volatile __bit PWM3MD __attribute__((address(0x32E)));


extern volatile __bit PWM3PIE __attribute__((address(0x252E)));


extern volatile __bit PWM3PIF __attribute__((address(0x25AE)));


extern volatile __bit PWM3PIP __attribute__((address(0x1B4E)));


extern volatile __bit PWM4EN __attribute__((address(0x24EB)));


extern volatile __bit PWM4IE __attribute__((address(0x253F)));


extern volatile __bit PWM4IF __attribute__((address(0x25BF)));


extern volatile __bit PWM4IP __attribute__((address(0x1B5F)));


extern volatile __bit PWM4LD __attribute__((address(0x24E3)));


extern volatile __bit PWM4MD __attribute__((address(0x32F)));


extern volatile __bit PWM4PIE __attribute__((address(0x253E)));


extern volatile __bit PWM4PIF __attribute__((address(0x25BE)));


extern volatile __bit PWM4PIP __attribute__((address(0x1B5E)));


extern volatile __bit PWMIN0PPS0 __attribute__((address(0x12B8)));


extern volatile __bit PWMIN0PPS1 __attribute__((address(0x12B9)));


extern volatile __bit PWMIN0PPS2 __attribute__((address(0x12BA)));


extern volatile __bit PWMIN0PPS3 __attribute__((address(0x12BB)));


extern volatile __bit PWMIN0PPS4 __attribute__((address(0x12BC)));


extern volatile __bit PWMIN0PPS5 __attribute__((address(0x12BD)));


extern volatile __bit PWMIN1PPS0 __attribute__((address(0x12C0)));


extern volatile __bit PWMIN1PPS1 __attribute__((address(0x12C1)));


extern volatile __bit PWMIN1PPS2 __attribute__((address(0x12C2)));


extern volatile __bit PWMIN1PPS3 __attribute__((address(0x12C3)));


extern volatile __bit PWMIN1PPS4 __attribute__((address(0x12C4)));


extern volatile __bit PWMIN1PPS5 __attribute__((address(0x12C5)));


extern volatile __bit PXEDIS __attribute__((address(0x806)));


extern volatile __bit RA0 __attribute__((address(0x2670)));


extern volatile __bit RA0PPS0 __attribute__((address(0x1008)));


extern volatile __bit RA0PPS1 __attribute__((address(0x1009)));


extern volatile __bit RA0PPS2 __attribute__((address(0x100A)));


extern volatile __bit RA0PPS3 __attribute__((address(0x100B)));


extern volatile __bit RA0PPS4 __attribute__((address(0x100C)));


extern volatile __bit RA0PPS5 __attribute__((address(0x100D)));


extern volatile __bit RA1 __attribute__((address(0x2671)));


extern volatile __bit RA1PPS0 __attribute__((address(0x1010)));


extern volatile __bit RA1PPS1 __attribute__((address(0x1011)));


extern volatile __bit RA1PPS2 __attribute__((address(0x1012)));


extern volatile __bit RA1PPS3 __attribute__((address(0x1013)));


extern volatile __bit RA1PPS4 __attribute__((address(0x1014)));


extern volatile __bit RA1PPS5 __attribute__((address(0x1015)));


extern volatile __bit RA2 __attribute__((address(0x2672)));


extern volatile __bit RA2PPS0 __attribute__((address(0x1018)));


extern volatile __bit RA2PPS1 __attribute__((address(0x1019)));


extern volatile __bit RA2PPS2 __attribute__((address(0x101A)));


extern volatile __bit RA2PPS3 __attribute__((address(0x101B)));


extern volatile __bit RA2PPS4 __attribute__((address(0x101C)));


extern volatile __bit RA2PPS5 __attribute__((address(0x101D)));


extern volatile __bit RA3 __attribute__((address(0x2673)));


extern volatile __bit RA3PPS0 __attribute__((address(0x1020)));


extern volatile __bit RA3PPS1 __attribute__((address(0x1021)));


extern volatile __bit RA3PPS2 __attribute__((address(0x1022)));


extern volatile __bit RA3PPS3 __attribute__((address(0x1023)));


extern volatile __bit RA3PPS4 __attribute__((address(0x1024)));


extern volatile __bit RA3PPS5 __attribute__((address(0x1025)));


extern volatile __bit RA4 __attribute__((address(0x2674)));


extern volatile __bit RA4PPS0 __attribute__((address(0x1028)));


extern volatile __bit RA4PPS1 __attribute__((address(0x1029)));


extern volatile __bit RA4PPS2 __attribute__((address(0x102A)));


extern volatile __bit RA4PPS3 __attribute__((address(0x102B)));


extern volatile __bit RA4PPS4 __attribute__((address(0x102C)));


extern volatile __bit RA4PPS5 __attribute__((address(0x102D)));


extern volatile __bit RA5 __attribute__((address(0x2675)));


extern volatile __bit RA5PPS0 __attribute__((address(0x1030)));


extern volatile __bit RA5PPS1 __attribute__((address(0x1031)));


extern volatile __bit RA5PPS2 __attribute__((address(0x1032)));


extern volatile __bit RA5PPS3 __attribute__((address(0x1033)));


extern volatile __bit RA5PPS4 __attribute__((address(0x1034)));


extern volatile __bit RA5PPS5 __attribute__((address(0x1035)));


extern volatile __bit RA6 __attribute__((address(0x2676)));


extern volatile __bit RA6PPS0 __attribute__((address(0x1038)));


extern volatile __bit RA6PPS1 __attribute__((address(0x1039)));


extern volatile __bit RA6PPS2 __attribute__((address(0x103A)));


extern volatile __bit RA6PPS3 __attribute__((address(0x103B)));


extern volatile __bit RA6PPS4 __attribute__((address(0x103C)));


extern volatile __bit RA6PPS5 __attribute__((address(0x103D)));


extern volatile __bit RA7 __attribute__((address(0x2677)));


extern volatile __bit RA7PPS0 __attribute__((address(0x1040)));


extern volatile __bit RA7PPS1 __attribute__((address(0x1041)));


extern volatile __bit RA7PPS2 __attribute__((address(0x1042)));


extern volatile __bit RA7PPS3 __attribute__((address(0x1043)));


extern volatile __bit RA7PPS4 __attribute__((address(0x1044)));


extern volatile __bit RA7PPS5 __attribute__((address(0x1045)));


extern volatile __bit RB0 __attribute__((address(0x2678)));


extern volatile __bit RB0PPS0 __attribute__((address(0x1048)));


extern volatile __bit RB0PPS1 __attribute__((address(0x1049)));


extern volatile __bit RB0PPS2 __attribute__((address(0x104A)));


extern volatile __bit RB0PPS3 __attribute__((address(0x104B)));


extern volatile __bit RB0PPS4 __attribute__((address(0x104C)));


extern volatile __bit RB0PPS5 __attribute__((address(0x104D)));


extern volatile __bit RB1 __attribute__((address(0x2679)));


extern volatile __bit RB1PPS0 __attribute__((address(0x1050)));


extern volatile __bit RB1PPS1 __attribute__((address(0x1051)));


extern volatile __bit RB1PPS2 __attribute__((address(0x1052)));


extern volatile __bit RB1PPS3 __attribute__((address(0x1053)));


extern volatile __bit RB1PPS4 __attribute__((address(0x1054)));


extern volatile __bit RB1PPS5 __attribute__((address(0x1055)));


extern volatile __bit RB2 __attribute__((address(0x267A)));


extern volatile __bit RB2PPS0 __attribute__((address(0x1058)));


extern volatile __bit RB2PPS1 __attribute__((address(0x1059)));


extern volatile __bit RB2PPS2 __attribute__((address(0x105A)));


extern volatile __bit RB2PPS3 __attribute__((address(0x105B)));


extern volatile __bit RB2PPS4 __attribute__((address(0x105C)));


extern volatile __bit RB2PPS5 __attribute__((address(0x105D)));


extern volatile __bit RB3 __attribute__((address(0x267B)));


extern volatile __bit RB3PPS0 __attribute__((address(0x1060)));


extern volatile __bit RB3PPS1 __attribute__((address(0x1061)));


extern volatile __bit RB3PPS2 __attribute__((address(0x1062)));


extern volatile __bit RB3PPS3 __attribute__((address(0x1063)));


extern volatile __bit RB3PPS4 __attribute__((address(0x1064)));


extern volatile __bit RB3PPS5 __attribute__((address(0x1065)));


extern volatile __bit RB4 __attribute__((address(0x267C)));


extern volatile __bit RB4PPS0 __attribute__((address(0x1068)));


extern volatile __bit RB4PPS1 __attribute__((address(0x1069)));


extern volatile __bit RB4PPS2 __attribute__((address(0x106A)));


extern volatile __bit RB4PPS3 __attribute__((address(0x106B)));


extern volatile __bit RB4PPS4 __attribute__((address(0x106C)));


extern volatile __bit RB4PPS5 __attribute__((address(0x106D)));


extern volatile __bit RB5 __attribute__((address(0x267D)));


extern volatile __bit RB5PPS0 __attribute__((address(0x1070)));


extern volatile __bit RB5PPS1 __attribute__((address(0x1071)));


extern volatile __bit RB5PPS2 __attribute__((address(0x1072)));


extern volatile __bit RB5PPS3 __attribute__((address(0x1073)));


extern volatile __bit RB5PPS4 __attribute__((address(0x1074)));


extern volatile __bit RB5PPS5 __attribute__((address(0x1075)));


extern volatile __bit RB6 __attribute__((address(0x267E)));


extern volatile __bit RB6PPS0 __attribute__((address(0x1078)));


extern volatile __bit RB6PPS1 __attribute__((address(0x1079)));


extern volatile __bit RB6PPS2 __attribute__((address(0x107A)));


extern volatile __bit RB6PPS3 __attribute__((address(0x107B)));


extern volatile __bit RB6PPS4 __attribute__((address(0x107C)));


extern volatile __bit RB6PPS5 __attribute__((address(0x107D)));


extern volatile __bit RB7 __attribute__((address(0x267F)));


extern volatile __bit RB7PPS0 __attribute__((address(0x1080)));


extern volatile __bit RB7PPS1 __attribute__((address(0x1081)));


extern volatile __bit RB7PPS2 __attribute__((address(0x1082)));


extern volatile __bit RB7PPS3 __attribute__((address(0x1083)));


extern volatile __bit RB7PPS4 __attribute__((address(0x1084)));


extern volatile __bit RB7PPS5 __attribute__((address(0x1085)));


extern volatile __bit RC0 __attribute__((address(0x2680)));


extern volatile __bit RC0PPS0 __attribute__((address(0x1088)));


extern volatile __bit RC0PPS1 __attribute__((address(0x1089)));


extern volatile __bit RC0PPS2 __attribute__((address(0x108A)));


extern volatile __bit RC0PPS3 __attribute__((address(0x108B)));


extern volatile __bit RC0PPS4 __attribute__((address(0x108C)));


extern volatile __bit RC0PPS5 __attribute__((address(0x108D)));


extern volatile __bit RC1 __attribute__((address(0x2681)));


extern volatile __bit RC1PPS0 __attribute__((address(0x1090)));


extern volatile __bit RC1PPS1 __attribute__((address(0x1091)));


extern volatile __bit RC1PPS2 __attribute__((address(0x1092)));


extern volatile __bit RC1PPS3 __attribute__((address(0x1093)));


extern volatile __bit RC1PPS4 __attribute__((address(0x1094)));


extern volatile __bit RC1PPS5 __attribute__((address(0x1095)));


extern volatile __bit RC2 __attribute__((address(0x2682)));


extern volatile __bit RC2PPS0 __attribute__((address(0x1098)));


extern volatile __bit RC2PPS1 __attribute__((address(0x1099)));


extern volatile __bit RC2PPS2 __attribute__((address(0x109A)));


extern volatile __bit RC2PPS3 __attribute__((address(0x109B)));


extern volatile __bit RC2PPS4 __attribute__((address(0x109C)));


extern volatile __bit RC2PPS5 __attribute__((address(0x109D)));


extern volatile __bit RC3 __attribute__((address(0x2683)));


extern volatile __bit RC3PPS0 __attribute__((address(0x10A0)));


extern volatile __bit RC3PPS1 __attribute__((address(0x10A1)));


extern volatile __bit RC3PPS2 __attribute__((address(0x10A2)));


extern volatile __bit RC3PPS3 __attribute__((address(0x10A3)));


extern volatile __bit RC3PPS4 __attribute__((address(0x10A4)));


extern volatile __bit RC3PPS5 __attribute__((address(0x10A5)));


extern volatile __bit RC4 __attribute__((address(0x2684)));


extern volatile __bit RC4PPS0 __attribute__((address(0x10A8)));


extern volatile __bit RC4PPS1 __attribute__((address(0x10A9)));


extern volatile __bit RC4PPS2 __attribute__((address(0x10AA)));


extern volatile __bit RC4PPS3 __attribute__((address(0x10AB)));


extern volatile __bit RC4PPS4 __attribute__((address(0x10AC)));


extern volatile __bit RC4PPS5 __attribute__((address(0x10AD)));


extern volatile __bit RC5 __attribute__((address(0x2685)));


extern volatile __bit RC5PPS0 __attribute__((address(0x10B0)));


extern volatile __bit RC5PPS1 __attribute__((address(0x10B1)));


extern volatile __bit RC5PPS2 __attribute__((address(0x10B2)));


extern volatile __bit RC5PPS3 __attribute__((address(0x10B3)));


extern volatile __bit RC5PPS4 __attribute__((address(0x10B4)));


extern volatile __bit RC5PPS5 __attribute__((address(0x10B5)));


extern volatile __bit RC6 __attribute__((address(0x2686)));


extern volatile __bit RC6PPS0 __attribute__((address(0x10B8)));


extern volatile __bit RC6PPS1 __attribute__((address(0x10B9)));


extern volatile __bit RC6PPS2 __attribute__((address(0x10BA)));


extern volatile __bit RC6PPS3 __attribute__((address(0x10BB)));


extern volatile __bit RC6PPS4 __attribute__((address(0x10BC)));


extern volatile __bit RC6PPS5 __attribute__((address(0x10BD)));


extern volatile __bit RC7 __attribute__((address(0x2687)));


extern volatile __bit RC7PPS0 __attribute__((address(0x10C0)));


extern volatile __bit RC7PPS1 __attribute__((address(0x10C1)));


extern volatile __bit RC7PPS2 __attribute__((address(0x10C2)));


extern volatile __bit RC7PPS3 __attribute__((address(0x10C3)));


extern volatile __bit RC7PPS4 __attribute__((address(0x10C4)));


extern volatile __bit RC7PPS5 __attribute__((address(0x10C5)));


extern volatile __bit RD0 __attribute__((address(0x2688)));


extern volatile __bit RD0PPS0 __attribute__((address(0x10C8)));


extern volatile __bit RD0PPS1 __attribute__((address(0x10C9)));


extern volatile __bit RD0PPS2 __attribute__((address(0x10CA)));


extern volatile __bit RD0PPS3 __attribute__((address(0x10CB)));


extern volatile __bit RD0PPS4 __attribute__((address(0x10CC)));


extern volatile __bit RD0PPS5 __attribute__((address(0x10CD)));


extern volatile __bit RD1 __attribute__((address(0x2689)));


extern volatile __bit RD161 __attribute__((address(0x18F1)));


extern volatile __bit RD163 __attribute__((address(0x1951)));


extern volatile __bit RD165 __attribute__((address(0x19B1)));


extern volatile __bit RD1PPS0 __attribute__((address(0x10D0)));


extern volatile __bit RD1PPS1 __attribute__((address(0x10D1)));


extern volatile __bit RD1PPS2 __attribute__((address(0x10D2)));


extern volatile __bit RD1PPS3 __attribute__((address(0x10D3)));


extern volatile __bit RD1PPS4 __attribute__((address(0x10D4)));


extern volatile __bit RD1PPS5 __attribute__((address(0x10D5)));


extern volatile __bit RD2 __attribute__((address(0x268A)));


extern volatile __bit RD2PPS0 __attribute__((address(0x10D8)));


extern volatile __bit RD2PPS1 __attribute__((address(0x10D9)));


extern volatile __bit RD2PPS2 __attribute__((address(0x10DA)));


extern volatile __bit RD2PPS3 __attribute__((address(0x10DB)));


extern volatile __bit RD2PPS4 __attribute__((address(0x10DC)));


extern volatile __bit RD2PPS5 __attribute__((address(0x10DD)));


extern volatile __bit RD3 __attribute__((address(0x268B)));


extern volatile __bit RD3PPS0 __attribute__((address(0x10E0)));


extern volatile __bit RD3PPS1 __attribute__((address(0x10E1)));


extern volatile __bit RD3PPS2 __attribute__((address(0x10E2)));


extern volatile __bit RD3PPS3 __attribute__((address(0x10E3)));


extern volatile __bit RD3PPS4 __attribute__((address(0x10E4)));


extern volatile __bit RD3PPS5 __attribute__((address(0x10E5)));


extern volatile __bit RD4 __attribute__((address(0x268C)));


extern volatile __bit RD4PPS0 __attribute__((address(0x10E8)));


extern volatile __bit RD4PPS1 __attribute__((address(0x10E9)));


extern volatile __bit RD4PPS2 __attribute__((address(0x10EA)));


extern volatile __bit RD4PPS3 __attribute__((address(0x10EB)));


extern volatile __bit RD4PPS4 __attribute__((address(0x10EC)));


extern volatile __bit RD4PPS5 __attribute__((address(0x10ED)));


extern volatile __bit RD5 __attribute__((address(0x268D)));


extern volatile __bit RD5PPS0 __attribute__((address(0x10F0)));


extern volatile __bit RD5PPS1 __attribute__((address(0x10F1)));


extern volatile __bit RD5PPS2 __attribute__((address(0x10F2)));


extern volatile __bit RD5PPS3 __attribute__((address(0x10F3)));


extern volatile __bit RD5PPS4 __attribute__((address(0x10F4)));


extern volatile __bit RD5PPS5 __attribute__((address(0x10F5)));


extern volatile __bit RD6 __attribute__((address(0x268E)));


extern volatile __bit RD6PPS0 __attribute__((address(0x10F8)));


extern volatile __bit RD6PPS1 __attribute__((address(0x10F9)));


extern volatile __bit RD6PPS2 __attribute__((address(0x10FA)));


extern volatile __bit RD6PPS3 __attribute__((address(0x10FB)));


extern volatile __bit RD6PPS4 __attribute__((address(0x10FC)));


extern volatile __bit RD6PPS5 __attribute__((address(0x10FD)));


extern volatile __bit RD7 __attribute__((address(0x268F)));


extern volatile __bit RD7PPS0 __attribute__((address(0x1100)));


extern volatile __bit RD7PPS1 __attribute__((address(0x1101)));


extern volatile __bit RD7PPS2 __attribute__((address(0x1102)));


extern volatile __bit RD7PPS3 __attribute__((address(0x1103)));


extern volatile __bit RD7PPS4 __attribute__((address(0x1104)));


extern volatile __bit RD7PPS5 __attribute__((address(0x1105)));


extern volatile __bit RE0 __attribute__((address(0x2690)));


extern volatile __bit RE0PPS0 __attribute__((address(0x1108)));


extern volatile __bit RE0PPS1 __attribute__((address(0x1109)));


extern volatile __bit RE0PPS2 __attribute__((address(0x110A)));


extern volatile __bit RE0PPS3 __attribute__((address(0x110B)));


extern volatile __bit RE0PPS4 __attribute__((address(0x110C)));


extern volatile __bit RE0PPS5 __attribute__((address(0x110D)));


extern volatile __bit RE1 __attribute__((address(0x2691)));


extern volatile __bit RE1PPS0 __attribute__((address(0x1110)));


extern volatile __bit RE1PPS1 __attribute__((address(0x1111)));


extern volatile __bit RE1PPS2 __attribute__((address(0x1112)));


extern volatile __bit RE1PPS3 __attribute__((address(0x1113)));


extern volatile __bit RE1PPS4 __attribute__((address(0x1114)));


extern volatile __bit RE1PPS5 __attribute__((address(0x1115)));


extern volatile __bit RE2 __attribute__((address(0x2692)));


extern volatile __bit RE2PPS0 __attribute__((address(0x1118)));


extern volatile __bit RE2PPS1 __attribute__((address(0x1119)));


extern volatile __bit RE2PPS2 __attribute__((address(0x111A)));


extern volatile __bit RE2PPS3 __attribute__((address(0x111B)));


extern volatile __bit RE2PPS4 __attribute__((address(0x111C)));


extern volatile __bit RE2PPS5 __attribute__((address(0x111D)));


extern volatile __bit RE3 __attribute__((address(0x2693)));


extern volatile __bit READ __attribute__((address(0x14C4)));


extern volatile __bit REPEAT __attribute__((address(0x186E)));


extern volatile __bit REQOP0 __attribute__((address(0x818)));


extern volatile __bit REQOP1 __attribute__((address(0x819)));


extern volatile __bit REQOP2 __attribute__((address(0x81A)));


extern volatile __bit RERRCNT0 __attribute__((address(0x9A0)));


extern volatile __bit RERRCNT1 __attribute__((address(0x9A1)));


extern volatile __bit RERRCNT2 __attribute__((address(0x9A2)));


extern volatile __bit RERRCNT3 __attribute__((address(0x9A3)));


extern volatile __bit RERRCNT4 __attribute__((address(0x9A4)));


extern volatile __bit RERRCNT5 __attribute__((address(0x9A5)));


extern volatile __bit RERRCNT6 __attribute__((address(0x9A6)));


extern volatile __bit RERRCNT7 __attribute__((address(0x9A7)));


extern volatile __bit RES0 __attribute__((address(0x1F50)));


extern volatile __bit RES1 __attribute__((address(0x1F51)));


extern volatile __bit RES10 __attribute__((address(0x1F5A)));


extern volatile __bit RES11 __attribute__((address(0x1F5B)));


extern volatile __bit RES12 __attribute__((address(0x1F5C)));


extern volatile __bit RES13 __attribute__((address(0x1F5D)));


extern volatile __bit RES14 __attribute__((address(0x1F5E)));


extern volatile __bit RES15 __attribute__((address(0x1F5F)));


extern volatile __bit RES2 __attribute__((address(0x1F52)));


extern volatile __bit RES3 __attribute__((address(0x1F53)));


extern volatile __bit RES4 __attribute__((address(0x1F54)));


extern volatile __bit RES5 __attribute__((address(0x1F55)));


extern volatile __bit RES6 __attribute__((address(0x1F56)));


extern volatile __bit RES7 __attribute__((address(0x1F57)));


extern volatile __bit RES8 __attribute__((address(0x1F58)));


extern volatile __bit RES9 __attribute__((address(0x1F59)));


extern volatile __bit RFIF1 __attribute__((address(0x901)));


extern volatile __bit RFIF10 __attribute__((address(0x90A)));


extern volatile __bit RFIF11 __attribute__((address(0x90B)));


extern volatile __bit RFIF12 __attribute__((address(0x90C)));


extern volatile __bit RFIF13 __attribute__((address(0x90D)));


extern volatile __bit RFIF14 __attribute__((address(0x90E)));


extern volatile __bit RFIF15 __attribute__((address(0x90F)));


extern volatile __bit RFIF16 __attribute__((address(0x910)));


extern volatile __bit RFIF17 __attribute__((address(0x911)));


extern volatile __bit RFIF18 __attribute__((address(0x912)));


extern volatile __bit RFIF19 __attribute__((address(0x913)));


extern volatile __bit RFIF2 __attribute__((address(0x902)));


extern volatile __bit RFIF20 __attribute__((address(0x914)));


extern volatile __bit RFIF21 __attribute__((address(0x915)));


extern volatile __bit RFIF22 __attribute__((address(0x916)));


extern volatile __bit RFIF23 __attribute__((address(0x917)));


extern volatile __bit RFIF24 __attribute__((address(0x918)));


extern volatile __bit RFIF25 __attribute__((address(0x919)));


extern volatile __bit RFIF26 __attribute__((address(0x91A)));


extern volatile __bit RFIF27 __attribute__((address(0x91B)));


extern volatile __bit RFIF28 __attribute__((address(0x91C)));


extern volatile __bit RFIF29 __attribute__((address(0x91D)));


extern volatile __bit RFIF3 __attribute__((address(0x903)));


extern volatile __bit RFIF30 __attribute__((address(0x91E)));


extern volatile __bit RFIF31 __attribute__((address(0x91F)));


extern volatile __bit RFIF4 __attribute__((address(0x904)));


extern volatile __bit RFIF5 __attribute__((address(0x905)));


extern volatile __bit RFIF6 __attribute__((address(0x906)));


extern volatile __bit RFIF7 __attribute__((address(0x907)));


extern volatile __bit RFIF8 __attribute__((address(0x908)));


extern volatile __bit RFIF9 __attribute__((address(0x909)));


extern volatile __bit RFOVIF1 __attribute__((address(0x941)));


extern volatile __bit RFOVIF10 __attribute__((address(0x94A)));


extern volatile __bit RFOVIF11 __attribute__((address(0x94B)));


extern volatile __bit RFOVIF12 __attribute__((address(0x94C)));


extern volatile __bit RFOVIF13 __attribute__((address(0x94D)));


extern volatile __bit RFOVIF14 __attribute__((address(0x94E)));


extern volatile __bit RFOVIF15 __attribute__((address(0x94F)));


extern volatile __bit RFOVIF16 __attribute__((address(0x950)));


extern volatile __bit RFOVIF17 __attribute__((address(0x951)));


extern volatile __bit RFOVIF18 __attribute__((address(0x952)));


extern volatile __bit RFOVIF19 __attribute__((address(0x953)));


extern volatile __bit RFOVIF2 __attribute__((address(0x942)));


extern volatile __bit RFOVIF20 __attribute__((address(0x954)));


extern volatile __bit RFOVIF21 __attribute__((address(0x955)));


extern volatile __bit RFOVIF22 __attribute__((address(0x956)));


extern volatile __bit RFOVIF23 __attribute__((address(0x957)));


extern volatile __bit RFOVIF24 __attribute__((address(0x958)));


extern volatile __bit RFOVIF25 __attribute__((address(0x959)));


extern volatile __bit RFOVIF26 __attribute__((address(0x95A)));


extern volatile __bit RFOVIF27 __attribute__((address(0x95B)));


extern volatile __bit RFOVIF28 __attribute__((address(0x95C)));


extern volatile __bit RFOVIF29 __attribute__((address(0x95D)));


extern volatile __bit RFOVIF3 __attribute__((address(0x943)));


extern volatile __bit RFOVIF30 __attribute__((address(0x95E)));


extern volatile __bit RFOVIF31 __attribute__((address(0x95F)));


extern volatile __bit RFOVIF4 __attribute__((address(0x944)));


extern volatile __bit RFOVIF5 __attribute__((address(0x945)));


extern volatile __bit RFOVIF6 __attribute__((address(0x946)));


extern volatile __bit RFOVIF7 __attribute__((address(0x947)));


extern volatile __bit RFOVIF8 __attribute__((address(0x948)));


extern volatile __bit RFOVIF9 __attribute__((address(0x949)));


extern volatile __bit RI __attribute__((address(0x2782)));


extern volatile __bit RMCLR __attribute__((address(0x2783)));


extern volatile __bit ROI __attribute__((address(0x2795)));


extern volatile __bit RPT0 __attribute__((address(0x1F38)));


extern volatile __bit RPT1 __attribute__((address(0x1F39)));


extern volatile __bit RPT2 __attribute__((address(0x1F3A)));


extern volatile __bit RPT3 __attribute__((address(0x1F3B)));


extern volatile __bit RPT4 __attribute__((address(0x1F3C)));


extern volatile __bit RPT5 __attribute__((address(0x1F3D)));


extern volatile __bit RPT6 __attribute__((address(0x1F3E)));


extern volatile __bit RPT7 __attribute__((address(0x1F3F)));


extern volatile __bit RSC1IE __attribute__((address(0x14D9)));


extern volatile __bit RSC1IF __attribute__((address(0x14D1)));


extern volatile __bit RSCIE __attribute__((address(0x14D9)));


extern volatile __bit RSCIF __attribute__((address(0x14D1)));


extern volatile __bit RSEN __attribute__((address(0x14A6)));


extern volatile __bit RST __attribute__((address(0x1875)));


extern volatile __bit RTXAT __attribute__((address(0x810)));


extern volatile __bit RWDT __attribute__((address(0x2784)));


extern volatile __bit RXBP __attribute__((address(0x9B3)));


extern volatile __bit RXIE __attribute__((address(0x8F1)));


extern volatile __bit RXIF __attribute__((address(0x8E1)));


extern volatile __bit RXO __attribute__((address(0x14AA)));


extern volatile __bit RXWARN __attribute__((address(0x9B1)));


extern volatile __bit SBOREN __attribute__((address(0x24F)));


extern volatile __bit SC1IE __attribute__((address(0x14D8)));


extern volatile __bit SC1IF __attribute__((address(0x14D0)));


extern volatile __bit SCANEN __attribute__((address(0x1B07)));


extern volatile __bit SCANHADR0 __attribute__((address(0x1AE8)));


extern volatile __bit SCANHADR1 __attribute__((address(0x1AE9)));


extern volatile __bit SCANHADR10 __attribute__((address(0x1AF2)));


extern volatile __bit SCANHADR11 __attribute__((address(0x1AF3)));


extern volatile __bit SCANHADR12 __attribute__((address(0x1AF4)));


extern volatile __bit SCANHADR13 __attribute__((address(0x1AF5)));


extern volatile __bit SCANHADR14 __attribute__((address(0x1AF6)));


extern volatile __bit SCANHADR15 __attribute__((address(0x1AF7)));


extern volatile __bit SCANHADR16 __attribute__((address(0x1AF8)));


extern volatile __bit SCANHADR17 __attribute__((address(0x1AF9)));


extern volatile __bit SCANHADR18 __attribute__((address(0x1AFA)));


extern volatile __bit SCANHADR19 __attribute__((address(0x1AFB)));


extern volatile __bit SCANHADR2 __attribute__((address(0x1AEA)));


extern volatile __bit SCANHADR20 __attribute__((address(0x1AFC)));


extern volatile __bit SCANHADR21 __attribute__((address(0x1AFD)));


extern volatile __bit SCANHADR3 __attribute__((address(0x1AEB)));


extern volatile __bit SCANHADR4 __attribute__((address(0x1AEC)));


extern volatile __bit SCANHADR5 __attribute__((address(0x1AED)));


extern volatile __bit SCANHADR6 __attribute__((address(0x1AEE)));


extern volatile __bit SCANHADR7 __attribute__((address(0x1AEF)));


extern volatile __bit SCANHADR8 __attribute__((address(0x1AF0)));


extern volatile __bit SCANHADR9 __attribute__((address(0x1AF1)));


extern volatile __bit SCANIE __attribute__((address(0x2537)));


extern volatile __bit SCANIF __attribute__((address(0x25B7)));


extern volatile __bit SCANIP __attribute__((address(0x1B57)));


extern volatile __bit SCANLADR0 __attribute__((address(0x1AD0)));


extern volatile __bit SCANLADR1 __attribute__((address(0x1AD1)));


extern volatile __bit SCANLADR10 __attribute__((address(0x1ADA)));


extern volatile __bit SCANLADR11 __attribute__((address(0x1ADB)));


extern volatile __bit SCANLADR12 __attribute__((address(0x1ADC)));


extern volatile __bit SCANLADR13 __attribute__((address(0x1ADD)));


extern volatile __bit SCANLADR14 __attribute__((address(0x1ADE)));


extern volatile __bit SCANLADR15 __attribute__((address(0x1ADF)));


extern volatile __bit SCANLADR16 __attribute__((address(0x1AE0)));


extern volatile __bit SCANLADR17 __attribute__((address(0x1AE1)));


extern volatile __bit SCANLADR18 __attribute__((address(0x1AE2)));


extern volatile __bit SCANLADR19 __attribute__((address(0x1AE3)));


extern volatile __bit SCANLADR2 __attribute__((address(0x1AD2)));


extern volatile __bit SCANLADR20 __attribute__((address(0x1AE4)));


extern volatile __bit SCANLADR21 __attribute__((address(0x1AE5)));


extern volatile __bit SCANLADR3 __attribute__((address(0x1AD3)));


extern volatile __bit SCANLADR4 __attribute__((address(0x1AD4)));


extern volatile __bit SCANLADR5 __attribute__((address(0x1AD5)));


extern volatile __bit SCANLADR6 __attribute__((address(0x1AD6)));


extern volatile __bit SCANLADR7 __attribute__((address(0x1AD7)));


extern volatile __bit SCANLADR8 __attribute__((address(0x1AD8)));


extern volatile __bit SCANLADR9 __attribute__((address(0x1AD9)));


extern volatile __bit SCANMD __attribute__((address(0x303)));


extern volatile __bit SCANPR0 __attribute__((address(0x5A8)));


extern volatile __bit SCANPR1 __attribute__((address(0x5A9)));


extern volatile __bit SCANPR2 __attribute__((address(0x5AA)));


extern volatile __bit SCIE __attribute__((address(0x14D8)));


extern volatile __bit SCIF __attribute__((address(0x14D0)));


extern volatile __bit SCNT0 __attribute__((address(0x790)));


extern volatile __bit SCNT1 __attribute__((address(0x791)));


extern volatile __bit SCNT10 __attribute__((address(0x79A)));


extern volatile __bit SCNT11 __attribute__((address(0x79B)));


extern volatile __bit SCNT2 __attribute__((address(0x792)));


extern volatile __bit SCNT3 __attribute__((address(0x793)));


extern volatile __bit SCNT4 __attribute__((address(0x794)));


extern volatile __bit SCNT5 __attribute__((address(0x795)));


extern volatile __bit SCNT6 __attribute__((address(0x796)));


extern volatile __bit SCNT7 __attribute__((address(0x797)));


extern volatile __bit SCNT8 __attribute__((address(0x798)));


extern volatile __bit SCNT9 __attribute__((address(0x799)));


extern volatile __bit SDAHT0 __attribute__((address(0x14B2)));


extern volatile __bit SDAHT1 __attribute__((address(0x14B3)));


extern volatile __bit SEL0 __attribute__((address(0x258)));


extern volatile __bit SEL1 __attribute__((address(0x259)));


extern volatile __bit SEL2 __attribute__((address(0x25A)));


extern volatile __bit SEL3 __attribute__((address(0x25B)));


extern volatile __bit SERR2LOM __attribute__((address(0x812)));


extern volatile __bit SERRIE __attribute__((address(0x8FC)));


extern volatile __bit SERRIF __attribute__((address(0x8EC)));


extern volatile __bit SETUP0 __attribute__((address(0x1ABA)));


extern volatile __bit SETUP1 __attribute__((address(0x1ABB)));


extern volatile __bit SGO __attribute__((address(0x1B05)));


extern volatile __bit SHADLO __attribute__((address(0x1BB0)));


extern volatile __bit SHIFT0 __attribute__((address(0x1A98)));


extern volatile __bit SHIFT1 __attribute__((address(0x1A99)));


extern volatile __bit SHIFT10 __attribute__((address(0x1AA2)));


extern volatile __bit SHIFT11 __attribute__((address(0x1AA3)));


extern volatile __bit SHIFT12 __attribute__((address(0x1AA4)));


extern volatile __bit SHIFT13 __attribute__((address(0x1AA5)));


extern volatile __bit SHIFT14 __attribute__((address(0x1AA6)));


extern volatile __bit SHIFT15 __attribute__((address(0x1AA7)));


extern volatile __bit SHIFT16 __attribute__((address(0x1AA8)));


extern volatile __bit SHIFT17 __attribute__((address(0x1AA9)));


extern volatile __bit SHIFT18 __attribute__((address(0x1AAA)));


extern volatile __bit SHIFT19 __attribute__((address(0x1AAB)));


extern volatile __bit SHIFT2 __attribute__((address(0x1A9A)));


extern volatile __bit SHIFT20 __attribute__((address(0x1AAC)));


extern volatile __bit SHIFT21 __attribute__((address(0x1AAD)));


extern volatile __bit SHIFT22 __attribute__((address(0x1AAE)));


extern volatile __bit SHIFT23 __attribute__((address(0x1AAF)));


extern volatile __bit SHIFT24 __attribute__((address(0x1AB0)));


extern volatile __bit SHIFT25 __attribute__((address(0x1AB1)));


extern volatile __bit SHIFT26 __attribute__((address(0x1AB2)));


extern volatile __bit SHIFT27 __attribute__((address(0x1AB3)));


extern volatile __bit SHIFT28 __attribute__((address(0x1AB4)));


extern volatile __bit SHIFT29 __attribute__((address(0x1AB5)));


extern volatile __bit SHIFT3 __attribute__((address(0x1A9B)));


extern volatile __bit SHIFT30 __attribute__((address(0x1AB6)));


extern volatile __bit SHIFT31 __attribute__((address(0x1AB7)));


extern volatile __bit SHIFT4 __attribute__((address(0x1A9C)));


extern volatile __bit SHIFT5 __attribute__((address(0x1A9D)));


extern volatile __bit SHIFT6 __attribute__((address(0x1A9E)));


extern volatile __bit SHIFT7 __attribute__((address(0x1A9F)));


extern volatile __bit SHIFT8 __attribute__((address(0x1AA0)));


extern volatile __bit SHIFT9 __attribute__((address(0x1AA1)));


extern volatile __bit SHIFTM __attribute__((address(0x1AB9)));


extern volatile __bit SID11EN __attribute__((address(0x878)));


extern volatile __bit SIDL __attribute__((address(0x80D)));


extern volatile __bit SIRQ0 __attribute__((address(0x7F8)));


extern volatile __bit SIRQ1 __attribute__((address(0x7F9)));


extern volatile __bit SIRQ2 __attribute__((address(0x7FA)));


extern volatile __bit SIRQ3 __attribute__((address(0x7FB)));


extern volatile __bit SIRQ4 __attribute__((address(0x7FC)));


extern volatile __bit SIRQ5 __attribute__((address(0x7FD)));


extern volatile __bit SIRQ6 __attribute__((address(0x7FE)));


extern volatile __bit SIRQ7 __attribute__((address(0x7FF)));


extern volatile __bit SIRQEN __attribute__((address(0x7E6)));


extern volatile __bit SJW4 __attribute__((address(0x824)));


extern volatile __bit SJW5 __attribute__((address(0x825)));


extern volatile __bit SJW6 __attribute__((address(0x826)));


extern volatile __bit SLRA0 __attribute__((address(0x2018)));


extern volatile __bit SLRA1 __attribute__((address(0x2019)));


extern volatile __bit SLRA2 __attribute__((address(0x201A)));


extern volatile __bit SLRA3 __attribute__((address(0x201B)));


extern volatile __bit SLRA4 __attribute__((address(0x201C)));


extern volatile __bit SLRA5 __attribute__((address(0x201D)));


extern volatile __bit SLRA6 __attribute__((address(0x201E)));


extern volatile __bit SLRA7 __attribute__((address(0x201F)));


extern volatile __bit SLRB0 __attribute__((address(0x2058)));


extern volatile __bit SLRB1 __attribute__((address(0x2059)));


extern volatile __bit SLRB2 __attribute__((address(0x205A)));


extern volatile __bit SLRB3 __attribute__((address(0x205B)));


extern volatile __bit SLRB4 __attribute__((address(0x205C)));


extern volatile __bit SLRB5 __attribute__((address(0x205D)));


extern volatile __bit SLRB6 __attribute__((address(0x205E)));


extern volatile __bit SLRB7 __attribute__((address(0x205F)));


extern volatile __bit SLRC0 __attribute__((address(0x2098)));


extern volatile __bit SLRC1 __attribute__((address(0x2099)));


extern volatile __bit SLRC2 __attribute__((address(0x209A)));


extern volatile __bit SLRC3 __attribute__((address(0x209B)));


extern volatile __bit SLRC4 __attribute__((address(0x209C)));


extern volatile __bit SLRC5 __attribute__((address(0x209D)));


extern volatile __bit SLRC6 __attribute__((address(0x209E)));


extern volatile __bit SLRC7 __attribute__((address(0x209F)));


extern volatile __bit SLRD0 __attribute__((address(0x20D8)));


extern volatile __bit SLRD1 __attribute__((address(0x20D9)));


extern volatile __bit SLRD2 __attribute__((address(0x20DA)));


extern volatile __bit SLRD3 __attribute__((address(0x20DB)));


extern volatile __bit SLRD4 __attribute__((address(0x20DC)));


extern volatile __bit SLRD5 __attribute__((address(0x20DD)));


extern volatile __bit SLRD6 __attribute__((address(0x20DE)));


extern volatile __bit SLRD7 __attribute__((address(0x20DF)));


extern volatile __bit SLRE0 __attribute__((address(0x2118)));


extern volatile __bit SLRE1 __attribute__((address(0x2119)));


extern volatile __bit SLRE2 __attribute__((address(0x211A)));


extern volatile __bit SMA __attribute__((address(0x14C6)));


extern volatile __bit SMT1AS __attribute__((address(0x1870)));


extern volatile __bit SMT1CPOL __attribute__((address(0x1862)));


extern volatile __bit SMT1CPR0 __attribute__((address(0x1818)));


extern volatile __bit SMT1CPR1 __attribute__((address(0x1819)));


extern volatile __bit SMT1CPR10 __attribute__((address(0x1822)));


extern volatile __bit SMT1CPR11 __attribute__((address(0x1823)));


extern volatile __bit SMT1CPR12 __attribute__((address(0x1824)));


extern volatile __bit SMT1CPR13 __attribute__((address(0x1825)));


extern volatile __bit SMT1CPR14 __attribute__((address(0x1826)));


extern volatile __bit SMT1CPR15 __attribute__((address(0x1827)));


extern volatile __bit SMT1CPR16 __attribute__((address(0x1828)));


extern volatile __bit SMT1CPR17 __attribute__((address(0x1829)));


extern volatile __bit SMT1CPR18 __attribute__((address(0x182A)));


extern volatile __bit SMT1CPR19 __attribute__((address(0x182B)));


extern volatile __bit SMT1CPR2 __attribute__((address(0x181A)));


extern volatile __bit SMT1CPR20 __attribute__((address(0x182C)));


extern volatile __bit SMT1CPR21 __attribute__((address(0x182D)));


extern volatile __bit SMT1CPR22 __attribute__((address(0x182E)));


extern volatile __bit SMT1CPR23 __attribute__((address(0x182F)));


extern volatile __bit SMT1CPR3 __attribute__((address(0x181B)));


extern volatile __bit SMT1CPR4 __attribute__((address(0x181C)));


extern volatile __bit SMT1CPR5 __attribute__((address(0x181D)));


extern volatile __bit SMT1CPR6 __attribute__((address(0x181E)));


extern volatile __bit SMT1CPR7 __attribute__((address(0x181F)));


extern volatile __bit SMT1CPR8 __attribute__((address(0x1820)));


extern volatile __bit SMT1CPR9 __attribute__((address(0x1821)));


extern volatile __bit SMT1CPRUP __attribute__((address(0x1877)));


extern volatile __bit SMT1CPW0 __attribute__((address(0x1830)));


extern volatile __bit SMT1CPW1 __attribute__((address(0x1831)));


extern volatile __bit SMT1CPW10 __attribute__((address(0x183A)));


extern volatile __bit SMT1CPW11 __attribute__((address(0x183B)));


extern volatile __bit SMT1CPW12 __attribute__((address(0x183C)));


extern volatile __bit SMT1CPW13 __attribute__((address(0x183D)));


extern volatile __bit SMT1CPW14 __attribute__((address(0x183E)));


extern volatile __bit SMT1CPW15 __attribute__((address(0x183F)));


extern volatile __bit SMT1CPW16 __attribute__((address(0x1840)));


extern volatile __bit SMT1CPW17 __attribute__((address(0x1841)));


extern volatile __bit SMT1CPW18 __attribute__((address(0x1842)));


extern volatile __bit SMT1CPW19 __attribute__((address(0x1843)));


extern volatile __bit SMT1CPW2 __attribute__((address(0x1832)));


extern volatile __bit SMT1CPW20 __attribute__((address(0x1844)));


extern volatile __bit SMT1CPW21 __attribute__((address(0x1845)));


extern volatile __bit SMT1CPW22 __attribute__((address(0x1846)));


extern volatile __bit SMT1CPW23 __attribute__((address(0x1847)));


extern volatile __bit SMT1CPW3 __attribute__((address(0x1833)));


extern volatile __bit SMT1CPW4 __attribute__((address(0x1834)));


extern volatile __bit SMT1CPW5 __attribute__((address(0x1835)));


extern volatile __bit SMT1CPW6 __attribute__((address(0x1836)));


extern volatile __bit SMT1CPW7 __attribute__((address(0x1837)));


extern volatile __bit SMT1CPW8 __attribute__((address(0x1838)));


extern volatile __bit SMT1CPW9 __attribute__((address(0x1839)));


extern volatile __bit SMT1CPWUP __attribute__((address(0x1876)));


extern volatile __bit SMT1CSEL0 __attribute__((address(0x1878)));


extern volatile __bit SMT1CSEL1 __attribute__((address(0x1879)));


extern volatile __bit SMT1CSEL2 __attribute__((address(0x187A)));


extern volatile __bit SMT1EN __attribute__((address(0x1867)));


extern volatile __bit SMT1GO __attribute__((address(0x186F)));


extern volatile __bit SMT1IE __attribute__((address(0x24FD)));


extern volatile __bit SMT1IF __attribute__((address(0x257D)));


extern volatile __bit SMT1IP __attribute__((address(0x1B1D)));


extern volatile __bit SMT1MD __attribute__((address(0x30F)));


extern volatile __bit SMT1PR0 __attribute__((address(0x1848)));


extern volatile __bit SMT1PR1 __attribute__((address(0x1849)));


extern volatile __bit SMT1PR10 __attribute__((address(0x1852)));


extern volatile __bit SMT1PR11 __attribute__((address(0x1853)));


extern volatile __bit SMT1PR12 __attribute__((address(0x1854)));


extern volatile __bit SMT1PR13 __attribute__((address(0x1855)));


extern volatile __bit SMT1PR14 __attribute__((address(0x1856)));


extern volatile __bit SMT1PR15 __attribute__((address(0x1857)));


extern volatile __bit SMT1PR16 __attribute__((address(0x1858)));


extern volatile __bit SMT1PR17 __attribute__((address(0x1859)));


extern volatile __bit SMT1PR18 __attribute__((address(0x185A)));


extern volatile __bit SMT1PR19 __attribute__((address(0x185B)));


extern volatile __bit SMT1PR2 __attribute__((address(0x184A)));


extern volatile __bit SMT1PR20 __attribute__((address(0x185C)));


extern volatile __bit SMT1PR21 __attribute__((address(0x185D)));


extern volatile __bit SMT1PR22 __attribute__((address(0x185E)));


extern volatile __bit SMT1PR23 __attribute__((address(0x185F)));


extern volatile __bit SMT1PR3 __attribute__((address(0x184B)));


extern volatile __bit SMT1PR4 __attribute__((address(0x184C)));


extern volatile __bit SMT1PR5 __attribute__((address(0x184D)));


extern volatile __bit SMT1PR6 __attribute__((address(0x184E)));


extern volatile __bit SMT1PR7 __attribute__((address(0x184F)));


extern volatile __bit SMT1PR8 __attribute__((address(0x1850)));


extern volatile __bit SMT1PR9 __attribute__((address(0x1851)));


extern volatile __bit SMT1PRAIE __attribute__((address(0x24FE)));


extern volatile __bit SMT1PRAIF __attribute__((address(0x257E)));


extern volatile __bit SMT1PRAIP __attribute__((address(0x1B1E)));


extern volatile __bit SMT1PS0 __attribute__((address(0x1860)));


extern volatile __bit SMT1PS1 __attribute__((address(0x1861)));


extern volatile __bit SMT1PWAIE __attribute__((address(0x24FF)));


extern volatile __bit SMT1PWAIF __attribute__((address(0x257F)));


extern volatile __bit SMT1PWAIP __attribute__((address(0x1B1F)));


extern volatile __bit SMT1REPEAT __attribute__((address(0x186E)));


extern volatile __bit SMT1RESET __attribute__((address(0x1875)));


extern volatile __bit SMT1RST __attribute__((address(0x1875)));


extern volatile __bit SMT1SIGPPS0 __attribute__((address(0x12D0)));


extern volatile __bit SMT1SIGPPS1 __attribute__((address(0x12D1)));


extern volatile __bit SMT1SIGPPS2 __attribute__((address(0x12D2)));


extern volatile __bit SMT1SIGPPS3 __attribute__((address(0x12D3)));


extern volatile __bit SMT1SIGPPS4 __attribute__((address(0x12D4)));


extern volatile __bit SMT1SIGPPS5 __attribute__((address(0x12D5)));


extern volatile __bit SMT1SPOL __attribute__((address(0x1863)));


extern volatile __bit SMT1SSEL0 __attribute__((address(0x1880)));


extern volatile __bit SMT1SSEL1 __attribute__((address(0x1881)));


extern volatile __bit SMT1SSEL2 __attribute__((address(0x1882)));


extern volatile __bit SMT1SSEL3 __attribute__((address(0x1883)));


extern volatile __bit SMT1SSEL4 __attribute__((address(0x1884)));


extern volatile __bit SMT1STP __attribute__((address(0x1865)));


extern volatile __bit SMT1TMR0 __attribute__((address(0x1800)));


extern volatile __bit SMT1TMR1 __attribute__((address(0x1801)));


extern volatile __bit SMT1TMR10 __attribute__((address(0x180A)));


extern volatile __bit SMT1TMR11 __attribute__((address(0x180B)));


extern volatile __bit SMT1TMR12 __attribute__((address(0x180C)));


extern volatile __bit SMT1TMR13 __attribute__((address(0x180D)));


extern volatile __bit SMT1TMR14 __attribute__((address(0x180E)));


extern volatile __bit SMT1TMR15 __attribute__((address(0x180F)));


extern volatile __bit SMT1TMR16 __attribute__((address(0x1810)));


extern volatile __bit SMT1TMR17 __attribute__((address(0x1811)));


extern volatile __bit SMT1TMR18 __attribute__((address(0x1812)));


extern volatile __bit SMT1TMR19 __attribute__((address(0x1813)));


extern volatile __bit SMT1TMR2 __attribute__((address(0x1802)));


extern volatile __bit SMT1TMR20 __attribute__((address(0x1814)));


extern volatile __bit SMT1TMR21 __attribute__((address(0x1815)));


extern volatile __bit SMT1TMR22 __attribute__((address(0x1816)));


extern volatile __bit SMT1TMR23 __attribute__((address(0x1817)));


extern volatile __bit SMT1TMR3 __attribute__((address(0x1803)));


extern volatile __bit SMT1TMR4 __attribute__((address(0x1804)));


extern volatile __bit SMT1TMR5 __attribute__((address(0x1805)));


extern volatile __bit SMT1TMR6 __attribute__((address(0x1806)));


extern volatile __bit SMT1TMR7 __attribute__((address(0x1807)));


extern volatile __bit SMT1TMR8 __attribute__((address(0x1808)));


extern volatile __bit SMT1TMR9 __attribute__((address(0x1809)));


extern volatile __bit SMT1TS __attribute__((address(0x1872)));


extern volatile __bit SMT1WINPPS0 __attribute__((address(0x12C8)));


extern volatile __bit SMT1WINPPS1 __attribute__((address(0x12C9)));


extern volatile __bit SMT1WINPPS2 __attribute__((address(0x12CA)));


extern volatile __bit SMT1WINPPS3 __attribute__((address(0x12CB)));


extern volatile __bit SMT1WINPPS4 __attribute__((address(0x12CC)));


extern volatile __bit SMT1WINPPS5 __attribute__((address(0x12CD)));


extern volatile __bit SMT1WOL __attribute__((address(0x1864)));


extern volatile __bit SMT1WS __attribute__((address(0x1871)));


extern volatile __bit SMT1WSEL0 __attribute__((address(0x1888)));


extern volatile __bit SMT1WSEL1 __attribute__((address(0x1889)));


extern volatile __bit SMT1WSEL2 __attribute__((address(0x188A)));


extern volatile __bit SMT1WSEL3 __attribute__((address(0x188B)));


extern volatile __bit SMT1WSEL4 __attribute__((address(0x188C)));


extern volatile __bit SOI __attribute__((address(0x1FB3)));


extern volatile __bit SOR __attribute__((address(0x593)));


extern volatile __bit SOSCEN __attribute__((address(0x59B)));


extern volatile __bit SOSCPWR __attribute__((address(0x57E)));


extern volatile __bit SP0 __attribute__((address(0x27E0)));


extern volatile __bit SP1 __attribute__((address(0x27E1)));


extern volatile __bit SP2 __attribute__((address(0x27E2)));


extern volatile __bit SP3 __attribute__((address(0x27E3)));


extern volatile __bit SP4 __attribute__((address(0x27E4)));


extern volatile __bit SP5 __attribute__((address(0x27E5)));


extern volatile __bit SP6 __attribute__((address(0x27E6)));


extern volatile __bit SPI1BMODE __attribute__((address(0x420)));


extern volatile __bit SPI1BUSY __attribute__((address(0x437)));


extern volatile __bit SPI1CKE __attribute__((address(0x42E)));


extern volatile __bit SPI1CKP __attribute__((address(0x42D)));


extern volatile __bit SPI1CLKSEL0 __attribute__((address(0x460)));


extern volatile __bit SPI1CLKSEL1 __attribute__((address(0x461)));


extern volatile __bit SPI1CLKSEL2 __attribute__((address(0x462)));


extern volatile __bit SPI1CLKSEL3 __attribute__((address(0x463)));


extern volatile __bit SPI1CLKSEL4 __attribute__((address(0x464)));


extern volatile __bit SPI1CLRBF __attribute__((address(0x43A)));


extern volatile __bit SPI1EOSIE __attribute__((address(0x45C)));


extern volatile __bit SPI1EOSIF __attribute__((address(0x454)));


extern volatile __bit SPI1FST __attribute__((address(0x42C)));


extern volatile __bit SPI1IE __attribute__((address(0x250A)));


extern volatile __bit SPI1IF __attribute__((address(0x258A)));


extern volatile __bit SPI1IP __attribute__((address(0x1B2A)));


extern volatile __bit SPI1LSBF __attribute__((address(0x422)));


extern volatile __bit SPI1MD __attribute__((address(0x331)));


extern volatile __bit SPI1MST __attribute__((address(0x421)));


extern volatile __bit SPI1RXBF __attribute__((address(0x438)));


extern volatile __bit SPI1RXIE __attribute__((address(0x2508)));


extern volatile __bit SPI1RXIF __attribute__((address(0x2588)));


extern volatile __bit SPI1RXIP __attribute__((address(0x1B28)));


extern volatile __bit SPI1RXOIE __attribute__((address(0x45A)));


extern volatile __bit SPI1RXOIF __attribute__((address(0x452)));


extern volatile __bit SPI1RXR __attribute__((address(0x430)));


extern volatile __bit SPI1RXRE __attribute__((address(0x43B)));


extern volatile __bit SPI1SCKPPS0 __attribute__((address(0x1350)));


extern volatile __bit SPI1SCKPPS1 __attribute__((address(0x1351)));


extern volatile __bit SPI1SCKPPS2 __attribute__((address(0x1352)));


extern volatile __bit SPI1SCKPPS3 __attribute__((address(0x1353)));


extern volatile __bit SPI1SCKPPS4 __attribute__((address(0x1354)));


extern volatile __bit SPI1SDIP __attribute__((address(0x429)));


extern volatile __bit SPI1SDIPPS0 __attribute__((address(0x1358)));


extern volatile __bit SPI1SDIPPS1 __attribute__((address(0x1359)));


extern volatile __bit SPI1SDIPPS2 __attribute__((address(0x135A)));


extern volatile __bit SPI1SDIPPS3 __attribute__((address(0x135B)));


extern volatile __bit SPI1SDIPPS4 __attribute__((address(0x135C)));


extern volatile __bit SPI1SDOP __attribute__((address(0x428)));


extern volatile __bit SPI1SMP __attribute__((address(0x42F)));


extern volatile __bit SPI1SOSIE __attribute__((address(0x45D)));


extern volatile __bit SPI1SOSIF __attribute__((address(0x455)));


extern volatile __bit SPI1SPIEN __attribute__((address(0x427)));


extern volatile __bit SPI1SRMTIE __attribute__((address(0x45F)));


extern volatile __bit SPI1SRMTIF __attribute__((address(0x457)));


extern volatile __bit SPI1SSET __attribute__((address(0x432)));


extern volatile __bit SPI1SSFLT __attribute__((address(0x436)));


extern volatile __bit SPI1SSP __attribute__((address(0x42A)));


extern volatile __bit SPI1SSPPS0 __attribute__((address(0x1360)));


extern volatile __bit SPI1SSPPS1 __attribute__((address(0x1361)));


extern volatile __bit SPI1SSPPS2 __attribute__((address(0x1362)));


extern volatile __bit SPI1SSPPS3 __attribute__((address(0x1363)));


extern volatile __bit SPI1SSPPS4 __attribute__((address(0x1364)));


extern volatile __bit SPI1TCZIE __attribute__((address(0x45E)));


extern volatile __bit SPI1TCZIF __attribute__((address(0x456)));


extern volatile __bit SPI1TXBE __attribute__((address(0x43D)));


extern volatile __bit SPI1TXIE __attribute__((address(0x2509)));


extern volatile __bit SPI1TXIF __attribute__((address(0x2589)));


extern volatile __bit SPI1TXIP __attribute__((address(0x1B29)));


extern volatile __bit SPI1TXR __attribute__((address(0x431)));


extern volatile __bit SPI1TXUIE __attribute__((address(0x459)));


extern volatile __bit SPI1TXUIF __attribute__((address(0x451)));


extern volatile __bit SPI1TXWE __attribute__((address(0x43F)));


extern volatile __bit SPI2BMODE __attribute__((address(0x488)));


extern volatile __bit SPI2BUSY __attribute__((address(0x49F)));


extern volatile __bit SPI2CKE __attribute__((address(0x496)));


extern volatile __bit SPI2CKP __attribute__((address(0x495)));


extern volatile __bit SPI2CLKSEL0 __attribute__((address(0x4C8)));


extern volatile __bit SPI2CLKSEL1 __attribute__((address(0x4C9)));


extern volatile __bit SPI2CLKSEL2 __attribute__((address(0x4CA)));


extern volatile __bit SPI2CLKSEL3 __attribute__((address(0x4CB)));


extern volatile __bit SPI2CLKSEL4 __attribute__((address(0x4CC)));


extern volatile __bit SPI2CLRBF __attribute__((address(0x4A2)));


extern volatile __bit SPI2EOSIE __attribute__((address(0x4C4)));


extern volatile __bit SPI2EOSIF __attribute__((address(0x4BC)));


extern volatile __bit SPI2FST __attribute__((address(0x494)));


extern volatile __bit SPI2IE __attribute__((address(0x251A)));


extern volatile __bit SPI2IF __attribute__((address(0x259A)));


extern volatile __bit SPI2IP __attribute__((address(0x1B3A)));


extern volatile __bit SPI2LSBF __attribute__((address(0x48A)));


extern volatile __bit SPI2MD __attribute__((address(0x332)));


extern volatile __bit SPI2MST __attribute__((address(0x489)));


extern volatile __bit SPI2RXBF __attribute__((address(0x4A0)));


extern volatile __bit SPI2RXIE __attribute__((address(0x2518)));


extern volatile __bit SPI2RXIF __attribute__((address(0x2598)));


extern volatile __bit SPI2RXIP __attribute__((address(0x1B38)));


extern volatile __bit SPI2RXOIE __attribute__((address(0x4C2)));


extern volatile __bit SPI2RXOIF __attribute__((address(0x4BA)));


extern volatile __bit SPI2RXR __attribute__((address(0x498)));


extern volatile __bit SPI2RXRE __attribute__((address(0x4A3)));


extern volatile __bit SPI2SCKPPS0 __attribute__((address(0x1368)));


extern volatile __bit SPI2SCKPPS1 __attribute__((address(0x1369)));


extern volatile __bit SPI2SCKPPS2 __attribute__((address(0x136A)));


extern volatile __bit SPI2SCKPPS3 __attribute__((address(0x136B)));


extern volatile __bit SPI2SCKPPS4 __attribute__((address(0x136C)));


extern volatile __bit SPI2SDIP __attribute__((address(0x491)));


extern volatile __bit SPI2SDIPPS0 __attribute__((address(0x1370)));


extern volatile __bit SPI2SDIPPS1 __attribute__((address(0x1371)));


extern volatile __bit SPI2SDIPPS2 __attribute__((address(0x1372)));


extern volatile __bit SPI2SDIPPS3 __attribute__((address(0x1373)));


extern volatile __bit SPI2SDIPPS4 __attribute__((address(0x1374)));


extern volatile __bit SPI2SDOP __attribute__((address(0x490)));


extern volatile __bit SPI2SMP __attribute__((address(0x497)));


extern volatile __bit SPI2SOSIE __attribute__((address(0x4C5)));


extern volatile __bit SPI2SOSIF __attribute__((address(0x4BD)));


extern volatile __bit SPI2SPIEN __attribute__((address(0x48F)));


extern volatile __bit SPI2SRMTIE __attribute__((address(0x4C7)));


extern volatile __bit SPI2SRMTIF __attribute__((address(0x4BF)));


extern volatile __bit SPI2SSET __attribute__((address(0x49A)));


extern volatile __bit SPI2SSFLT __attribute__((address(0x49E)));


extern volatile __bit SPI2SSP __attribute__((address(0x492)));


extern volatile __bit SPI2SSPPS0 __attribute__((address(0x1378)));


extern volatile __bit SPI2SSPPS1 __attribute__((address(0x1379)));


extern volatile __bit SPI2SSPPS2 __attribute__((address(0x137A)));


extern volatile __bit SPI2SSPPS3 __attribute__((address(0x137B)));


extern volatile __bit SPI2SSPPS4 __attribute__((address(0x137C)));


extern volatile __bit SPI2TCZIE __attribute__((address(0x4C6)));


extern volatile __bit SPI2TCZIF __attribute__((address(0x4BE)));


extern volatile __bit SPI2TXBE __attribute__((address(0x4A5)));


extern volatile __bit SPI2TXIE __attribute__((address(0x2519)));


extern volatile __bit SPI2TXIF __attribute__((address(0x2599)));


extern volatile __bit SPI2TXIP __attribute__((address(0x1B39)));


extern volatile __bit SPI2TXR __attribute__((address(0x499)));


extern volatile __bit SPI2TXUIE __attribute__((address(0x4C1)));


extern volatile __bit SPI2TXUIF __attribute__((address(0x4B9)));


extern volatile __bit SPI2TXWE __attribute__((address(0x4A7)));


extern volatile __bit SPOL __attribute__((address(0x1863)));


extern volatile __bit SPTR0 __attribute__((address(0x7A0)));


extern volatile __bit SPTR1 __attribute__((address(0x7A1)));


extern volatile __bit SPTR10 __attribute__((address(0x7AA)));


extern volatile __bit SPTR11 __attribute__((address(0x7AB)));


extern volatile __bit SPTR12 __attribute__((address(0x7AC)));


extern volatile __bit SPTR13 __attribute__((address(0x7AD)));


extern volatile __bit SPTR14 __attribute__((address(0x7AE)));


extern volatile __bit SPTR15 __attribute__((address(0x7AF)));


extern volatile __bit SPTR16 __attribute__((address(0x7B0)));


extern volatile __bit SPTR17 __attribute__((address(0x7B1)));


extern volatile __bit SPTR18 __attribute__((address(0x7B2)));


extern volatile __bit SPTR19 __attribute__((address(0x7B3)));


extern volatile __bit SPTR2 __attribute__((address(0x7A2)));


extern volatile __bit SPTR20 __attribute__((address(0x7B4)));


extern volatile __bit SPTR21 __attribute__((address(0x7B5)));


extern volatile __bit SPTR3 __attribute__((address(0x7A3)));


extern volatile __bit SPTR4 __attribute__((address(0x7A4)));


extern volatile __bit SPTR5 __attribute__((address(0x7A5)));


extern volatile __bit SPTR6 __attribute__((address(0x7A6)));


extern volatile __bit SPTR7 __attribute__((address(0x7A7)));


extern volatile __bit SPTR8 __attribute__((address(0x7A8)));


extern volatile __bit SPTR9 __attribute__((address(0x7A9)));


extern volatile __bit SSA0 __attribute__((address(0x7C8)));


extern volatile __bit SSA1 __attribute__((address(0x7C9)));


extern volatile __bit SSA10 __attribute__((address(0x7D2)));


extern volatile __bit SSA11 __attribute__((address(0x7D3)));


extern volatile __bit SSA12 __attribute__((address(0x7D4)));


extern volatile __bit SSA13 __attribute__((address(0x7D5)));


extern volatile __bit SSA14 __attribute__((address(0x7D6)));


extern volatile __bit SSA15 __attribute__((address(0x7D7)));


extern volatile __bit SSA16 __attribute__((address(0x7D8)));


extern volatile __bit SSA17 __attribute__((address(0x7D9)));


extern volatile __bit SSA18 __attribute__((address(0x7DA)));


extern volatile __bit SSA19 __attribute__((address(0x7DB)));


extern volatile __bit SSA2 __attribute__((address(0x7CA)));


extern volatile __bit SSA20 __attribute__((address(0x7DC)));


extern volatile __bit SSA21 __attribute__((address(0x7DD)));


extern volatile __bit SSA3 __attribute__((address(0x7CB)));


extern volatile __bit SSA4 __attribute__((address(0x7CC)));


extern volatile __bit SSA5 __attribute__((address(0x7CD)));


extern volatile __bit SSA6 __attribute__((address(0x7CE)));


extern volatile __bit SSA7 __attribute__((address(0x7CF)));


extern volatile __bit SSA8 __attribute__((address(0x7D0)));


extern volatile __bit SSA9 __attribute__((address(0x7D1)));


extern volatile __bit SSEL0 __attribute__((address(0x1880)));


extern volatile __bit SSEL1 __attribute__((address(0x1881)));


extern volatile __bit SSEL2 __attribute__((address(0x1882)));


extern volatile __bit SSEL3 __attribute__((address(0x1883)));


extern volatile __bit SSEL4 __attribute__((address(0x1884)));


extern volatile __bit SSTP __attribute__((address(0x7E8)));


extern volatile __bit SSZ0 __attribute__((address(0x7B8)));


extern volatile __bit SSZ1 __attribute__((address(0x7B9)));


extern volatile __bit SSZ10 __attribute__((address(0x7C2)));


extern volatile __bit SSZ11 __attribute__((address(0x7C3)));


extern volatile __bit SSZ2 __attribute__((address(0x7BA)));


extern volatile __bit SSZ3 __attribute__((address(0x7BB)));


extern volatile __bit SSZ4 __attribute__((address(0x7BC)));


extern volatile __bit SSZ5 __attribute__((address(0x7BD)));


extern volatile __bit SSZ6 __attribute__((address(0x7BE)));


extern volatile __bit SSZ7 __attribute__((address(0x7BF)));


extern volatile __bit SSZ8 __attribute__((address(0x7C0)));


extern volatile __bit SSZ9 __attribute__((address(0x7C1)));


extern volatile __bit STAT2 __attribute__((address(0x1FBA)));


extern volatile __bit STATE __attribute__((address(0x3E2)));


extern volatile __bit STEF __attribute__((address(0x813)));


extern volatile __bit STKOVF __attribute__((address(0x2787)));


extern volatile __bit STKPTR0 __attribute__((address(0x27E0)));


extern volatile __bit STKPTR1 __attribute__((address(0x27E1)));


extern volatile __bit STKPTR2 __attribute__((address(0x27E2)));


extern volatile __bit STKPTR3 __attribute__((address(0x27E3)));


extern volatile __bit STKPTR4 __attribute__((address(0x27E4)));


extern volatile __bit STKPTR5 __attribute__((address(0x27E5)));


extern volatile __bit STKPTR6 __attribute__((address(0x27E6)));


extern volatile __bit STKUNF __attribute__((address(0x2786)));


extern volatile __bit STP __attribute__((address(0x1865)));


extern volatile __bit STPT0 __attribute__((address(0x1EF8)));


extern volatile __bit STPT1 __attribute__((address(0x1EF9)));


extern volatile __bit STPT10 __attribute__((address(0x1F02)));


extern volatile __bit STPT11 __attribute__((address(0x1F03)));


extern volatile __bit STPT12 __attribute__((address(0x1F04)));


extern volatile __bit STPT13 __attribute__((address(0x1F05)));


extern volatile __bit STPT15 __attribute__((address(0x1F06)));


extern volatile __bit STPT16 __attribute__((address(0x1F07)));


extern volatile __bit STPT2 __attribute__((address(0x1EFA)));


extern volatile __bit STPT3 __attribute__((address(0x1EFB)));


extern volatile __bit STPT4 __attribute__((address(0x1EFC)));


extern volatile __bit STPT5 __attribute__((address(0x1EFD)));


extern volatile __bit STPT6 __attribute__((address(0x1EFE)));


extern volatile __bit STPT7 __attribute__((address(0x1EFF)));


extern volatile __bit STPT8 __attribute__((address(0x1F00)));


extern volatile __bit STPT9 __attribute__((address(0x1F01)));


extern volatile __bit SWDTEN __attribute__((address(0x3C0)));


extern volatile __bit SWIE __attribute__((address(0x24F0)));


extern volatile __bit SWIF __attribute__((address(0x2570)));


extern volatile __bit SWIP __attribute__((address(0x1B10)));


extern volatile __bit SYSCMD __attribute__((address(0x307)));


extern volatile __bit T016BIT __attribute__((address(0x18D4)));


extern volatile __bit T0ASYNC __attribute__((address(0x18DC)));


extern volatile __bit T0CKIPPS0 __attribute__((address(0x1208)));


extern volatile __bit T0CKIPPS1 __attribute__((address(0x1209)));


extern volatile __bit T0CKIPPS2 __attribute__((address(0x120A)));


extern volatile __bit T0CKIPPS3 __attribute__((address(0x120B)));


extern volatile __bit T0CKIPPS4 __attribute__((address(0x120C)));


extern volatile __bit T0CKIPPS5 __attribute__((address(0x120D)));


extern volatile __bit T0CKPS0 __attribute__((address(0x18D8)));


extern volatile __bit T0CKPS1 __attribute__((address(0x18D9)));


extern volatile __bit T0CKPS2 __attribute__((address(0x18DA)));


extern volatile __bit T0CKPS3 __attribute__((address(0x18DB)));


extern volatile __bit T0CS0 __attribute__((address(0x18DD)));


extern volatile __bit T0CS1 __attribute__((address(0x18DE)));


extern volatile __bit T0CS2 __attribute__((address(0x18DF)));


extern volatile __bit T0EN __attribute__((address(0x18D7)));


extern volatile __bit T0MD16 __attribute__((address(0x18D4)));


extern volatile __bit T0OUT __attribute__((address(0x18D5)));


extern volatile __bit T0OUTPS0 __attribute__((address(0x18D0)));


extern volatile __bit T0OUTPS1 __attribute__((address(0x18D1)));


extern volatile __bit T0OUTPS2 __attribute__((address(0x18D2)));


extern volatile __bit T0OUTPS3 __attribute__((address(0x18D3)));


extern volatile __bit T0PR0 __attribute__((address(0x18C8)));


extern volatile __bit T0PR1 __attribute__((address(0x18C9)));


extern volatile __bit T0PR2 __attribute__((address(0x18CA)));


extern volatile __bit T0PR3 __attribute__((address(0x18CB)));


extern volatile __bit T0PR4 __attribute__((address(0x18CC)));


extern volatile __bit T0PR5 __attribute__((address(0x18CD)));


extern volatile __bit T0PR6 __attribute__((address(0x18CE)));


extern volatile __bit T0PR7 __attribute__((address(0x18CF)));


extern volatile __bit T1CKIPPS0 __attribute__((address(0x1210)));


extern volatile __bit T1CKIPPS1 __attribute__((address(0x1211)));


extern volatile __bit T1CKIPPS2 __attribute__((address(0x1212)));


extern volatile __bit T1CKIPPS3 __attribute__((address(0x1213)));


extern volatile __bit T1CKIPPS4 __attribute__((address(0x1214)));


extern volatile __bit T1CKIPPS5 __attribute__((address(0x1215)));


extern volatile __bit T1CKPS0 __attribute__((address(0x18F4)));


extern volatile __bit T1CKPS1 __attribute__((address(0x18F5)));


extern volatile __bit T1CS0 __attribute__((address(0x1908)));


extern volatile __bit T1CS1 __attribute__((address(0x1909)));


extern volatile __bit T1CS2 __attribute__((address(0x190A)));


extern volatile __bit T1CS3 __attribute__((address(0x190B)));


extern volatile __bit T1CS4 __attribute__((address(0x190C)));


extern volatile __bit T1GE __attribute__((address(0x18FF)));


extern volatile __bit T1GGO __attribute__((address(0x18FB)));


extern volatile __bit T1GGO_NOT_DONE __attribute__((address(0x18FB)));


extern volatile __bit T1GGO_nDONE __attribute__((address(0x18FB)));


extern volatile __bit T1GPOL __attribute__((address(0x18FE)));


extern volatile __bit T1GPPS0 __attribute__((address(0x1218)));


extern volatile __bit T1GPPS1 __attribute__((address(0x1219)));


extern volatile __bit T1GPPS2 __attribute__((address(0x121A)));


extern volatile __bit T1GPPS3 __attribute__((address(0x121B)));


extern volatile __bit T1GPPS4 __attribute__((address(0x121C)));


extern volatile __bit T1GSPM __attribute__((address(0x18FC)));


extern volatile __bit T1GSS0 __attribute__((address(0x1900)));


extern volatile __bit T1GSS1 __attribute__((address(0x1901)));


extern volatile __bit T1GSS2 __attribute__((address(0x1902)));


extern volatile __bit T1GSS3 __attribute__((address(0x1903)));


extern volatile __bit T1GSS4 __attribute__((address(0x1904)));


extern volatile __bit T1GTM __attribute__((address(0x18FD)));


extern volatile __bit T1GVAL __attribute__((address(0x18FA)));


extern volatile __bit T1RD16 __attribute__((address(0x18F1)));


extern volatile __bit T2CKPOL __attribute__((address(0x192E)));


extern volatile __bit T2CKPS0 __attribute__((address(0x1924)));


extern volatile __bit T2CKPS1 __attribute__((address(0x1925)));


extern volatile __bit T2CKPS2 __attribute__((address(0x1926)));


extern volatile __bit T2CKSYNC __attribute__((address(0x192D)));


extern volatile __bit T2CS0 __attribute__((address(0x1930)));


extern volatile __bit T2CS1 __attribute__((address(0x1931)));


extern volatile __bit T2CS2 __attribute__((address(0x1932)));


extern volatile __bit T2CS3 __attribute__((address(0x1933)));


extern volatile __bit T2INPPS0 __attribute__((address(0x1240)));


extern volatile __bit T2INPPS1 __attribute__((address(0x1241)));


extern volatile __bit T2INPPS2 __attribute__((address(0x1242)));


extern volatile __bit T2INPPS3 __attribute__((address(0x1243)));


extern volatile __bit T2INPPS4 __attribute__((address(0x1244)));


extern volatile __bit T2MODE0 __attribute__((address(0x1928)));


extern volatile __bit T2MODE1 __attribute__((address(0x1929)));


extern volatile __bit T2MODE2 __attribute__((address(0x192A)));


extern volatile __bit T2MODE3 __attribute__((address(0x192B)));


extern volatile __bit T2MODE4 __attribute__((address(0x192C)));


extern volatile __bit T2ON __attribute__((address(0x1927)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x1920)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x1921)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x1922)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x1923)));


extern volatile __bit T2PSYNC __attribute__((address(0x192F)));


extern volatile __bit T2RSEL0 __attribute__((address(0x1938)));


extern volatile __bit T2RSEL1 __attribute__((address(0x1939)));


extern volatile __bit T2RSEL2 __attribute__((address(0x193A)));


extern volatile __bit T2RSEL3 __attribute__((address(0x193B)));


extern volatile __bit T2RSEL4 __attribute__((address(0x193C)));


extern volatile __bit T3CKIPPS0 __attribute__((address(0x1220)));


extern volatile __bit T3CKIPPS1 __attribute__((address(0x1221)));


extern volatile __bit T3CKIPPS2 __attribute__((address(0x1222)));


extern volatile __bit T3CKIPPS3 __attribute__((address(0x1223)));


extern volatile __bit T3CKIPPS4 __attribute__((address(0x1224)));


extern volatile __bit T3CKIPPS5 __attribute__((address(0x1225)));


extern volatile __bit T3CKPS0 __attribute__((address(0x1954)));


extern volatile __bit T3CKPS1 __attribute__((address(0x1955)));


extern volatile __bit T3CS0 __attribute__((address(0x1968)));


extern volatile __bit T3CS1 __attribute__((address(0x1969)));


extern volatile __bit T3CS2 __attribute__((address(0x196A)));


extern volatile __bit T3CS3 __attribute__((address(0x196B)));


extern volatile __bit T3CS4 __attribute__((address(0x196C)));


extern volatile __bit T3GE __attribute__((address(0x195F)));


extern volatile __bit T3GGO __attribute__((address(0x195B)));


extern volatile __bit T3GGO_NOT_DONE __attribute__((address(0x195B)));


extern volatile __bit T3GGO_nDONE __attribute__((address(0x195B)));


extern volatile __bit T3GPOL __attribute__((address(0x195E)));


extern volatile __bit T3GPPS0 __attribute__((address(0x1228)));


extern volatile __bit T3GPPS1 __attribute__((address(0x1229)));


extern volatile __bit T3GPPS2 __attribute__((address(0x122A)));


extern volatile __bit T3GPPS3 __attribute__((address(0x122B)));


extern volatile __bit T3GPPS4 __attribute__((address(0x122C)));


extern volatile __bit T3GSPM __attribute__((address(0x195C)));


extern volatile __bit T3GSS0 __attribute__((address(0x1960)));


extern volatile __bit T3GSS1 __attribute__((address(0x1961)));


extern volatile __bit T3GSS2 __attribute__((address(0x1962)));


extern volatile __bit T3GSS3 __attribute__((address(0x1963)));


extern volatile __bit T3GSS4 __attribute__((address(0x1964)));


extern volatile __bit T3GTM __attribute__((address(0x195D)));


extern volatile __bit T3GVAL __attribute__((address(0x195A)));


extern volatile __bit T3RD16 __attribute__((address(0x1951)));


extern volatile __bit T4CKPOL __attribute__((address(0x198E)));


extern volatile __bit T4CKPS0 __attribute__((address(0x1984)));


extern volatile __bit T4CKPS1 __attribute__((address(0x1985)));


extern volatile __bit T4CKPS2 __attribute__((address(0x1986)));


extern volatile __bit T4CKSYNC __attribute__((address(0x198D)));


extern volatile __bit T4CS0 __attribute__((address(0x1990)));


extern volatile __bit T4CS1 __attribute__((address(0x1991)));


extern volatile __bit T4CS2 __attribute__((address(0x1992)));


extern volatile __bit T4CS3 __attribute__((address(0x1993)));


extern volatile __bit T4INPPS0 __attribute__((address(0x1248)));


extern volatile __bit T4INPPS1 __attribute__((address(0x1249)));


extern volatile __bit T4INPPS2 __attribute__((address(0x124A)));


extern volatile __bit T4INPPS3 __attribute__((address(0x124B)));


extern volatile __bit T4INPPS4 __attribute__((address(0x124C)));


extern volatile __bit T4MODE0 __attribute__((address(0x1988)));


extern volatile __bit T4MODE1 __attribute__((address(0x1989)));


extern volatile __bit T4MODE2 __attribute__((address(0x198A)));


extern volatile __bit T4MODE3 __attribute__((address(0x198B)));


extern volatile __bit T4MODE4 __attribute__((address(0x198C)));


extern volatile __bit T4ON __attribute__((address(0x1987)));


extern volatile __bit T4OUTPS0 __attribute__((address(0x1980)));


extern volatile __bit T4OUTPS1 __attribute__((address(0x1981)));


extern volatile __bit T4OUTPS2 __attribute__((address(0x1982)));


extern volatile __bit T4OUTPS3 __attribute__((address(0x1983)));


extern volatile __bit T4PSYNC __attribute__((address(0x198F)));


extern volatile __bit T4RSEL0 __attribute__((address(0x1998)));


extern volatile __bit T4RSEL1 __attribute__((address(0x1999)));


extern volatile __bit T4RSEL2 __attribute__((address(0x199A)));


extern volatile __bit T4RSEL3 __attribute__((address(0x199B)));


extern volatile __bit T4RSEL4 __attribute__((address(0x199C)));


extern volatile __bit T5CKIPPS0 __attribute__((address(0x1230)));


extern volatile __bit T5CKIPPS1 __attribute__((address(0x1231)));


extern volatile __bit T5CKIPPS2 __attribute__((address(0x1232)));


extern volatile __bit T5CKIPPS3 __attribute__((address(0x1233)));


extern volatile __bit T5CKIPPS4 __attribute__((address(0x1234)));


extern volatile __bit T5CKIPPS5 __attribute__((address(0x1235)));


extern volatile __bit T5CKPS0 __attribute__((address(0x19B4)));


extern volatile __bit T5CKPS1 __attribute__((address(0x19B5)));


extern volatile __bit T5CS0 __attribute__((address(0x19C8)));


extern volatile __bit T5CS1 __attribute__((address(0x19C9)));


extern volatile __bit T5CS2 __attribute__((address(0x19CA)));


extern volatile __bit T5CS3 __attribute__((address(0x19CB)));


extern volatile __bit T5CS4 __attribute__((address(0x19CC)));


extern volatile __bit T5GE __attribute__((address(0x19BF)));


extern volatile __bit T5GGO __attribute__((address(0x19BB)));


extern volatile __bit T5GGO_NOT_DONE __attribute__((address(0x19BB)));


extern volatile __bit T5GGO_nDONE __attribute__((address(0x19BB)));


extern volatile __bit T5GPOL __attribute__((address(0x19BE)));


extern volatile __bit T5GPPS0 __attribute__((address(0x1238)));


extern volatile __bit T5GPPS1 __attribute__((address(0x1239)));


extern volatile __bit T5GPPS2 __attribute__((address(0x123A)));


extern volatile __bit T5GPPS3 __attribute__((address(0x123B)));


extern volatile __bit T5GPPS4 __attribute__((address(0x123C)));


extern volatile __bit T5GSPM __attribute__((address(0x19BC)));


extern volatile __bit T5GSS0 __attribute__((address(0x19C0)));


extern volatile __bit T5GSS1 __attribute__((address(0x19C1)));


extern volatile __bit T5GSS2 __attribute__((address(0x19C2)));


extern volatile __bit T5GSS3 __attribute__((address(0x19C3)));


extern volatile __bit T5GSS4 __attribute__((address(0x19C4)));


extern volatile __bit T5GTM __attribute__((address(0x19BD)));


extern volatile __bit T5GVAL __attribute__((address(0x19BA)));


extern volatile __bit T5RD16 __attribute__((address(0x19B1)));


extern volatile __bit T6CKPOL __attribute__((address(0x19EE)));


extern volatile __bit T6CKPS0 __attribute__((address(0x19E4)));


extern volatile __bit T6CKPS1 __attribute__((address(0x19E5)));


extern volatile __bit T6CKPS2 __attribute__((address(0x19E6)));


extern volatile __bit T6CKSYNC __attribute__((address(0x19ED)));


extern volatile __bit T6CS0 __attribute__((address(0x19F0)));


extern volatile __bit T6CS1 __attribute__((address(0x19F1)));


extern volatile __bit T6CS2 __attribute__((address(0x19F2)));


extern volatile __bit T6CS3 __attribute__((address(0x19F3)));


extern volatile __bit T6INPPS0 __attribute__((address(0x1250)));


extern volatile __bit T6INPPS1 __attribute__((address(0x1251)));


extern volatile __bit T6INPPS2 __attribute__((address(0x1252)));


extern volatile __bit T6INPPS3 __attribute__((address(0x1253)));


extern volatile __bit T6INPPS4 __attribute__((address(0x1254)));


extern volatile __bit T6MODE0 __attribute__((address(0x19E8)));


extern volatile __bit T6MODE1 __attribute__((address(0x19E9)));


extern volatile __bit T6MODE2 __attribute__((address(0x19EA)));


extern volatile __bit T6MODE3 __attribute__((address(0x19EB)));


extern volatile __bit T6MODE4 __attribute__((address(0x19EC)));


extern volatile __bit T6ON __attribute__((address(0x19E7)));


extern volatile __bit T6OUTPS0 __attribute__((address(0x19E0)));


extern volatile __bit T6OUTPS1 __attribute__((address(0x19E1)));


extern volatile __bit T6OUTPS2 __attribute__((address(0x19E2)));


extern volatile __bit T6OUTPS3 __attribute__((address(0x19E3)));


extern volatile __bit T6PSYNC __attribute__((address(0x19EF)));


extern volatile __bit T6RSEL0 __attribute__((address(0x19F8)));


extern volatile __bit T6RSEL1 __attribute__((address(0x19F9)));


extern volatile __bit T6RSEL2 __attribute__((address(0x19FA)));


extern volatile __bit T6RSEL3 __attribute__((address(0x19FB)));


extern volatile __bit T6RSEL4 __attribute__((address(0x19FC)));


extern volatile __bit TBC0 __attribute__((address(0x880)));


extern volatile __bit TBC1 __attribute__((address(0x881)));


extern volatile __bit TBC10 __attribute__((address(0x88A)));


extern volatile __bit TBC11 __attribute__((address(0x88B)));


extern volatile __bit TBC12 __attribute__((address(0x88C)));


extern volatile __bit TBC13 __attribute__((address(0x88D)));


extern volatile __bit TBC14 __attribute__((address(0x88E)));


extern volatile __bit TBC15 __attribute__((address(0x88F)));


extern volatile __bit TBC16 __attribute__((address(0x890)));


extern volatile __bit TBC17 __attribute__((address(0x891)));


extern volatile __bit TBC18 __attribute__((address(0x892)));


extern volatile __bit TBC19 __attribute__((address(0x893)));


extern volatile __bit TBC2 __attribute__((address(0x882)));


extern volatile __bit TBC20 __attribute__((address(0x894)));


extern volatile __bit TBC21 __attribute__((address(0x895)));


extern volatile __bit TBC22 __attribute__((address(0x896)));


extern volatile __bit TBC23 __attribute__((address(0x897)));


extern volatile __bit TBC24 __attribute__((address(0x898)));


extern volatile __bit TBC25 __attribute__((address(0x899)));


extern volatile __bit TBC26 __attribute__((address(0x89A)));


extern volatile __bit TBC27 __attribute__((address(0x89B)));


extern volatile __bit TBC28 __attribute__((address(0x89C)));


extern volatile __bit TBC29 __attribute__((address(0x89D)));


extern volatile __bit TBC3 __attribute__((address(0x883)));


extern volatile __bit TBC30 __attribute__((address(0x89E)));


extern volatile __bit TBC31 __attribute__((address(0x89F)));


extern volatile __bit TBC4 __attribute__((address(0x884)));


extern volatile __bit TBC5 __attribute__((address(0x885)));


extern volatile __bit TBC6 __attribute__((address(0x886)));


extern volatile __bit TBC7 __attribute__((address(0x887)));


extern volatile __bit TBC8 __attribute__((address(0x888)));


extern volatile __bit TBC9 __attribute__((address(0x889)));


extern volatile __bit TBCEN __attribute__((address(0x8B0)));


extern volatile __bit TBCIE __attribute__((address(0x8F2)));


extern volatile __bit TBCIF __attribute__((address(0x8E2)));


extern volatile __bit TBCPRE0 __attribute__((address(0x8A0)));


extern volatile __bit TBCPRE1 __attribute__((address(0x8A1)));


extern volatile __bit TBCPRE2 __attribute__((address(0x8A2)));


extern volatile __bit TBCPRE3 __attribute__((address(0x8A3)));


extern volatile __bit TBCPRE4 __attribute__((address(0x8A4)));


extern volatile __bit TBCPRE5 __attribute__((address(0x8A5)));


extern volatile __bit TBCPRE6 __attribute__((address(0x8A6)));


extern volatile __bit TBCPRE7 __attribute__((address(0x8A7)));


extern volatile __bit TBCPRE8 __attribute__((address(0x8A8)));


extern volatile __bit TBCPRE9 __attribute__((address(0x8A9)));


extern volatile __bit TDCMOD0 __attribute__((address(0x870)));


extern volatile __bit TDCMOD1 __attribute__((address(0x871)));


extern volatile __bit TDCO0 __attribute__((address(0x868)));


extern volatile __bit TDCO1 __attribute__((address(0x869)));


extern volatile __bit TDCO2 __attribute__((address(0x86A)));


extern volatile __bit TDCO3 __attribute__((address(0x86B)));


extern volatile __bit TDCO4 __attribute__((address(0x86C)));


extern volatile __bit TDCO5 __attribute__((address(0x86D)));


extern volatile __bit TDCO6 __attribute__((address(0x86E)));


extern volatile __bit TDCV0 __attribute__((address(0x860)));


extern volatile __bit TDCV1 __attribute__((address(0x861)));


extern volatile __bit TDCV2 __attribute__((address(0x862)));


extern volatile __bit TDCV3 __attribute__((address(0x863)));


extern volatile __bit TDCV4 __attribute__((address(0x864)));


extern volatile __bit TDCV5 __attribute__((address(0x865)));


extern volatile __bit TEFFIE __attribute__((address(0xA02)));


extern volatile __bit TEFFIF __attribute__((address(0xA22)));


extern volatile __bit TEFHIE __attribute__((address(0xA01)));


extern volatile __bit TEFHIF __attribute__((address(0xA21)));


extern volatile __bit TEFIE __attribute__((address(0x8F4)));


extern volatile __bit TEFIF __attribute__((address(0x8E4)));


extern volatile __bit TEFNEIE __attribute__((address(0xA00)));


extern volatile __bit TEFNEIF __attribute__((address(0xA20)));


extern volatile __bit TEFOVIE __attribute__((address(0xA03)));


extern volatile __bit TEFOVIF __attribute__((address(0xA23)));


extern volatile __bit TEFTSEN __attribute__((address(0xA05)));


extern volatile __bit TEFUA0 __attribute__((address(0xA40)));


extern volatile __bit TEFUA1 __attribute__((address(0xA41)));


extern volatile __bit TEFUA10 __attribute__((address(0xA4A)));


extern volatile __bit TEFUA11 __attribute__((address(0xA4B)));


extern volatile __bit TEFUA12 __attribute__((address(0xA4C)));


extern volatile __bit TEFUA13 __attribute__((address(0xA4D)));


extern volatile __bit TEFUA14 __attribute__((address(0xA4E)));


extern volatile __bit TEFUA15 __attribute__((address(0xA4F)));


extern volatile __bit TEFUA16 __attribute__((address(0xA50)));


extern volatile __bit TEFUA17 __attribute__((address(0xA51)));


extern volatile __bit TEFUA18 __attribute__((address(0xA52)));


extern volatile __bit TEFUA19 __attribute__((address(0xA53)));


extern volatile __bit TEFUA2 __attribute__((address(0xA42)));


extern volatile __bit TEFUA20 __attribute__((address(0xA54)));


extern volatile __bit TEFUA21 __attribute__((address(0xA55)));


extern volatile __bit TEFUA22 __attribute__((address(0xA56)));


extern volatile __bit TEFUA23 __attribute__((address(0xA57)));


extern volatile __bit TEFUA24 __attribute__((address(0xA58)));


extern volatile __bit TEFUA25 __attribute__((address(0xA59)));


extern volatile __bit TEFUA26 __attribute__((address(0xA5A)));


extern volatile __bit TEFUA27 __attribute__((address(0xA5B)));


extern volatile __bit TEFUA28 __attribute__((address(0xA5C)));


extern volatile __bit TEFUA29 __attribute__((address(0xA5D)));


extern volatile __bit TEFUA3 __attribute__((address(0xA43)));


extern volatile __bit TEFUA30 __attribute__((address(0xA5E)));


extern volatile __bit TEFUA31 __attribute__((address(0xA5F)));


extern volatile __bit TEFUA4 __attribute__((address(0xA44)));


extern volatile __bit TEFUA5 __attribute__((address(0xA45)));


extern volatile __bit TEFUA6 __attribute__((address(0xA46)));


extern volatile __bit TEFUA7 __attribute__((address(0xA47)));


extern volatile __bit TEFUA8 __attribute__((address(0xA48)));


extern volatile __bit TEFUA9 __attribute__((address(0xA49)));


extern volatile __bit TERRCNT0 __attribute__((address(0x9A8)));


extern volatile __bit TERRCNT1 __attribute__((address(0x9A9)));


extern volatile __bit TERRCNT2 __attribute__((address(0x9AA)));


extern volatile __bit TERRCNT3 __attribute__((address(0x9AB)));


extern volatile __bit TERRCNT4 __attribute__((address(0x9AC)));


extern volatile __bit TERRCNT5 __attribute__((address(0x9AD)));


extern volatile __bit TERRCNT6 __attribute__((address(0x9AE)));


extern volatile __bit TERRCNT7 __attribute__((address(0x9AF)));


extern volatile __bit TFATIF0 __attribute__((address(0x960)));


extern volatile __bit TFATIF1 __attribute__((address(0x961)));


extern volatile __bit TFATIF10 __attribute__((address(0x96A)));


extern volatile __bit TFATIF11 __attribute__((address(0x96B)));


extern volatile __bit TFATIF12 __attribute__((address(0x96C)));


extern volatile __bit TFATIF13 __attribute__((address(0x96D)));


extern volatile __bit TFATIF14 __attribute__((address(0x96E)));


extern volatile __bit TFATIF15 __attribute__((address(0x96F)));


extern volatile __bit TFATIF16 __attribute__((address(0x970)));


extern volatile __bit TFATIF17 __attribute__((address(0x971)));


extern volatile __bit TFATIF18 __attribute__((address(0x972)));


extern volatile __bit TFATIF19 __attribute__((address(0x973)));


extern volatile __bit TFATIF2 __attribute__((address(0x962)));


extern volatile __bit TFATIF20 __attribute__((address(0x974)));


extern volatile __bit TFATIF21 __attribute__((address(0x975)));


extern volatile __bit TFATIF22 __attribute__((address(0x976)));


extern volatile __bit TFATIF23 __attribute__((address(0x977)));


extern volatile __bit TFATIF24 __attribute__((address(0x978)));


extern volatile __bit TFATIF25 __attribute__((address(0x979)));


extern volatile __bit TFATIF26 __attribute__((address(0x97A)));


extern volatile __bit TFATIF27 __attribute__((address(0x97B)));


extern volatile __bit TFATIF28 __attribute__((address(0x97C)));


extern volatile __bit TFATIF29 __attribute__((address(0x97D)));


extern volatile __bit TFATIF3 __attribute__((address(0x963)));


extern volatile __bit TFATIF30 __attribute__((address(0x97E)));


extern volatile __bit TFATIF31 __attribute__((address(0x97F)));


extern volatile __bit TFATIF4 __attribute__((address(0x964)));


extern volatile __bit TFATIF5 __attribute__((address(0x965)));


extern volatile __bit TFATIF6 __attribute__((address(0x966)));


extern volatile __bit TFATIF7 __attribute__((address(0x967)));


extern volatile __bit TFATIF8 __attribute__((address(0x968)));


extern volatile __bit TFATIF9 __attribute__((address(0x969)));


extern volatile __bit TFIF0 __attribute__((address(0x920)));


extern volatile __bit TFIF1 __attribute__((address(0x921)));


extern volatile __bit TFIF10 __attribute__((address(0x92A)));


extern volatile __bit TFIF11 __attribute__((address(0x92B)));


extern volatile __bit TFIF12 __attribute__((address(0x92C)));


extern volatile __bit TFIF13 __attribute__((address(0x92D)));


extern volatile __bit TFIF14 __attribute__((address(0x92E)));


extern volatile __bit TFIF15 __attribute__((address(0x92F)));


extern volatile __bit TFIF16 __attribute__((address(0x930)));


extern volatile __bit TFIF17 __attribute__((address(0x931)));


extern volatile __bit TFIF18 __attribute__((address(0x932)));


extern volatile __bit TFIF19 __attribute__((address(0x933)));


extern volatile __bit TFIF2 __attribute__((address(0x922)));


extern volatile __bit TFIF20 __attribute__((address(0x934)));


extern volatile __bit TFIF21 __attribute__((address(0x935)));


extern volatile __bit TFIF22 __attribute__((address(0x936)));


extern volatile __bit TFIF23 __attribute__((address(0x937)));


extern volatile __bit TFIF24 __attribute__((address(0x938)));


extern volatile __bit TFIF25 __attribute__((address(0x939)));


extern volatile __bit TFIF26 __attribute__((address(0x93A)));


extern volatile __bit TFIF27 __attribute__((address(0x93B)));


extern volatile __bit TFIF28 __attribute__((address(0x93C)));


extern volatile __bit TFIF29 __attribute__((address(0x93D)));


extern volatile __bit TFIF3 __attribute__((address(0x923)));


extern volatile __bit TFIF30 __attribute__((address(0x93E)));


extern volatile __bit TFIF31 __attribute__((address(0x93F)));


extern volatile __bit TFIF4 __attribute__((address(0x924)));


extern volatile __bit TFIF5 __attribute__((address(0x925)));


extern volatile __bit TFIF6 __attribute__((address(0x926)));


extern volatile __bit TFIF7 __attribute__((address(0x927)));


extern volatile __bit TFIF8 __attribute__((address(0x928)));


extern volatile __bit TFIF9 __attribute__((address(0x929)));


extern volatile __bit TMD0 __attribute__((address(0x1FB0)));


extern volatile __bit TMD1 __attribute__((address(0x1FB1)));


extern volatile __bit TMD2 __attribute__((address(0x1FB2)));


extern volatile __bit TMR0H0 __attribute__((address(0x18C8)));


extern volatile __bit TMR0H1 __attribute__((address(0x18C9)));


extern volatile __bit TMR0H2 __attribute__((address(0x18CA)));


extern volatile __bit TMR0H3 __attribute__((address(0x18CB)));


extern volatile __bit TMR0H4 __attribute__((address(0x18CC)));


extern volatile __bit TMR0H5 __attribute__((address(0x18CD)));


extern volatile __bit TMR0H6 __attribute__((address(0x18CE)));


extern volatile __bit TMR0H7 __attribute__((address(0x18CF)));


extern volatile __bit TMR0IE __attribute__((address(0x250F)));


extern volatile __bit TMR0IF __attribute__((address(0x258F)));


extern volatile __bit TMR0IP __attribute__((address(0x1B2F)));


extern volatile __bit TMR0L0 __attribute__((address(0x18C0)));


extern volatile __bit TMR0L1 __attribute__((address(0x18C1)));


extern volatile __bit TMR0L2 __attribute__((address(0x18C2)));


extern volatile __bit TMR0L3 __attribute__((address(0x18C3)));


extern volatile __bit TMR0L4 __attribute__((address(0x18C4)));


extern volatile __bit TMR0L5 __attribute__((address(0x18C5)));


extern volatile __bit TMR0L6 __attribute__((address(0x18C6)));


extern volatile __bit TMR0L7 __attribute__((address(0x18C7)));


extern volatile __bit TMR0MD __attribute__((address(0x308)));


extern volatile __bit TMR110 __attribute__((address(0x18EA)));


extern volatile __bit TMR111 __attribute__((address(0x18EB)));


extern volatile __bit TMR112 __attribute__((address(0x18EC)));


extern volatile __bit TMR113 __attribute__((address(0x18ED)));


extern volatile __bit TMR114 __attribute__((address(0x18EE)));


extern volatile __bit TMR115 __attribute__((address(0x18EF)));


extern volatile __bit TMR1GIE __attribute__((address(0x250D)));


extern volatile __bit TMR1GIF __attribute__((address(0x258D)));


extern volatile __bit TMR1GIP __attribute__((address(0x1B2D)));


extern volatile __bit TMR1H0 __attribute__((address(0x18E8)));


extern volatile __bit TMR1H1 __attribute__((address(0x18E9)));


extern volatile __bit TMR1H2 __attribute__((address(0x18EA)));


extern volatile __bit TMR1H3 __attribute__((address(0x18EB)));


extern volatile __bit TMR1H4 __attribute__((address(0x18EC)));


extern volatile __bit TMR1H5 __attribute__((address(0x18ED)));


extern volatile __bit TMR1H6 __attribute__((address(0x18EE)));


extern volatile __bit TMR1H7 __attribute__((address(0x18EF)));


extern volatile __bit TMR1IE __attribute__((address(0x250C)));


extern volatile __bit TMR1IF __attribute__((address(0x258C)));


extern volatile __bit TMR1IP __attribute__((address(0x1B2C)));


extern volatile __bit TMR1L0 __attribute__((address(0x18E0)));


extern volatile __bit TMR1L1 __attribute__((address(0x18E1)));


extern volatile __bit TMR1L2 __attribute__((address(0x18E2)));


extern volatile __bit TMR1L3 __attribute__((address(0x18E3)));


extern volatile __bit TMR1L4 __attribute__((address(0x18E4)));


extern volatile __bit TMR1L5 __attribute__((address(0x18E5)));


extern volatile __bit TMR1L6 __attribute__((address(0x18E6)));


extern volatile __bit TMR1L7 __attribute__((address(0x18E7)));


extern volatile __bit TMR1MD __attribute__((address(0x309)));


extern volatile __bit TMR1ON __attribute__((address(0x18F0)));


extern volatile __bit TMR20 __attribute__((address(0x1814)));


extern volatile __bit TMR21 __attribute__((address(0x1815)));


extern volatile __bit TMR22 __attribute__((address(0x1816)));


extern volatile __bit TMR23 __attribute__((address(0x1817)));


extern volatile __bit TMR2IE __attribute__((address(0x250B)));


extern volatile __bit TMR2IF __attribute__((address(0x258B)));


extern volatile __bit TMR2IP __attribute__((address(0x1B2B)));


extern volatile __bit TMR2MD __attribute__((address(0x30A)));


extern volatile __bit TMR2ON __attribute__((address(0x1927)));


extern volatile __bit TMR30 __attribute__((address(0x1940)));


extern volatile __bit TMR31 __attribute__((address(0x1941)));


extern volatile __bit TMR310 __attribute__((address(0x194A)));


extern volatile __bit TMR311 __attribute__((address(0x194B)));


extern volatile __bit TMR312 __attribute__((address(0x194C)));


extern volatile __bit TMR313 __attribute__((address(0x194D)));


extern volatile __bit TMR314 __attribute__((address(0x194E)));


extern volatile __bit TMR315 __attribute__((address(0x194F)));


extern volatile __bit TMR32 __attribute__((address(0x1942)));


extern volatile __bit TMR33 __attribute__((address(0x1943)));


extern volatile __bit TMR34 __attribute__((address(0x1944)));


extern volatile __bit TMR35 __attribute__((address(0x1945)));


extern volatile __bit TMR36 __attribute__((address(0x1946)));


extern volatile __bit TMR37 __attribute__((address(0x1947)));


extern volatile __bit TMR38 __attribute__((address(0x1948)));


extern volatile __bit TMR39 __attribute__((address(0x1949)));


extern volatile __bit TMR3GIE __attribute__((address(0x251D)));


extern volatile __bit TMR3GIF __attribute__((address(0x259D)));


extern volatile __bit TMR3GIP __attribute__((address(0x1B3D)));


extern volatile __bit TMR3H0 __attribute__((address(0x1948)));


extern volatile __bit TMR3H1 __attribute__((address(0x1949)));


extern volatile __bit TMR3H2 __attribute__((address(0x194A)));


extern volatile __bit TMR3H3 __attribute__((address(0x194B)));


extern volatile __bit TMR3H4 __attribute__((address(0x194C)));


extern volatile __bit TMR3H5 __attribute__((address(0x194D)));


extern volatile __bit TMR3H6 __attribute__((address(0x194E)));


extern volatile __bit TMR3H7 __attribute__((address(0x194F)));


extern volatile __bit TMR3IE __attribute__((address(0x251C)));


extern volatile __bit TMR3IF __attribute__((address(0x259C)));


extern volatile __bit TMR3IP __attribute__((address(0x1B3C)));


extern volatile __bit TMR3L0 __attribute__((address(0x1940)));


extern volatile __bit TMR3L1 __attribute__((address(0x1941)));


extern volatile __bit TMR3L2 __attribute__((address(0x1942)));


extern volatile __bit TMR3L3 __attribute__((address(0x1943)));


extern volatile __bit TMR3L4 __attribute__((address(0x1944)));


extern volatile __bit TMR3L5 __attribute__((address(0x1945)));


extern volatile __bit TMR3L6 __attribute__((address(0x1946)));


extern volatile __bit TMR3L7 __attribute__((address(0x1947)));


extern volatile __bit TMR3MD __attribute__((address(0x30B)));


extern volatile __bit TMR3ON __attribute__((address(0x1950)));


extern volatile __bit TMR4IE __attribute__((address(0x254B)));


extern volatile __bit TMR4IF __attribute__((address(0x25CB)));


extern volatile __bit TMR4IP __attribute__((address(0x1B6B)));


extern volatile __bit TMR4MD __attribute__((address(0x30C)));


extern volatile __bit TMR4ON __attribute__((address(0x1987)));


extern volatile __bit TMR50 __attribute__((address(0x19A0)));


extern volatile __bit TMR51 __attribute__((address(0x19A1)));


extern volatile __bit TMR510 __attribute__((address(0x19AA)));


extern volatile __bit TMR511 __attribute__((address(0x19AB)));


extern volatile __bit TMR512 __attribute__((address(0x19AC)));


extern volatile __bit TMR513 __attribute__((address(0x19AD)));


extern volatile __bit TMR514 __attribute__((address(0x19AE)));


extern volatile __bit TMR515 __attribute__((address(0x19AF)));


extern volatile __bit TMR52 __attribute__((address(0x19A2)));


extern volatile __bit TMR53 __attribute__((address(0x19A3)));


extern volatile __bit TMR54 __attribute__((address(0x19A4)));


extern volatile __bit TMR55 __attribute__((address(0x19A5)));


extern volatile __bit TMR56 __attribute__((address(0x19A6)));


extern volatile __bit TMR57 __attribute__((address(0x19A7)));


extern volatile __bit TMR58 __attribute__((address(0x19A8)));


extern volatile __bit TMR59 __attribute__((address(0x19A9)));


extern volatile __bit TMR5GIE __attribute__((address(0x2535)));


extern volatile __bit TMR5GIF __attribute__((address(0x25B5)));


extern volatile __bit TMR5GIP __attribute__((address(0x1B55)));


extern volatile __bit TMR5H0 __attribute__((address(0x19A8)));


extern volatile __bit TMR5H1 __attribute__((address(0x19A9)));


extern volatile __bit TMR5H2 __attribute__((address(0x19AA)));


extern volatile __bit TMR5H3 __attribute__((address(0x19AB)));


extern volatile __bit TMR5H4 __attribute__((address(0x19AC)));


extern volatile __bit TMR5H5 __attribute__((address(0x19AD)));


extern volatile __bit TMR5H6 __attribute__((address(0x19AE)));


extern volatile __bit TMR5H7 __attribute__((address(0x19AF)));


extern volatile __bit TMR5IE __attribute__((address(0x2534)));


extern volatile __bit TMR5IF __attribute__((address(0x25B4)));


extern volatile __bit TMR5IP __attribute__((address(0x1B54)));


extern volatile __bit TMR5L0 __attribute__((address(0x19A0)));


extern volatile __bit TMR5L1 __attribute__((address(0x19A1)));


extern volatile __bit TMR5L2 __attribute__((address(0x19A2)));


extern volatile __bit TMR5L3 __attribute__((address(0x19A3)));


extern volatile __bit TMR5L4 __attribute__((address(0x19A4)));


extern volatile __bit TMR5L5 __attribute__((address(0x19A5)));


extern volatile __bit TMR5L6 __attribute__((address(0x19A6)));


extern volatile __bit TMR5L7 __attribute__((address(0x19A7)));


extern volatile __bit TMR5MD __attribute__((address(0x30D)));


extern volatile __bit TMR5ON __attribute__((address(0x19B0)));


extern volatile __bit TMR6IE __attribute__((address(0x256B)));


extern volatile __bit TMR6IF __attribute__((address(0x25EB)));


extern volatile __bit TMR6IP __attribute__((address(0x1B8B)));


extern volatile __bit TMR6MD __attribute__((address(0x30E)));


extern volatile __bit TMR6ON __attribute__((address(0x19E7)));


extern volatile __bit TMR7 __attribute__((address(0x1807)));


extern volatile __bit TMR8 __attribute__((address(0x1808)));


extern volatile __bit TMR9 __attribute__((address(0x1809)));


extern volatile __bit TMRAOSEN __attribute__((address(0x1C46)));


extern volatile __bit TMRBOSEN __attribute__((address(0x1CA6)));


extern volatile __bit TOBY32 __attribute__((address(0x14E6)));


extern volatile __bit TOREC __attribute__((address(0x14E7)));


extern volatile __bit TOTIME0 __attribute__((address(0x14E0)));


extern volatile __bit TOTIME1 __attribute__((address(0x14E1)));


extern volatile __bit TOTIME2 __attribute__((address(0x14E2)));


extern volatile __bit TOTIME3 __attribute__((address(0x14E3)));


extern volatile __bit TOTIME4 __attribute__((address(0x14E4)));


extern volatile __bit TOTIME5 __attribute__((address(0x14E5)));


extern volatile __bit TRIGEN __attribute__((address(0x1B06)));


extern volatile __bit TRISA0 __attribute__((address(0x2630)));


extern volatile __bit TRISA1 __attribute__((address(0x2631)));


extern volatile __bit TRISA2 __attribute__((address(0x2632)));


extern volatile __bit TRISA3 __attribute__((address(0x2633)));


extern volatile __bit TRISA4 __attribute__((address(0x2634)));


extern volatile __bit TRISA5 __attribute__((address(0x2635)));


extern volatile __bit TRISA6 __attribute__((address(0x2636)));


extern volatile __bit TRISA7 __attribute__((address(0x2637)));


extern volatile __bit TRISB0 __attribute__((address(0x2638)));


extern volatile __bit TRISB1 __attribute__((address(0x2639)));


extern volatile __bit TRISB2 __attribute__((address(0x263A)));


extern volatile __bit TRISB3 __attribute__((address(0x263B)));


extern volatile __bit TRISB4 __attribute__((address(0x263C)));


extern volatile __bit TRISB5 __attribute__((address(0x263D)));


extern volatile __bit TRISB6 __attribute__((address(0x263E)));


extern volatile __bit TRISB7 __attribute__((address(0x263F)));


extern volatile __bit TRISC0 __attribute__((address(0x2640)));


extern volatile __bit TRISC1 __attribute__((address(0x2641)));


extern volatile __bit TRISC2 __attribute__((address(0x2642)));


extern volatile __bit TRISC3 __attribute__((address(0x2643)));


extern volatile __bit TRISC4 __attribute__((address(0x2644)));


extern volatile __bit TRISC5 __attribute__((address(0x2645)));


extern volatile __bit TRISC6 __attribute__((address(0x2646)));


extern volatile __bit TRISC7 __attribute__((address(0x2647)));


extern volatile __bit TRISD0 __attribute__((address(0x2648)));


extern volatile __bit TRISD1 __attribute__((address(0x2649)));


extern volatile __bit TRISD2 __attribute__((address(0x264A)));


extern volatile __bit TRISD3 __attribute__((address(0x264B)));


extern volatile __bit TRISD4 __attribute__((address(0x264C)));


extern volatile __bit TRISD5 __attribute__((address(0x264D)));


extern volatile __bit TRISD6 __attribute__((address(0x264E)));


extern volatile __bit TRISD7 __attribute__((address(0x264F)));


extern volatile __bit TRISE0 __attribute__((address(0x2650)));


extern volatile __bit TRISE1 __attribute__((address(0x2651)));


extern volatile __bit TRISE2 __attribute__((address(0x2652)));


extern volatile __bit TS __attribute__((address(0x1872)));


extern volatile __bit TSEG15 __attribute__((address(0x835)));


extern volatile __bit TSEG16 __attribute__((address(0x836)));


extern volatile __bit TSEG17 __attribute__((address(0x837)));


extern volatile __bit TSEG24 __attribute__((address(0x82C)));


extern volatile __bit TSEG25 __attribute__((address(0x82D)));


extern volatile __bit TSEG26 __attribute__((address(0x82E)));


extern volatile __bit TSEL0 __attribute__((address(0x1B08)));


extern volatile __bit TSEL1 __attribute__((address(0x1B09)));


extern volatile __bit TSEL2 __attribute__((address(0x1B0A)));


extern volatile __bit TSEL3 __attribute__((address(0x1B0B)));


extern volatile __bit TSEL4 __attribute__((address(0x1B0C)));


extern volatile __bit TSEN __attribute__((address(0x1EBD)));


extern volatile __bit TSEOF __attribute__((address(0x8B1)));


extern volatile __bit TSRES __attribute__((address(0x8B2)));


extern volatile __bit TSRNG __attribute__((address(0x1EBC)));


extern volatile __bit TU16ACAPT __attribute__((address(0x1C43)));


extern volatile __bit TU16ACIE __attribute__((address(0x1C38)));


extern volatile __bit TU16ACIF __attribute__((address(0x1C40)));


extern volatile __bit TU16ACLK0 __attribute__((address(0x1C78)));


extern volatile __bit TU16ACLK1 __attribute__((address(0x1C79)));


extern volatile __bit TU16ACLK2 __attribute__((address(0x1C7A)));


extern volatile __bit TU16ACLK3 __attribute__((address(0x1C7B)));


extern volatile __bit TU16ACLK4 __attribute__((address(0x1C7C)));


extern volatile __bit TU16ACLR __attribute__((address(0x1C45)));


extern volatile __bit TU16ACPOL __attribute__((address(0x1C3E)));


extern volatile __bit TU16ACR0 __attribute__((address(0x1C58)));


extern volatile __bit TU16ACR1 __attribute__((address(0x1C59)));


extern volatile __bit TU16ACR10 __attribute__((address(0x1C62)));


extern volatile __bit TU16ACR11 __attribute__((address(0x1C63)));


extern volatile __bit TU16ACR12 __attribute__((address(0x1C64)));


extern volatile __bit TU16ACR13 __attribute__((address(0x1C65)));


extern volatile __bit TU16ACR14 __attribute__((address(0x1C66)));


extern volatile __bit TU16ACR15 __attribute__((address(0x1C67)));


extern volatile __bit TU16ACR2 __attribute__((address(0x1C5A)));


extern volatile __bit TU16ACR3 __attribute__((address(0x1C5B)));


extern volatile __bit TU16ACR4 __attribute__((address(0x1C5C)));


extern volatile __bit TU16ACR5 __attribute__((address(0x1C5D)));


extern volatile __bit TU16ACR6 __attribute__((address(0x1C5E)));


extern volatile __bit TU16ACR7 __attribute__((address(0x1C5F)));


extern volatile __bit TU16ACR8 __attribute__((address(0x1C60)));


extern volatile __bit TU16ACR9 __attribute__((address(0x1C61)));


extern volatile __bit TU16ACRH0 __attribute__((address(0x1C60)));


extern volatile __bit TU16ACRH1 __attribute__((address(0x1C61)));


extern volatile __bit TU16ACRH2 __attribute__((address(0x1C62)));


extern volatile __bit TU16ACRH3 __attribute__((address(0x1C63)));


extern volatile __bit TU16ACRH4 __attribute__((address(0x1C64)));


extern volatile __bit TU16ACRH5 __attribute__((address(0x1C65)));


extern volatile __bit TU16ACRH6 __attribute__((address(0x1C66)));


extern volatile __bit TU16ACRH7 __attribute__((address(0x1C67)));


extern volatile __bit TU16ACRL0 __attribute__((address(0x1C58)));


extern volatile __bit TU16ACRL1 __attribute__((address(0x1C59)));


extern volatile __bit TU16ACRL2 __attribute__((address(0x1C5A)));


extern volatile __bit TU16ACRL3 __attribute__((address(0x1C5B)));


extern volatile __bit TU16ACRL4 __attribute__((address(0x1C5C)));


extern volatile __bit TU16ACRL5 __attribute__((address(0x1C5D)));


extern volatile __bit TU16ACRL6 __attribute__((address(0x1C5E)));


extern volatile __bit TU16ACRL7 __attribute__((address(0x1C5F)));


extern volatile __bit TU16ACSYNC __attribute__((address(0x1C4E)));


extern volatile __bit TU16AEPOL __attribute__((address(0x1C4F)));


extern volatile __bit TU16AERS0 __attribute__((address(0x1C80)));


extern volatile __bit TU16AERS1 __attribute__((address(0x1C81)));


extern volatile __bit TU16AERS2 __attribute__((address(0x1C82)));


extern volatile __bit TU16AERS3 __attribute__((address(0x1C83)));


extern volatile __bit TU16AERS4 __attribute__((address(0x1C84)));


extern volatile __bit TU16AERS5 __attribute__((address(0x1C85)));


extern volatile __bit TU16AIE __attribute__((address(0x24F4)));


extern volatile __bit TU16AIF __attribute__((address(0x2574)));


extern volatile __bit TU16AIP __attribute__((address(0x1B14)));


extern volatile __bit TU16ALIMIT __attribute__((address(0x1C44)));


extern volatile __bit TU16AMD __attribute__((address(0x310)));


extern volatile __bit TU16AOM __attribute__((address(0x1C3D)));


extern volatile __bit TU16AON __attribute__((address(0x1C3F)));


extern volatile __bit TU16AOPOL __attribute__((address(0x1C3C)));


extern volatile __bit TU16APR0 __attribute__((address(0x1C68)));


extern volatile __bit TU16APR1 __attribute__((address(0x1C69)));


extern volatile __bit TU16APR10 __attribute__((address(0x1C72)));


extern volatile __bit TU16APR11 __attribute__((address(0x1C73)));


extern volatile __bit TU16APR12 __attribute__((address(0x1C74)));


extern volatile __bit TU16APR13 __attribute__((address(0x1C75)));


extern volatile __bit TU16APR14 __attribute__((address(0x1C76)));


extern volatile __bit TU16APR15 __attribute__((address(0x1C77)));


extern volatile __bit TU16APR2 __attribute__((address(0x1C6A)));


extern volatile __bit TU16APR3 __attribute__((address(0x1C6B)));


extern volatile __bit TU16APR4 __attribute__((address(0x1C6C)));


extern volatile __bit TU16APR5 __attribute__((address(0x1C6D)));


extern volatile __bit TU16APR6 __attribute__((address(0x1C6E)));


extern volatile __bit TU16APR7 __attribute__((address(0x1C6F)));


extern volatile __bit TU16APR8 __attribute__((address(0x1C70)));


extern volatile __bit TU16APR9 __attribute__((address(0x1C71)));


extern volatile __bit TU16APRH0 __attribute__((address(0x1C70)));


extern volatile __bit TU16APRH1 __attribute__((address(0x1C71)));


extern volatile __bit TU16APRH2 __attribute__((address(0x1C72)));


extern volatile __bit TU16APRH3 __attribute__((address(0x1C73)));


extern volatile __bit TU16APRH4 __attribute__((address(0x1C74)));


extern volatile __bit TU16APRH5 __attribute__((address(0x1C75)));


extern volatile __bit TU16APRH6 __attribute__((address(0x1C76)));


extern volatile __bit TU16APRH7 __attribute__((address(0x1C77)));


extern volatile __bit TU16APRIE __attribute__((address(0x1C3A)));


extern volatile __bit TU16APRIF __attribute__((address(0x1C42)));


extern volatile __bit TU16APRL0 __attribute__((address(0x1C68)));


extern volatile __bit TU16APRL1 __attribute__((address(0x1C69)));


extern volatile __bit TU16APRL2 __attribute__((address(0x1C6A)));


extern volatile __bit TU16APRL3 __attribute__((address(0x1C6B)));


extern volatile __bit TU16APRL4 __attribute__((address(0x1C6C)));


extern volatile __bit TU16APRL5 __attribute__((address(0x1C6D)));


extern volatile __bit TU16APRL6 __attribute__((address(0x1C6E)));


extern volatile __bit TU16APRL7 __attribute__((address(0x1C6F)));


extern volatile __bit TU16APS0 __attribute__((address(0x1C50)));


extern volatile __bit TU16APS1 __attribute__((address(0x1C51)));


extern volatile __bit TU16APS2 __attribute__((address(0x1C52)));


extern volatile __bit TU16APS3 __attribute__((address(0x1C53)));


extern volatile __bit TU16APS4 __attribute__((address(0x1C54)));


extern volatile __bit TU16APS5 __attribute__((address(0x1C55)));


extern volatile __bit TU16APS6 __attribute__((address(0x1C56)));


extern volatile __bit TU16APS7 __attribute__((address(0x1C57)));


extern volatile __bit TU16ARDSEL __attribute__((address(0x1C3B)));


extern volatile __bit TU16ARESET0 __attribute__((address(0x1C4A)));


extern volatile __bit TU16ARESET1 __attribute__((address(0x1C4B)));


extern volatile __bit TU16ARUN __attribute__((address(0x1C47)));


extern volatile __bit TU16ASTART0 __attribute__((address(0x1C4C)));


extern volatile __bit TU16ASTART1 __attribute__((address(0x1C4D)));


extern volatile __bit TU16ASTOP0 __attribute__((address(0x1C48)));


extern volatile __bit TU16ASTOP1 __attribute__((address(0x1C49)));


extern volatile __bit TU16ATMR0 __attribute__((address(0x1C58)));


extern volatile __bit TU16ATMR1 __attribute__((address(0x1C59)));


extern volatile __bit TU16ATMR10 __attribute__((address(0x1C62)));


extern volatile __bit TU16ATMR11 __attribute__((address(0x1C63)));


extern volatile __bit TU16ATMR12 __attribute__((address(0x1C64)));


extern volatile __bit TU16ATMR13 __attribute__((address(0x1C65)));


extern volatile __bit TU16ATMR14 __attribute__((address(0x1C66)));


extern volatile __bit TU16ATMR15 __attribute__((address(0x1C67)));


extern volatile __bit TU16ATMR2 __attribute__((address(0x1C5A)));


extern volatile __bit TU16ATMR3 __attribute__((address(0x1C5B)));


extern volatile __bit TU16ATMR4 __attribute__((address(0x1C5C)));


extern volatile __bit TU16ATMR5 __attribute__((address(0x1C5D)));


extern volatile __bit TU16ATMR6 __attribute__((address(0x1C5E)));


extern volatile __bit TU16ATMR7 __attribute__((address(0x1C5F)));


extern volatile __bit TU16ATMR8 __attribute__((address(0x1C60)));


extern volatile __bit TU16ATMR9 __attribute__((address(0x1C61)));


extern volatile __bit TU16ATMRH0 __attribute__((address(0x1C60)));


extern volatile __bit TU16ATMRH1 __attribute__((address(0x1C61)));


extern volatile __bit TU16ATMRH2 __attribute__((address(0x1C62)));


extern volatile __bit TU16ATMRH3 __attribute__((address(0x1C63)));


extern volatile __bit TU16ATMRH4 __attribute__((address(0x1C64)));


extern volatile __bit TU16ATMRH5 __attribute__((address(0x1C65)));


extern volatile __bit TU16ATMRH6 __attribute__((address(0x1C66)));


extern volatile __bit TU16ATMRH7 __attribute__((address(0x1C67)));


extern volatile __bit TU16ATMRL0 __attribute__((address(0x1C58)));


extern volatile __bit TU16ATMRL1 __attribute__((address(0x1C59)));


extern volatile __bit TU16ATMRL2 __attribute__((address(0x1C5A)));


extern volatile __bit TU16ATMRL3 __attribute__((address(0x1C5B)));


extern volatile __bit TU16ATMRL4 __attribute__((address(0x1C5C)));


extern volatile __bit TU16ATMRL5 __attribute__((address(0x1C5D)));


extern volatile __bit TU16ATMRL6 __attribute__((address(0x1C5E)));


extern volatile __bit TU16ATMRL7 __attribute__((address(0x1C5F)));


extern volatile __bit TU16AZIE __attribute__((address(0x1C39)));


extern volatile __bit TU16AZIF __attribute__((address(0x1C41)));


extern volatile __bit TU16BCAPT __attribute__((address(0x1CA3)));


extern volatile __bit TU16BCIE __attribute__((address(0x1C98)));


extern volatile __bit TU16BCIF __attribute__((address(0x1CA0)));


extern volatile __bit TU16BCLK0 __attribute__((address(0x1CD8)));


extern volatile __bit TU16BCLK1 __attribute__((address(0x1CD9)));


extern volatile __bit TU16BCLK2 __attribute__((address(0x1CDA)));


extern volatile __bit TU16BCLK3 __attribute__((address(0x1CDB)));


extern volatile __bit TU16BCLK4 __attribute__((address(0x1CDC)));


extern volatile __bit TU16BCLR __attribute__((address(0x1CA5)));


extern volatile __bit TU16BCPOL __attribute__((address(0x1C9E)));


extern volatile __bit TU16BCR0 __attribute__((address(0x1CB8)));


extern volatile __bit TU16BCR1 __attribute__((address(0x1CB9)));


extern volatile __bit TU16BCR10 __attribute__((address(0x1CC2)));


extern volatile __bit TU16BCR11 __attribute__((address(0x1CC3)));


extern volatile __bit TU16BCR12 __attribute__((address(0x1CC4)));


extern volatile __bit TU16BCR13 __attribute__((address(0x1CC5)));


extern volatile __bit TU16BCR14 __attribute__((address(0x1CC6)));


extern volatile __bit TU16BCR15 __attribute__((address(0x1CC7)));


extern volatile __bit TU16BCR2 __attribute__((address(0x1CBA)));


extern volatile __bit TU16BCR3 __attribute__((address(0x1CBB)));


extern volatile __bit TU16BCR4 __attribute__((address(0x1CBC)));


extern volatile __bit TU16BCR5 __attribute__((address(0x1CBD)));


extern volatile __bit TU16BCR6 __attribute__((address(0x1CBE)));


extern volatile __bit TU16BCR7 __attribute__((address(0x1CBF)));


extern volatile __bit TU16BCR8 __attribute__((address(0x1CC0)));


extern volatile __bit TU16BCR9 __attribute__((address(0x1CC1)));


extern volatile __bit TU16BCRH0 __attribute__((address(0x1CC0)));


extern volatile __bit TU16BCRH1 __attribute__((address(0x1CC1)));


extern volatile __bit TU16BCRH2 __attribute__((address(0x1CC2)));


extern volatile __bit TU16BCRH3 __attribute__((address(0x1CC3)));


extern volatile __bit TU16BCRH4 __attribute__((address(0x1CC4)));


extern volatile __bit TU16BCRH5 __attribute__((address(0x1CC5)));


extern volatile __bit TU16BCRH6 __attribute__((address(0x1CC6)));


extern volatile __bit TU16BCRH7 __attribute__((address(0x1CC7)));


extern volatile __bit TU16BCRL0 __attribute__((address(0x1CB8)));


extern volatile __bit TU16BCRL1 __attribute__((address(0x1CB9)));


extern volatile __bit TU16BCRL2 __attribute__((address(0x1CBA)));


extern volatile __bit TU16BCRL3 __attribute__((address(0x1CBB)));


extern volatile __bit TU16BCRL4 __attribute__((address(0x1CBC)));


extern volatile __bit TU16BCRL5 __attribute__((address(0x1CBD)));


extern volatile __bit TU16BCRL6 __attribute__((address(0x1CBE)));


extern volatile __bit TU16BCRL7 __attribute__((address(0x1CBF)));


extern volatile __bit TU16BCSYNC __attribute__((address(0x1CAE)));


extern volatile __bit TU16BEPOL __attribute__((address(0x1CAF)));


extern volatile __bit TU16BERS0 __attribute__((address(0x1CE0)));


extern volatile __bit TU16BERS1 __attribute__((address(0x1CE1)));


extern volatile __bit TU16BERS2 __attribute__((address(0x1CE2)));


extern volatile __bit TU16BERS3 __attribute__((address(0x1CE3)));


extern volatile __bit TU16BERS4 __attribute__((address(0x1CE4)));


extern volatile __bit TU16BERS5 __attribute__((address(0x1CE5)));


extern volatile __bit TU16BIE __attribute__((address(0x251B)));


extern volatile __bit TU16BIF __attribute__((address(0x259B)));


extern volatile __bit TU16BIP __attribute__((address(0x1B3B)));


extern volatile __bit TU16BLIMIT __attribute__((address(0x1CA4)));


extern volatile __bit TU16BMD __attribute__((address(0x311)));


extern volatile __bit TU16BOM __attribute__((address(0x1C9D)));


extern volatile __bit TU16BON __attribute__((address(0x1C9F)));


extern volatile __bit TU16BOPOL __attribute__((address(0x1C9C)));


extern volatile __bit TU16BPR0 __attribute__((address(0x1CC8)));


extern volatile __bit TU16BPR1 __attribute__((address(0x1CC9)));


extern volatile __bit TU16BPR10 __attribute__((address(0x1CD2)));


extern volatile __bit TU16BPR11 __attribute__((address(0x1CD3)));


extern volatile __bit TU16BPR12 __attribute__((address(0x1CD4)));


extern volatile __bit TU16BPR13 __attribute__((address(0x1CD5)));


extern volatile __bit TU16BPR14 __attribute__((address(0x1CD6)));


extern volatile __bit TU16BPR15 __attribute__((address(0x1CD7)));


extern volatile __bit TU16BPR2 __attribute__((address(0x1CCA)));


extern volatile __bit TU16BPR3 __attribute__((address(0x1CCB)));


extern volatile __bit TU16BPR4 __attribute__((address(0x1CCC)));


extern volatile __bit TU16BPR5 __attribute__((address(0x1CCD)));


extern volatile __bit TU16BPR6 __attribute__((address(0x1CCE)));


extern volatile __bit TU16BPR7 __attribute__((address(0x1CCF)));


extern volatile __bit TU16BPR8 __attribute__((address(0x1CD0)));


extern volatile __bit TU16BPR9 __attribute__((address(0x1CD1)));


extern volatile __bit TU16BPRH0 __attribute__((address(0x1CD0)));


extern volatile __bit TU16BPRH1 __attribute__((address(0x1CD1)));


extern volatile __bit TU16BPRH2 __attribute__((address(0x1CD2)));


extern volatile __bit TU16BPRH3 __attribute__((address(0x1CD3)));


extern volatile __bit TU16BPRH4 __attribute__((address(0x1CD4)));


extern volatile __bit TU16BPRH5 __attribute__((address(0x1CD5)));


extern volatile __bit TU16BPRH6 __attribute__((address(0x1CD6)));


extern volatile __bit TU16BPRH7 __attribute__((address(0x1CD7)));


extern volatile __bit TU16BPRIE __attribute__((address(0x1C9A)));


extern volatile __bit TU16BPRIF __attribute__((address(0x1CA2)));


extern volatile __bit TU16BPRL0 __attribute__((address(0x1CC8)));


extern volatile __bit TU16BPRL1 __attribute__((address(0x1CC9)));


extern volatile __bit TU16BPRL2 __attribute__((address(0x1CCA)));


extern volatile __bit TU16BPRL3 __attribute__((address(0x1CCB)));


extern volatile __bit TU16BPRL4 __attribute__((address(0x1CCC)));


extern volatile __bit TU16BPRL5 __attribute__((address(0x1CCD)));


extern volatile __bit TU16BPRL6 __attribute__((address(0x1CCE)));


extern volatile __bit TU16BPRL7 __attribute__((address(0x1CCF)));


extern volatile __bit TU16BPS0 __attribute__((address(0x1CB0)));


extern volatile __bit TU16BPS1 __attribute__((address(0x1CB1)));


extern volatile __bit TU16BPS2 __attribute__((address(0x1CB2)));


extern volatile __bit TU16BPS3 __attribute__((address(0x1CB3)));


extern volatile __bit TU16BPS4 __attribute__((address(0x1CB4)));


extern volatile __bit TU16BPS5 __attribute__((address(0x1CB5)));


extern volatile __bit TU16BPS6 __attribute__((address(0x1CB6)));


extern volatile __bit TU16BPS7 __attribute__((address(0x1CB7)));


extern volatile __bit TU16BRDSEL __attribute__((address(0x1C9B)));


extern volatile __bit TU16BRESET0 __attribute__((address(0x1CAA)));


extern volatile __bit TU16BRESET1 __attribute__((address(0x1CAB)));


extern volatile __bit TU16BRUN __attribute__((address(0x1CA7)));


extern volatile __bit TU16BSTART0 __attribute__((address(0x1CAC)));


extern volatile __bit TU16BSTART1 __attribute__((address(0x1CAD)));


extern volatile __bit TU16BSTOP0 __attribute__((address(0x1CA8)));


extern volatile __bit TU16BSTOP1 __attribute__((address(0x1CA9)));


extern volatile __bit TU16BTMR0 __attribute__((address(0x1CB8)));


extern volatile __bit TU16BTMR1 __attribute__((address(0x1CB9)));


extern volatile __bit TU16BTMR10 __attribute__((address(0x1CC2)));


extern volatile __bit TU16BTMR11 __attribute__((address(0x1CC3)));


extern volatile __bit TU16BTMR12 __attribute__((address(0x1CC4)));


extern volatile __bit TU16BTMR13 __attribute__((address(0x1CC5)));


extern volatile __bit TU16BTMR14 __attribute__((address(0x1CC6)));


extern volatile __bit TU16BTMR15 __attribute__((address(0x1CC7)));


extern volatile __bit TU16BTMR2 __attribute__((address(0x1CBA)));


extern volatile __bit TU16BTMR3 __attribute__((address(0x1CBB)));


extern volatile __bit TU16BTMR4 __attribute__((address(0x1CBC)));


extern volatile __bit TU16BTMR5 __attribute__((address(0x1CBD)));


extern volatile __bit TU16BTMR6 __attribute__((address(0x1CBE)));


extern volatile __bit TU16BTMR7 __attribute__((address(0x1CBF)));


extern volatile __bit TU16BTMR8 __attribute__((address(0x1CC0)));


extern volatile __bit TU16BTMR9 __attribute__((address(0x1CC1)));


extern volatile __bit TU16BTMRH0 __attribute__((address(0x1CC0)));


extern volatile __bit TU16BTMRH1 __attribute__((address(0x1CC1)));


extern volatile __bit TU16BTMRH2 __attribute__((address(0x1CC2)));


extern volatile __bit TU16BTMRH3 __attribute__((address(0x1CC3)));


extern volatile __bit TU16BTMRH4 __attribute__((address(0x1CC4)));


extern volatile __bit TU16BTMRH5 __attribute__((address(0x1CC5)));


extern volatile __bit TU16BTMRH6 __attribute__((address(0x1CC6)));


extern volatile __bit TU16BTMRH7 __attribute__((address(0x1CC7)));


extern volatile __bit TU16BTMRL0 __attribute__((address(0x1CB8)));


extern volatile __bit TU16BTMRL1 __attribute__((address(0x1CB9)));


extern volatile __bit TU16BTMRL2 __attribute__((address(0x1CBA)));


extern volatile __bit TU16BTMRL3 __attribute__((address(0x1CBB)));


extern volatile __bit TU16BTMRL4 __attribute__((address(0x1CBC)));


extern volatile __bit TU16BTMRL5 __attribute__((address(0x1CBD)));


extern volatile __bit TU16BTMRL6 __attribute__((address(0x1CBE)));


extern volatile __bit TU16BTMRL7 __attribute__((address(0x1CBF)));


extern volatile __bit TU16BZIE __attribute__((address(0x1C99)));


extern volatile __bit TU16BZIF __attribute__((address(0x1CA1)));


extern volatile __bit TU1MD __attribute__((address(0x310)));


extern volatile __bit TU2MD __attribute__((address(0x311)));


extern volatile __bit TUIN0PPS0 __attribute__((address(0x1258)));


extern volatile __bit TUIN0PPS1 __attribute__((address(0x1259)));


extern volatile __bit TUIN0PPS2 __attribute__((address(0x125A)));


extern volatile __bit TUIN0PPS3 __attribute__((address(0x125B)));


extern volatile __bit TUIN0PPS4 __attribute__((address(0x125C)));


extern volatile __bit TUIN0PPS5 __attribute__((address(0x125D)));


extern volatile __bit TUIN1PPS0 __attribute__((address(0x1260)));


extern volatile __bit TUIN1PPS1 __attribute__((address(0x1261)));


extern volatile __bit TUIN1PPS2 __attribute__((address(0x1262)));


extern volatile __bit TUIN1PPS3 __attribute__((address(0x1263)));


extern volatile __bit TUIN1PPS4 __attribute__((address(0x1264)));


extern volatile __bit TUIN1PPS5 __attribute__((address(0x1265)));


extern volatile __bit TUN0 __attribute__((address(0x580)));


extern volatile __bit TUN1 __attribute__((address(0x581)));


extern volatile __bit TUN2 __attribute__((address(0x582)));


extern volatile __bit TUN3 __attribute__((address(0x583)));


extern volatile __bit TUN4 __attribute__((address(0x584)));


extern volatile __bit TUN5 __attribute__((address(0x585)));


extern volatile __bit TXBO __attribute__((address(0x9B5)));


extern volatile __bit TXBOERR __attribute__((address(0x9F7)));


extern volatile __bit TXBP __attribute__((address(0x9B4)));


extern volatile __bit TXBWS0 __attribute__((address(0x81C)));


extern volatile __bit TXBWS1 __attribute__((address(0x81D)));


extern volatile __bit TXBWS2 __attribute__((address(0x81E)));


extern volatile __bit TXBWS3 __attribute__((address(0x81F)));


extern volatile __bit TXIE __attribute__((address(0x8F0)));


extern volatile __bit TXIF __attribute__((address(0x8E0)));


extern volatile __bit TXQCI0 __attribute__((address(0xAA8)));


extern volatile __bit TXQCI1 __attribute__((address(0xAA9)));


extern volatile __bit TXQCI2 __attribute__((address(0xAAA)));


extern volatile __bit TXQCI3 __attribute__((address(0xAAB)));


extern volatile __bit TXQCI4 __attribute__((address(0xAAC)));


extern volatile __bit TXQEIE __attribute__((address(0xA82)));


extern volatile __bit TXQEIF __attribute__((address(0xAA2)));


extern volatile __bit TXQEN __attribute__((address(0x814)));


extern volatile __bit TXQNIE __attribute__((address(0xA80)));


extern volatile __bit TXQNIF __attribute__((address(0xAA0)));


extern volatile __bit TXQUA0 __attribute__((address(0xAC0)));


extern volatile __bit TXQUA1 __attribute__((address(0xAC1)));


extern volatile __bit TXQUA10 __attribute__((address(0xACA)));


extern volatile __bit TXQUA11 __attribute__((address(0xACB)));


extern volatile __bit TXQUA12 __attribute__((address(0xACC)));


extern volatile __bit TXQUA13 __attribute__((address(0xACD)));


extern volatile __bit TXQUA14 __attribute__((address(0xACE)));


extern volatile __bit TXQUA15 __attribute__((address(0xACF)));


extern volatile __bit TXQUA16 __attribute__((address(0xAD0)));


extern volatile __bit TXQUA17 __attribute__((address(0xAD1)));


extern volatile __bit TXQUA18 __attribute__((address(0xAD2)));


extern volatile __bit TXQUA19 __attribute__((address(0xAD3)));


extern volatile __bit TXQUA2 __attribute__((address(0xAC2)));


extern volatile __bit TXQUA20 __attribute__((address(0xAD4)));


extern volatile __bit TXQUA21 __attribute__((address(0xAD5)));


extern volatile __bit TXQUA22 __attribute__((address(0xAD6)));


extern volatile __bit TXQUA23 __attribute__((address(0xAD7)));


extern volatile __bit TXQUA24 __attribute__((address(0xAD8)));


extern volatile __bit TXQUA25 __attribute__((address(0xAD9)));


extern volatile __bit TXQUA26 __attribute__((address(0xADA)));


extern volatile __bit TXQUA27 __attribute__((address(0xADB)));


extern volatile __bit TXQUA28 __attribute__((address(0xADC)));


extern volatile __bit TXQUA29 __attribute__((address(0xADD)));


extern volatile __bit TXQUA3 __attribute__((address(0xAC3)));


extern volatile __bit TXQUA30 __attribute__((address(0xADE)));


extern volatile __bit TXQUA31 __attribute__((address(0xADF)));


extern volatile __bit TXQUA4 __attribute__((address(0xAC4)));


extern volatile __bit TXQUA5 __attribute__((address(0xAC5)));


extern volatile __bit TXQUA6 __attribute__((address(0xAC6)));


extern volatile __bit TXQUA7 __attribute__((address(0xAC7)));


extern volatile __bit TXQUA8 __attribute__((address(0xAC8)));


extern volatile __bit TXQUA9 __attribute__((address(0xAC9)));


extern volatile __bit TXREQ0 __attribute__((address(0x980)));


extern volatile __bit TXREQ1 __attribute__((address(0x981)));


extern volatile __bit TXREQ10 __attribute__((address(0x98A)));


extern volatile __bit TXREQ11 __attribute__((address(0x98B)));


extern volatile __bit TXREQ12 __attribute__((address(0x98C)));


extern volatile __bit TXREQ13 __attribute__((address(0x98D)));


extern volatile __bit TXREQ14 __attribute__((address(0x98E)));


extern volatile __bit TXREQ15 __attribute__((address(0x98F)));


extern volatile __bit TXREQ16 __attribute__((address(0x990)));


extern volatile __bit TXREQ17 __attribute__((address(0x991)));


extern volatile __bit TXREQ18 __attribute__((address(0x992)));


extern volatile __bit TXREQ19 __attribute__((address(0x993)));


extern volatile __bit TXREQ2 __attribute__((address(0x982)));


extern volatile __bit TXREQ20 __attribute__((address(0x994)));


extern volatile __bit TXREQ21 __attribute__((address(0x995)));


extern volatile __bit TXREQ22 __attribute__((address(0x996)));


extern volatile __bit TXREQ23 __attribute__((address(0x997)));


extern volatile __bit TXREQ24 __attribute__((address(0x998)));


extern volatile __bit TXREQ25 __attribute__((address(0x999)));


extern volatile __bit TXREQ26 __attribute__((address(0x99A)));


extern volatile __bit TXREQ27 __attribute__((address(0x99B)));


extern volatile __bit TXREQ28 __attribute__((address(0x99C)));


extern volatile __bit TXREQ29 __attribute__((address(0x99D)));


extern volatile __bit TXREQ3 __attribute__((address(0x983)));


extern volatile __bit TXREQ30 __attribute__((address(0x99E)));


extern volatile __bit TXREQ31 __attribute__((address(0x99F)));


extern volatile __bit TXREQ4 __attribute__((address(0x984)));


extern volatile __bit TXREQ5 __attribute__((address(0x985)));


extern volatile __bit TXREQ6 __attribute__((address(0x986)));


extern volatile __bit TXREQ7 __attribute__((address(0x987)));


extern volatile __bit TXREQ8 __attribute__((address(0x988)));


extern volatile __bit TXREQ9 __attribute__((address(0x989)));


extern volatile __bit TXU __attribute__((address(0x14A9)));


extern volatile __bit TXWARN __attribute__((address(0x9B2)));


extern volatile __bit U1ABDEN __attribute__((address(0x155E)));


extern volatile __bit U1ABDIE __attribute__((address(0x158A)));


extern volatile __bit U1ABDIF __attribute__((address(0x158E)));


extern volatile __bit U1ABDOVE __attribute__((address(0x159D)));


extern volatile __bit U1ABDOVF __attribute__((address(0x1595)));


extern volatile __bit U1BRGS __attribute__((address(0x155F)));


extern volatile __bit U1BRKOVR __attribute__((address(0x1561)));


extern volatile __bit U1C0EN __attribute__((address(0x156B)));


extern volatile __bit U1CERIE __attribute__((address(0x159C)));


extern volatile __bit U1CERIF __attribute__((address(0x1594)));


extern volatile __bit U1CTSPPS0 __attribute__((address(0x1398)));


extern volatile __bit U1CTSPPS1 __attribute__((address(0x1399)));


extern volatile __bit U1CTSPPS2 __attribute__((address(0x139A)));


extern volatile __bit U1CTSPPS3 __attribute__((address(0x139B)));


extern volatile __bit U1CTSPPS4 __attribute__((address(0x139C)));


extern volatile __bit U1CTSPPS5 __attribute__((address(0x139D)));


extern volatile __bit U1EIE __attribute__((address(0x2512)));


extern volatile __bit U1EIF __attribute__((address(0x2592)));


extern volatile __bit U1EIP __attribute__((address(0x1B32)));


extern volatile __bit U1FERIE __attribute__((address(0x159B)));


extern volatile __bit U1FERIF __attribute__((address(0x1593)));


extern volatile __bit U1FLO0 __attribute__((address(0x1568)));


extern volatile __bit U1FLO1 __attribute__((address(0x1569)));


extern volatile __bit U1IE __attribute__((address(0x2513)));


extern volatile __bit U1IF __attribute__((address(0x2593)));


extern volatile __bit U1IP __attribute__((address(0x1B33)));


extern volatile __bit U1MD __attribute__((address(0x333)));


extern volatile __bit U1MODE0 __attribute__((address(0x1558)));


extern volatile __bit U1MODE1 __attribute__((address(0x1559)));


extern volatile __bit U1MODE2 __attribute__((address(0x155A)));


extern volatile __bit U1MODE3 __attribute__((address(0x155B)));


extern volatile __bit U1ON __attribute__((address(0x1567)));


extern volatile __bit U1PERIE __attribute__((address(0x159E)));


extern volatile __bit U1PERIF __attribute__((address(0x1596)));


extern volatile __bit U1RCIDL __attribute__((address(0x1583)));


extern volatile __bit U1RUNOVF __attribute__((address(0x156F)));


extern volatile __bit U1RXBE __attribute__((address(0x1581)));


extern volatile __bit U1RXBF __attribute__((address(0x1580)));


extern volatile __bit U1RXBIMD __attribute__((address(0x1563)));


extern volatile __bit U1RXBKIE __attribute__((address(0x159A)));


extern volatile __bit U1RXBKIF __attribute__((address(0x1592)));


extern volatile __bit U1RXEN __attribute__((address(0x155C)));


extern volatile __bit U1RXFOIE __attribute__((address(0x1599)));


extern volatile __bit U1RXFOIF __attribute__((address(0x1591)));


extern volatile __bit U1RXIDL __attribute__((address(0x1583)));


extern volatile __bit U1RXIE __attribute__((address(0x2510)));


extern volatile __bit U1RXIF __attribute__((address(0x2590)));


extern volatile __bit U1RXIP __attribute__((address(0x1B30)));


extern volatile __bit U1RXPOL __attribute__((address(0x156E)));


extern volatile __bit U1RXPPS0 __attribute__((address(0x1390)));


extern volatile __bit U1RXPPS1 __attribute__((address(0x1391)));


extern volatile __bit U1RXPPS2 __attribute__((address(0x1392)));


extern volatile __bit U1RXPPS3 __attribute__((address(0x1393)));


extern volatile __bit U1RXPPS4 __attribute__((address(0x1394)));


extern volatile __bit U1RXPPS5 __attribute__((address(0x1395)));


extern volatile __bit U1SENDB __attribute__((address(0x1560)));


extern volatile __bit U1STP0 __attribute__((address(0x156C)));


extern volatile __bit U1STP1 __attribute__((address(0x156D)));


extern volatile __bit U1STPMD __attribute__((address(0x1586)));


extern volatile __bit U1TXBE __attribute__((address(0x1585)));


extern volatile __bit U1TXBF __attribute__((address(0x1584)));


extern volatile __bit U1TXCIE __attribute__((address(0x1598)));


extern volatile __bit U1TXCIF __attribute__((address(0x1590)));


extern volatile __bit U1TXEN __attribute__((address(0x155D)));


extern volatile __bit U1TXIE __attribute__((address(0x2511)));


extern volatile __bit U1TXIF __attribute__((address(0x2591)));


extern volatile __bit U1TXIP __attribute__((address(0x1B31)));


extern volatile __bit U1TXMTIE __attribute__((address(0x159F)));


extern volatile __bit U1TXMTIF __attribute__((address(0x1597)));


extern volatile __bit U1TXPOL __attribute__((address(0x156A)));


extern volatile __bit U1TXWRE __attribute__((address(0x1587)));


extern volatile __bit U1WUE __attribute__((address(0x1564)));


extern volatile __bit U1WUIF __attribute__((address(0x158F)));


extern volatile __bit U1XON __attribute__((address(0x1582)));


extern volatile __bit U2ABDEN __attribute__((address(0x15F6)));


extern volatile __bit U2ABDIE __attribute__((address(0x1622)));


extern volatile __bit U2ABDIF __attribute__((address(0x1626)));


extern volatile __bit U2ABDOVE __attribute__((address(0x1635)));


extern volatile __bit U2ABDOVF __attribute__((address(0x162D)));


extern volatile __bit U2BRGS __attribute__((address(0x15F7)));


extern volatile __bit U2BRKOVR __attribute__((address(0x15F9)));


extern volatile __bit U2C0EN __attribute__((address(0x1603)));


extern volatile __bit U2CERIE __attribute__((address(0x1634)));


extern volatile __bit U2CERIF __attribute__((address(0x162C)));


extern volatile __bit U2CTSPPS0 __attribute__((address(0x13A8)));


extern volatile __bit U2CTSPPS1 __attribute__((address(0x13A9)));


extern volatile __bit U2CTSPPS2 __attribute__((address(0x13AA)));


extern volatile __bit U2CTSPPS3 __attribute__((address(0x13AB)));


extern volatile __bit U2CTSPPS4 __attribute__((address(0x13AC)));


extern volatile __bit U2EIE __attribute__((address(0x2532)));


extern volatile __bit U2EIF __attribute__((address(0x25B2)));


extern volatile __bit U2EIP __attribute__((address(0x1B52)));


extern volatile __bit U2FERIE __attribute__((address(0x1633)));


extern volatile __bit U2FERIF __attribute__((address(0x162B)));


extern volatile __bit U2FLO0 __attribute__((address(0x1600)));


extern volatile __bit U2FLO1 __attribute__((address(0x1601)));


extern volatile __bit U2IE __attribute__((address(0x2533)));


extern volatile __bit U2IF __attribute__((address(0x25B3)));


extern volatile __bit U2IP __attribute__((address(0x1B53)));


extern volatile __bit U2MD __attribute__((address(0x334)));


extern volatile __bit U2MODE0 __attribute__((address(0x15F0)));


extern volatile __bit U2MODE1 __attribute__((address(0x15F1)));


extern volatile __bit U2MODE2 __attribute__((address(0x15F2)));


extern volatile __bit U2MODE3 __attribute__((address(0x15F3)));


extern volatile __bit U2ON __attribute__((address(0x15FF)));


extern volatile __bit U2PERIE __attribute__((address(0x1636)));


extern volatile __bit U2PERIF __attribute__((address(0x162E)));


extern volatile __bit U2RCIDL __attribute__((address(0x161B)));


extern volatile __bit U2RUNOVF __attribute__((address(0x1607)));


extern volatile __bit U2RXBE __attribute__((address(0x1619)));


extern volatile __bit U2RXBF __attribute__((address(0x1618)));


extern volatile __bit U2RXBIMD __attribute__((address(0x15FB)));


extern volatile __bit U2RXBKIE __attribute__((address(0x1632)));


extern volatile __bit U2RXBKIF __attribute__((address(0x162A)));


extern volatile __bit U2RXEN __attribute__((address(0x15F4)));


extern volatile __bit U2RXFOIE __attribute__((address(0x1631)));


extern volatile __bit U2RXFOIF __attribute__((address(0x1629)));


extern volatile __bit U2RXIDL __attribute__((address(0x161B)));


extern volatile __bit U2RXIE __attribute__((address(0x2530)));


extern volatile __bit U2RXIF __attribute__((address(0x25B0)));


extern volatile __bit U2RXIP __attribute__((address(0x1B50)));


extern volatile __bit U2RXPOL __attribute__((address(0x1606)));


extern volatile __bit U2RXPPS0 __attribute__((address(0x13A0)));


extern volatile __bit U2RXPPS1 __attribute__((address(0x13A1)));


extern volatile __bit U2RXPPS2 __attribute__((address(0x13A2)));


extern volatile __bit U2RXPPS3 __attribute__((address(0x13A3)));


extern volatile __bit U2RXPPS4 __attribute__((address(0x13A4)));


extern volatile __bit U2SENDB __attribute__((address(0x15F8)));


extern volatile __bit U2STP0 __attribute__((address(0x1604)));


extern volatile __bit U2STP1 __attribute__((address(0x1605)));


extern volatile __bit U2STPMD __attribute__((address(0x161E)));


extern volatile __bit U2TXBE __attribute__((address(0x161D)));


extern volatile __bit U2TXBF __attribute__((address(0x161C)));


extern volatile __bit U2TXCIE __attribute__((address(0x1630)));


extern volatile __bit U2TXCIF __attribute__((address(0x1628)));


extern volatile __bit U2TXEN __attribute__((address(0x15F5)));


extern volatile __bit U2TXIE __attribute__((address(0x2531)));


extern volatile __bit U2TXIF __attribute__((address(0x25B1)));


extern volatile __bit U2TXIP __attribute__((address(0x1B51)));


extern volatile __bit U2TXMTIE __attribute__((address(0x1637)));


extern volatile __bit U2TXMTIF __attribute__((address(0x162F)));


extern volatile __bit U2TXPOL __attribute__((address(0x1602)));


extern volatile __bit U2TXWRE __attribute__((address(0x161F)));


extern volatile __bit U2WUE __attribute__((address(0x15FC)));


extern volatile __bit U2WUIF __attribute__((address(0x1627)));


extern volatile __bit U2XON __attribute__((address(0x161A)));


extern volatile __bit U3ABDEN __attribute__((address(0x168E)));


extern volatile __bit U3ABDIE __attribute__((address(0x16BA)));


extern volatile __bit U3ABDIF __attribute__((address(0x16BE)));


extern volatile __bit U3ABDOVE __attribute__((address(0x16CD)));


extern volatile __bit U3ABDOVF __attribute__((address(0x16C5)));


extern volatile __bit U3BRGS __attribute__((address(0x168F)));


extern volatile __bit U3BRKOVR __attribute__((address(0x1691)));


extern volatile __bit U3CERIE __attribute__((address(0x16CC)));


extern volatile __bit U3CERIF __attribute__((address(0x16C4)));


extern volatile __bit U3CTSPPS0 __attribute__((address(0x13B8)));


extern volatile __bit U3CTSPPS1 __attribute__((address(0x13B9)));


extern volatile __bit U3CTSPPS2 __attribute__((address(0x13BA)));


extern volatile __bit U3CTSPPS3 __attribute__((address(0x13BB)));


extern volatile __bit U3CTSPPS4 __attribute__((address(0x13BC)));


extern volatile __bit U3CTSPPS5 __attribute__((address(0x13BD)));


extern volatile __bit U3EIE __attribute__((address(0x253A)));


extern volatile __bit U3EIF __attribute__((address(0x25BA)));


extern volatile __bit U3EIP __attribute__((address(0x1B5A)));


extern volatile __bit U3FERIE __attribute__((address(0x16CB)));


extern volatile __bit U3FERIF __attribute__((address(0x16C3)));


extern volatile __bit U3FLO0 __attribute__((address(0x1698)));


extern volatile __bit U3FLO1 __attribute__((address(0x1699)));


extern volatile __bit U3IE __attribute__((address(0x253B)));


extern volatile __bit U3IF __attribute__((address(0x25BB)));


extern volatile __bit U3IP __attribute__((address(0x1B5B)));


extern volatile __bit U3MD __attribute__((address(0x335)));


extern volatile __bit U3MODE0 __attribute__((address(0x1688)));


extern volatile __bit U3MODE1 __attribute__((address(0x1689)));


extern volatile __bit U3MODE2 __attribute__((address(0x168A)));


extern volatile __bit U3ON __attribute__((address(0x1697)));


extern volatile __bit U3PERIE __attribute__((address(0x16CE)));


extern volatile __bit U3PERIF __attribute__((address(0x16C6)));


extern volatile __bit U3RCIDL __attribute__((address(0x16B3)));


extern volatile __bit U3RUNOVF __attribute__((address(0x169F)));


extern volatile __bit U3RXBE __attribute__((address(0x16B1)));


extern volatile __bit U3RXBF __attribute__((address(0x16B0)));


extern volatile __bit U3RXBIMD __attribute__((address(0x1693)));


extern volatile __bit U3RXBKIE __attribute__((address(0x16CA)));


extern volatile __bit U3RXBKIF __attribute__((address(0x16C2)));


extern volatile __bit U3RXEN __attribute__((address(0x168C)));


extern volatile __bit U3RXFOIE __attribute__((address(0x16C9)));


extern volatile __bit U3RXFOIF __attribute__((address(0x16C1)));


extern volatile __bit U3RXIDL __attribute__((address(0x16B3)));


extern volatile __bit U3RXIE __attribute__((address(0x2538)));


extern volatile __bit U3RXIF __attribute__((address(0x25B8)));


extern volatile __bit U3RXIP __attribute__((address(0x1B58)));


extern volatile __bit U3RXPOL __attribute__((address(0x169E)));


extern volatile __bit U3RXPPS0 __attribute__((address(0x13B0)));


extern volatile __bit U3RXPPS1 __attribute__((address(0x13B1)));


extern volatile __bit U3RXPPS2 __attribute__((address(0x13B2)));


extern volatile __bit U3RXPPS3 __attribute__((address(0x13B3)));


extern volatile __bit U3RXPPS4 __attribute__((address(0x13B4)));


extern volatile __bit U3RXPPS5 __attribute__((address(0x13B5)));


extern volatile __bit U3SENDB __attribute__((address(0x1690)));


extern volatile __bit U3STP0 __attribute__((address(0x169C)));


extern volatile __bit U3STP1 __attribute__((address(0x169D)));


extern volatile __bit U3STPMD __attribute__((address(0x16B6)));


extern volatile __bit U3TXBE __attribute__((address(0x16B5)));


extern volatile __bit U3TXBF __attribute__((address(0x16B4)));


extern volatile __bit U3TXCIE __attribute__((address(0x16C8)));


extern volatile __bit U3TXCIF __attribute__((address(0x16C0)));


extern volatile __bit U3TXEN __attribute__((address(0x168D)));


extern volatile __bit U3TXIE __attribute__((address(0x2539)));


extern volatile __bit U3TXIF __attribute__((address(0x25B9)));


extern volatile __bit U3TXIP __attribute__((address(0x1B59)));


extern volatile __bit U3TXMTIE __attribute__((address(0x16CF)));


extern volatile __bit U3TXMTIF __attribute__((address(0x16C7)));


extern volatile __bit U3TXPOL __attribute__((address(0x169A)));


extern volatile __bit U3TXWRE __attribute__((address(0x16B7)));


extern volatile __bit U3WUE __attribute__((address(0x1694)));


extern volatile __bit U3WUIF __attribute__((address(0x16BF)));


extern volatile __bit U3XON __attribute__((address(0x16B2)));


extern volatile __bit U4ABDEN __attribute__((address(0x1726)));


extern volatile __bit U4ABDIE __attribute__((address(0x1752)));


extern volatile __bit U4ABDIF __attribute__((address(0x1756)));


extern volatile __bit U4ABDOVE __attribute__((address(0x1765)));


extern volatile __bit U4ABDOVF __attribute__((address(0x175D)));


extern volatile __bit U4BRGS __attribute__((address(0x1727)));


extern volatile __bit U4BRKOVR __attribute__((address(0x1729)));


extern volatile __bit U4CERIE __attribute__((address(0x1764)));


extern volatile __bit U4CERIF __attribute__((address(0x175C)));


extern volatile __bit U4CTSPPS0 __attribute__((address(0x13C8)));


extern volatile __bit U4CTSPPS1 __attribute__((address(0x13C9)));


extern volatile __bit U4CTSPPS2 __attribute__((address(0x13CA)));


extern volatile __bit U4CTSPPS3 __attribute__((address(0x13CB)));


extern volatile __bit U4CTSPPS4 __attribute__((address(0x13CC)));


extern volatile __bit U4EIE __attribute__((address(0x2552)));


extern volatile __bit U4EIF __attribute__((address(0x25D2)));


extern volatile __bit U4EIP __attribute__((address(0x1B72)));


extern volatile __bit U4FERIE __attribute__((address(0x1763)));


extern volatile __bit U4FERIF __attribute__((address(0x175B)));


extern volatile __bit U4FLO0 __attribute__((address(0x1730)));


extern volatile __bit U4FLO1 __attribute__((address(0x1731)));


extern volatile __bit U4IE __attribute__((address(0x2553)));


extern volatile __bit U4IF __attribute__((address(0x25D3)));


extern volatile __bit U4IP __attribute__((address(0x1B73)));


extern volatile __bit U4MD __attribute__((address(0x336)));


extern volatile __bit U4MODE0 __attribute__((address(0x1720)));


extern volatile __bit U4MODE1 __attribute__((address(0x1721)));


extern volatile __bit U4MODE2 __attribute__((address(0x1722)));


extern volatile __bit U4ON __attribute__((address(0x172F)));


extern volatile __bit U4PERIE __attribute__((address(0x1766)));


extern volatile __bit U4PERIF __attribute__((address(0x175E)));


extern volatile __bit U4RCIDL __attribute__((address(0x174B)));


extern volatile __bit U4RUNOVF __attribute__((address(0x1737)));


extern volatile __bit U4RXBE __attribute__((address(0x1749)));


extern volatile __bit U4RXBF __attribute__((address(0x1748)));


extern volatile __bit U4RXBIMD __attribute__((address(0x172B)));


extern volatile __bit U4RXBKIE __attribute__((address(0x1762)));


extern volatile __bit U4RXBKIF __attribute__((address(0x175A)));


extern volatile __bit U4RXEN __attribute__((address(0x1724)));


extern volatile __bit U4RXFOIE __attribute__((address(0x1761)));


extern volatile __bit U4RXFOIF __attribute__((address(0x1759)));


extern volatile __bit U4RXIDL __attribute__((address(0x174B)));


extern volatile __bit U4RXIE __attribute__((address(0x2550)));


extern volatile __bit U4RXIF __attribute__((address(0x25D0)));


extern volatile __bit U4RXIP __attribute__((address(0x1B70)));


extern volatile __bit U4RXPOL __attribute__((address(0x1736)));


extern volatile __bit U4RXPPS0 __attribute__((address(0x13C0)));


extern volatile __bit U4RXPPS1 __attribute__((address(0x13C1)));


extern volatile __bit U4RXPPS2 __attribute__((address(0x13C2)));


extern volatile __bit U4RXPPS3 __attribute__((address(0x13C3)));


extern volatile __bit U4RXPPS4 __attribute__((address(0x13C4)));


extern volatile __bit U4SENDB __attribute__((address(0x1728)));


extern volatile __bit U4STP0 __attribute__((address(0x1734)));


extern volatile __bit U4STP1 __attribute__((address(0x1735)));


extern volatile __bit U4STPMD __attribute__((address(0x174E)));


extern volatile __bit U4TXBE __attribute__((address(0x174D)));


extern volatile __bit U4TXBF __attribute__((address(0x174C)));


extern volatile __bit U4TXCIE __attribute__((address(0x1760)));


extern volatile __bit U4TXCIF __attribute__((address(0x1758)));


extern volatile __bit U4TXEN __attribute__((address(0x1725)));


extern volatile __bit U4TXIE __attribute__((address(0x2551)));


extern volatile __bit U4TXIF __attribute__((address(0x25D1)));


extern volatile __bit U4TXIP __attribute__((address(0x1B71)));


extern volatile __bit U4TXMTIE __attribute__((address(0x1767)));


extern volatile __bit U4TXMTIF __attribute__((address(0x175F)));


extern volatile __bit U4TXPOL __attribute__((address(0x1732)));


extern volatile __bit U4TXWRE __attribute__((address(0x174F)));


extern volatile __bit U4WUE __attribute__((address(0x172C)));


extern volatile __bit U4WUIF __attribute__((address(0x1757)));


extern volatile __bit U4XON __attribute__((address(0x174A)));


extern volatile __bit U5ABDEN __attribute__((address(0x17BE)));


extern volatile __bit U5ABDIE __attribute__((address(0x17EA)));


extern volatile __bit U5ABDIF __attribute__((address(0x17EE)));


extern volatile __bit U5ABDOVE __attribute__((address(0x17FD)));


extern volatile __bit U5ABDOVF __attribute__((address(0x17F5)));


extern volatile __bit U5BRGS __attribute__((address(0x17BF)));


extern volatile __bit U5BRKOVR __attribute__((address(0x17C1)));


extern volatile __bit U5CERIE __attribute__((address(0x17FC)));


extern volatile __bit U5CERIF __attribute__((address(0x17F4)));


extern volatile __bit U5CTSPPS0 __attribute__((address(0x13D8)));


extern volatile __bit U5CTSPPS1 __attribute__((address(0x13D9)));


extern volatile __bit U5CTSPPS2 __attribute__((address(0x13DA)));


extern volatile __bit U5CTSPPS3 __attribute__((address(0x13DB)));


extern volatile __bit U5CTSPPS4 __attribute__((address(0x13DC)));


extern volatile __bit U5CTSPPS5 __attribute__((address(0x13DD)));


extern volatile __bit U5EIE __attribute__((address(0x255A)));


extern volatile __bit U5EIF __attribute__((address(0x25DA)));


extern volatile __bit U5EIP __attribute__((address(0x1B7A)));


extern volatile __bit U5FERIE __attribute__((address(0x17FB)));


extern volatile __bit U5FERIF __attribute__((address(0x17F3)));


extern volatile __bit U5FLO0 __attribute__((address(0x17C8)));


extern volatile __bit U5FLO1 __attribute__((address(0x17C9)));


extern volatile __bit U5IE __attribute__((address(0x255B)));


extern volatile __bit U5IF __attribute__((address(0x25DB)));


extern volatile __bit U5IP __attribute__((address(0x1B7B)));


extern volatile __bit U5MD __attribute__((address(0x337)));


extern volatile __bit U5MODE0 __attribute__((address(0x17B8)));


extern volatile __bit U5MODE1 __attribute__((address(0x17B9)));


extern volatile __bit U5MODE2 __attribute__((address(0x17BA)));


extern volatile __bit U5ON __attribute__((address(0x17C7)));


extern volatile __bit U5PERIE __attribute__((address(0x17FE)));


extern volatile __bit U5PERIF __attribute__((address(0x17F6)));


extern volatile __bit U5RCIDL __attribute__((address(0x17E3)));


extern volatile __bit U5RUNOVF __attribute__((address(0x17CF)));


extern volatile __bit U5RXBE __attribute__((address(0x17E1)));


extern volatile __bit U5RXBF __attribute__((address(0x17E0)));


extern volatile __bit U5RXBIMD __attribute__((address(0x17C3)));


extern volatile __bit U5RXBKIE __attribute__((address(0x17FA)));


extern volatile __bit U5RXBKIF __attribute__((address(0x17F2)));


extern volatile __bit U5RXEN __attribute__((address(0x17BC)));


extern volatile __bit U5RXFOIE __attribute__((address(0x17F9)));


extern volatile __bit U5RXFOIF __attribute__((address(0x17F1)));


extern volatile __bit U5RXIDL __attribute__((address(0x17E3)));


extern volatile __bit U5RXIE __attribute__((address(0x2558)));


extern volatile __bit U5RXIF __attribute__((address(0x25D8)));


extern volatile __bit U5RXIP __attribute__((address(0x1B78)));


extern volatile __bit U5RXPOL __attribute__((address(0x17CE)));


extern volatile __bit U5RXPPS0 __attribute__((address(0x13D0)));


extern volatile __bit U5RXPPS1 __attribute__((address(0x13D1)));


extern volatile __bit U5RXPPS2 __attribute__((address(0x13D2)));


extern volatile __bit U5RXPPS3 __attribute__((address(0x13D3)));


extern volatile __bit U5RXPPS4 __attribute__((address(0x13D4)));


extern volatile __bit U5RXPPS5 __attribute__((address(0x13D5)));


extern volatile __bit U5SENDB __attribute__((address(0x17C0)));


extern volatile __bit U5STP0 __attribute__((address(0x17CC)));


extern volatile __bit U5STP1 __attribute__((address(0x17CD)));


extern volatile __bit U5STPMD __attribute__((address(0x17E6)));


extern volatile __bit U5TXBE __attribute__((address(0x17E5)));


extern volatile __bit U5TXBF __attribute__((address(0x17E4)));


extern volatile __bit U5TXCIE __attribute__((address(0x17F8)));


extern volatile __bit U5TXCIF __attribute__((address(0x17F0)));


extern volatile __bit U5TXEN __attribute__((address(0x17BD)));


extern volatile __bit U5TXIE __attribute__((address(0x2559)));


extern volatile __bit U5TXIF __attribute__((address(0x25D9)));


extern volatile __bit U5TXIP __attribute__((address(0x1B79)));


extern volatile __bit U5TXMTIE __attribute__((address(0x17FF)));


extern volatile __bit U5TXMTIF __attribute__((address(0x17F7)));


extern volatile __bit U5TXPOL __attribute__((address(0x17CA)));


extern volatile __bit U5TXWRE __attribute__((address(0x17E7)));


extern volatile __bit U5WUE __attribute__((address(0x17C4)));


extern volatile __bit U5WUIF __attribute__((address(0x17EF)));


extern volatile __bit U5XON __attribute__((address(0x17E2)));


extern volatile __bit UTH0 __attribute__((address(0x1ED8)));


extern volatile __bit UTH1 __attribute__((address(0x1ED9)));


extern volatile __bit UTH10 __attribute__((address(0x1EE2)));


extern volatile __bit UTH11 __attribute__((address(0x1EE3)));


extern volatile __bit UTH12 __attribute__((address(0x1EE4)));


extern volatile __bit UTH13 __attribute__((address(0x1EE5)));


extern volatile __bit UTH14 __attribute__((address(0x1EE6)));


extern volatile __bit UTH15 __attribute__((address(0x1EE7)));


extern volatile __bit UTH2 __attribute__((address(0x1EDA)));


extern volatile __bit UTH3 __attribute__((address(0x1EDB)));


extern volatile __bit UTH4 __attribute__((address(0x1EDC)));


extern volatile __bit UTH5 __attribute__((address(0x1EDD)));


extern volatile __bit UTH6 __attribute__((address(0x1EDE)));


extern volatile __bit UTH7 __attribute__((address(0x1EDF)));


extern volatile __bit UTH8 __attribute__((address(0x1EE0)));


extern volatile __bit UTH9 __attribute__((address(0x1EE1)));


extern volatile __bit UTHR __attribute__((address(0x1FBE)));


extern volatile __bit VREGPM0 __attribute__((address(0x240)));


extern volatile __bit VREGPM1 __attribute__((address(0x241)));


extern volatile __bit WAKFIL __attribute__((address(0x808)));


extern volatile __bit WAKIE __attribute__((address(0x8FE)));


extern volatile __bit WAKIF __attribute__((address(0x8EE)));


extern volatile __bit WDTCS0 __attribute__((address(0x3CC)));


extern volatile __bit WDTCS1 __attribute__((address(0x3CD)));


extern volatile __bit WDTCS2 __attribute__((address(0x3CE)));


extern volatile __bit WDTPS0 __attribute__((address(0x3C1)));


extern volatile __bit WDTPS1 __attribute__((address(0x3C2)));


extern volatile __bit WDTPS2 __attribute__((address(0x3C3)));


extern volatile __bit WDTPS3 __attribute__((address(0x3C4)));


extern volatile __bit WDTPS4 __attribute__((address(0x3C5)));


extern volatile __bit WDTPSCNT0 __attribute__((address(0x3D0)));


extern volatile __bit WDTPSCNT1 __attribute__((address(0x3D1)));


extern volatile __bit WDTPSCNT10 __attribute__((address(0x3DA)));


extern volatile __bit WDTPSCNT11 __attribute__((address(0x3DB)));


extern volatile __bit WDTPSCNT12 __attribute__((address(0x3DC)));


extern volatile __bit WDTPSCNT13 __attribute__((address(0x3DD)));


extern volatile __bit WDTPSCNT14 __attribute__((address(0x3DE)));


extern volatile __bit WDTPSCNT15 __attribute__((address(0x3DF)));


extern volatile __bit WDTPSCNT16 __attribute__((address(0x3E0)));


extern volatile __bit WDTPSCNT17 __attribute__((address(0x3E1)));


extern volatile __bit WDTPSCNT2 __attribute__((address(0x3D2)));


extern volatile __bit WDTPSCNT3 __attribute__((address(0x3D3)));


extern volatile __bit WDTPSCNT4 __attribute__((address(0x3D4)));


extern volatile __bit WDTPSCNT5 __attribute__((address(0x3D5)));


extern volatile __bit WDTPSCNT6 __attribute__((address(0x3D6)));


extern volatile __bit WDTPSCNT7 __attribute__((address(0x3D7)));


extern volatile __bit WDTPSCNT8 __attribute__((address(0x3D8)));


extern volatile __bit WDTPSCNT9 __attribute__((address(0x3D9)));


extern volatile __bit WDTSEN __attribute__((address(0x3C0)));


extern volatile __bit WDTSTATE __attribute__((address(0x3E2)));


extern volatile __bit WDTTMR0 __attribute__((address(0x3E3)));


extern volatile __bit WDTTMR1 __attribute__((address(0x3E4)));


extern volatile __bit WDTTMR2 __attribute__((address(0x3E5)));


extern volatile __bit WDTTMR3 __attribute__((address(0x3E6)));


extern volatile __bit WDTTMR4 __attribute__((address(0x3E7)));


extern volatile __bit WDTWINDOW0 __attribute__((address(0x3C8)));


extern volatile __bit WDTWINDOW1 __attribute__((address(0x3C9)));


extern volatile __bit WDTWINDOW2 __attribute__((address(0x3CA)));


extern volatile __bit WDTWV __attribute__((address(0x2785)));


extern volatile __bit WFT0 __attribute__((address(0x809)));


extern volatile __bit WFT1 __attribute__((address(0x80A)));


extern volatile __bit WINDOW0 __attribute__((address(0x3C8)));


extern volatile __bit WINDOW1 __attribute__((address(0x3C9)));


extern volatile __bit WINDOW2 __attribute__((address(0x3CA)));


extern volatile __bit WPOL __attribute__((address(0x1864)));


extern volatile __bit WPUA0 __attribute__((address(0x2008)));


extern volatile __bit WPUA1 __attribute__((address(0x2009)));


extern volatile __bit WPUA2 __attribute__((address(0x200A)));


extern volatile __bit WPUA3 __attribute__((address(0x200B)));


extern volatile __bit WPUA4 __attribute__((address(0x200C)));


extern volatile __bit WPUA5 __attribute__((address(0x200D)));


extern volatile __bit WPUA6 __attribute__((address(0x200E)));


extern volatile __bit WPUA7 __attribute__((address(0x200F)));


extern volatile __bit WPUB0 __attribute__((address(0x2048)));


extern volatile __bit WPUB1 __attribute__((address(0x2049)));


extern volatile __bit WPUB2 __attribute__((address(0x204A)));


extern volatile __bit WPUB3 __attribute__((address(0x204B)));


extern volatile __bit WPUB4 __attribute__((address(0x204C)));


extern volatile __bit WPUB5 __attribute__((address(0x204D)));


extern volatile __bit WPUB6 __attribute__((address(0x204E)));


extern volatile __bit WPUB7 __attribute__((address(0x204F)));


extern volatile __bit WPUC0 __attribute__((address(0x2088)));


extern volatile __bit WPUC1 __attribute__((address(0x2089)));


extern volatile __bit WPUC2 __attribute__((address(0x208A)));


extern volatile __bit WPUC3 __attribute__((address(0x208B)));


extern volatile __bit WPUC4 __attribute__((address(0x208C)));


extern volatile __bit WPUC5 __attribute__((address(0x208D)));


extern volatile __bit WPUC6 __attribute__((address(0x208E)));


extern volatile __bit WPUC7 __attribute__((address(0x208F)));


extern volatile __bit WPUD0 __attribute__((address(0x20C8)));


extern volatile __bit WPUD1 __attribute__((address(0x20C9)));


extern volatile __bit WPUD2 __attribute__((address(0x20CA)));


extern volatile __bit WPUD3 __attribute__((address(0x20CB)));


extern volatile __bit WPUD4 __attribute__((address(0x20CC)));


extern volatile __bit WPUD5 __attribute__((address(0x20CD)));


extern volatile __bit WPUD6 __attribute__((address(0x20CE)));


extern volatile __bit WPUD7 __attribute__((address(0x20CF)));


extern volatile __bit WPUE0 __attribute__((address(0x2108)));


extern volatile __bit WPUE1 __attribute__((address(0x2109)));


extern volatile __bit WPUE2 __attribute__((address(0x210A)));


extern volatile __bit WPUE3 __attribute__((address(0x210B)));


extern volatile __bit WR1IE __attribute__((address(0x14DC)));


extern volatile __bit WR1IF __attribute__((address(0x14D4)));


extern volatile __bit WRERR __attribute__((address(0x20F)));


extern volatile __bit WRIE __attribute__((address(0x14DC)));


extern volatile __bit WRIF __attribute__((address(0x14D4)));


extern volatile __bit WS __attribute__((address(0x1871)));


extern volatile __bit WSEL0 __attribute__((address(0x1888)));


extern volatile __bit WSEL1 __attribute__((address(0x1889)));


extern volatile __bit WSEL2 __attribute__((address(0x188A)));


extern volatile __bit WSEL3 __attribute__((address(0x188B)));


extern volatile __bit WSEL4 __attribute__((address(0x188C)));


extern volatile __bit XIP __attribute__((address(0x7E0)));


extern volatile __bit XOR0 __attribute__((address(0x1A98)));


extern volatile __bit XOR1 __attribute__((address(0x1A99)));


extern volatile __bit XOR10 __attribute__((address(0x1AA2)));


extern volatile __bit XOR11 __attribute__((address(0x1AA3)));


extern volatile __bit XOR12 __attribute__((address(0x1AA4)));


extern volatile __bit XOR13 __attribute__((address(0x1AA5)));


extern volatile __bit XOR14 __attribute__((address(0x1AA6)));


extern volatile __bit XOR15 __attribute__((address(0x1AA7)));


extern volatile __bit XOR16 __attribute__((address(0x1AA8)));


extern volatile __bit XOR17 __attribute__((address(0x1AA9)));


extern volatile __bit XOR18 __attribute__((address(0x1AAA)));


extern volatile __bit XOR19 __attribute__((address(0x1AAB)));


extern volatile __bit XOR2 __attribute__((address(0x1A9A)));


extern volatile __bit XOR20 __attribute__((address(0x1AAC)));


extern volatile __bit XOR21 __attribute__((address(0x1AAD)));


extern volatile __bit XOR22 __attribute__((address(0x1AAE)));


extern volatile __bit XOR23 __attribute__((address(0x1AAF)));


extern volatile __bit XOR24 __attribute__((address(0x1AB0)));


extern volatile __bit XOR25 __attribute__((address(0x1AB1)));


extern volatile __bit XOR26 __attribute__((address(0x1AB2)));


extern volatile __bit XOR27 __attribute__((address(0x1AB3)));


extern volatile __bit XOR28 __attribute__((address(0x1AB4)));


extern volatile __bit XOR29 __attribute__((address(0x1AB5)));


extern volatile __bit XOR3 __attribute__((address(0x1A9B)));


extern volatile __bit XOR30 __attribute__((address(0x1AB6)));


extern volatile __bit XOR31 __attribute__((address(0x1AB7)));


extern volatile __bit XOR4 __attribute__((address(0x1A9C)));


extern volatile __bit XOR5 __attribute__((address(0x1A9D)));


extern volatile __bit XOR6 __attribute__((address(0x1A9E)));


extern volatile __bit XOR7 __attribute__((address(0x1A9F)));


extern volatile __bit XOR8 __attribute__((address(0x1AA0)));


extern volatile __bit XOR9 __attribute__((address(0x1AA1)));


extern volatile __bit ZCDIE __attribute__((address(0x24F9)));


extern volatile __bit ZCDIF __attribute__((address(0x2579)));


extern volatile __bit ZCDINTN __attribute__((address(0x260)));


extern volatile __bit ZCDINTP __attribute__((address(0x261)));


extern volatile __bit ZCDIP __attribute__((address(0x1B19)));


extern volatile __bit ZCDMD __attribute__((address(0x318)));


extern volatile __bit ZCDOUT __attribute__((address(0x265)));


extern volatile __bit ZCDPOL __attribute__((address(0x264)));


extern volatile __bit ZCDSEN __attribute__((address(0x267)));


extern volatile __bit nBOR __attribute__((address(0x2780)));


extern volatile __bit nDONE __attribute__((address(0x200)));


extern volatile __bit nMEMV __attribute__((address(0x2789)));


extern volatile __bit nPOR __attribute__((address(0x2781)));


extern volatile __bit nRI __attribute__((address(0x2782)));


extern volatile __bit nRMCLR __attribute__((address(0x2783)));


extern volatile __bit nRWDT __attribute__((address(0x2784)));


extern volatile __bit nT1SYNC __attribute__((address(0x18F2)));


extern volatile __bit nT3SYNC __attribute__((address(0x1952)));


extern volatile __bit nT5SYNC __attribute__((address(0x19B2)));


extern volatile __bit nWDTWV __attribute__((address(0x2785)));
# 285 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18_chip_select.h" 2 3
# 9 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18.h" 2 3
# 19 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18.h" 3
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);






# 1 "/opt/microchip/xc8/v3.00/pic/include/errata.h" 1 3
# 28 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18.h" 2 3
# 156 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18.h" 3
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
# 176 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18.h" 3
__attribute__((__unsupported__("The READTIMER" "0" "() macro is not available with the current device."))) unsigned short __readtimer0(void);
# 192 "/root/.mchp_packs/Microchip/PIC18F-Q_DFP/1.26.442/xc8/pic/include/pic18.h" 3
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
# 34 "/opt/microchip/xc8/v3.00/pic/include/xc.h" 2 3
# 18 "./vconfig.h" 2
# 1 "./mcc_generated_files/spi1.h" 1
# 54 "./mcc_generated_files/spi1.h"
# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/stdio.h" 1 3
# 24 "/opt/microchip/xc8/v3.00/pic/include/c99/stdio.h" 3
# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 1 3
# 12 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 143 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef __int24 ssize_t;
# 255 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef long long off_t;
# 409 "/opt/microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 25 "/opt/microchip/xc8/v3.00/pic/include/c99/stdio.h" 2 3
# 52 "/opt/microchip/xc8/v3.00/pic/include/c99/stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);





int ungetc(int, FILE *);
int getch(void);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);





void putch(char);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

__attribute__((__format__(__printf__, 1, 2)))
int printf(const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int fprintf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int sprintf(char *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 3, 4)))
int snprintf(char *restrict, size_t, const char *restrict, ...);

__attribute__((__format__(__printf__, 1, 0)))
int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 2, 0)))
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 3, 0)))
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

__attribute__((__format__(__scanf__, 1, 2)))
int scanf(const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int fscanf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int sscanf(const char *restrict, const char *restrict, ...);

__attribute__((__format__(__scanf__, 1, 0)))
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__scanf__, 2, 0)))
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);
# 55 "./mcc_generated_files/spi1.h" 2

# 1 "/opt/microchip/xc8/v3.00/pic/include/c99/stdbool.h" 1 3
# 57 "./mcc_generated_files/spi1.h" 2


typedef enum {
    SPI1_DEFAULT
} spi1_modes_t;

void SPI1_Initialize(void);
_Bool SPI1_Open(spi1_modes_t spi1UniqueConfiguration);
void SPI1_Close(void);
uint8_t SPI1_ExchangeByte(uint8_t data);
void SPI1_ExchangeBlock(void *block, size_t blockSize);
void SPI1_WriteBlock(void *block, size_t blockSize);
void SPI1_ReadBlock(void *block, size_t blockSize);
void SPI1_WriteByte(uint8_t byte);
uint8_t SPI1_ReadByte(void);
# 19 "./vconfig.h" 2
# 1 "./mcc_generated_files/pin_manager.h" 1
# 398 "./mcc_generated_files/pin_manager.h"
void PIN_MANAGER_Initialize (void);
# 20 "./vconfig.h" 2
# 1 "./ringbufs.h" 1
# 21 "./vconfig.h" 2
# 99 "./vconfig.h"
 struct spi_link_type_o {
  uint8_t SPI_LCD : 1;
  uint8_t SPI_AUX : 1;
  uint8_t LCD_TIMER : 1;
  volatile uint8_t LCD_DATA : 1;
  uint16_t delay;
  uint8_t config;
  struct ringBufS_t *tx1b, *tx1a;
  volatile int32_t int_count;
 };

 struct spi_link_type {
  uint8_t SPI_LCD : 1;
  uint8_t SPI_AUX : 1;
  uint8_t LCD_TIMER : 1;
  volatile uint8_t LCD_DATA : 1;
  uint16_t delay;
  uint8_t config;
  uint8_t * txbuf;
  volatile int32_t int_count;
 };

 typedef struct B_type {
  volatile _Bool ten_sec_flag, one_sec_flag, FM80_charged, pv_high, pv_update, once;
  volatile uint16_t pacing, rx_count, flush, pv_prev, day_check, node_id, dim_delay;
  volatile _Bool FM80_online, FM80_io, LOG, display_dim, display_update;
  volatile uint8_t canbus_online, modbus_online, alt_display;
  float run_time, net_balance;
  uint16_t mui[10];
  uint16_t fwrev[3];
 } B_type;

 typedef enum {
  CODE_TS = 0,
  CODE_TM = 1,
  CODE_ONLOCAL = 2,
  CODE_ONREMOTE = 3,
  CODE_OFFLINE = 4,
  CODE_DEBUG,
  CODE_LOG,
  CODE_LOAD,
  CODE_UNLOAD,
  CODE_PUMP,
  CODE_HELP,
  CODE_SEQUENCE,
  CODE_ERR,
 } P_CODES;

 typedef enum {
  DIS_STR = 0,
  DIS_TERM,
  DIS_LOG,
  DIS_LOAD,
  DIS_UNLOAD,
  DIS_PUMP,
  DIS_HELP,
  DIS_SEQUENCE,
  DIS_SEQUENCE_M,
  DIS_ERR,
  DIS_CLEAR,
 } D_CODES;

 typedef struct terminal_type {
  uint8_t ack[32], mesgid;
  uint8_t TID, mcode, mparm, cmdlen, log_seq;
  uint8_t host_display_ack : 1;
  D_CODES info, help_temp;
  uint16_t ceid;
  uint16_t log_num;
 } terminal_type;

 typedef enum {
  SEQ_STATE_INIT = 0,
  SEQ_STATE_RX,
  SEQ_STATE_TX,
  SEQ_STATE_TRIGGER,
  SEQ_STATE_QUEUE,
  SEQ_STATE_DONE,
  SEQ_STATE_ERROR
 } SEQ_STATES;

 typedef enum {
  UI_STATE_INIT = 0,
  UI_STATE_HOST,
  UI_STATE_DEBUG,
  UI_STATE_LOG,
  UI_STATE_ERROR
 } UI_STATES;

 typedef enum {
  GEM_STATE_DISABLE = 0,
  GEM_STATE_COMM,
  GEM_STATE_OFFLINE,
  GEM_STATE_ONLINE,
  GEM_STATE_REMOTE,
  GEM_STATE_ERROR
 } GEM_STATES;

 const char * GEM_TEXT [] = {
  "DISABLE",
  "COMM   ",
  "OFFLINE",
  "ONLIINE",
  "REMOTE ",
  "ERROR  "
 };

 typedef enum {
  GEM_GENERIC = 0,
  GEM_VII80,
  GEM_E220,
  GEM_ERROR
 } GEM_EQUIP;

 typedef enum {
  LINK_STATE_IDLE = 0,
  LINK_STATE_ENQ,
  LINK_STATE_EOT,
  LINK_STATE_ACK,
  LINK_STATE_DONE,
  LINK_STATE_NAK,
  LINK_STATE_ERROR
 } LINK_STATES;

 typedef enum {
  LINK_ERROR_NONE = 10,
  LINK_ERROR_T1,
  LINK_ERROR_T2,
  LINK_ERROR_T3,
  LINK_ERROR_T4,
  LINK_ERROR_CHECKSUM,
  LINK_ERROR_NAK,
  LINK_ERROR_ABORT,
  LINK_ERROR_SEND
 } LINK_ERRORS;

 typedef enum {
  MSG_ERROR_NONE = 0,
  MSG_ERROR_ID = 1,
  MSG_ERROR_STREAM = 3,
  MSG_ERROR_FUNCTION = 5,
  MSG_ERROR_DATA = 7,
  MSG_ERROR_TIMEOUT = 9,
  MSG_ERROR_DATASIZE = 11,
  MSG_ERROR_RESET = 20
 } MSG_ERRORS;

 typedef struct V_data {
  SEQ_STATES s_state;
  UI_STATES ui_state;
  GEM_STATES g_state;
  GEM_EQUIP e_types;
  LINK_STATES m_l_state;
  LINK_STATES r_l_state;
  LINK_STATES t_l_state;
  char buf[64], terminal[160], info[64];
  uint32_t ticks, systemb;
  int32_t testing;
  uint8_t stream, function, error, abort, msg_error, msg_ret, alarm;
  UI_STATES ui_sw;
  uint16_t r_checksum, t_checksum, checksum_error, timer_error, ping, mode_pwm, equip_timeout, sequences, all_errors;
  uint8_t rbit : 1, wbit : 1, ebit : 1, set_sequ : 1,
  failed_send : 4, failed_receive : 4,
  queue : 1, debug : 1, help : 1, stack : 3, help_id : 2;
  terminal_type response;
  uint8_t uart, llid, sid, ping_count, euart;
  volatile uint8_t ticker;
  _Bool flipper;
 } V_data;

 typedef struct V_help {
  const char message[32], display[32];
 } V_help;

 extern B_type B;

 void wdtdelay(const uint32_t);
# 16 "./ringbufs.h" 2



 typedef struct ringBufS_t {
  uint8_t buf[64];
  uint8_t head;
  uint8_t tail;
  uint8_t count;
 } ringBufS_t;

 void ringBufS_init(volatile ringBufS_t *_this);
 int8_t ringBufS_empty(ringBufS_t *_this);
 int8_t ringBufS_full(ringBufS_t *_this);
 uint8_t ringBufS_get(ringBufS_t *_this);
 void ringBufS_put(ringBufS_t *_this, const uint8_t c);
 void ringBufS_put_dma(ringBufS_t *_this, const uint8_t c);
 void ringBufS_flush(ringBufS_t *_this, const int8_t clearBuffer);
# 3 "ringbufs.c" 2




uint8_t modulo_inc(const uint8_t value, const uint8_t modulus)
{
 uint8_t my_value = value + 1;
 if (my_value >= modulus) {
  my_value = 0;
 }
 return my_value;
}

uint8_t modulo_dec(const uint8_t value, const uint8_t modulus)
{
 uint8_t my_value = (0 == value) ? (modulus - 1) : (value - 1);
 return my_value;
}

void ringBufS_init(volatile ringBufS_t *_this)
{
# 32 "ringbufs.c"
 memset((void*)_this, 0, sizeof(*_this));
}

int8_t ringBufS_empty(ringBufS_t *_this)
{
 return(0 == _this->count);
}

int8_t ringBufS_full(ringBufS_t *_this)
{
 return(_this->count >= 64);
}

uint8_t ringBufS_get(ringBufS_t *_this)
{
 uint8_t c;
 if (_this->count > 0) {
  c = _this->buf[_this->tail];
  _this->tail = modulo_inc(_this->tail, 64);
  --_this->count;
 } else {
  c = 0;
 }
 return(c);
}

void ringBufS_put(ringBufS_t *_this, const uint8_t c)
{
 if (_this->count < 64) {
  _this->buf[_this->head] = c;
  _this->head = modulo_inc(_this->head, 64);
  ++_this->count;
 }
}

void ringBufS_put_dma(ringBufS_t *_this, const uint8_t c)
{
 if (_this->count < 64) {
  _this->buf[_this->head] = c;
  ++_this->head;
  ++_this->count;
 }
}

void ringBufS_flush(ringBufS_t *_this, const int8_t clearBuffer)
{
 _this->count = 0;
 _this->head = 0;
 _this->tail = 0;
 if (clearBuffer) {
  memset(_this->buf, 0, sizeof(_this->buf));
 }
}
