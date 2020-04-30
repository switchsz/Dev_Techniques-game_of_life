#include "draw.h"

void get_console_size(int* w, int* h) {
	printf("\033[2J"); // clears screen 
	puts("Press enter to start");

	printf("\033[30m\033[999;999H"); // write with black 
	printf("\033[6n");
	scanf("\033[%d;%dR",h,w);
}


int main () {

   // CellList *pCellList = newCellList(10,10);

    // //Update funtion
    // // TODO Draw 
    // // TODO updateLoop
    int h, w;
    get_console_size(&w, &h);
    printf("height is %d and width is %d", h, w);
    // sleep(5);

    CellList *pCellList = generateCellList(h-2,w/2-2);
    
   while (nAlives(pCellList) > 0) {
        drawAnsi(pCellList);
        sleep(1);
        pCellList = updateCellList(pCellList);
        printf("\n\n");
    }

    drawAnsi(pCellList);
    printf("\n\n");


    return 0;
}