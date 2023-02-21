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
include src/sdc/CMakeFiles/sdcCountingDP.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/sdc/CMakeFiles/sdcCountingDP.dir/compiler_depend.make

# Include the progress variables for this target.
include src/sdc/CMakeFiles/sdcCountingDP.dir/progress.make

# Include the compile flags for this target's objects.
include src/sdc/CMakeFiles/sdcCountingDP.dir/flags.make

src/sdc/CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o: src/sdc/CMakeFiles/sdcCountingDP.dir/flags.make
src/sdc/CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o: src/sdc/sdcCounting2DPUB.cpp
src/sdc/CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o: src/sdc/CMakeFiles/sdcCountingDP.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yexw/maximalKPlex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/sdc/CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o"
	cd /home/yexw/maximalKPlex/src/sdc && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/sdc/CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o -MF CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o.d -o CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o -c /home/yexw/maximalKPlex/src/sdc/sdcCounting2DPUB.cpp

src/sdc/CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.i"
	cd /home/yexw/maximalKPlex/src/sdc && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yexw/maximalKPlex/src/sdc/sdcCounting2DPUB.cpp > CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.i

src/sdc/CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.s"
	cd /home/yexw/maximalKPlex/src/sdc && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yexw/maximalKPlex/src/sdc/sdcCounting2DPUB.cpp -o CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.s

# Object files for target sdcCountingDP
sdcCountingDP_OBJECTS = \
"CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o"

# External object files for target sdcCountingDP
sdcCountingDP_EXTERNAL_OBJECTS =

src/sdc/libsdcCountingDP.a: src/sdc/CMakeFiles/sdcCountingDP.dir/sdcCounting2DPUB.cpp.o
src/sdc/libsdcCountingDP.a: src/sdc/CMakeFiles/sdcCountingDP.dir/build.make
src/sdc/libsdcCountingDP.a: src/sdc/CMakeFiles/sdcCountingDP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yexw/maximalKPlex/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsdcCountingDP.a"
	cd /home/yexw/maximalKPlex/src/sdc && $(CMAKE_COMMAND) -P CMakeFiles/sdcCountingDP.dir/cmake_clean_target.cmake
	cd /home/yexw/maximalKPlex/src/sdc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sdcCountingDP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sdc/CMakeFiles/sdcCountingDP.dir/build: src/sdc/libsdcCountingDP.a
.PHONY : src/sdc/CMakeFiles/sdcCountingDP.dir/build

src/sdc/CMakeFiles/sdcCountingDP.dir/clean:
	cd /home/yexw/maximalKPlex/src/sdc && $(CMAKE_COMMAND) -P CMakeFiles/sdcCountingDP.dir/cmake_clean.cmake
.PHONY : src/sdc/CMakeFiles/sdcCountingDP.dir/clean

src/sdc/CMakeFiles/sdcCountingDP.dir/depend:
	cd /home/yexw/maximalKPlex && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yexw/maximalKPlex /home/yexw/maximalKPlex/src/sdc /home/yexw/maximalKPlex /home/yexw/maximalKPlex/src/sdc /home/yexw/maximalKPlex/src/sdc/CMakeFiles/sdcCountingDP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sdc/CMakeFiles/sdcCountingDP.dir/depend

