# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /snap/clion/111/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/111/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andrey/CLionProjects/MapReduce1/Map

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrey/CLionProjects/MapReduce1/Map/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/Map.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Map.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Map.dir/flags.make

CMakeFiles/Map.dir/main.cpp.o: CMakeFiles/Map.dir/flags.make
CMakeFiles/Map.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/CLionProjects/MapReduce1/Map/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Map.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Map.dir/main.cpp.o -c /home/andrey/CLionProjects/MapReduce1/Map/main.cpp

CMakeFiles/Map.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Map.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/CLionProjects/MapReduce1/Map/main.cpp > CMakeFiles/Map.dir/main.cpp.i

CMakeFiles/Map.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Map.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/CLionProjects/MapReduce1/Map/main.cpp -o CMakeFiles/Map.dir/main.cpp.s

# Object files for target Map
Map_OBJECTS = \
"CMakeFiles/Map.dir/main.cpp.o"

# External object files for target Map
Map_EXTERNAL_OBJECTS =

Map: CMakeFiles/Map.dir/main.cpp.o
Map: CMakeFiles/Map.dir/build.make
Map: CMakeFiles/Map.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrey/CLionProjects/MapReduce1/Map/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Map"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Map.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Map.dir/build: Map

.PHONY : CMakeFiles/Map.dir/build

CMakeFiles/Map.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Map.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Map.dir/clean

CMakeFiles/Map.dir/depend:
	cd /home/andrey/CLionProjects/MapReduce1/Map/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrey/CLionProjects/MapReduce1/Map /home/andrey/CLionProjects/MapReduce1/Map /home/andrey/CLionProjects/MapReduce1/Map/cmake-build-release /home/andrey/CLionProjects/MapReduce1/Map/cmake-build-release /home/andrey/CLionProjects/MapReduce1/Map/cmake-build-release/CMakeFiles/Map.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Map.dir/depend

