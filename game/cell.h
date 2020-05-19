#ifndef __CELL_H__
#define __CELL_H__

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include<string.h>
#include <unistd.h>


struct Cell {
    int life;
    int x;
    int y;
} typedef Cell;



void bearCell(Cell *pCell);
void killCell(Cell *pCell);
Cell *newCell();



#endif