#include "ansi.h"
#include <time.h>

int main () {
    struct timespec ts;
    ts.tv_nsec = 100000000;
    int h, w;
    get_console_size(&w, &h);
    CellList *pCellList = generateCellList(h,w/2);
    drawAnsi(pCellList);
    CellList *pNewCellList;
    CellList *pOldCellList;
    
    while (nAlives(pCellList) > 0) {
       
        nanosleep(&ts, NULL);
        pNewCellList = updateCellList(pCellList);
        if(sameCellList(pCellList, pNewCellList) == 1 || sameCellList(pOldCellList, pNewCellList) == 1)
            break;
        else {
            drawAnsi(pNewCellList);
            pOldCellList = copyCellList(pCellList);
            pCellList = copyCellList(pNewCellList);
        }
    }
    emptyCellList(pNewCellList);
    drawAnsi(pNewCellList);

    return 0;

}