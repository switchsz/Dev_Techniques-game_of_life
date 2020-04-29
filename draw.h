#ifndef __DRAW_H__
#define __DRAW_H__

#include "celllist.h"



void drawAnsi (CellList *pCellList);
void print(CellList *pCellList);
void hide_cursor();
void show_cursor();
void clear_screen();

#endif