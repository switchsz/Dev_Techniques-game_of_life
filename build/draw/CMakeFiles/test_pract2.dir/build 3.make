# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/saykasz/Desktop/Dev_Techniques_game-of-life

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build

# Include any dependencies generated for this target.
include draw/CMakeFiles/test_pract2.dir/depend.make

# Include the progress variables for this target.
include draw/CMakeFiles/test_pract2.dir/progress.make

# Include the compile flags for this target's objects.
include draw/CMakeFiles/test_pract2.dir/flags.make

draw/CMakeFiles/test_pract2.dir/cunit_tests.c.o: draw/CMakeFiles/test_pract2.dir/flags.make
draw/CMakeFiles/test_pract2.dir/cunit_tests.c.o: ../draw/cunit_tests.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object draw/CMakeFiles/test_pract2.dir/cunit_tests.c.o"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_pract2.dir/cunit_tests.c.o   -c /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/cunit_tests.c

draw/CMakeFiles/test_pract2.dir/cunit_tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_pract2.dir/cunit_tests.c.i"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/cunit_tests.c > CMakeFiles/test_pract2.dir/cunit_tests.c.i

draw/CMakeFiles/test_pract2.dir/cunit_tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_pract2.dir/cunit_tests.c.s"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/cunit_tests.c -o CMakeFiles/test_pract2.dir/cunit_tests.c.s

draw/CMakeFiles/test_pract2.dir/ansi.c.o: draw/CMakeFiles/test_pract2.dir/flags.make
draw/CMakeFiles/test_pract2.dir/ansi.c.o: ../draw/ansi.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object draw/CMakeFiles/test_pract2.dir/ansi.c.o"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_pract2.dir/ansi.c.o   -c /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/ansi.c

draw/CMakeFiles/test_pract2.dir/ansi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_pract2.dir/ansi.c.i"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/ansi.c > CMakeFiles/test_pract2.dir/ansi.c.i

draw/CMakeFiles/test_pract2.dir/ansi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_pract2.dir/ansi.c.s"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/ansi.c -o CMakeFiles/test_pract2.dir/ansi.c.s

draw/CMakeFiles/test_pract2.dir/sdl.c.o: draw/CMakeFiles/test_pract2.dir/flags.make
draw/CMakeFiles/test_pract2.dir/sdl.c.o: ../draw/sdl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object draw/CMakeFiles/test_pract2.dir/sdl.c.o"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_pract2.dir/sdl.c.o   -c /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/sdl.c

draw/CMakeFiles/test_pract2.dir/sdl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_pract2.dir/sdl.c.i"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/sdl.c > CMakeFiles/test_pract2.dir/sdl.c.i

draw/CMakeFiles/test_pract2.dir/sdl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_pract2.dir/sdl.c.s"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/sdl.c -o CMakeFiles/test_pract2.dir/sdl.c.s

draw/CMakeFiles/test_pract2.dir/__/game/cell.c.o: draw/CMakeFiles/test_pract2.dir/flags.make
draw/CMakeFiles/test_pract2.dir/__/game/cell.c.o: ../game/cell.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object draw/CMakeFiles/test_pract2.dir/__/game/cell.c.o"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_pract2.dir/__/game/cell.c.o   -c /Users/saykasz/Desktop/Dev_Techniques_game-of-life/game/cell.c

draw/CMakeFiles/test_pract2.dir/__/game/cell.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_pract2.dir/__/game/cell.c.i"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/saykasz/Desktop/Dev_Techniques_game-of-life/game/cell.c > CMakeFiles/test_pract2.dir/__/game/cell.c.i

draw/CMakeFiles/test_pract2.dir/__/game/cell.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_pract2.dir/__/game/cell.c.s"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/saykasz/Desktop/Dev_Techniques_game-of-life/game/cell.c -o CMakeFiles/test_pract2.dir/__/game/cell.c.s

draw/CMakeFiles/test_pract2.dir/__/game/celllist.c.o: draw/CMakeFiles/test_pract2.dir/flags.make
draw/CMakeFiles/test_pract2.dir/__/game/celllist.c.o: ../game/celllist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object draw/CMakeFiles/test_pract2.dir/__/game/celllist.c.o"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_pract2.dir/__/game/celllist.c.o   -c /Users/saykasz/Desktop/Dev_Techniques_game-of-life/game/celllist.c

draw/CMakeFiles/test_pract2.dir/__/game/celllist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_pract2.dir/__/game/celllist.c.i"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/saykasz/Desktop/Dev_Techniques_game-of-life/game/celllist.c > CMakeFiles/test_pract2.dir/__/game/celllist.c.i

draw/CMakeFiles/test_pract2.dir/__/game/celllist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_pract2.dir/__/game/celllist.c.s"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/saykasz/Desktop/Dev_Techniques_game-of-life/game/celllist.c -o CMakeFiles/test_pract2.dir/__/game/celllist.c.s

# Object files for target test_pract2
test_pract2_OBJECTS = \
"CMakeFiles/test_pract2.dir/cunit_tests.c.o" \
"CMakeFiles/test_pract2.dir/ansi.c.o" \
"CMakeFiles/test_pract2.dir/sdl.c.o" \
"CMakeFiles/test_pract2.dir/__/game/cell.c.o" \
"CMakeFiles/test_pract2.dir/__/game/celllist.c.o"

# External object files for target test_pract2
test_pract2_EXTERNAL_OBJECTS =

draw/test_pract2: draw/CMakeFiles/test_pract2.dir/cunit_tests.c.o
draw/test_pract2: draw/CMakeFiles/test_pract2.dir/ansi.c.o
draw/test_pract2: draw/CMakeFiles/test_pract2.dir/sdl.c.o
draw/test_pract2: draw/CMakeFiles/test_pract2.dir/__/game/cell.c.o
draw/test_pract2: draw/CMakeFiles/test_pract2.dir/__/game/celllist.c.o
draw/test_pract2: draw/CMakeFiles/test_pract2.dir/build.make
draw/test_pract2: draw/libdraw.a
draw/test_pract2: game/libgame.a
draw/test_pract2: /usr/local/Cellar/sdl2/2.0.12_1/lib/libSDL2.dylib
draw/test_pract2: /usr/local/Cellar/sdl2/2.0.12_1/lib/libSDL2main.a
draw/test_pract2: draw/CMakeFiles/test_pract2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable test_pract2"
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_pract2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
draw/CMakeFiles/test_pract2.dir/build: draw/test_pract2

.PHONY : draw/CMakeFiles/test_pract2.dir/build

draw/CMakeFiles/test_pract2.dir/clean:
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw && $(CMAKE_COMMAND) -P CMakeFiles/test_pract2.dir/cmake_clean.cmake
.PHONY : draw/CMakeFiles/test_pract2.dir/clean

draw/CMakeFiles/test_pract2.dir/depend:
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saykasz/Desktop/Dev_Techniques_game-of-life /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw /Users/saykasz/Desktop/Dev_Techniques_game-of-life/build/draw/CMakeFiles/test_pract2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : draw/CMakeFiles/test_pract2.dir/depend

