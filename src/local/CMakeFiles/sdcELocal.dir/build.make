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
include src/local/CMakeFiles/sdcELocal.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/local/CMakeFiles/sdcELocal.dir/compiler_depend.make

# Include the progress variables for this target.
include src/local/CMakeFiles/sdcELocal.dir/progress.make

# Include the compile flags for this target's objects.
include src/local/CMakeFiles/sdcELocal.dir/flags.make

src/local/CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o: src/local/CMakeFiles/sdcELocal.dir/flags.make
src/local/CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o: src/local/sdcELocal.cpp
src/local/CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o: src/local/CMakeFiles/sdcELocal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yexw/maximalKPlex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/local/CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o"
	cd /home/yexw/maximalKPlex/src/local && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/local/CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o -MF CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o.d -o CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o -c /home/yexw/maximalKPlex/src/local/sdcELocal.cpp

src/local/CMakeFiles/sdcELocal.dir/sdcELocal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdcELocal.dir/sdcELocal.cpp.i"
	cd /home/yexw/maximalKPlex/src/local && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yexw/maximalKPlex/src/local/sdcELocal.cpp > CMakeFiles/sdcELocal.dir/sdcELocal.cpp.i

src/local/CMakeFiles/sdcELocal.dir/sdcELocal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdcELocal.dir/sdcELocal.cpp.s"
	cd /home/yexw/maximalKPlex/src/local && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yexw/maximalKPlex/src/local/sdcELocal.cpp -o CMakeFiles/sdcELocal.dir/sdcELocal.cpp.s

# Object files for target sdcELocal
sdcELocal_OBJECTS = \
"CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o"

# External object files for target sdcELocal
sdcELocal_EXTERNAL_OBJECTS =

src/local/libsdcELocal.a: src/local/CMakeFiles/sdcELocal.dir/sdcELocal.cpp.o
src/local/libsdcELocal.a: src/local/CMakeFiles/sdcELocal.dir/build.make
src/local/libsdcELocal.a: src/local/CMakeFiles/sdcELocal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yexw/maximalKPlex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsdcELocal.a"
	cd /home/yexw/maximalKPlex/src/local && $(CMAKE_COMMAND) -P CMakeFiles/sdcELocal.dir/cmake_clean_target.cmake
	cd /home/yexw/maximalKPlex/src/local && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sdcELocal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/local/CMakeFiles/sdcELocal.dir/build: src/local/libsdcELocal.a
.PHONY : src/local/CMakeFiles/sdcELocal.dir/build

src/local/CMakeFiles/sdcELocal.dir/clean:
	cd /home/yexw/maximalKPlex/src/local && $(CMAKE_COMMAND) -P CMakeFiles/sdcELocal.dir/cmake_clean.cmake
.PHONY : src/local/CMakeFiles/sdcELocal.dir/clean

src/local/CMakeFiles/sdcELocal.dir/depend:
	cd /home/yexw/maximalKPlex && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yexw/maximalKPlex /home/yexw/maximalKPlex/src/local /home/yexw/maximalKPlex /home/yexw/maximalKPlex/src/local /home/yexw/maximalKPlex/src/local/CMakeFiles/sdcELocal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/local/CMakeFiles/sdcELocal.dir/depend
