#include"cell.h"
#define MAX_SIZE 100

struct CellList {

    int nbRows;
    int nbCols;
    Cell board[MAX_SIZE][MAX_SIZE];

} typedef CellList;

CellList* newCellList(int nbRows, int nbCols);
CellList* updateCellList(CellList* pCellList);
CellList* generateCellList(int nbRows, int nbCols);
void printCellList (CellList *pCellList);
int nNeighbours(CellList *pCellList, Cell *pCell);
int nNeighboursCircular(CellList *pCellList, Cell *pCell);
