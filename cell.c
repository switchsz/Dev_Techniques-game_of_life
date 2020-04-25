#include "cell.h"


Cell *newCell(int x, int y) {
    Cell *new = (Cell *) malloc(sizeof(Cell));

    new->x = x;
    new->y = y;
    
    return new;
}