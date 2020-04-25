#include<stdlib.h>
#include<stdio.h>
#include"celllist.h"


CellList* newCellList(int nbRows, int nbCols) {
    CellList* pCellList = (CellList*) malloc(sizeof(CellList));
    pCellList->nbRows = nbRows;
    pCellList->nbCols = nbCols;

    for (int i = 0; i < nbRows; i++) {
        for ( int j = 0; j < nbCols; j++) {
            pCellList->board[i][j].life = 0;
        }
    }
    return pCellList;

}