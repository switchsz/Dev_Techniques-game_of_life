#include "cell.h"


Cell *bearCell(int x, int y) {
    Cell *new = (Cell *) malloc(sizeof(Cell));

    new->x = x;
    new->y = y;
    new->life = 1;

    return new;
}


Cell *killCell(Cell *cell) {
    if ( cell != NULL ){
        cell->life = 0;
    } 
    else { return NULL; }
}