#ifndef __CELLLIST_H__
#define __CELLLIST_H__

#include "cell.h"

#define MAX_SIZE 100

struct CellList {

    int nbRows;
    int nbCols;
    Cell board[MAX_SIZE][MAX_SIZE];

} typedef CellList;

CellList* newCellList(int nbRows, int nbCols);
CellList* updateCellList(CellList* pCellList);
CellList* generateCellList(int nbRows, int nbCols);
int nNeighbours(CellList *pCellList, Cell *pCell);
int nNeighboursCircular(CellList *pCellList, Cell *pCell);
int nAlives(CellList *pCellList);
int sameCellList(CellList *pCellList1, CellList *pCellList2);
char* CompressCellList(CellList *pCellList);

CellList* copyCellList(CellList *pCellList);


#endif