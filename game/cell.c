#include "cell.h"



void bearCell(Cell *pCell) {
    pCell->life = 1;
}



Cell *newCell(int x, int y) {
    Cell *pCell = (Cell *) malloc(sizeof(Cell));
    
    pCell->x = x;
    pCell->y = y;
    pCell->life = 0;

    return pCell;
}

void killCell(Cell *pCell) {
    if ( pCell != NULL ) {
        pCell->life = 0;
    } 
}