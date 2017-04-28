# 1 "main.c"
# 1 "<command-line>"
# 1 "main.c"

# 1 "/usr/lib/avr/include/avr/io.h" 1 3
# 99 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/lib/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/lib/avr/include/inttypes.h" 1 3
# 37 "/usr/lib/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/4.8.1/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/avr/4.8.1/include/stdint.h" 3 4
# 1 "/usr/lib/avr/include/stdint.h" 1 3 4
# 121 "/usr/lib/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/usr/lib/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/usr/lib/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/usr/lib/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/usr/lib/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/lib/gcc/avr/4.8.1/include/stdint.h" 2 3 4
# 38 "/usr/lib/avr/include/inttypes.h" 2 3
# 77 "/usr/lib/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/lib/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/lib/avr/include/avr/io.h" 2 3
# 610 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/portpins.h" 1 3
# 611 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/common.h" 1 3
# 613 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/version.h" 1 3
# 615 "/usr/lib/avr/include/avr/io.h" 2 3






# 1 "/usr/lib/avr/include/avr/fuse.h" 1 3
# 622 "/usr/lib/avr/include/avr/io.h" 2 3


# 1 "/usr/lib/avr/include/avr/lock.h" 1 3
# 625 "/usr/lib/avr/include/avr/io.h" 2 3
# 3 "main.c" 2
# 1 "/usr/lib/avr/include/avr/interrupt.h" 1 3
# 4 "main.c" 2
# 1 "/usr/lib/avr/include/avr/eeprom.h" 1 3
# 5 "main.c" 2
# 1 "/usr/lib/avr/include/stdio.h" 1 3
# 45 "/usr/lib/avr/include/stdio.h" 3
# 1 "/usr/lib/gcc/avr/4.8.1/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/avr/4.8.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/usr/lib/gcc/avr/4.8.1/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 46 "/usr/lib/avr/include/stdio.h" 2 3



# 1 "/usr/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 212 "/usr/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 50 "/usr/lib/avr/include/stdio.h" 2 3
# 242 "/usr/lib/avr/include/stdio.h" 3
struct __file {
 char *buf;
 unsigned char unget;
 uint8_t flags;
# 261 "/usr/lib/avr/include/stdio.h" 3
 int size;
 int len;
 int (*put)(char, struct __file *);
 int (*get)(struct __file *);
 void *udata;
};
# 405 "/usr/lib/avr/include/stdio.h" 3
extern struct __file *__iob[];
# 417 "/usr/lib/avr/include/stdio.h" 3
extern struct __file *fdevopen(int (*__put)(char, struct __file*), int (*__get)(struct __file*));
# 434 "/usr/lib/avr/include/stdio.h" 3
extern int fclose(struct __file *__stream);
# 608 "/usr/lib/avr/include/stdio.h" 3
extern int vfprintf(struct __file *__stream, const char *__fmt, va_list __ap);





extern int vfprintf_P(struct __file *__stream, const char *__fmt, va_list __ap);






extern int fputc(int __c, struct __file *__stream);




extern int putc(int __c, struct __file *__stream);


extern int putchar(int __c);
# 649 "/usr/lib/avr/include/stdio.h" 3
extern int printf(const char *__fmt, ...);





extern int printf_P(const char *__fmt, ...);







extern int vprintf(const char *__fmt, va_list __ap);





extern int sprintf(char *__s, const char *__fmt, ...);





extern int sprintf_P(char *__s, const char *__fmt, ...);
# 685 "/usr/lib/avr/include/stdio.h" 3
extern int snprintf(char *__s, size_t __n, const char *__fmt, ...);





extern int snprintf_P(char *__s, size_t __n, const char *__fmt, ...);





extern int vsprintf(char *__s, const char *__fmt, va_list ap);





extern int vsprintf_P(char *__s, const char *__fmt, va_list ap);
# 713 "/usr/lib/avr/include/stdio.h" 3
extern int vsnprintf(char *__s, size_t __n, const char *__fmt, va_list ap);





extern int vsnprintf_P(char *__s, size_t __n, const char *__fmt, va_list ap);




extern int fprintf(struct __file *__stream, const char *__fmt, ...);





extern int fprintf_P(struct __file *__stream, const char *__fmt, ...);






extern int fputs(const char *__str, struct __file *__stream);




extern int fputs_P(const char *__str, struct __file *__stream);





extern int puts(const char *__str);




extern int puts_P(const char *__str);
# 762 "/usr/lib/avr/include/stdio.h" 3
extern size_t fwrite(const void *__ptr, size_t __size, size_t __nmemb,
         struct __file *__stream);







extern int fgetc(struct __file *__stream);




extern int getc(struct __file *__stream);


extern int getchar(void);
# 810 "/usr/lib/avr/include/stdio.h" 3
extern int ungetc(int __c, struct __file *__stream);
# 822 "/usr/lib/avr/include/stdio.h" 3
extern char *fgets(char *__str, int __size, struct __file *__stream);






extern char *gets(char *__str);
# 840 "/usr/lib/avr/include/stdio.h" 3
extern size_t fread(void *__ptr, size_t __size, size_t __nmemb,
        struct __file *__stream);




extern void clearerr(struct __file *__stream);
# 857 "/usr/lib/avr/include/stdio.h" 3
extern int feof(struct __file *__stream);
# 868 "/usr/lib/avr/include/stdio.h" 3
extern int ferror(struct __file *__stream);






extern int vfscanf(struct __file *__stream, const char *__fmt, va_list __ap);




extern int vfscanf_P(struct __file *__stream, const char *__fmt, va_list __ap);







extern int fscanf(struct __file *__stream, const char *__fmt, ...);




extern int fscanf_P(struct __file *__stream, const char *__fmt, ...);






extern int scanf(const char *__fmt, ...);




extern int scanf_P(const char *__fmt, ...);







extern int vscanf(const char *__fmt, va_list __ap);







extern int sscanf(const char *__buf, const char *__fmt, ...);




extern int sscanf_P(const char *__buf, const char *__fmt, ...);
# 938 "/usr/lib/avr/include/stdio.h" 3
static __inline__ int fflush(struct __file *stream __attribute__((unused)))
{
 return 0;
}
# 6 "main.c" 2
# 1 "/usr/lib/avr/include/stdlib.h" 1 3
# 47 "/usr/lib/avr/include/stdlib.h" 3
# 1 "/usr/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 324 "/usr/lib/gcc/avr/4.8.1/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "/usr/lib/avr/include/stdlib.h" 2 3
# 68 "/usr/lib/avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 114 "/usr/lib/avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 128 "/usr/lib/avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 151 "/usr/lib/avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 183 "/usr/lib/avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 216 "/usr/lib/avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 250 "/usr/lib/avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 262 "/usr/lib/avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 274 "/usr/lib/avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 286 "/usr/lib/avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 298 "/usr/lib/avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 346 "/usr/lib/avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 372 "/usr/lib/avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 417 "/usr/lib/avr/include/stdlib.h" 3
extern __inline__
char *itoa (int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__itoa (int, char *, int);
 return __itoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__itoa_ncheck (int, char *, unsigned char);
 return __itoa_ncheck (__val, __s, __radix);
    }
}
# 462 "/usr/lib/avr/include/stdlib.h" 3
extern __inline__
char *ltoa (long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ltoa (long, char *, int);
 return __ltoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ltoa_ncheck (long, char *, unsigned char);
 return __ltoa_ncheck (__val, __s, __radix);
    }
}
# 505 "/usr/lib/avr/include/stdlib.h" 3
extern __inline__
char *utoa (unsigned int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__utoa (unsigned int, char *, int);
 return __utoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__utoa_ncheck (unsigned int, char *, unsigned char);
 return __utoa_ncheck (__val, __s, __radix);
    }
}
# 547 "/usr/lib/avr/include/stdlib.h" 3
extern __inline__
char *ultoa (unsigned long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ultoa (unsigned long, char *, int);
 return __ultoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ultoa_ncheck (unsigned long, char *, unsigned char);
 return __ultoa_ncheck (__val, __s, __radix);
    }
}
# 579 "/usr/lib/avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 638 "/usr/lib/avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 655 "/usr/lib/avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 7 "main.c" 2
# 1 "/usr/lib/avr/include/avr/pgmspace.h" 1 3
# 87 "/usr/lib/avr/include/avr/pgmspace.h" 3
# 1 "/usr/lib/gcc/avr/4.8.1/include/stddef.h" 1 3 4
# 88 "/usr/lib/avr/include/avr/pgmspace.h" 2 3
# 1137 "/usr/lib/avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const void *, int __val, size_t);
extern void *memcpy_P(void *, const void *, size_t);
extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const char *);
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const char *);
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const char *, size_t );
extern size_t strlcpy_P (char *, const char *, size_t );
extern size_t __strlen_P(const char *) __attribute__((__const__));
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const char *, size_t);
extern char *strncpy_P(char *, const char *, size_t);
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const char * __delim);
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const char * __delim);
extern char *strtok_rP(char *__s, const char * __delim, char **__last);

extern size_t strlen_PF (uint_farptr_t src) __attribute__((__const__));
extern size_t strnlen_PF (uint_farptr_t src, size_t len) __attribute__((__const__));
extern void *memcpy_PF (void *dest, uint_farptr_t src, size_t len);
extern char *strcpy_PF (char *dest, uint_farptr_t src);
extern char *strncpy_PF (char *dest, uint_farptr_t src, size_t len);
extern char *strcat_PF (char *dest, uint_farptr_t src);
extern size_t strlcat_PF (char *dst, uint_farptr_t src, size_t siz);
extern char *strncat_PF (char *dest, uint_farptr_t src, size_t len);
extern int strcmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern int strcasecmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncasecmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern char *strstr_PF (const char *s1, uint_farptr_t s2);
extern size_t strlcpy_PF (char *dst, uint_farptr_t src, size_t siz);
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));


__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 8 "main.c" 2
# 1 "/usr/lib/avr/include/ctype.h" 1 3
# 74 "/usr/lib/avr/include/ctype.h" 3
extern int isalnum(int __c) __attribute__((__const__));






extern int isalpha(int __c) __attribute__((__const__));






extern int isascii(int __c) __attribute__((__const__));





extern int isblank(int __c) __attribute__((__const__));





extern int iscntrl(int __c) __attribute__((__const__));





extern int isdigit(int __c) __attribute__((__const__));





extern int isgraph(int __c) __attribute__((__const__));





extern int islower(int __c) __attribute__((__const__));





extern int isprint(int __c) __attribute__((__const__));






extern int ispunct(int __c) __attribute__((__const__));







extern int isspace(int __c) __attribute__((__const__));





extern int isupper(int __c) __attribute__((__const__));






extern int isxdigit(int __c) __attribute__((__const__));
# 173 "/usr/lib/avr/include/ctype.h" 3
extern int toascii(int __c) __attribute__((__const__));





extern int tolower(int __c) __attribute__((__const__));





extern int toupper(int __c) __attribute__((__const__));
# 9 "main.c" 2



# 1 "vars.h" 1
# 20 "vars.h"
const char str_nasos[] __attribute__((__progmem__)) = "Нас";
const char str_temp[] __attribute__((__progmem__)) = "Тмп";
const char str_tn[] __attribute__((__progmem__)) = "ТН";
const char str_dtn[] __attribute__((__progmem__)) = "dТН";
const char str_vlaz[] __attribute__((__progmem__)) = "Вл";
const char str_co[] __attribute__((__progmem__)) = "CO";
const char str_ch[] __attribute__((__progmem__)) = "CH";
const char str_vitag[] __attribute__((__progmem__)) = "Выт";
const char str_prit[] __attribute__((__progmem__)) = "Прт";
const char str_norm[] __attribute__((__progmem__)) = "нрм";
const char str_vis[] __attribute__((__progmem__)) = "ВЫС";
const char str_vkl[2][4] __attribute__((__progmem__)) = {"вык","вкл"};
const char str_nastr[] __attribute__((__progmem__)) = "Настройка:";
const char str_init[] __attribute__((__progmem__)) = "Инициализация";
const char str_init1[] __attribute__((__progmem__)) = "(c)olegk_0    @mail.ru";
const char str_beep[] __attribute__((__progmem__)) = "Сигнал";
const char str_kuh[] __attribute__((__progmem__)) = "Кухня";
const char str_time[] __attribute__((__progmem__)) = "Время";
const char str_rc[] __attribute__((__progmem__)) = "Управ.";
const char str_hr[] __attribute__((__progmem__)) = "Час.";
const char str_min[] __attribute__((__progmem__)) = "Мин.";
const char str_lgt[] __attribute__((__progmem__)) = "Свет";
const char str_rst[] __attribute__((__progmem__)) = "Сброс";
const char str_WeekDays1[] __attribute__((__progmem__)) = "Понедельник";
const char str_WeekDays2[] __attribute__((__progmem__)) = "  Вторник";
const char str_WeekDays3[] __attribute__((__progmem__)) = "   Среда";
const char str_WeekDays4[] __attribute__((__progmem__)) = "  Четверг";
const char str_WeekDays5[] __attribute__((__progmem__)) = "  Пятница";
const char str_WeekDays6[] __attribute__((__progmem__)) = "  Суббота";
const char str_WeekDays7[] __attribute__((__progmem__)) = "Воскресение";

const char * const str_WeekDays[] __attribute__((__progmem__)) =
{
 ((void *)0),
 str_WeekDays1,
 str_WeekDays2,
 str_WeekDays3,
 str_WeekDays4,
 str_WeekDays5,
 str_WeekDays6,
 str_WeekDays7
};


const char tschar[] __attribute__((__progmem__)) = {'O','K','T','V','A','C'};





uint8_t trg_nasos_ee[2] EEMEM={40,20};
uint8_t trg_vitag_ee[3] EEMEM={80,60,7};
uint8_t trg_prit_ee[3] EEMEM={10,5,3};
uint8_t trg_alrm_ee[2] EEMEM={90,7};

enum {
 TM_FL_SEC = 0,
 TM_FL_MIN = 1,
 TM_FL_HR = 2,
};

volatile uint8_t time_fl;
volatile uint8_t line_sel;
volatile uint8_t line_sel_new;
volatile uint8_t p_key;
volatile uint8_t scrn_sel_new;
volatile uint8_t scrn_sel;
volatile uint8_t dT_TH;
volatile uint8_t vent_cicle_min;
volatile uint8_t alarm_fl,alarm_fl1;
# 102 "vars.h"
volatile uint8_t trg_nasos[2];
volatile uint8_t trg_vitag[3];
volatile uint8_t trg_prit[3];
volatile uint8_t trg_alrm[2];

volatile uint8_t rc_cmd;
volatile uint8_t rc_timer;
volatile uint8_t wp_timer;
# 122 "vars.h"
enum {
 ST_BFL_PRIT =0,
 ST_BFL_VIT =1,
 ST_BFL_NAS =2,
 ST_BFL_LIGHT =3,
 ST_BFL_LED =4,
 ST_BFL_BKL =5,
 ST_BFL_PCO =6,
 ST_BFL_PCH =7,
};
volatile uint8_t st_flag[2];


enum {
 STS_BFL_CO =0,
 STS_BFL_CH =1,
};
enum {
 STS_IDX_FLAGS =0,
 STS_IDX_TTN =1,
 STS_IDX_TV =2,
 STS_IDX_VLAG =3,
};
volatile uint8_t sts_numb[4];



enum {
 RMC_BFL_PRIT =0,
 RMC_BFL_VIT =1,
 RMC_BFL_NAS =2,
 RMC_BFL_LIGHT =3,
 RMC_BFL_ALARM =7,
};
volatile uint8_t rmt_fl;
# 13 "main.c" 2

# 1 "lcd.h" 1
# 22 "lcd.h"
# 1 "io.h" 1
# 23 "lcd.h" 2
# 62 "lcd.h"
typedef unsigned char byte;


typedef enum
{
    LCD_CMD = 0,
    LCD_DATA = 1

} LcdCmdData;

typedef enum
{
    PIXEL_OFF = 0,
    PIXEL_ON = 1,
    PIXEL_XOR = 2

} LcdPixelMode;

typedef enum
{
    FONT_1X = 1,
    FONT_2X = 2

} LcdFontSize;


void LcdInit ( void );
void LcdClear ( void );
void LcdUpdate ( void );
void LcdImage ( const byte *imageData );
void LcdContrast ( byte contrast );
byte LcdGotoXYFont ( byte x, byte y );
byte LcdChr ( LcdFontSize size, byte ch, LcdPixelMode mode );
byte LcdStr ( LcdFontSize size, const char *s, LcdPixelMode mode );
byte LcdFStr ( LcdFontSize size, const byte *dataPtr, LcdPixelMode mode );
byte LcdPixel ( byte x, byte y, LcdPixelMode mode );
byte LcdLine ( byte x1, byte y1, byte x2, byte y2, LcdPixelMode mode );
byte LcdCircle ( byte x, byte y, byte radius, LcdPixelMode mode);
byte LcdRect ( byte x1, byte y1, byte x2, byte y2, LcdPixelMode mode );
byte LcdSingleBar ( byte baseX, byte baseY, byte height, byte width, LcdPixelMode mode );
byte LcdBars ( byte data[], byte numbBars, byte width, byte multiplier );






static const byte FontLookup [][5] __attribute__((__progmem__))=
{
   { 0x00, 0x00, 0x00, 0x00, 0x00 },
   { 0x00, 0x00, 0x5F, 0x00, 0x00 },
   { 0x00, 0x07, 0x00, 0x07, 0x00 },
   { 0x14, 0x7F, 0x14, 0x7F, 0x14 },
   { 0x24, 0x2A, 0x7F, 0x2A, 0x12 },
   { 0x4C, 0x2C, 0x10, 0x68, 0x64 },
   { 0x36, 0x49, 0x55, 0x22, 0x50 },
   { 0x00, 0x05, 0x03, 0x00, 0x00 },
   { 0x00, 0x1C, 0x22, 0x41, 0x00 },
   { 0x00, 0x41, 0x22, 0x1C, 0x00 },
   { 0x14, 0x08, 0x3E, 0x08, 0x14 },
   { 0x08, 0x08, 0x3E, 0x08, 0x08 },
   { 0x00, 0x00, 0x50, 0x30, 0x00 },
   { 0x10, 0x10, 0x10, 0x10, 0x10 },
   { 0x00, 0x60, 0x60, 0x00, 0x00 },
   { 0x20, 0x10, 0x08, 0x04, 0x02 },
   { 0x3E, 0x51, 0x49, 0x45, 0x3E },
   { 0x00, 0x42, 0x7F, 0x40, 0x00 },
   { 0x42, 0x61, 0x51, 0x49, 0x46 },
   { 0x21, 0x41, 0x45, 0x4B, 0x31 },
   { 0x18, 0x14, 0x12, 0x7F, 0x10 },
   { 0x27, 0x45, 0x45, 0x45, 0x39 },
   { 0x3C, 0x4A, 0x49, 0x49, 0x30 },
   { 0x01, 0x71, 0x09, 0x05, 0x03 },
   { 0x36, 0x49, 0x49, 0x49, 0x36 },
   { 0x06, 0x49, 0x49, 0x29, 0x1E },
   { 0x00, 0x36, 0x36, 0x00, 0x00 },
   { 0x00, 0x56, 0x36, 0x00, 0x00 },
   { 0x08, 0x14, 0x22, 0x41, 0x00 },
   { 0x14, 0x14, 0x14, 0x14, 0x14 },
   { 0x00, 0x41, 0x22, 0x14, 0x08 },
   { 0x02, 0x01, 0x51, 0x09, 0x06 },
   { 0x32, 0x49, 0x79, 0x41, 0x3E },
   { 0x7E, 0x11, 0x11, 0x11, 0x7E },
   { 0x7F, 0x49, 0x49, 0x49, 0x36 },
   { 0x3E, 0x41, 0x41, 0x41, 0x22 },
   { 0x7F, 0x41, 0x41, 0x22, 0x1C },
   { 0x7F, 0x49, 0x49, 0x49, 0x41 },
   { 0x7F, 0x09, 0x09, 0x09, 0x01 },
   { 0x3E, 0x41, 0x49, 0x49, 0x7A },
   { 0x7F, 0x08, 0x08, 0x08, 0x7F },
   { 0x00, 0x41, 0x7F, 0x41, 0x00 },
   { 0x20, 0x40, 0x41, 0x3F, 0x01 },
   { 0x7F, 0x08, 0x14, 0x22, 0x41 },
   { 0x7F, 0x40, 0x40, 0x40, 0x40 },
   { 0x7F, 0x02, 0x0C, 0x02, 0x7F },
   { 0x7F, 0x04, 0x08, 0x10, 0x7F },
   { 0x3E, 0x41, 0x41, 0x41, 0x3E },
   { 0x7F, 0x09, 0x09, 0x09, 0x06 },
   { 0x3E, 0x41, 0x51, 0x21, 0x5E },
   { 0x7F, 0x09, 0x19, 0x29, 0x46 },
   { 0x46, 0x49, 0x49, 0x49, 0x31 },
   { 0x01, 0x01, 0x7F, 0x01, 0x01 },
   { 0x3F, 0x40, 0x40, 0x40, 0x3F },
   { 0x1F, 0x20, 0x40, 0x20, 0x1F },
   { 0x3F, 0x40, 0x38, 0x40, 0x3F },
   { 0x63, 0x14, 0x08, 0x14, 0x63 },
   { 0x07, 0x08, 0x70, 0x08, 0x07 },
   { 0x61, 0x51, 0x49, 0x45, 0x43 },
   { 0x00, 0x7F, 0x41, 0x41, 0x00 },
   { 0x02, 0x04, 0x08, 0x10, 0x20 },
   { 0x00, 0x41, 0x41, 0x7F, 0x00 },
   { 0x04, 0x02, 0x01, 0x02, 0x04 },
   { 0x40, 0x40, 0x40, 0x40, 0x40 },
   { 0x00, 0x01, 0x02, 0x04, 0x00 },
   { 0x20, 0x54, 0x54, 0x54, 0x78 },
   { 0x7F, 0x48, 0x44, 0x44, 0x38 },
   { 0x38, 0x44, 0x44, 0x44, 0x20 },
   { 0x38, 0x44, 0x44, 0x48, 0x7F },
   { 0x38, 0x54, 0x54, 0x54, 0x18 },
   { 0x08, 0x7E, 0x09, 0x01, 0x02 },
   { 0x0C, 0x52, 0x52, 0x52, 0x3E },
   { 0x7F, 0x08, 0x04, 0x04, 0x78 },
   { 0x00, 0x44, 0x7D, 0x40, 0x00 },
   { 0x20, 0x40, 0x44, 0x3D, 0x00 },
   { 0x7F, 0x10, 0x28, 0x44, 0x00 },
   { 0x00, 0x41, 0x7F, 0x40, 0x00 },
   { 0x7C, 0x04, 0x18, 0x04, 0x78 },
   { 0x7C, 0x08, 0x04, 0x04, 0x78 },
   { 0x38, 0x44, 0x44, 0x44, 0x38 },
   { 0x7C, 0x14, 0x14, 0x14, 0x08 },
   { 0x08, 0x14, 0x14, 0x18, 0x7C },
   { 0x7C, 0x08, 0x04, 0x04, 0x08 },
   { 0x48, 0x54, 0x54, 0x54, 0x20 },
   { 0x04, 0x3F, 0x44, 0x40, 0x20 },
   { 0x3C, 0x40, 0x40, 0x20, 0x7C },
   { 0x1C, 0x20, 0x40, 0x20, 0x1C },
   { 0x3C, 0x40, 0x30, 0x40, 0x3C },
   { 0x44, 0x28, 0x10, 0x28, 0x44 },
   { 0x0C, 0x50, 0x50, 0x50, 0x3C },
   { 0x44, 0x64, 0x54, 0x4C, 0x44 },
   { 0x00, 0x08, 0x36, 0x41, 0x00 },
   { 0x00, 0x00, 0x7F, 0x00, 0x00 },
   { 0x00, 0x41, 0x36, 0x08, 0x00 },
   { 0x08, 0x04, 0x08, 0x10, 0x08 },
   { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
   { 0x04, 0x06, 0x07, 0x06, 0x04 },
   { 0x10, 0x30, 0x70, 0x30, 0x10 },

   { 0x7C, 0x12, 0x11, 0x12, 0x7C },
   { 0x7F, 0x49, 0x49, 0x49, 0x31 },
   { 0x7F, 0x49, 0x49, 0x49, 0x36 },
   { 0x7F, 0x01, 0x01, 0x01, 0x01 },
   { 0x60, 0x3F, 0x21, 0x3F, 0x60 },
   { 0x7F, 0x49, 0x49, 0x49, 0x41 },
   { 0x77, 0x08, 0x7F, 0x08, 0x77 },
   { 0x22, 0x41, 0x49, 0x49, 0x36 },
   { 0x7F, 0x10, 0x08, 0x04, 0x7F },
   { 0x7E, 0x10, 0x09, 0x04, 0x7E },
   { 0x7F, 0x08, 0x14, 0x22, 0x41 },
   { 0x40, 0x3E, 0x01, 0x01, 0x7F },
   { 0x7F, 0x02, 0x0C, 0x02, 0x7F },
   { 0x7F, 0x08, 0x08, 0x08, 0x7F },
   { 0x3E, 0x41, 0x41, 0x41, 0x3E },
   { 0x7F, 0x01, 0x01, 0x01, 0x7F },
   { 0x7F, 0x09, 0x09, 0x09, 0x06 },
   { 0x3E, 0x41, 0x41, 0x41, 0x22 },
   { 0x01, 0x01, 0x7F, 0x01, 0x01 },
   { 0x07, 0x48, 0x48, 0x48, 0x3F },
   { 0x0E, 0x11, 0x7F, 0x11, 0x0E },
   { 0x63, 0x14, 0x08, 0x14, 0x63 },
   { 0x3F, 0x20, 0x20, 0x3F, 0x60 },
   { 0x07, 0x08, 0x08, 0x08, 0x7F },
   { 0x7F, 0x40, 0x7E, 0x40, 0x7F },
   { 0x3F, 0x20, 0x3F, 0x20, 0x7F },
   { 0x01, 0x7F, 0x48, 0x48, 0x30 },
   { 0x7F, 0x48, 0x30, 0x00, 0x7F },
   { 0x00, 0x7F, 0x48, 0x48, 0x30 },
   { 0x22, 0x41, 0x49, 0x49, 0x3E },
   { 0x7F, 0x08, 0x3E, 0x41, 0x3E },
   { 0x46, 0x29, 0x19, 0x09, 0x7F },
   { 0x20, 0x54, 0x54, 0x54, 0x78 },
   { 0x3C, 0x4A, 0x4A, 0x4A, 0x31 },
   { 0x7C, 0x54, 0x54, 0x28, 0x00 },
   { 0x7C, 0x04, 0x04, 0x0C, 0x00 },
   { 0x60, 0x3C, 0x24, 0x3C, 0x60 },
   { 0x38, 0x54, 0x54, 0x54, 0x18 },
   { 0x6C, 0x10, 0x7C, 0x10, 0x6C },
   { 0x00, 0x44, 0x54, 0x54, 0x28 },
   { 0x7C, 0x20, 0x10, 0x08, 0x7C },
   { 0x7C, 0x21, 0x12, 0x09, 0x7C },
   { 0x7C, 0x10, 0x28, 0x44, 0x00 },
   { 0x40, 0x38, 0x04, 0x04, 0x7C },
   { 0x7C, 0x08, 0x10, 0x08, 0x7C },
   { 0x7C, 0x10, 0x10, 0x10, 0x7C },
   { 0x38, 0x44, 0x44, 0x44, 0x38 },
   { 0x7C, 0x04, 0x04, 0x04, 0x7C },
   { 0x7C, 0x14, 0x14, 0x14, 0x08 },
   { 0x38, 0x44, 0x44, 0x44, 0x00 },
   { 0x04, 0x04, 0x7C, 0x04, 0x04 },
   { 0x0C, 0x50, 0x50, 0x50, 0x3C },
   { 0x08, 0x14, 0x7C, 0x14, 0x08 },
   { 0x44, 0x28, 0x10, 0x28, 0x44 },
   { 0x3C, 0x20, 0x20, 0x3C, 0x60 },
   { 0x0C, 0x10, 0x10, 0x10, 0x7C },
   { 0x7C, 0x40, 0x7C, 0x40, 0x7C },
   { 0x3C, 0x20, 0x3C, 0x20, 0x7C },
   { 0x04, 0x7C, 0x50, 0x50, 0x20 },
   { 0x7C, 0x50, 0x20, 0x00, 0x7C },
   { 0x00, 0x7C, 0x50, 0x50, 0x20 },
   { 0x28, 0x44, 0x54, 0x54, 0x38 },
   { 0x7C, 0x10, 0x38, 0x44, 0x38 },
   { 0x48, 0x54, 0x34, 0x14, 0x7C }
};
# 15 "main.c" 2
# 1 "usart.h" 1
# 23 "usart.h"
void USART_Init(void);
uint8_t USART_GetTxCount(void);
void USART_FlushTxBuf(void);
void USART_PutChar(uint8_t sym);
void USART_SendStr(char * data);
uint8_t USART_GetRxCount(void);
void USART_FlushRxBuf(void);
uint8_t USART_GetChar(void);
# 16 "main.c" 2
# 1 "temp_18b20.h" 1
# 11 "temp_18b20.h"
uint8_t w1_find(void);

void w1_sendcmd(uint8_t cmd);

uint8_t w1_receive_byte(void);

int8_t temp_18b20(void);
# 17 "main.c" 2
# 1 "dht11.h" 1
# 32 "dht11.h"
uint8_t dht11_read(void);
uint8_t humidity;
uint8_t temperature;
# 18 "main.c" 2
# 1 "ds1302.h" 1
# 21 "ds1302.h"
enum{
 ds1302_SEC_OFFS = 0,
 ds1302_MIN_OFFS = 2,
 ds1302_HR_OFFS = 4,
 ds1302_DATE_OFFS = 6,
 ds1302_MON_OFFS = 8,
 ds1302_DOW_OFFS = 10,
 ds1302_YEAR_OFFS = 12,
 ds1302_CTL_OFFS = 14,
 ds1302_CHRG_OFFS = 16,
 ds1302_RAM_OFFS = 64,
};



enum{
 ds1302_CHRG_FL_OFF=0,
 ds1302_CHRG_FL_ON=0xa0,
 ds1302_CHRG_FL_1Diod=4,
 ds1302_CHRG_FL_2Diod=8,
 ds1302_CHRG_FL_Res2k=1,
 ds1302_CHRG_FL_Res4k=2,
 ds1302_CHRG_FL_Res8k=3,
};

typedef struct
 {
 uint8_t Sec;
 uint8_t Min;
 uint8_t Hour;
 uint8_t Month;
 uint8_t Day;
 uint8_t Year;
 uint8_t WeekDay;




 } tpDateTime;

tpDateTime DateTime;

void DS1302_ReadSec(void);
void DS1302_ReadMin(void);
void DS1302_ReadHr(void);
void DS1302_ReadDate(void);
void DS1302_ReadMon(void);
void DS1302_ReadDow(void);
void DS1302_ReadYear(void);
void DS1302_ReadDateTime(void);
void DS1302_WriteSec(void);
void DS1302_WriteMin(void);
void DS1302_WriteHr(void);
void DS1302_WriteDate(void);
void DS1302_WriteMon(void);
void DS1302_WriteDow(void);
void DS1302_WriteYear(void);
void DS1302_WriteDateTime(void);
void DS1302_WriteDateTimeReg(uint8_t idx, uint8_t var);
void DS1302_ReadDateTimeReg(uint8_t idx);
void DS1302_WriteRam(uint8_t idx, uint8_t var);
uint8_t DS1302_ReadRam(uint8_t idx);
void DS1302_Init(uint8_t WriteProt, uint8_t ChargePrm);
# 19 "main.c" 2



# 1 "subs.h" 1
# 10 "subs.h"
static inline void _delayFourCycles(unsigned int __count)
{
    if ( __count == 0 )
        __asm__ __volatile__( "rjmp 1f\n 1:" );
    else
        __asm__ __volatile__ (
         "1: sbiw %0,1" "\n\t"
         "brne 1b"
         : "=w" (__count)
         : "0" (__count)
        );

}
# 31 "subs.h"
void delay_ms0(unsigned char ms);
void delay_ms(unsigned int ms);
void delay_s(unsigned char s);
void do_on_delay(void);

struct m2bytes{
uint8_t one;
uint8_t two;
} ;

void num_to_str(struct m2bytes *nbuf);

void num_to_lcd(uint8_t fs,uint8_t num);
# 23 "main.c" 2

# 1 "menu.c" 1


# 1 "menu.h" 1




typedef struct __attribute__((__progmem__)){
 void *Next;
 void *Previous;
 void *Child;
 uint8_t Type;
 const char Text[];
} menuItem;

typedef struct __attribute__((__progmem__)){
 uint8_t Vup;
 uint8_t Vdw;
 void *pVar;
} menuVar;
# 68 "menu.h"
uint8_t dispMenu(void);
uint8_t keyMenu(uint8_t key);
void initMenu(void);
# 4 "menu.c" 2




const menuItem Null_Menu = {(void*)0, (void*)0, (void*)0, 255, {0x00}};



const extern menuItem m_vit; const extern menuItem m_tst; const extern menuItem m_nas0; const menuItem m_nas = {(void*)&(m_vit), (void*)&(m_tst), (void*)&(m_nas0), 255, { "Насос ТН" }};
const extern menuItem m_prt; const extern menuItem m_nas; const extern menuItem m_vit0; const menuItem m_vit = {(void*)&(m_prt), (void*)&(m_nas), (void*)&(m_vit0), 255, { "Вытяжка" }};
const extern menuItem m_alrm; const extern menuItem m_vit; const extern menuItem m_prt0; const menuItem m_prt = {(void*)&(m_alrm), (void*)&(m_vit), (void*)&(m_prt0), 255, { "Приток" }};
const extern menuItem m_timec; const extern menuItem m_prt; const extern menuItem m_alrm0; const menuItem m_alrm = {(void*)&(m_timec), (void*)&(m_prt), (void*)&(m_alrm0), 255, { "Сигнал" }};
const extern menuItem m_tst; const extern menuItem m_alrm; const extern menuItem m_timec0; const menuItem m_timec = {(void*)&(m_tst), (void*)&(m_alrm), (void*)&(m_timec0), 255, { "Время" }};
const extern menuItem m_nas; const extern menuItem m_timec; const extern menuItem m_tst0; const menuItem m_tst = {(void*)&(m_nas), (void*)&(m_timec), (void*)&(m_tst0), 255, { "Тест" }};
# 31 "menu.c"
const extern menuItem m_nas1; const extern menuItem Null_Menu; const menuVar v_nas0 = {(uint8_t)60, (uint8_t)20, (void*)&trg_nasos[0]}; const menuItem m_nas0 = {(void*)&(m_nas1), (void*)&(Null_Menu), (void*)&(v_nas0), (uint8_t)'C', { "Т.ТН(вкл)" }};
const extern menuItem Null_Menu; const extern menuItem m_nas0; const menuVar v_nas1 = {(uint8_t)40, (uint8_t)10, (void*)&trg_nasos[1]}; const menuItem m_nas1 = {(void*)&(Null_Menu), (void*)&(m_nas0), (void*)&(v_nas1), (uint8_t)'C', { "Т.ТН(вык)" }};

const extern menuItem m_vit1; const extern menuItem Null_Menu; const menuVar v_vit0 = {(uint8_t)95, (uint8_t)40, (void*)&trg_vitag[0]}; const menuItem m_vit0 = {(void*)&(m_vit1), (void*)&(Null_Menu), (void*)&(v_vit0), (uint8_t)'%', { "Влаж(вкл)" }};
const extern menuItem m_vit2; const extern menuItem m_vit0; const menuVar v_vit1 = {(uint8_t)80, (uint8_t)20, (void*)&trg_vitag[1]}; const menuItem m_vit1 = {(void*)&(m_vit2), (void*)&(m_vit0), (void*)&(v_vit1), (uint8_t)'%', { "Влаж(вык)" }};
const extern menuItem m_vit3; const extern menuItem m_vit1; const menuVar v_vit2 = {(uint8_t)1, (uint8_t)0, (void*)&trg_vitag[2]}; const menuItem m_vit2 = {(void*)&(m_vit3), (void*)&(m_vit1), (void*)&(v_vit2), (uint8_t)2, { "dТтн(вык)" }};
const extern menuItem m_vit4; const extern menuItem m_vit2; const menuVar v_vit3 = {(uint8_t)1, (uint8_t)0, (void*)&trg_vitag[2]}; const menuItem m_vit3 = {(void*)&(m_vit4), (void*)&(m_vit2), (void*)&(v_vit3), (uint8_t)0, { "СО-выс" }};
const extern menuItem Null_Menu; const extern menuItem m_vit3; const menuVar v_vit4 = {(uint8_t)1, (uint8_t)0, (void*)&trg_vitag[2]}; const menuItem m_vit4 = {(void*)&(Null_Menu), (void*)&(m_vit3), (void*)&(v_vit4), (uint8_t)1, { "CH-выс" }};

const extern menuItem m_prt1; const extern menuItem Null_Menu; const menuVar v_prt0 = {(uint8_t)100, (uint8_t)0, (void*)&trg_prit[0]}; const menuItem m_prt0 = {(void*)&(m_prt1), (void*)&(Null_Menu), (void*)&(v_prt0), (uint8_t)'%', { "ТН-вкл(вкл)" }};
const extern menuItem m_prt2; const extern menuItem m_prt0; const menuVar v_prt1 = {(uint8_t)20, (uint8_t)0, (void*)&trg_prit[1]}; const menuItem m_prt1 = {(void*)&(m_prt2), (void*)&(m_prt0), (void*)&(v_prt1), (uint8_t)'C', { "dТтн" }};
const extern menuItem m_prt3; const extern menuItem m_prt1; const menuVar v_prt2 = {(uint8_t)1, (uint8_t)0, (void*)&trg_prit[2]}; const menuItem m_prt2 = {(void*)&(m_prt3), (void*)&(m_prt1), (void*)&(v_prt2), (uint8_t)0, { "СО-выс" }};
const extern menuItem Null_Menu; const extern menuItem m_prt2; const menuVar v_prt3 = {(uint8_t)1, (uint8_t)0, (void*)&trg_prit[2]}; const menuItem m_prt3 = {(void*)&(Null_Menu), (void*)&(m_prt2), (void*)&(v_prt3), (uint8_t)1, { "СH-выс" }};

const extern menuItem m_alrm1; const extern menuItem Null_Menu; const menuVar v_alrm0 = {(uint8_t)95, (uint8_t)50, (void*)&trg_alrm[0]}; const menuItem m_alrm0 = {(void*)&(m_alrm1), (void*)&(Null_Menu), (void*)&(v_alrm0), (uint8_t)'C', { "Темп.тн" }};


const extern menuItem Null_Menu; const extern menuItem m_alrm0; const menuVar v_alrm1 = {(uint8_t)1, (uint8_t)0, (void*)&trg_alrm[1]}; const menuItem m_alrm1 = {(void*)&(Null_Menu), (void*)&(m_alrm0), (void*)&(v_alrm1), (uint8_t)2, { "Звук" }};

const extern menuItem m_timec1; const extern menuItem Null_Menu; const menuVar v_timec0 = {(uint8_t)23, (uint8_t)0, (void*)&DateTime.Hour}; const menuItem m_timec0 = {(void*)&(m_timec1), (void*)&(Null_Menu), (void*)&(v_timec0), (uint8_t)10 + (ds1302_HR_OFFS / 2), { "Часы" }};
const extern menuItem m_timec2; const extern menuItem m_timec0; const menuVar v_timec1 = {(uint8_t)59, (uint8_t)0, (void*)&DateTime.Min}; const menuItem m_timec1 = {(void*)&(m_timec2), (void*)&(m_timec0), (void*)&(v_timec1), (uint8_t)10 + (ds1302_MIN_OFFS / 2), { "Минуты" }};
const extern menuItem m_timec3; const extern menuItem m_timec1; const menuVar v_timec2 = {(uint8_t)7, (uint8_t)1, (void*)&DateTime.WeekDay}; const menuItem m_timec2 = {(void*)&(m_timec3), (void*)&(m_timec1), (void*)&(v_timec2), (uint8_t)10 + (ds1302_DOW_OFFS / 2), { "День недели" }};
const extern menuItem m_timec4; const extern menuItem m_timec2; const menuVar v_timec3 = {(uint8_t)31, (uint8_t)1, (void*)&DateTime.Day}; const menuItem m_timec3 = {(void*)&(m_timec4), (void*)&(m_timec2), (void*)&(v_timec3), (uint8_t)10 + (ds1302_DATE_OFFS / 2), { "Число" }};
const extern menuItem m_timec5; const extern menuItem m_timec3; const menuVar v_timec4 = {(uint8_t)12, (uint8_t)1, (void*)&DateTime.Month}; const menuItem m_timec4 = {(void*)&(m_timec5), (void*)&(m_timec3), (void*)&(v_timec4), (uint8_t)10 + (ds1302_MON_OFFS / 2), { "Месяц" }};
const extern menuItem Null_Menu; const extern menuItem m_timec4; const menuVar v_timec5 = {(uint8_t)50, (uint8_t)13, (void*)&DateTime.Year}; const menuItem m_timec5 = {(void*)&(Null_Menu), (void*)&(m_timec4), (void*)&(v_timec5), (uint8_t)10 + (ds1302_YEAR_OFFS / 2), { "Год" }};


const extern menuItem m_tst1; const extern menuItem Null_Menu; const menuVar v_tst0 = {(uint8_t)1, (uint8_t)0, (void*)&st_flag[1]}; const menuItem m_tst0 = {(void*)&(m_tst1), (void*)&(Null_Menu), (void*)&(v_tst0), (uint8_t)ST_BFL_LIGHT, { "Свет" }};
const extern menuItem m_tst2; const extern menuItem m_tst0; const menuVar v_tst1 = {(uint8_t)1, (uint8_t)0, (void*)&st_flag[1]}; const menuItem m_tst1 = {(void*)&(m_tst2), (void*)&(m_tst0), (void*)&(v_tst1), (uint8_t)ST_BFL_NAS, { "Насос(тн)" }};
const extern menuItem m_tst3; const extern menuItem m_tst1; const menuVar v_tst2 = {(uint8_t)1, (uint8_t)0, (void*)&st_flag[1]}; const menuItem m_tst2 = {(void*)&(m_tst3), (void*)&(m_tst1), (void*)&(v_tst2), (uint8_t)ST_BFL_VIT, { "Вытяжка" }};
const extern menuItem Null_Menu; const extern menuItem m_tst2; const menuVar v_tst3 = {(uint8_t)1, (uint8_t)0, (void*)&st_flag[1]}; const menuItem m_tst3 = {(void*)&(Null_Menu), (void*)&(m_tst2), (void*)&(v_tst3), (uint8_t)ST_BFL_PRIT, { "Приток" }};



menuItem* selectedMenuItem;
menuItem* topMenuItem;
menuItem* topLMenuItem;


void TopMenuChange(menuItem* chMenu)
{
menuItem* tempMenu;
 if ((void*)chMenu != (void*)&Null_Menu){
  topLMenuItem = chMenu;
  tempMenu = (menuItem*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&topLMenuItem->Child)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
  if ((void*)tempMenu != (void*)&Null_Menu)
   topMenuItem = tempMenu;
  else
   topMenuItem = (menuItem*)&Null_Menu;
  selectedMenuItem = topLMenuItem;
 }
}

void ChangeVars(uint8_t dir)
{
 menuVar* mvar = (menuVar*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&selectedMenuItem->Child)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
 uint8_t* pvar = (uint8_t*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&mvar->pVar)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
 uint8_t type = (uint8_t)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&selectedMenuItem->Type)); uint8_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %0, r0" "\n\t" : "=r" (__result) : "z" (__addr16) : "r0" ); __result; }));

 uint8_t lvar;

 if(type < 8){
  if(((*pvar) & (1<<type)))
   lvar = 1;
  else
   lvar = 0;

 }else
  lvar = *pvar;

 switch (dir){
  case 0:
   if(lvar > 0)
    lvar--;
   break;
  case 1:
   lvar++;
   break;
 }
 if(type < 8){
  if(lvar){
   {(*pvar) = (*pvar) | (1<<type);}
  }else{
   {(*pvar) = (*pvar) & ~(1<<type);}
  }
 }else if(type < 20){
   DS1302_WriteDateTimeReg((type - 10) * 2, lvar);
   DS1302_ReadDateTimeReg((type - 10) * 2);
 }else
  *pvar = lvar;
}

uint8_t dispMenu(void)
{
uint8_t i,sel;
menuItem* tempMenu;
menuItem* ptempMenu;



 LcdGotoXYFont(0,0);
 if((void*)selectedMenuItem == (void*)topLMenuItem)
  LcdChr(FONT_1X,'>',0);
 LcdChr(FONT_1X,'-',0);
 LcdFStr(FONT_1X,(unsigned char*)topLMenuItem->Text,0);
 LcdChr(FONT_1X,'-',0);
 LcdSingleBar( 0, 7, 8, 83, PIXEL_XOR );



 i=1;
 tempMenu = topMenuItem;
 ptempMenu = (menuItem*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&topMenuItem->Previous)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
 if(ptempMenu != (menuItem*)&Null_Menu){
  LcdGotoXYFont(13,1);
  LcdChr(FONT_1X,0x80,0);
 }
 LcdSingleBar( 78, 40, 24, 5, PIXEL_ON );

 do{
  if((void*)selectedMenuItem == (void*)tempMenu){
   LcdGotoXYFont(0,i);
   LcdChr(FONT_1X,'>',0);
   if(i==5)
    topMenuItem = (menuItem*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&topMenuItem->Next)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
   else if((i==1)&&(ptempMenu != (menuItem*)&Null_Menu))
    topMenuItem = ptempMenu;

  }
  else
   LcdGotoXYFont(1,i);

  LcdFStr(FONT_1X,(unsigned char*)tempMenu->Text,0);
  sel = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&tempMenu->Type)); uint8_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %0, r0" "\n\t" : "=r" (__result) : "z" (__addr16) : "r0" ); __result; }));
  if(sel != 255)
  {
   if(i<5){
    i++;
    LcdGotoXYFont(9,i);
    LcdChr(FONT_1X,':',0);
    menuVar* mvar = (menuVar*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&tempMenu->Child)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
    uint8_t* pvar = (uint8_t*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&mvar->pVar)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));

    if(sel < 8){
     uint8_t tmp = ((*pvar) & (1<<sel));
     tmp = !!tmp;

     LcdFStr(FONT_1X,(unsigned char*)str_vkl[tmp],0);
    }else{
     uint8_t vdw = (uint8_t)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&mvar->Vdw)); uint8_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %0, r0" "\n\t" : "=r" (__result) : "z" (__addr16) : "r0" ); __result; }));
     uint8_t vup = (uint8_t)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&mvar->Vup)); uint8_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %0, r0" "\n\t" : "=r" (__result) : "z" (__addr16) : "r0" ); __result; }));
     if((*pvar) > vup)
      (*pvar) = vup;
     else if((*pvar) < vdw)
      (*pvar) = vdw;
     if(sel < 20){
      num_to_lcd(FONT_1X,*pvar);
     }else{
      num_to_lcd(FONT_1X,*pvar);
      LcdChr(FONT_1X,(char)sel,0);
     }
    }
   }




  }

  tempMenu = (menuItem*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&tempMenu->Next)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
  i++;
  if((void*)tempMenu == (void*)&Null_Menu)
break;

 }
 while(i<6);
 LcdGotoXYFont(13,5);
 LcdChr(FONT_1X,0x81,0);
 return (1);
}

uint8_t keyMenu(uint8_t key) {
menuItem* tempMenu;
uint8_t sel=0;

LcdClear();
 sel = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&selectedMenuItem->Type)); uint8_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %0, r0" "\n\t" : "=r" (__result) : "z" (__addr16) : "r0" ); __result; }));
 switch (key) {
 case 0:
  return(0);
 case 4:
  if(sel != 255){
   tempMenu = (menuItem*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&selectedMenuItem->Previous)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
   if ((void*)tempMenu != (void*)&Null_Menu)
    selectedMenuItem = tempMenu;
   else
    selectedMenuItem = topLMenuItem;
  }
  break;
 case 8:
  if(sel != 255){
   tempMenu = (menuItem*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&selectedMenuItem->Next)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
   if ((void*)tempMenu != (void*)&Null_Menu)
    selectedMenuItem = tempMenu;
  }
  else{
   TopMenuChange(selectedMenuItem);
   selectedMenuItem = topMenuItem;
  }
  break;
 case 1:
  if(sel == 255)
   TopMenuChange((menuItem*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&selectedMenuItem->Next)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; })));
  else
   ChangeVars(1);
  break;
 case 2:
  if(sel == 255)
   TopMenuChange((menuItem*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&selectedMenuItem->Previous)); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; })));
  else
   ChangeVars(0);
 }

 dispMenu();

 return (1);
}

void initMenu(void) {
 TopMenuChange((menuItem*)&m_nas);
}
# 25 "main.c" 2



# 1 "net_fn.c" 1







# 1 "net_fn.h" 1
# 16 "net_fn.h"
const unsigned char net_bg_tr[3] __attribute__((__progmem__)) = {0xff,0xff,'S'};
# 28 "net_fn.h"
typedef struct
{
 uint8_t FromAdr;
 uint8_t ToAdr;
 uint8_t CheckSum;
 uint8_t Command;
 uint8_t Data[];
} net_tr_str_t;




volatile uint8_t rxUdt_buf[(4 + ((1 << (8-5))-1))];
volatile uint8_t rxUdt_ind;
# 9 "net_fn.c" 2

uint8_t hex_to_num(char sym)
{
 if(sym>='0' && sym<='9')
  return(sym - '0');
 else
  if(sym>='A' && sym<='F')
   return(sym - 'A' + 10);
 return(255);
}

uint8_t str_to_num(struct m2bytes nbuf)
{
uint8_t num1,num2;

 num1 = hex_to_num(nbuf.one);
 if(num1>=0 && num1<=9)
  num1 *= 10;
 else
  return(255);
 num2 = hex_to_num(nbuf.two);
 if(num2>=0 && num2<=9)
  return(num2 + num1);
 return(255);
}

void num_to_hex(struct m2bytes *nbuf)
{
uint8_t tmp,num;


 num = nbuf->one;
 tmp = num / 16;
 if(tmp > 9)
  nbuf->one = tmp+'A'-10;
 else
  nbuf->one = tmp+'0';
 num -= tmp*16;
 if(num > 9)
  nbuf->two = num+'A'-10;
 else
  nbuf->two = num+'0';
}

uint8_t rxUd_cs(uint8_t to)
{
uint8_t cs=0;
 while(to){
  to--;
  cs += rxUdt_buf[to];
 }
 return(cs);
}

uint8_t rxUdata(void)
{
 uint8_t tmp, tmp1,cs;
 struct m2bytes nbuf;
# 80 "net_fn.c"
 do{
  tmp1 = USART_GetChar();
  if(tmp1 >= 0x20)
  {
   rxUdt_buf[rxUdt_ind] = tmp1;
   rxUdt_ind++;
  }


  if(rxUdt_ind >= (4 + ((1 << (8-5))-1)))
  {
   rxUdt_ind = 0;
   return(2);
  }
  if(tmp1 == 0)
  {

   return(1);
  }
 }
 while(tmp1 != '\x0d');

 if(rxUdt_ind < 4)
 {
  rxUdt_ind = 0;
  return(3);
 }







 rxUdt_ind = 0;

 switch(rxUdt_buf[0]){
 case 'G':
  if(rxUdt_buf[5] == ('0'+1))
  {

   register char c;
   const char *progm_str = tschar;
   for(tmp=0;tmp<6;tmp++)
   {
    if(tmp<4)
     nbuf.one = sts_numb[tmp];
    if(tmp==4)
     nbuf.one = alarm_fl&7;
    if(tmp==5)
     nbuf.one = rc_cmd;

    num_to_str(&nbuf);
    c = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(progm_str+tmp)); uint8_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %0, r0" "\n\t" : "=r" (__result) : "z" (__addr16) : "r0" ); __result; }));
    USART_PutChar(c);
    cs = c;
    USART_PutChar('=');
    cs += '=';
    USART_PutChar(nbuf.one);
    cs += nbuf.one;
    USART_PutChar(nbuf.two);
    cs += nbuf.two;
    nbuf.one = cs;
    num_to_hex(&nbuf);
    USART_PutChar(nbuf.two);
    USART_PutChar('\x0d');

   }
   rc_cmd = 0;
  }
  break;
# 182 "net_fn.c"
 case 'S':
  if(rxUdt_buf[1] == ('0'+1))
  {
   tmp = hex_to_num(rxUdt_buf[3]);
   tmp1 = hex_to_num(rxUdt_buf[4]);
   if((tmp<255)&&(tmp1<255)){
    cs= rxUd_cs(5);
# 197 "net_fn.c"
    if((cs&0x0f) == hex_to_num(rxUdt_buf[5]))
    {
     rmt_fl = tmp;
     rc_timer = 20;
    }
   }
  }
  break;
 case 'C':
  tmp = 0;
  nbuf.one = rxUdt_buf[2];
  nbuf.two = rxUdt_buf[3];
  tmp = str_to_num(nbuf);
  if(tmp<255)
  {
   nbuf.one = rxUdt_buf[4];
   nbuf.two = rxUdt_buf[5];
   tmp1 = str_to_num(nbuf);
   if(tmp1<255)
   {
    cs= rxUd_cs(6);
    if((cs&0x0f) == hex_to_num(rxUdt_buf[6]))
    {
     DateTime.Hour = tmp;
     DateTime.Min = tmp1;
     DateTime.Sec = 0;
    }
   }
  }
  break;
 }
 return(0);
}
# 29 "main.c" 2



void TIMER1_OVF_vect (void) __attribute__ ((signal,used, externally_visible)) ; void TIMER1_OVF_vect (void)
{

 TCNT1 = 0x10000 - (F_CPU / 1024) + TCNT1;
 DateTime.Sec++;
 if(DateTime.Sec >59){
  DateTime.Min++;
  DateTime.Sec = 0;
  if(vent_cicle_min)
   vent_cicle_min--;

  {(time_fl) = (time_fl) | (1<<TM_FL_MIN);};
 }
 if(DateTime.Min >59){
  DateTime.Hour++;
  DateTime.Min = 0;
  {(time_fl) = (time_fl) | (1<<TM_FL_HR);};
 }
 if(DateTime.Hour >23)
  DateTime.Hour = 0;

 if(rc_timer)
  rc_timer--;

 if(wp_timer>1)
  wp_timer--;

 {(time_fl) = (time_fl) | (1<<TM_FL_SEC);};

}
# 72 "main.c"
void check_val(void)
{
int8_t tmp1;



 if(sts_numb[STS_IDX_TTN] >= trg_nasos[0])
  {(st_flag[0]) = (st_flag[0]) | (1<<ST_BFL_NAS);};
 if(sts_numb[STS_IDX_TTN] <= trg_nasos[1])
  {(st_flag[0]) = (st_flag[0]) & ~(1<<ST_BFL_NAS);};

 {(st_flag[0]) = (st_flag[0]) & ~(1<<ST_BFL_PRIT);};
 if(trg_prit[1]){
  tmp1 = sts_numb[STS_IDX_TTN] - dT_TH;
  if(tmp1>=trg_prit[1]){
   dT_TH = sts_numb[STS_IDX_TTN];
   if(trg_prit[0])
    vent_cicle_min = (uint8_t)(((uint16_t)trg_prit[0]*16)/100);
   else
    vent_cicle_min = 10;
  }
 }
 if(trg_prit[0]){
  if(!(DateTime.Min & 0b1111) && ((st_flag[0]) & (1<<ST_BFL_NAS)))
   vent_cicle_min = (uint8_t)(((uint16_t)trg_prit[0]*16)/100);
 }
 if((sts_numb[STS_IDX_FLAGS] & trg_prit[1]) || vent_cicle_min) {(st_flag[0]) = (st_flag[0]) | (1<<ST_BFL_PRIT);};

 if(sts_numb[STS_IDX_VLAG] >= trg_vitag[0])
  {(st_flag[0]) = (st_flag[0]) | (1<<ST_BFL_VIT);};
 if(sts_numb[STS_IDX_VLAG] <= trg_vitag[1])
  {(st_flag[0]) = (st_flag[0]) & ~(1<<ST_BFL_VIT);};

 if(vent_cicle_min && ((trg_vitag[2]) & (1<<2)))
  {(st_flag[0]) = (st_flag[0]) & ~(1<<ST_BFL_VIT);};

 if(sts_numb[STS_IDX_FLAGS] & trg_vitag[2])
  {(st_flag[0]) = (st_flag[0]) | (1<<ST_BFL_VIT);};
}

uint8_t check_beep_w(void)
{
 uint8_t ret=0;



 if(sts_numb[STS_IDX_TTN] >= trg_alrm[0])
 {
  ret |= 2;
 }

 if(sts_numb[0])
 {
  ret |= 1;
 }
 if(((rmt_fl) & (1<<RMC_BFL_ALARM)))
 {
  ret |= 8;
 }

 return(ret);
}

void beep_w(uint8_t decms)
{
uint8_t i;
# 149 "main.c"
 DDRB |= (1 << (4));
 while(decms>0) {
  for(i=0;i<32;i++) {
   PORTB ^= (1 << (4));
   _delayFourCycles( ( ( 1*(F_CPU/4000) )*300)/1000 );
  }
  decms--;
 }
 PORTB &= ~(1 << (4));

}

uint8_t key_scan(void)
{
 uint8_t tkey1,tkey2,tmo;

 tmo = 20;
 tkey1=0;
 tkey2=0;
 do{
  DDRC &= ~((1 << (0)) | (1 << (1)));
  DDRC |= (1 << (2))|(1 << (3));
  PORTC &= ~(1 << (3));
  PORTC |= (1 << (0)) | (1 << (1)) | (1 << (2));
  _delayFourCycles( ( ( 1*(F_CPU/4000) )*1)/1000 );
  if(!tkey1)
   tkey1 = (~PINC) & ((1 << (0)) | (1 << (1)));
  PORTC &= ~(1 << (2));
  PORTC |= (1 << (3));
  _delayFourCycles( ( ( 1*(F_CPU/4000) )*1)/1000 );
  if(!tkey2)
   tkey2 = (~PINC) & ((1 << (0)) | (1 << (1)));
  tmo--;
 }
 while(tmo);
 PORTC &= ~(1 << (3));
 return ((tkey1<<2)+tkey2);
}

uint8_t key_scan_w(uint8_t timeout)
{
 uint8_t tmp;

 while(timeout >0){
  delay_ms0(10);
  tmp = key_scan();
  if(tmp) break;
  timeout--;
 }
 return (tmp);
}


void prn_vkl(uint8_t fl)
{
 if(fl)
  LcdFStr(FONT_1X,(unsigned char*)str_vkl,0);
 else
  LcdFStr(FONT_1X,(unsigned char*)str_vkl[0],0);
}

void stf_to_str(uint8_t fl)
{
 LcdChr(FONT_1X,':',0);
 prn_vkl(((st_flag[1]) & (1<<fl)));
}

void sts_fl_to_str(uint8_t bfl)
{
 LcdChr(FONT_1X,':',0);
 if(((sts_numb[STS_IDX_FLAGS]) & (1<<bfl)))
  LcdFStr(FONT_1X,(unsigned char*)str_vis,0);
 else
  LcdFStr(FONT_1X,(unsigned char*)str_norm,0);
}

void alrm_str(uint8_t fl)
{

 LcdChr(FONT_1X,'(',0);
 if(fl&1) LcdChr(FONT_1X,'O',0);
 if(fl&2) LcdChr(FONT_1X,'T',0);
 if(fl&4) LcdChr(FONT_1X,'H',0);
 LcdChr(FONT_1X,')',0);
}

void switch_out(uint8_t dt)
{
uint8_t t;

 DDRB |= (1 << (0)) | (1 << (3));

 PORTB &= ~((1 << (0)) | (1 << (3)));
 for(t=8;t>0;t--)
 {
  if(dt&(1<<(t-1)))
   PORTB |= (1 << (3));
  else
   PORTB &= ~(1 << (3));
  PORTB |= (1 << (0));
  _delayFourCycles( ( ( 1*(F_CPU/4000) )*1)/1000 );
  PORTB &= ~(1 << (0));
  _delayFourCycles( ( ( 1*(F_CPU/4000) )*1)/1000 );
 }
 PORTB &= ~(1 << (3));
 PORTC &= ~(1 << (5));
 DDRC |= (1 << (5));
 _delayFourCycles( ( ( 1*(F_CPU/4000) )*1)/1000 );
 PORTC |= (1 << (5));
 _delayFourCycles( ( ( 1*(F_CPU/4000) )*1)/1000 );
 PORTC &= ~(1 << (5));
}

void prn_sel(uint8_t curstr, uint8_t *var,uint8_t min_var,uint8_t max_var)
{
 uint8_t lvar;

 lvar = *var;






 if(curstr == line_sel)
 {

  LcdChr(FONT_1X,'>',0);
  LcdChr(FONT_1X,' ',0);

  switch (p_key){
  case 1:
   if(lvar < max_var)
    lvar++;
   else
    lvar = max_var;
   break;
  case 2:
   if(lvar > min_var)
    lvar--;
   else
    lvar = min_var;
   break;
  case 4:
   if(line_sel_new > 0)
    line_sel_new--;
   break;
  case 8:
   line_sel_new++;
   break;
  }
 *var = lvar;
 }

}

void main_scr(void)
{

 LcdGotoXYFont(0,0);
 LcdFStr(FONT_1X,(unsigned char*)str_nasos,0);
 stf_to_str(2);


  LcdGotoXYFont(9,0);
  num_to_lcd(FONT_1X,DateTime.Hour);
  if(DateTime.Sec&1)
   LcdChr(FONT_1X,':',0);
  else
   LcdChr(FONT_1X,'.',0);
  num_to_lcd(FONT_1X,DateTime.Min);

 LcdGotoXYFont(0,1);
 LcdFStr(FONT_1X,(unsigned char*)str_co,0);
 sts_fl_to_str(STS_BFL_CO);
 LcdChr(FONT_1X,' ',0);
 LcdFStr(FONT_1X,(unsigned char*)str_ch,0);
 sts_fl_to_str(STS_BFL_CH);


 LcdGotoXYFont(0,2);
 LcdFStr(FONT_1X,(unsigned char*)str_temp,0);
 LcdChr(FONT_1X,':',0);
 num_to_lcd(FONT_1X,sts_numb[STS_IDX_TV]);
 LcdStr(FONT_1X,"c ",0);
 LcdFStr(FONT_1X,(unsigned char*)str_vlaz,0);
 LcdChr(FONT_1X,':',0);
 num_to_lcd(FONT_1X,sts_numb[STS_IDX_VLAG]);
 LcdChr(FONT_1X,'%',0);

 LcdGotoXYFont(0,3);

 LcdFStr(FONT_1X,(unsigned char*)str_tn,0);
 LcdChr(FONT_1X,':',0);
 num_to_lcd(FONT_1X,sts_numb[STS_IDX_TTN]);
 LcdStr(FONT_1X,"c ",0);
 LcdFStr(FONT_1X,(unsigned char*)str_vitag,0);
 stf_to_str(ST_BFL_VIT);

 LcdGotoXYFont(0,4);
 LcdFStr(FONT_1X,(unsigned char*)str_dtn,0);
 LcdChr(FONT_1X,':',0);
 num_to_lcd(FONT_1X,dT_TH);
 LcdChr(FONT_1X,'c',0);
 LcdFStr(FONT_1X,(unsigned char*)str_prit,0);
 stf_to_str(ST_BFL_PRIT);

 LcdGotoXYFont(0,5);
 if(((rmt_fl) & (1<<RMC_BFL_PRIT|RMC_BFL_VIT|RMC_BFL_NAS|RMC_BFL_LIGHT))){
  LcdChr(FONT_1X,0xf6,0);
  LcdChr(FONT_1X,' ',0);
 }




 if(alarm_fl)
 {
  if(DateTime.Sec&1){
   LcdChr(FONT_1X,0xed,0);
   alrm_str(alarm_fl&3);
  }
  else
   if(((rmt_fl) & (1<<RMC_BFL_ALARM))){
    LcdChr(FONT_1X,0xee,0);

   }
 }

}

void main1_scr(void)
{
unsigned char *lt;

 LcdGotoXYFont(1,0);
 lt = (unsigned char*)(__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&str_WeekDays[DateTime.WeekDay])); uint16_t __result; __asm__ __volatile__ ( "lpm" "\n\t" "mov %A0, r0" "\n\t" "adiw r30, 1" "\n\t" "lpm" "\n\t" "mov %B0, r0" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) : "r0" ); __result; }));
 LcdFStr(FONT_1X,lt,0);

 LcdGotoXYFont(2,3);

 num_to_lcd(FONT_2X,DateTime.Hour);
 if(DateTime.Sec&1)
  LcdChr(FONT_2X,':',0);
 else
  LcdChr(FONT_2X,'.',0);
 num_to_lcd(FONT_2X,DateTime.Min);

 LcdGotoXYFont(2,5);

 num_to_lcd(FONT_1X,DateTime.Day);
 LcdChr(FONT_1X,'/',0);
 num_to_lcd(FONT_1X,DateTime.Month);
 LcdChr(FONT_1X,'/',0);
 num_to_lcd(FONT_1X,20);
 num_to_lcd(FONT_1X,DateTime.Year);
}


void check_CO(void)
{

 if(DateTime.Sec<=30){
  {(st_flag[0]) = (st_flag[0]) | (1<<ST_BFL_PCO);};
  if(DateTime.Sec>28){
   DDRD &= ~(1 << (6));
   if(((PIND) & (1<<6))){
    {(sts_numb[STS_IDX_FLAGS]) = (sts_numb[STS_IDX_FLAGS]) & ~(1<<STS_BFL_CO);};
   }else{
    {(sts_numb[STS_IDX_FLAGS]) = (sts_numb[STS_IDX_FLAGS]) | (1<<STS_BFL_CO);};
   }
  }
 }
 else
  {(st_flag[0]) = (st_flag[0]) & ~(1<<ST_BFL_PCO);};;

}

void check_CH(void)
{

 if(DateTime.Sec<=30){
  {(st_flag[0]) = (st_flag[0]) | (1<<ST_BFL_PCH);};
  if(DateTime.Sec>28){
   DDRD &= ~(1 << (7));
   if(((PIND) & (1<<7))){
    {(sts_numb[STS_IDX_FLAGS]) = (sts_numb[STS_IDX_FLAGS]) & ~(1<<STS_BFL_CH);};
   }else{
    {(sts_numb[STS_IDX_FLAGS]) = (sts_numb[STS_IDX_FLAGS]) | (1<<STS_BFL_CH);};
   }
  }
 }
 else
  {(st_flag[0]) = (st_flag[0]) & ~(1<<ST_BFL_PCH);};

}

void myread_eeprom(void)
{
 eeprom_read_block((uint8_t *)&trg_nasos[0], &trg_nasos_ee[0], sizeof(trg_nasos));
 eeprom_read_block((uint8_t *)&trg_vitag[0], &trg_vitag_ee[0], sizeof(trg_vitag));
 eeprom_read_block((uint8_t *)&trg_prit[0], &trg_prit_ee[0], sizeof(trg_prit));
 eeprom_read_block((uint8_t *)&trg_alrm[0], &trg_alrm_ee[0], sizeof(trg_alrm));
}

void myupdate_eeprom(void)
{
 eeprom_update_block((uint8_t *)&trg_nasos[0], &trg_nasos_ee[0], sizeof(trg_nasos));
 eeprom_update_block((uint8_t *)&trg_vitag[0], &trg_vitag_ee[0], sizeof(trg_vitag));
 eeprom_update_block((uint8_t *)&trg_prit[0], &trg_prit_ee[0], sizeof(trg_prit));
 eeprom_update_block((uint8_t *)&trg_alrm[0], &trg_alrm_ee[0], sizeof(trg_alrm));
}


void do_on_delay(void)
{



}

void LCD_light(uint8_t on)
{

 if(on){
  {(st_flag[0]) = (st_flag[0]) | (1<<ST_BFL_BKL);};
 }
 else{
  {(st_flag[0]) = (st_flag[0]) & ~(1<<ST_BFL_BKL);};
 }
}

void main (void)
{
 int8_t tmp;
 uint8_t t1, cikl_count;


 DDRB = (1 << (0)) | (1 << (1)) | (1 << (2)) |
   (1 << (3)) | (1 << (4)) | (1 << (5));
 DDRC = (1 << (2)) | (1 << (4));
 DDRD = (1 << (1)) | (1 << (2));
 switch_out(0);
 LcdInit();
 LcdContrast(70);
 LcdClear();
 LcdGotoXYFont(0,0);
 LcdFStr(FONT_1X,(unsigned char*)str_init,0);
 LcdGotoXYFont(1,4);
 LcdFStr(FONT_1X,(unsigned char*)str_init1,0);
 LcdUpdate();
 for(t1=0;t1<=1;t1++){
  LcdGotoXYFont(t1,2);
  LcdChr(FONT_1X, 0x7F,0);
  delay_ms0(20);
  tmp = temp_18b20();
  LcdUpdate();
 }

 USART_Init();
 DS1302_Init(0, ds1302_CHRG_FL_ON | ds1302_CHRG_FL_2Diod | ds1302_CHRG_FL_Res8k);

 alarm_fl = 0;
 rmt_fl = 0;
 rc_timer = 0;
 rc_cmd = 0;
 wp_timer = 0;
 rxUdt_ind = 0;
 st_flag[0] = 0;
 p_key = 0;
scrn_sel = 1;
 time_fl = (1 << (TM_FL_SEC)) | (1 << (TM_FL_MIN)) | (1 << (TM_FL_HR));
 scrn_sel_new = scrn_sel;
 line_sel = 0;
 line_sel_new = line_sel;
 vent_cicle_min = 0;
 cikl_count = 0;

 myread_eeprom();

 TCCR1A = 0;
 TCCR1B = 5;
 TCNT1 = 0x10000 - (F_CPU / 1024);
 TIFR1 = 0;
 TIMSK1 = 1<<TOIE1;

    TCCR0A = 0;
    TCCR0B = 0;
    TIMSK0 = 0;


 __asm__ __volatile__ ("sei" ::: "memory");
 beep_w(50);
 if(tmp > 0)
  dT_TH = tmp;
 else
  dT_TH = 0;

 sts_numb[STS_IDX_TTN] = dT_TH;



 LcdClear();
 LcdUpdate();


 DS1302_ReadDateTime();

 initMenu();

 while(1){
  if(((time_fl) & (1<<TM_FL_SEC)))
  {
   {(time_fl) = (time_fl) & ~(1<<TM_FL_SEC);};
   if(!p_key)
    p_key=255;
   if(DateTime.Sec&1)
   {
    if(scrn_sel == 1)
    {

     check_CO();
     check_CH();

     __asm__ __volatile__ ("cli" ::: "memory");
     tmp = temp_18b20();
     __asm__ __volatile__ ("sei" ::: "memory");
     if(tmp > 0)
      sts_numb[STS_IDX_TTN] = tmp;

     __asm__ __volatile__ ("cli" ::: "memory");
     if(dht11_read() == 0){
      sts_numb[STS_IDX_VLAG] = humidity;
      sts_numb[STS_IDX_TV] = temperature;
     }
     __asm__ __volatile__ ("sei" ::: "memory");

     check_val();

     if(rmt_fl & ((1 << (RMC_BFL_PRIT))|(1 << (RMC_BFL_VIT))|(1 << (RMC_BFL_NAS))|(1 << (RMC_BFL_LIGHT))))
      st_flag[1] = (st_flag[0]&((1 << (ST_BFL_PRIT))|(1 << (ST_BFL_VIT))|(1 << (ST_BFL_NAS))|(1 << (ST_BFL_LIGHT)))) |
       (rmt_fl&((1 << (RMC_BFL_PRIT))|(1 << (RMC_BFL_VIT))|(1 << (RMC_BFL_NAS))|(1 << (RMC_BFL_LIGHT))));
     else
      st_flag[1] = st_flag[0];


     alarm_fl = check_beep_w();
     if(alarm_fl){
      if(!((trg_alrm[1]) & (1<<2)))
       alarm_fl1 = alarm_fl;
     }else
      alarm_fl1 = 0;
# 615 "main.c"
    }
    else
     if(cikl_count>15)
     {
      if(scrn_sel>9)
       scrn_sel_new = 1;

     }


   }
   else
   {
    if(alarm_fl^alarm_fl1)
     beep_w(50);
   }

   if(cikl_count<200)
    cikl_count++;
   else{
    cikl_count = 0;
    DS1302_ReadDateTime();
   }

   if(!rc_timer)
   {
    rmt_fl = 0;
   }

   if(cikl_count==15)
    LCD_light(0);

   if(alarm_fl){
    {(st_flag[0]) = (st_flag[0]) ^ (1<<ST_BFL_LED);};
    if(scrn_sel != 1)
     scrn_sel_new = 1;
   }
   else{
    {(st_flag[0]) = (st_flag[0]) & ~(1<<ST_BFL_LED);};
   }

   switch_out(st_flag[1]);
# 666 "main.c"
   t1 = USART_GetRxCount();
   if(t1)
    rxUdata();
  }



  if(p_key)
  {
# 683 "main.c"
   if(scrn_sel<10){
    if(p_key == 4)
    {
     if(scrn_sel<2)
      scrn_sel_new = scrn_sel+1;
     beep_w(20);
    }
    else if(p_key == 8)
    {
     if(scrn_sel>1)
      scrn_sel_new = scrn_sel-1;
     beep_w(20);
    }
    else if(p_key == 6)
    {
     scrn_sel_new = 11;
     beep_w(20);
    }





    else if(p_key == 9)
    {
     scrn_sel_new = 19;
     beep_w(20);
    }
   }
   LcdClear();
   switch (scrn_sel){
   case 0:
   case 1:
    main_scr();
    break;
   case 2:
    main1_scr();
    break;
   case 11:
   case 19:
    keyMenu(p_key);
    break;
   }



   LcdUpdate();

   if(scrn_sel_new != scrn_sel)
   {
    if(scrn_sel_new == 1 && scrn_sel > 9)
     myupdate_eeprom();
    scrn_sel = scrn_sel_new;
    line_sel_new = 0;
    line_sel = 0;


   }
   else
    if(line_sel_new != line_sel)
    {
     line_sel = line_sel_new;

    }

   p_key = 0;
  }


   {
    p_key = key_scan_w(1);
    if(p_key){
     LCD_light(1);
     alarm_fl1 =alarm_fl;
     if(p_key >= 4)
      beep_w(10);
     else
      beep_w(5);
     cikl_count = 0;
     delay_ms0(200);


    }
   }



 }

}
