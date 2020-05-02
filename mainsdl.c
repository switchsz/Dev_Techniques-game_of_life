#include <SDL2/SDL.h>
#include "sdl.h"


int main(int argc, char** argv)
{
    CellList *pCellList = generateCellList(50,50);
    CellList *pNewCellList;
     CellList *pOldCellList;
	if (SDL_Init(SDL_INIT_VIDEO) != 0)
	{
		fprintf(stderr,"Problem can not init SDL2 \n");
		return 0;
	}

	SDL_Window* window = SDL_CreateWindow("Game",
										  SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
										  1200, 750, SDL_WINDOW_SHOWN|SDL_WINDOW_ALLOW_HIGHDPI); // size of window
	SDL_Renderer* renderer = SDL_CreateRenderer(window, -1,SDL_RENDERER_ACCELERATED|SDL_RENDERER_PRESENTVSYNC);
	assert (renderer != NULL);

// SIMPLE EVENT & DRAWING LOOP
	bool quit = false;
	while (!quit)
	{
		SDL_Event event;
		while (!quit && SDL_PollEvent(&event))
		{
			switch (event.type)
			{
			case SDL_QUIT:
				quit = true;
				break;
			}
		}
        while (nAlives(pCellList) > 0) {
        // sleep(1);
        pNewCellList = updateCellList(pCellList);
        if(sameCellList(pCellList, pNewCellList) == 1 || sameCellList(pOldCellList, pNewCellList) == 1)
            break;
        else {
            draw(renderer,pNewCellList);
		    SDL_RenderPresent(renderer);

            pOldCellList = copyCellList(pCellList);
            pCellList = copyCellList(pNewCellList);
        }
        }
        emptyCellList(pNewCellList);
        draw(renderer,pNewCellList);
		SDL_RenderPresent(renderer);

		
	}
	SDL_Quit();

	return 0;
}
