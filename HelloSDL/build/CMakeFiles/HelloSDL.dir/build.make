# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rache/Projects/C++/SDL2-Course/HelloSDL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rache/Projects/C++/SDL2-Course/HelloSDL/build

# Include any dependencies generated for this target.
include CMakeFiles/HelloSDL.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/HelloSDL.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/HelloSDL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HelloSDL.dir/flags.make

CMakeFiles/HelloSDL.dir/src/main.cpp.o: CMakeFiles/HelloSDL.dir/flags.make
CMakeFiles/HelloSDL.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/HelloSDL.dir/src/main.cpp.o: CMakeFiles/HelloSDL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rache/Projects/C++/SDL2-Course/HelloSDL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HelloSDL.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HelloSDL.dir/src/main.cpp.o -MF CMakeFiles/HelloSDL.dir/src/main.cpp.o.d -o CMakeFiles/HelloSDL.dir/src/main.cpp.o -c /home/rache/Projects/C++/SDL2-Course/HelloSDL/src/main.cpp

CMakeFiles/HelloSDL.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloSDL.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rache/Projects/C++/SDL2-Course/HelloSDL/src/main.cpp > CMakeFiles/HelloSDL.dir/src/main.cpp.i

CMakeFiles/HelloSDL.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloSDL.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rache/Projects/C++/SDL2-Course/HelloSDL/src/main.cpp -o CMakeFiles/HelloSDL.dir/src/main.cpp.s

# Object files for target HelloSDL
HelloSDL_OBJECTS = \
"CMakeFiles/HelloSDL.dir/src/main.cpp.o"

# External object files for target HelloSDL
HelloSDL_EXTERNAL_OBJECTS =

HelloSDL: CMakeFiles/HelloSDL.dir/src/main.cpp.o
HelloSDL: CMakeFiles/HelloSDL.dir/build.make
HelloSDL: /usr/local/lib/libSDL2.so
HelloSDL: CMakeFiles/HelloSDL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rache/Projects/C++/SDL2-Course/HelloSDL/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HelloSDL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloSDL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HelloSDL.dir/build: HelloSDL
.PHONY : CMakeFiles/HelloSDL.dir/build

CMakeFiles/HelloSDL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HelloSDL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HelloSDL.dir/clean

CMakeFiles/HelloSDL.dir/depend:
	cd /home/rache/Projects/C++/SDL2-Course/HelloSDL/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rache/Projects/C++/SDL2-Course/HelloSDL /home/rache/Projects/C++/SDL2-Course/HelloSDL /home/rache/Projects/C++/SDL2-Course/HelloSDL/build /home/rache/Projects/C++/SDL2-Course/HelloSDL/build /home/rache/Projects/C++/SDL2-Course/HelloSDL/build/CMakeFiles/HelloSDL.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HelloSDL.dir/depend

