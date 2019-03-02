#ifndef TEST_DEFINES__H
#define TEST_DEFINES__H

#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <wchar.h>

#define TEST_ASSERT(expr, msg) {printf("%s%s\n", msg,(expr)?":\t\t\tOK...":":\t\t\tNOK!!!"); assert(expr);}

#define TEST_ASSERT_STRINGS_EQUAL(str1,str2,msg) TEST_ASSERT((0==strcmp(str1,str2)?1:0),msg)
#define TEST_ASSERT_STRINGS_NOT_EQUAL(str1,str2,msg) TEST_ASSERT((0!=strcmp(str1,str2)?1:0),msg)

#define TEST_ASSERT_WSTRINGS_EQUAL(str1,str2,msg) TEST_ASSERT((0==wcscmp(str1,str2)?1:0),msg)
#define TEST_ASSERT_WSTRINGS_NOT_EQUAL(str1,str2,msg) TEST_ASSERT((0!=wcscmp(str1,str2)?1:0),msg)

typedef struct _test_s
{
    _test_s(const char *n, void(*f)(void)):name(n),test_fun(f){};
    const char *name;
    void (*test_fun)(void);
}test_t;

#define EMPTY_TEST {NULL, NULL}
#define EOF_TEST_ARRAY EMPTY_TEST

typedef struct _test_suite_s
{
    _test_suite_s(const char *n, test_t *t):name(n),tests(t){};
    const char    *name;
    test_t        *tests;
}test_suite_t;

#define EOF_TEST_SUITE_ARRAY EOF_TEST_ARRAY

typedef struct
{
    const char      *name;
    test_suite_t    suites[];   
}test_session_t;

#endif /*TEST_DEFINES__H*/
