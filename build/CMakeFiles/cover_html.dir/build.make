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

# Utility rule file for cover_html.

# Include the progress variables for this target.
include CMakeFiles/cover_html.dir/progress.make

CMakeFiles/cover_html:
	cmake --build . --target test_pract1 test_pract2
	gcovr --html --html-detail -o index.html -r /home/faxmishok/Desktop/Dev_Techniques_game-of-life /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/mygame

cover_html: CMakeFiles/cover_html
cover_html: CMakeFiles/cover_html.dir/build.make

.PHONY : cover_html

# Rule to build all files generated by this target.
CMakeFiles/cover_html.dir/build: cover_html

.PHONY : CMakeFiles/cover_html.dir/build

CMakeFiles/cover_html.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cover_html.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cover_html.dir/clean

CMakeFiles/cover_html.dir/depend:
	cd /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/faxmishok/Desktop/Dev_Techniques_game-of-life /home/faxmishok/Desktop/Dev_Techniques_game-of-life /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build /home/faxmishok/Desktop/Dev_Techniques_game-of-life/build/CMakeFiles/cover_html.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cover_html.dir/depend
