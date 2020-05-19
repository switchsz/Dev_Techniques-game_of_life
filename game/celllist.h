#ifndef __CELLLIST_H__
#define __CELLLIST_H__
#include "cell.h"
/// Macro which is used when allocating an array.
#define MAX_SIZE 5000 


/// A structure to represent the whole CellList. 
struct CellList {
    /// Number of rows of a table.
    int nbRows;
    /// Number of columns in a table.
    int nbCols;
    /// Array which stores all the cells of board, where game will take place.
    Cell board[MAX_SIZE][MAX_SIZE];

} typedef CellList;


/// Creates a new celllist by allocating a memory for a whole celllist.
/// Recursively go through board, and allocates a memory for each cell.
/// @param nbRows number of rows to be created
/// @param nbCols number of columns to be created
/// @returns Pointer which represents an address, where new celllist is located.
CellList* newCellList(int nbRows, int nbCols);


/// Counts number of neighbours for a given cell in a given celllist in *Clipped* mode.
/// @param pCellList pointer to a CellList where the neighbours should be counted
/// @param pCell pointer to a Cell for which the neighbours should be counted
/// ### Code
/// ~~~~~~~~~~.c 
/// if (i < 0 || i > pCellList->nbRows-1) { // checking if index which represents horizontal coordinate is out of board bound
///     continue; // if so, skip current iteration
/// }
/// ~~~~~~~~~~
/// ~~~~~~~~~~.c 
/// if( j < 0 || j > pCellList->nbCols-1) { // checking if index which represents vertical coordinate is out of board bound
///     continue; // if so, skip current iteration
/// }
/// ~~~~~~~~~~
int nNeighboursClipped(CellList *pCellList, Cell *pCell);


/// Counts number of neighbours for a given cell in a given celllist in *Circular* mode. Checks with algorithms the **special** neighbours to take them into consideration.
/// @param pCellList pointer to a CellList where the neighbours should be counted
/// @param pCell pointer to a Cell for which the neighbours should be counted
int nNeighboursCircular(CellList *pCellList, Cell *pCell);

/// Updates the given CellList by creating a new Celllist and checking the life conditions for each cell.
/// @param pCellList pointer to a CellList which needs to be updated
/// ### Code
/// ~~~~~~~~~.c
/// if(strcmp(NEIGHBOURHOOD,"Clipped")==0) // checking if Clipped Neighbourhood was set
///         nNeighb = nNeighboursClipped(pCellList,&(pCellList->board[i][j]));
/// else // if Neighbourhood is not set, the Circular Neighbourhood is used.
///         nNeighb = nNeighboursCircular(pCellList,&(pCellList->board[i][j]));
/// ~~~~~~~~~
/// @returns Pointer to a new celllist which stores the updated life states of cells.
CellList* updateCellList(CellList* pCellList);

/// Generates a table of given size with random life states of Cells.
/// Method is used as a starting point for game.
/// @param nbRows number of rows to be created
/// @param nbCols number of columns to be created
/// @returns Pointer to a generated celllist.
CellList* generateCellList(int nbRows, int nbCols);

/// Counts number of alive cells in a given celllist.
/// @param pCellList pointer to a CellList where alive cells needs to be counted.
/// @returns number of alive cells.
int nAlives(CellList *pCellList);

/// Checks whethet the given lists are the same
/// @param pCellList1 List to be compared with pCellList2.
/// @param pCellList2 List to be compared with pCellList1.
/// @returns 1 - if the given lists are same
/// @returns 0 - if the given lists are different
int sameCellList(CellList *pCellList1, CellList *pCellList2);

/// Creates **in memory** the copy of the given list
/// @param pCellList pointer to a CellList to be copied.
/// @returns Pointer which represents an address, where copy of celllist is located.
CellList* copyCellList(CellList *pCellList);

/// Flushes the given list, makes all the cells dead
/// @param pCellList pointer to a CellList to be emptied.
void emptyCellList(CellList* pCellList);



#endif