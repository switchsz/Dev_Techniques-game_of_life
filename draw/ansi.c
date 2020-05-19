#include "ansi.h"

void hide_cursor() {
     printf("\033[?25l"); 
}

void show_cursor() { 
    printf ("\033[?25h"); 
}

void reset_styles() {
	printf("\033[0m"); 
}

void drawAnsi (CellList *pCellList) {
    
    int c;
    hide_cursor();

	for(int i= 0; i<pCellList->nbRows; i++) {
		printf("\033[%d;0H",i);
		for(int j= 0; j<pCellList->nbCols; j++) {
            if(pCellList->board[i][j].life==1) 
                c = 42; // green
            else 
                c = 41; // red

			printf("\033[%dm  ",c);

		}    
	}
    reset_styles();
    printf("\n");
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

void get_console_size(int* w, int* h) {
	printf("\033[2J"); // clears screen 
	puts("Resize the window and press enter twice to start");
    getc(stdin);
	printf("\033[37m\033[999;999H"); // write with white 
	printf("\033[6n");
	scanf("\033[%d;%dR",h,w);
}