# 1 "ringbufs.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/xc8/v2.10/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "ringbufs.c" 2
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/string.h" 1 3



# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/musl_xc8.h" 1 3
# 5 "/opt/microchip/xc8/v2.10/pic/include/c99/string.h" 2 3





# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/features.h" 1 3
# 11 "/opt/microchip/xc8/v2.10/pic/include/c99/string.h" 2 3
# 25 "/opt/microchip/xc8/v2.10/pic/include/c99/string.h" 3
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 1 3
# 122 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 168 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 411 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 26 "/opt/microchip/xc8/v2.10/pic/include/c99/string.h" 2 3

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
# 65 "/opt/microchip/xc8/v2.10/pic/include/c99/string.h" 3
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
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/stdint.h" 1 3
# 22 "/opt/microchip/xc8/v2.10/pic/include/c99/stdint.h" 3
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 1 3
# 127 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef long intptr_t;
# 158 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 173 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 188 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 209 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 229 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 23 "/opt/microchip/xc8/v2.10/pic/include/c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 139 "/opt/microchip/xc8/v2.10/pic/include/c99/stdint.h" 3
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/stdint.h" 1 3
typedef int32_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint32_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 140 "/opt/microchip/xc8/v2.10/pic/include/c99/stdint.h" 2 3
# 16 "./ringbufs.h" 2
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/stdbool.h" 1 3
# 17 "./ringbufs.h" 2
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/stdio.h" 1 3
# 24 "/opt/microchip/xc8/v2.10/pic/include/c99/stdio.h" 3
# 1 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 1 3





typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 137 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef long ssize_t;
# 246 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef long long off_t;
# 399 "/opt/microchip/xc8/v2.10/pic/include/c99/bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 25 "/opt/microchip/xc8/v2.10/pic/include/c99/stdio.h" 2 3
# 52 "/opt/microchip/xc8/v2.10/pic/include/c99/stdio.h" 3
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

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

#pragma printf_check(printf) const
#pragma printf_check(vprintf) const
#pragma printf_check(sprintf) const
#pragma printf_check(snprintf) const
#pragma printf_check(vsprintf) const
#pragma printf_check(vsnprintf) const

int printf(const char *restrict, ...);
int fprintf(FILE *restrict, const char *restrict, ...);
int sprintf(char *restrict, const char *restrict, ...);
int snprintf(char *restrict, size_t, const char *restrict, ...);

int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

int scanf(const char *restrict, ...);
int fscanf(FILE *restrict, const char *restrict, ...);
int sscanf(const char *restrict, const char *restrict, ...);
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
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
# 18 "./ringbufs.h" 2



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
