#include "celllist.h"

CellList* newCellList(int nbRows, int nbCols) {
    CellList* pCellList = (CellList*) malloc(sizeof(CellList));
    pCellList->nbRows = nbRows;
    pCellList->nbCols = nbCols;

    for (int i = 0; i < nbRows; i++) {
        for ( int j = 0; j < nbCols; j++) {
            pCellList->board[i][j] = *(newCell(j,i));
        }
    }
    return pCellList;

}

int nNeighboursClipped(CellList *pCellList, Cell *pCell) {
    int n = 0;
    if ( pCellList != NULL && pCell != NULL ) {
        for ( int i = pCell->y-1 ; i <= pCell->y+1 ; i++ ) {
            if (i < 0 || i > pCellList->nbRows-1) {
                continue; 
            }
            for ( int j = pCell->x-1 ; j <= pCell->x+1 ; j++ ) {
                if( j < 0 || j > pCellList->nbCols-1) {
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

int nNeighboursCircular(CellList *pCellList, Cell *pCell) {
    int tempi, tempj;
    int n = 0;
    if ( pCellList != NULL && pCell != NULL ) {
        for ( int i = pCell->y-1 ; i <= pCell->y+1 ; i++ ) {
            tempi=i;
            if (i < 0 ) {
                i = pCellList->nbRows-1;
            }
            else if ( i > pCellList->nbRows-1) {
                i = 0;
            }
            for ( int j = pCell->x-1 ; j <= pCell->x+1 ; j++ ) {
                tempj=j;
                if( j < 0 ) {
                    j = pCellList->nbCols-1;
                }
                else if(  j > pCellList->nbCols-1) {
                    j = 0;
                }
                if ( pCellList->board[i][j].life == 1 ) {
                    n++;
                }
                j = tempj;
            }
            i = tempi;
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
                if(strcmp(NEIGHBOURHOOD,"Clipped")==0)
                nNeighb = nNeighboursClipped(pCellList,&(pCellList->board[i][j]));
                else //default Circular
                nNeighb = nNeighboursCircular(pCellList,&(pCellList->board[i][j]));
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


int nAlives(CellList *pCellList) {
    int nAlives=0;
    for ( int i = 0 ; i < pCellList->nbRows; i++) {
        for (int j = 0; j < pCellList->nbCols; j++) {
            if(pCellList->board[i][j].life==1) 
                nAlives++;
        }
    }

    return nAlives;
}

int sameCellList(CellList *pCellList1, CellList *pCellList2) {
    if ( pCellList1 == NULL || pCellList2 == NULL) {
        return 0;
    }
    if ((pCellList1->nbCols != pCellList2->nbCols) || (pCellList1->nbRows != pCellList2->nbRows)) {
        return 0;
    }
    for ( int i = 0; i < pCellList1->nbRows; i++) {
        for ( int j = 0; j < pCellList1->nbCols; j++) {
            if(pCellList1->board[i][j].life != pCellList2->board[i][j].life)
                return 0;
        }
    }

    return 1;
}

CellList* copyCellList(CellList *pCellList) {
    CellList* pCopy = newCellList(pCellList->nbRows, pCellList -> nbCols);
    for (int i = 0; i < pCellList->nbRows; i++) {
        for ( int j = 0; j < pCellList->nbCols; j++) {
            pCopy->board[i][j].life = pCellList->board[i][j].life;
        }
    }

    return pCopy;
}

void emptyCellList(CellList* pCellList) {

    for ( int i = 0 ; i < pCellList->nbRows; i++) {
        for ( int j = 0 ; j < pCellList->nbCols; j++) {
            pCellList->board[i][j].life = 0;
        }
    }

}