#ifndef __DRAW_H__
#define __DRAW_H__

#include "celllist.h"

/// Draw given celllist in terminal using "Ansi"
/// @param pCellList Pointer to a list to be drawn
void drawAnsi (CellList *pCellList);

/// Prints given celllist in terminal with * (alive cells) and . (dead cells)
/// @param pCellList Pointer to a list to be printed
void print(CellList *pCellList);

/// Hides cursor on terminal
void hide_cursor();

/// Shows cursor on terminal
void show_cursor();

/// Resets all styles to default.
void reset_styles();

/// Gets console size
/// @param w placeholder where the width of terminal will be stored
/// @param h placeholder where the height of terminal will be stored
void get_console_size(int* w, int* h);



#endif