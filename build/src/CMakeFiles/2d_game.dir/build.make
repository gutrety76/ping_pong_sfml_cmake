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
CMAKE_SOURCE_DIR = /home/denis/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/denis/cpp/build

# Include any dependencies generated for this target.
include src/CMakeFiles/2d_game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/2d_game.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/2d_game.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/2d_game.dir/flags.make

src/CMakeFiles/2d_game.dir/main.cpp.o: src/CMakeFiles/2d_game.dir/flags.make
src/CMakeFiles/2d_game.dir/main.cpp.o: ../src/main.cpp
src/CMakeFiles/2d_game.dir/main.cpp.o: src/CMakeFiles/2d_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/denis/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/2d_game.dir/main.cpp.o"
	cd /home/denis/cpp/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/2d_game.dir/main.cpp.o -MF CMakeFiles/2d_game.dir/main.cpp.o.d -o CMakeFiles/2d_game.dir/main.cpp.o -c /home/denis/cpp/src/main.cpp

src/CMakeFiles/2d_game.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2d_game.dir/main.cpp.i"
	cd /home/denis/cpp/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/denis/cpp/src/main.cpp > CMakeFiles/2d_game.dir/main.cpp.i

src/CMakeFiles/2d_game.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2d_game.dir/main.cpp.s"
	cd /home/denis/cpp/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/denis/cpp/src/main.cpp -o CMakeFiles/2d_game.dir/main.cpp.s

src/CMakeFiles/2d_game.dir/game.cpp.o: src/CMakeFiles/2d_game.dir/flags.make
src/CMakeFiles/2d_game.dir/game.cpp.o: ../src/game.cpp
src/CMakeFiles/2d_game.dir/game.cpp.o: src/CMakeFiles/2d_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/denis/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/2d_game.dir/game.cpp.o"
	cd /home/denis/cpp/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/2d_game.dir/game.cpp.o -MF CMakeFiles/2d_game.dir/game.cpp.o.d -o CMakeFiles/2d_game.dir/game.cpp.o -c /home/denis/cpp/src/game.cpp

src/CMakeFiles/2d_game.dir/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2d_game.dir/game.cpp.i"
	cd /home/denis/cpp/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/denis/cpp/src/game.cpp > CMakeFiles/2d_game.dir/game.cpp.i

src/CMakeFiles/2d_game.dir/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2d_game.dir/game.cpp.s"
	cd /home/denis/cpp/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/denis/cpp/src/game.cpp -o CMakeFiles/2d_game.dir/game.cpp.s

# Object files for target 2d_game
2d_game_OBJECTS = \
"CMakeFiles/2d_game.dir/main.cpp.o" \
"CMakeFiles/2d_game.dir/game.cpp.o"

# External object files for target 2d_game
2d_game_EXTERNAL_OBJECTS =

src/2d_game: src/CMakeFiles/2d_game.dir/main.cpp.o
src/2d_game: src/CMakeFiles/2d_game.dir/game.cpp.o
src/2d_game: src/CMakeFiles/2d_game.dir/build.make
src/2d_game: /usr/lib/x86_64-linux-gnu/libsfml-graphics.so.2.5.1
src/2d_game: /usr/lib/x86_64-linux-gnu/libsfml-audio.so.2.5.1
src/2d_game: /usr/lib/x86_64-linux-gnu/libsfml-window.so.2.5.1
src/2d_game: /usr/lib/x86_64-linux-gnu/libsfml-system.so.2.5.1
src/2d_game: src/CMakeFiles/2d_game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/denis/cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable 2d_game"
	cd /home/denis/cpp/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2d_game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/2d_game.dir/build: src/2d_game
.PHONY : src/CMakeFiles/2d_game.dir/build

src/CMakeFiles/2d_game.dir/clean:
	cd /home/denis/cpp/build/src && $(CMAKE_COMMAND) -P CMakeFiles/2d_game.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/2d_game.dir/clean

src/CMakeFiles/2d_game.dir/depend:
	cd /home/denis/cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/denis/cpp /home/denis/cpp/src /home/denis/cpp/build /home/denis/cpp/build/src /home/denis/cpp/build/src/CMakeFiles/2d_game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/2d_game.dir/depend

