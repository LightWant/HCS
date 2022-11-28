# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yexw/maximalKPlex

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yexw/maximalKPlex

# Include any dependencies generated for this target.
include src/plex/CMakeFiles/kPList.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/plex/CMakeFiles/kPList.dir/compiler_depend.make

# Include the progress variables for this target.
include src/plex/CMakeFiles/kPList.dir/progress.make

# Include the compile flags for this target's objects.
include src/plex/CMakeFiles/kPList.dir/flags.make

src/plex/CMakeFiles/kPList.dir/kPList.cpp.o: src/plex/CMakeFiles/kPList.dir/flags.make
src/plex/CMakeFiles/kPList.dir/kPList.cpp.o: src/plex/kPList.cpp
src/plex/CMakeFiles/kPList.dir/kPList.cpp.o: src/plex/CMakeFiles/kPList.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yexw/maximalKPlex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/plex/CMakeFiles/kPList.dir/kPList.cpp.o"
	cd /home/yexw/maximalKPlex/src/plex && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/plex/CMakeFiles/kPList.dir/kPList.cpp.o -MF CMakeFiles/kPList.dir/kPList.cpp.o.d -o CMakeFiles/kPList.dir/kPList.cpp.o -c /home/yexw/maximalKPlex/src/plex/kPList.cpp

src/plex/CMakeFiles/kPList.dir/kPList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kPList.dir/kPList.cpp.i"
	cd /home/yexw/maximalKPlex/src/plex && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yexw/maximalKPlex/src/plex/kPList.cpp > CMakeFiles/kPList.dir/kPList.cpp.i

src/plex/CMakeFiles/kPList.dir/kPList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kPList.dir/kPList.cpp.s"
	cd /home/yexw/maximalKPlex/src/plex && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yexw/maximalKPlex/src/plex/kPList.cpp -o CMakeFiles/kPList.dir/kPList.cpp.s

# Object files for target kPList
kPList_OBJECTS = \
"CMakeFiles/kPList.dir/kPList.cpp.o"

# External object files for target kPList
kPList_EXTERNAL_OBJECTS =

src/plex/libkPList.a: src/plex/CMakeFiles/kPList.dir/kPList.cpp.o
src/plex/libkPList.a: src/plex/CMakeFiles/kPList.dir/build.make
src/plex/libkPList.a: src/plex/CMakeFiles/kPList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yexw/maximalKPlex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libkPList.a"
	cd /home/yexw/maximalKPlex/src/plex && $(CMAKE_COMMAND) -P CMakeFiles/kPList.dir/cmake_clean_target.cmake
	cd /home/yexw/maximalKPlex/src/plex && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kPList.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/plex/CMakeFiles/kPList.dir/build: src/plex/libkPList.a
.PHONY : src/plex/CMakeFiles/kPList.dir/build

src/plex/CMakeFiles/kPList.dir/clean:
	cd /home/yexw/maximalKPlex/src/plex && $(CMAKE_COMMAND) -P CMakeFiles/kPList.dir/cmake_clean.cmake
.PHONY : src/plex/CMakeFiles/kPList.dir/clean

src/plex/CMakeFiles/kPList.dir/depend:
	cd /home/yexw/maximalKPlex && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yexw/maximalKPlex /home/yexw/maximalKPlex/src/plex /home/yexw/maximalKPlex /home/yexw/maximalKPlex/src/plex /home/yexw/maximalKPlex/src/plex/CMakeFiles/kPList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/plex/CMakeFiles/kPList.dir/depend
