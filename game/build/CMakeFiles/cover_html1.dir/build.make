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
CMAKE_SOURCE_DIR = /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/build

# Utility rule file for cover_html1.

# Include the progress variables for this target.
include CMakeFiles/cover_html1.dir/progress.make

CMakeFiles/cover_html1:
	cmake --build . --target test_pract1
	gcovr --html --html-detail -o index.html -r /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/build /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/build/test_pract1

cover_html1: CMakeFiles/cover_html1
cover_html1: CMakeFiles/cover_html1.dir/build.make

.PHONY : cover_html1

# Rule to build all files generated by this target.
CMakeFiles/cover_html1.dir/build: cover_html1

.PHONY : CMakeFiles/cover_html1.dir/build

CMakeFiles/cover_html1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cover_html1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cover_html1.dir/clean

CMakeFiles/cover_html1.dir/depend:
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/build /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/build /home/faxmishok/Desktop/Dev_Techniques_game-of-life/game/build/CMakeFiles/cover_html1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cover_html1.dir/depend

