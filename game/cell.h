#ifndef __CELL_H__
#define __CELL_H__

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include<string.h>
#include <unistd.h>

/// A structure to represent one element of a CellList.
struct Cell {
    /// vertical coordinate of cell in a table.
    int x; 
    /// horizontal coordinate of cell in a table.
    int y; 
    /// identifies the life state of a cell
    int life; 
} typedef Cell;


/// Makes a cell alive
/// @param pCell adress of a cell to be born.
void bearCell(Cell *pCell);


/// Makes a cell dead
/// @param pCell adress of a cell to be killed.
void killCell(Cell *pCell);


/// Creates an object of struct Cell by allocating space in memory for it.
/// @param x vertical coordinate of a Cell.
/// @param y horizontal coordinate of a Cell.
/// @returns Pointer which represents an address, where new cell is located.
/// @note When Cell is created, it is dead by default.
Cell *newCell(int x, int y);

#endif