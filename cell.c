#include"cell.h"
#include <stdlib.h>
#include <stdio.h>

void bearCell(Cell *pCell) {
    pCell->life = 1;
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