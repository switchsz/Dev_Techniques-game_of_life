
#include"sdl.h"


void draw(SDL_Renderer* renderer, CellList* pCellList)
{
	SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
	SDL_RenderClear(renderer);

	// SDL_SetRenderDrawColor(renderer, 255,0,0,255);
	// for(int i=0; i<1000; ++i)
	// {
	// 	for(int j= 0; j<1000; ++j)
	// 		if (i%2 == j%2)
	// 			SDL_RenderDrawPoint(renderer,j,i);
	// }

	for ( int i = 0 ; i < pCellList->nbRows; i++) {
		for (int j = 0 ; j < pCellList->nbCols; j++) {
			if (pCellList->board[i][j].life == 1) 
				SDL_SetRenderDrawColor(renderer, 0 ,255 ,0,255);
			else
				SDL_SetRenderDrawColor(renderer, 255 , 0 ,0,255);
			SDL_RenderDrawPoint(renderer,j,i);
			
		}
	}

	// MOUSE INTERACTION
	int x,y;
	if ( SDL_GetMouseState(&x,&y) & SDL_BUTTON(SDL_BUTTON_LEFT) ) // one & it is for bits AND
	{
		// USE COLOR
		SDL_SetRenderDrawColor(renderer, 255,0,0,0);
		SDL_RenderDrawPoint(renderer,x,y);
	}
}


