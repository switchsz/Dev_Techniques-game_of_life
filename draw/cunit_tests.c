#include<stdio.h>
#include"ansi.h"
#include"sdl.h"

#include<CUnit/Basic.h>
#include<CUnit/Console.h>
#include<CUnit/CUnit.h>



void get_console_size_test(void) {
    int width;
    int height;
    get_console_size(&width,&height);
    CU_ASSERT_NOT_EQUAL(width, 0);
    CU_ASSERT_NOT_EQUAL(height, 0);
    CU_ASSERT_NOT_EQUAL(width, -1);
    CU_ASSERT_NOT_EQUAL(height, -1);
    
}


int main () {


    if(CUE_SUCCESS != CU_initialize_registry())
        return CU_get_error();

    CU_pSuite pS1 = CU_add_suite("Testing SDL", NULL, NULL);
    

    CU_pSuite pS2 = CU_add_suite("Testing ANSI", NULL, NULL);
    CU_ADD_TEST(pS2, get_console_size_test);
    

    CU_basic_set_mode(CU_BRM_VERBOSE);
    CU_basic_run_tests();


    return CU_get_number_of_failures();
}
