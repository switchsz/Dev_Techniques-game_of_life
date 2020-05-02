
#include"sdl.h"


void draw(SDL_Renderer* renderer, CellList* pCellList)
{
	int x,y;
	SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
	SDL_RenderClear(renderer);

	for ( int i = 0 ; i < pCellList->nbRows; i++) {
		for (int j = 0 ; j < pCellList->nbCols; j++) {
			if (pCellList->board[i][j].life == 1) 
				SDL_SetRenderDrawColor(renderer, 0 ,255 ,0,255);
			else
				SDL_SetRenderDrawColor(renderer, 255 , 0 ,0,255);
			y = i*10;
			x = j*10;
			for (int i = 0; i < 10 ; i++) {
				for (int j = 0; j < 10; j++) {
					SDL_RenderDrawPoint(renderer, x+i , y+j);
				}
			}
		
			
		}
	}

	// MOUSE INTERACTION
	int xm,ym;
	if ( SDL_GetMouseState(&xm,&ym) & SDL_BUTTON(SDL_BUTTON_LEFT) ) // one & it is for bits AND
	{
		// USE COLOR
		SDL_SetRenderDrawColor(renderer, 255,0,0,0);
		SDL_RenderDrawPoint(renderer,xm,ym);
	}
}


