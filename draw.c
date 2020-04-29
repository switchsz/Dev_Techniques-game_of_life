#include <stdio.h>
#include <stdlib.h>
#include"draw.h"

void hide_cursor() {
     printf("\033[?25l"); 
}

void show_cursor() { 
    printf ("\033[?25h"); 
}

void clear_screen() {
	printf("\033[2J");
}

void drawAnsi (CellList *pCellList) {
    
    int c;
    clear_screen();
    hide_cursor();

	for(int i= 0; i<pCellList->nbRows; ++i) {
		printf("\033[%d;5H",i+3);
		for(int j= 0; j<pCellList->nbCols; ++j) {
            if(pCellList->board[i][j].life==1) 
                c = 42; // green
            else 
                c = 41; // red

			printf("\033[%dm  ",c);
		}    
	}
	printf("\033[0m\n"); // reset all styles
    show_cursor();
}



void print(CellList *pCellList) {

    for (int i = 0 ; i < pCellList->nbRows ; i++) {
        for ( int j = 0 ; j < pCellList->nbCols ; j++) {
            if (pCellList->board[i][j].life == 1) 
                printf("* ");
            else
                printf(". ");
        }
        printf("\n");
    }
}