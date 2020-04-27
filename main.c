#include<stdlib.h>
#include<stdio.h>
#include"celllist.h"

int main () {

   // CellList *pCellList = newCellList(10,10);

    // //Update funtion
    // TODO Draw 
    // TODO updateLoop

    CellList *pCellList = generateCellList(10,10);
    printCellList(pCellList);


    return 0;
}