#include<stdio.h>
#include"celllist.h"

#include<CUnit/Basic.h>
#include<CUnit/Console.h>
#include<CUnit/CUnit.h>


void new_cell_test(void) {
    int x = 1;
    int y = 1;
    Cell *pCell = newCell(x,y);
    CU_ASSERT_PTR_NOT_NULL(pCell);
    CU_ASSERT_EQUAL(pCell->x, x);
    CU_ASSERT_EQUAL(pCell->y, y);
    CU_ASSERT_EQUAL(pCell->life, 0);
    
}

void bear_cell_test(void) {
    int x = 1;
    int y = 1;
    Cell *pCell = newCell(x,y);
    bearCell(pCell);
    CU_ASSERT_EQUAL(pCell->life, 1);
    
}

void kill_cell_test(void) {
    int x = 1;
    int y = 1;
    Cell *pCell = newCell(x,y);
    bearCell(pCell);
    killCell(pCell);
    CU_ASSERT_EQUAL(pCell->life, 0);
    
}


void new_celllist_test(void) {
    int nbRows = 5;
    int nbCols = 5;
    CellList* pCellList = newCellList (nbRows, nbCols);
    CU_ASSERT_EQUAL(pCellList->nbCols, nbCols);
    CU_ASSERT_EQUAL(pCellList->nbRows, nbRows);
    CU_ASSERT_PTR_NOT_NULL(pCellList);
}


void update_celllist_test(void) {
    int nbRows = 5;
    int nbCols = 5;
    CellList* pCellList = newCellList (nbRows, nbCols);
    pCellList = updateCellList(pCellList);
    CU_ASSERT_PTR_NOT_NULL(pCellList);

}


void generate_celllist_test(void) {
    int nbRows = 5;
    int nbCols = 5;
    CellList* pCellList = generateCellList (nbRows, nbCols);
    CU_ASSERT_NOT_EQUAL(nAlives(pCellList), 0);
    CU_ASSERT_NOT_EQUAL(nAlives(pCellList), nbCols*nbRows);
}

// void number_of_alives_test(void) {
//     int nbRows = 5;
//     int nbCols = 5;
//     CellList* pCellList = generateCellList (nbRows, nbCols);
//     CU_ASSERT_NOT_EQUAL(nAlives(pCellList), )

// }

void same_celllist_test(void) {
    CellList* pCellList = generateCellList(5, 5);
    CellList* pCellList1 = generateCellList(8, 5);

    CU_ASSERT_EQUAL(sameCellList(pCellList, NULL), 0);
    CU_ASSERT_EQUAL(sameCellList(pCellList, pCellList1), 0);

}

void copy_celllist_test(void) {
    int nbRows = 5;
    int nbCols = 5;
    CellList* pCellList = generateCellList(nbRows, nbCols);
    CellList* pCopy = copyCellList(pCellList);
    CU_ASSERT_EQUAL(nAlives(pCellList), nAlives(pCopy));

}


void empty_celllist_test(void) {
    int nbRows = 5;
    int nbCols = 5;
    CellList* pCellList = generateCellList(nbRows, nbCols);
    emptyCellList(pCellList);
    CU_ASSERT_EQUAL(nAlives(pCellList), 0);
}

void neighbours_test(void) {
    int nbRows = 5;
    int nbCols = 5;
    CellList* pCellList = newCellList(nbRows, nbCols);
    // checking all neigbours
    pCellList->board[2][2].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 0);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 0);

    pCellList->board[2][3].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 1);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 1);

    pCellList->board[2][1].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 2);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 2);

    pCellList->board[1][1].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 3);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 3);

    pCellList->board[1][2].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 4);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 4);

    pCellList->board[1][3].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 5);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 5);

    pCellList->board[3][1].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 6);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 6);

    pCellList->board[3][2].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 7);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 7);

    pCellList->board[3][3].life = 1;
    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList, &pCellList->board[2][2]), 8);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList, &pCellList->board[2][2]), 8);


    pCellList->board[0][0].life = 1;
    pCellList->board[0][1].life = 1;
    pCellList->board[1][0].life = 1;
    pCellList->board[1][1].life = 1;
    pCellList->board[4][4].life = 1;
    pCellList->board[4][0].life = 1;
    pCellList->board[4][1].life = 1;
    pCellList->board[0][4].life = 1;
    pCellList->board[1][4].life = 1;

    CU_ASSERT_EQUAL(nNeighboursClipped(pCellList,&pCellList->board[0][0]),3);
    CU_ASSERT_EQUAL(nNeighboursCircular(pCellList,&pCellList->board[0][0]),8);


}

int main () {

if(CUE_SUCCESS != CU_initialize_registry())
    return CU_get_error();

CU_pSuite pS1 = CU_add_suite("Testing Cells", NULL, NULL);
CU_ADD_TEST(pS1, bear_cell_test);
CU_ADD_TEST(pS1, kill_cell_test);
CU_ADD_TEST(pS1, new_cell_test);

CU_pSuite pS2 = CU_add_suite("Testing CellLists", NULL, NULL);
CU_ADD_TEST(pS2, copy_celllist_test);
CU_ADD_TEST(pS2, empty_celllist_test);
CU_ADD_TEST(pS2, generate_celllist_test);
CU_ADD_TEST(pS2, neighbours_test);
CU_ADD_TEST(pS2, new_celllist_test);
CU_ADD_TEST(pS2, same_celllist_test);
CU_ADD_TEST(pS2, update_celllist_test);

CU_basic_set_mode(CU_BRM_VERBOSE);
CU_basic_run_tests();


    return CU_get_number_of_failures();
}
