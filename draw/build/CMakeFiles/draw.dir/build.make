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
CMAKE_SOURCE_DIR = /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/build

# Include any dependencies generated for this target.
include CMakeFiles/draw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/draw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/draw.dir/flags.make

CMakeFiles/draw.dir/ansi.c.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/ansi.c.o: ../ansi.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/draw.dir/ansi.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/draw.dir/ansi.c.o   -c /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/ansi.c

CMakeFiles/draw.dir/ansi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/draw.dir/ansi.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/ansi.c > CMakeFiles/draw.dir/ansi.c.i

CMakeFiles/draw.dir/ansi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/draw.dir/ansi.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/ansi.c -o CMakeFiles/draw.dir/ansi.c.s

CMakeFiles/draw.dir/sdl.c.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/sdl.c.o: ../sdl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/draw.dir/sdl.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/draw.dir/sdl.c.o   -c /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/sdl.c

CMakeFiles/draw.dir/sdl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/draw.dir/sdl.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/sdl.c > CMakeFiles/draw.dir/sdl.c.i

CMakeFiles/draw.dir/sdl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/draw.dir/sdl.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/sdl.c -o CMakeFiles/draw.dir/sdl.c.s

# Object files for target draw
draw_OBJECTS = \
"CMakeFiles/draw.dir/ansi.c.o" \
"CMakeFiles/draw.dir/sdl.c.o"

# External object files for target draw
draw_EXTERNAL_OBJECTS =

libdraw.a: CMakeFiles/draw.dir/ansi.c.o
libdraw.a: CMakeFiles/draw.dir/sdl.c.o
libdraw.a: CMakeFiles/draw.dir/build.make
libdraw.a: CMakeFiles/draw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libdraw.a"
	$(CMAKE_COMMAND) -P CMakeFiles/draw.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/draw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/draw.dir/build: libdraw.a

.PHONY : CMakeFiles/draw.dir/build

CMakeFiles/draw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/draw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/draw.dir/clean

CMakeFiles/draw.dir/depend:
	cd /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/build /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/build /Users/saykasz/Desktop/Dev_Techniques_game-of-life/draw/build/CMakeFiles/draw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/draw.dir/depend
