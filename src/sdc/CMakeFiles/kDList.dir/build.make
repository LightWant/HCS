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
include src/sdc/CMakeFiles/kDList.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/sdc/CMakeFiles/kDList.dir/compiler_depend.make

# Include the progress variables for this target.
include src/sdc/CMakeFiles/kDList.dir/progress.make

# Include the compile flags for this target's objects.
include src/sdc/CMakeFiles/kDList.dir/flags.make

src/sdc/CMakeFiles/kDList.dir/kDList.cpp.o: src/sdc/CMakeFiles/kDList.dir/flags.make
src/sdc/CMakeFiles/kDList.dir/kDList.cpp.o: src/sdc/kDList.cpp
src/sdc/CMakeFiles/kDList.dir/kDList.cpp.o: src/sdc/CMakeFiles/kDList.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yexw/maximalKPlex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/sdc/CMakeFiles/kDList.dir/kDList.cpp.o"
	cd /home/yexw/maximalKPlex/src/sdc && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/sdc/CMakeFiles/kDList.dir/kDList.cpp.o -MF CMakeFiles/kDList.dir/kDList.cpp.o.d -o CMakeFiles/kDList.dir/kDList.cpp.o -c /home/yexw/maximalKPlex/src/sdc/kDList.cpp

src/sdc/CMakeFiles/kDList.dir/kDList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kDList.dir/kDList.cpp.i"
	cd /home/yexw/maximalKPlex/src/sdc && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yexw/maximalKPlex/src/sdc/kDList.cpp > CMakeFiles/kDList.dir/kDList.cpp.i

src/sdc/CMakeFiles/kDList.dir/kDList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kDList.dir/kDList.cpp.s"
	cd /home/yexw/maximalKPlex/src/sdc && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yexw/maximalKPlex/src/sdc/kDList.cpp -o CMakeFiles/kDList.dir/kDList.cpp.s

# Object files for target kDList
kDList_OBJECTS = \
"CMakeFiles/kDList.dir/kDList.cpp.o"

# External object files for target kDList
kDList_EXTERNAL_OBJECTS =

src/sdc/libkDList.a: src/sdc/CMakeFiles/kDList.dir/kDList.cpp.o
src/sdc/libkDList.a: src/sdc/CMakeFiles/kDList.dir/build.make
src/sdc/libkDList.a: src/sdc/CMakeFiles/kDList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yexw/maximalKPlex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libkDList.a"
	cd /home/yexw/maximalKPlex/src/sdc && $(CMAKE_COMMAND) -P CMakeFiles/kDList.dir/cmake_clean_target.cmake
	cd /home/yexw/maximalKPlex/src/sdc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kDList.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sdc/CMakeFiles/kDList.dir/build: src/sdc/libkDList.a
.PHONY : src/sdc/CMakeFiles/kDList.dir/build

src/sdc/CMakeFiles/kDList.dir/clean:
	cd /home/yexw/maximalKPlex/src/sdc && $(CMAKE_COMMAND) -P CMakeFiles/kDList.dir/cmake_clean.cmake
.PHONY : src/sdc/CMakeFiles/kDList.dir/clean

src/sdc/CMakeFiles/kDList.dir/depend:
	cd /home/yexw/maximalKPlex && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yexw/maximalKPlex /home/yexw/maximalKPlex/src/sdc /home/yexw/maximalKPlex /home/yexw/maximalKPlex/src/sdc /home/yexw/maximalKPlex/src/sdc/CMakeFiles/kDList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sdc/CMakeFiles/kDList.dir/depend

