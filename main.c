#include<stdlib.h>
#include<stdio.h>
#include"celllist.h"
#include<unistd.h>

int main () {

   // CellList *pCellList = newCellList(10,10);

    // //Update funtion
    // TODO Draw 
    // TODO updateLoop

    CellList *pCellList = generateCellList(10,10);
    printCellList(pCellList);

printf("\n\n\n\n");
    for ( int i = 0; i < 30 ; i ++ ) {

        pCellList = updateCellList(pCellList);
        printCellList(pCellList);
        printf("\n\n\n\n\n\n");
        //sleep(1);
    }


    return 0;
}