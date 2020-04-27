#include<stdlib.h>
#include<stdio.h>
#include<time.h>
#include"celllist.h"


CellList* newCellList(int nbRows, int nbCols) {
    CellList* pCellList = (CellList*) malloc(sizeof(CellList));
    pCellList->nbRows = nbRows;
    pCellList->nbCols = nbCols;

    for (int i = 0; i < nbRows; i++) {
        for ( int j = 0; j < nbCols; j++) {
            pCellList->board[i][j] = *(newCell(j,i));
            // pCellList->board[i][j].y = i;
            // pCellList->board[i][j].x = j;
            // pCellList->board[i][j].life = 0;
        }
    }
    return pCellList;

}



int nNeighbours(CellList *pCellList, Cell *pCell) {
    int n = 0;
   //  printf("for cell with x %d and y %d which is %d \n", pCell->x, pCell->y, pCell->life);
    if ( pCellList != NULL && pCell != NULL ) {
        for ( int i = pCell->y-1 ; i <= pCell->y+1 ; i++ ) {
           //  printf(" i now is %d  ", i);
            if (i < 0 || i > pCellList->nbRows-1) {
                continue; 
            }
            for ( int j = pCell->x-1 ; j <= pCell->x+1 ; j++ ) {
           //  printf(" j now is %d  \n", j);

                if( j < 0 || j > pCellList->nbCols) {
                 continue;
                }
                if ( pCellList->board[i][j].life == 1 ) {
                    n++;
                }
            }
        }

        if ( pCell->life == 1) 
        n--;
        return n;
    } 
    else {
        return -1;
    }
}

CellList* updateCellList(CellList* pCellList) {
    if ( pCellList != NULL ) {
        int nNeighb = 0;
        CellList *pNew = newCellList(pCellList->nbRows,pCellList->nbCols);
        for ( int i = 0 ; i < pNew->nbRows ; i++ ) {
            for ( int j = 0 ; j < pNew->nbCols ; j++ ) {

                nNeighb = nNeighbours(pCellList,&(pCellList->board[i][j]));
                // printf(" %d have %d\n", i*10+j, nNeighb);
                if (  nNeighb == 3 ) {
                    pNew->board[i][j].life = 1;
                }
                else if (nNeighb == 2) {
                    if (pCellList->board[i][j].life==1) {
                        pNew->board[i][j].life = 1;
                    }
                }

            }
        }

    return pNew;

    }
    else {
        return NULL;
    }
}


CellList* generateCellList(int nbRows, int nbCols) {
    srand(time(NULL));
    CellList* pCellList = newCellList(nbRows, nbCols);
    for (int i = 0 ; i < nbRows ; i++) {
        for ( int j = 0; j < nbCols ; j++) {
            pCellList->board[i][j].life = rand() % 2; // 1 or 0
        }
    }

    return pCellList;

}

void printCellList (CellList *pCellList) {

    for (int i = 0 ; i < pCellList->nbRows ; i++) {
        for ( int j = 0 ; j < pCellList->nbCols ; j++) {
            if (pCellList->board[i][j].life == 1) 
                printf("* ");
            else
                printf("  ");
        }
        printf("\n");
    }
}


