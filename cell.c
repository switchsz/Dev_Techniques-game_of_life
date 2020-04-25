#include"cell.h"
#include <stdlib.h>
#include <stdio.h>

Cell *bearCell(int x, int y) {
    Cell *pCell = (Cell *) malloc(sizeof(Cell));

    pCell->x = x;
    pCell->y = y;
    pCell->life = 1;

    return pCell;
}

Cell *newCell() {

    Cell *pCell = (Cell *) malloc(sizeof(Cell));
    pCell->life=0;
    return pCell;
}


void killCell(Cell *pCell) {

    if ( pCell != NULL ) {
        pCell->life = 0;
    } 
    
}