# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nidaye/slam_book/ch3/useEigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nidaye/slam_book/ch3/useEigen/build

# Include any dependencies generated for this target.
include CMakeFiles/exapple.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exapple.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exapple.dir/flags.make

CMakeFiles/exapple.dir/eg.cpp.o: CMakeFiles/exapple.dir/flags.make
CMakeFiles/exapple.dir/eg.cpp.o: ../eg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nidaye/slam_book/ch3/useEigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/exapple.dir/eg.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/exapple.dir/eg.cpp.o -c /home/nidaye/slam_book/ch3/useEigen/eg.cpp

CMakeFiles/exapple.dir/eg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/exapple.dir/eg.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nidaye/slam_book/ch3/useEigen/eg.cpp > CMakeFiles/exapple.dir/eg.cpp.i

CMakeFiles/exapple.dir/eg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/exapple.dir/eg.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nidaye/slam_book/ch3/useEigen/eg.cpp -o CMakeFiles/exapple.dir/eg.cpp.s

CMakeFiles/exapple.dir/eg.cpp.o.requires:

.PHONY : CMakeFiles/exapple.dir/eg.cpp.o.requires

CMakeFiles/exapple.dir/eg.cpp.o.provides: CMakeFiles/exapple.dir/eg.cpp.o.requires
	$(MAKE) -f CMakeFiles/exapple.dir/build.make CMakeFiles/exapple.dir/eg.cpp.o.provides.build
.PHONY : CMakeFiles/exapple.dir/eg.cpp.o.provides

CMakeFiles/exapple.dir/eg.cpp.o.provides.build: CMakeFiles/exapple.dir/eg.cpp.o


# Object files for target exapple
exapple_OBJECTS = \
"CMakeFiles/exapple.dir/eg.cpp.o"

# External object files for target exapple
exapple_EXTERNAL_OBJECTS =

exapple: CMakeFiles/exapple.dir/eg.cpp.o
exapple: CMakeFiles/exapple.dir/build.make
exapple: CMakeFiles/exapple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nidaye/slam_book/ch3/useEigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable exapple"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exapple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exapple.dir/build: exapple

.PHONY : CMakeFiles/exapple.dir/build

CMakeFiles/exapple.dir/requires: CMakeFiles/exapple.dir/eg.cpp.o.requires

.PHONY : CMakeFiles/exapple.dir/requires

CMakeFiles/exapple.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exapple.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exapple.dir/clean

CMakeFiles/exapple.dir/depend:
	cd /home/nidaye/slam_book/ch3/useEigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nidaye/slam_book/ch3/useEigen /home/nidaye/slam_book/ch3/useEigen /home/nidaye/slam_book/ch3/useEigen/build /home/nidaye/slam_book/ch3/useEigen/build /home/nidaye/slam_book/ch3/useEigen/build/CMakeFiles/exapple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exapple.dir/depend

