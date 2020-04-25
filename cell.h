#include <stdlib.h>
#include <stdio.h>

struct Cell {
    int life;
    int x;
    int y;
    Cell *upLeft;
    Cell *up;
    Cell *upRight;
    Cell *left;
    Cell *right;
    Cell *downLeft;
    Cell *down;
    Cell *downRight;

} typedef Cell;



Cell *newCell(int x, int y);