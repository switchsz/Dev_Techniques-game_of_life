#include "draw.h"

int main () {
    // //Update funtion
    // // TODO Draw 
    // // TODO updateLoop
    int h, w;
    get_console_size(&w, &h);
    CellList *pCellList = generateCellList(h-2,w/2-2);
    drawAnsi(pCellList);
    CellList *pNewCellList;
    CellList *pOldCellList;
    
    while (nAlives(pCellList) > 0) {
        printf("\n\n");
        sleep(1);
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