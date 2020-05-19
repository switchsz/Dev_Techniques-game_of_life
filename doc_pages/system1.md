@page system1 How to Launch


1. Game can be launched using 2 different Drawing Modes, and respecting 2 different Neighbourhoods. These choices are specified during "Compile" time. 
To compile and launch the game, inside source code directory, do the following steps:

    mkdir Build
    cd Build
    ccmake ../ - at this stage, the CMakeCache window opens, where you need to do your
                 choice regarding Drawing Mode and Neighbourhood
    make
    ./mygame

Note that, If no choice is made, by default game will be displayed using "Ansi" Drawing Method, while respecting "Circular" Neighbourhood.


2. Where to read about code

        Files 
            File List
                cell.h
                celllist.h
                sdl.h
                ansi.h

        
    OR

        Data Structures
            Data Structures
                Cell
                Celllist

