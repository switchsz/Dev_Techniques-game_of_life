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
CMAKE_COMMAND = /snap/cmake/340/bin/cmake

# The command to remove a file.
RM = /snap/cmake/340/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/faxmishok/Desktop/Dev_Techniques_game-of-life

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build

# Include any dependencies generated for this target.
include game/CMakeFiles/test_pract1.dir/depend.make

# Include the progress variables for this target.
include game/CMakeFiles/test_pract1.dir/progress.make

# Include the compile flags for this target's objects.
include game/CMakeFiles/test_pract1.dir/flags.make

game/CMakeFiles/test_pract1.dir/cunit_tests.c.o: game/CMakeFiles/test_pract1.dir/flags.make
game/CMakeFiles/test_pract1.dir/cunit_tests.c.o: ../game/cunit_tests.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object game/CMakeFiles/test_pract1.dir/cunit_tests.c.o"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_pract1.dir/cunit_tests.c.o   -c /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/cunit_tests.c

game/CMakeFiles/test_pract1.dir/cunit_tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_pract1.dir/cunit_tests.c.i"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/cunit_tests.c > CMakeFiles/test_pract1.dir/cunit_tests.c.i

game/CMakeFiles/test_pract1.dir/cunit_tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_pract1.dir/cunit_tests.c.s"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/cunit_tests.c -o CMakeFiles/test_pract1.dir/cunit_tests.c.s

game/CMakeFiles/test_pract1.dir/cell.c.o: game/CMakeFiles/test_pract1.dir/flags.make
game/CMakeFiles/test_pract1.dir/cell.c.o: ../game/cell.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object game/CMakeFiles/test_pract1.dir/cell.c.o"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_pract1.dir/cell.c.o   -c /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/cell.c

game/CMakeFiles/test_pract1.dir/cell.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_pract1.dir/cell.c.i"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/cell.c > CMakeFiles/test_pract1.dir/cell.c.i

game/CMakeFiles/test_pract1.dir/cell.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_pract1.dir/cell.c.s"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/cell.c -o CMakeFiles/test_pract1.dir/cell.c.s

game/CMakeFiles/test_pract1.dir/celllist.c.o: game/CMakeFiles/test_pract1.dir/flags.make
game/CMakeFiles/test_pract1.dir/celllist.c.o: ../game/celllist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object game/CMakeFiles/test_pract1.dir/celllist.c.o"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_pract1.dir/celllist.c.o   -c /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/celllist.c

game/CMakeFiles/test_pract1.dir/celllist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_pract1.dir/celllist.c.i"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/celllist.c > CMakeFiles/test_pract1.dir/celllist.c.i

game/CMakeFiles/test_pract1.dir/celllist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_pract1.dir/celllist.c.s"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/celllist.c -o CMakeFiles/test_pract1.dir/celllist.c.s

# Object files for target test_pract1
test_pract1_OBJECTS = \
"CMakeFiles/test_pract1.dir/cunit_tests.c.o" \
"CMakeFiles/test_pract1.dir/cell.c.o" \
"CMakeFiles/test_pract1.dir/celllist.c.o"

# External object files for target test_pract1
test_pract1_EXTERNAL_OBJECTS =

game/test_pract1: game/CMakeFiles/test_pract1.dir/cunit_tests.c.o
game/test_pract1: game/CMakeFiles/test_pract1.dir/cell.c.o
game/test_pract1: game/CMakeFiles/test_pract1.dir/celllist.c.o
game/test_pract1: game/CMakeFiles/test_pract1.dir/build.make
game/test_pract1: game/libgame.a
game/test_pract1: game/CMakeFiles/test_pract1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable test_pract1"
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_pract1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
game/CMakeFiles/test_pract1.dir/build: game/test_pract1

.PHONY : game/CMakeFiles/test_pract1.dir/build

game/CMakeFiles/test_pract1.dir/clean:
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game && $(CMAKE_COMMAND) -P CMakeFiles/test_pract1.dir/cmake_clean.cmake
.PHONY : game/CMakeFiles/test_pract1.dir/clean

game/CMakeFiles/test_pract1.dir/depend:
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/faxmishok/Desktop/Dev_Techniques_game-of-life /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/game/CMakeFiles/test_pract1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : game/CMakeFiles/test_pract1.dir/depend

