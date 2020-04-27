#include <stdlib.h>
#include <stdio.h>

struct Cell {
    int life;
    int x;
    int y;
    // struct Cell *upLeft;
    // struct Cell *up;
    // struct Cell *upRight;
    // struct Cell *left;
    // struct Cell *right;
    // struct Cell *downLeft;
    // struct Cell *down;
    // struct Cell *downRight;

} typedef Cell;




void bearCell(Cell *pCell);
void killCell(Cell *pCell);
Cell *newCell();





