#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include <stdint.h>
#include <time.h>
#include <SDL2/SDL.h>
#include "celllist.h"


/// Draw given celllist in a separate window using "SDL"
/// @param pCellList Pointer to a list to be drawn
/// @param renderer SDL Renderer
void draw(SDL_Renderer* renderer, CellList* pCellList);
