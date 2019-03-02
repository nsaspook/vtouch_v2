#include "test_defines.h"

extern test_suite_t serialization_suite;
extern test_suite_t data_suite;

void run_session(const test_session_t *tss);
void run_suite(const test_suite_t *ts);
void run_test(const test_t *t);


int main(int argc, char **argv)
{
    run_suite(&serialization_suite);
    run_suite(&data_suite);
    return 0;
}







void run_test(const test_t *t)
{
    if(!t || !t->test_fun) return;

    printf("\n%s:\n",t->name);
    printf("--------------------------------------------------------------\n");
    t->test_fun();
    printf("test OK\n");    
}

void run_suite(const test_suite_t *ts)
{
    const test_t *t;
    if(!ts) return;
    printf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
    printf("%s:\n",ts->name);
    t = &ts->tests[0];
    while(t && t->test_fun)
    {
        run_test(t++);
    }
    printf("test suite OK\n");    
    printf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
}

void run_session(const test_session_t *tss)
{
    const test_suite_t *t;
    if(!tss) return;
    printf("============================================================\n");
    printf("============================================================\n");
    printf("\n%s:\n",tss->name);
    t = &tss->suites[0];
    while(t && t->tests)
    {
        run_suite(t++);
    }
    printf("test session OK\n");    
    printf("============================================================\n");
    printf("============================================================\n");
}

