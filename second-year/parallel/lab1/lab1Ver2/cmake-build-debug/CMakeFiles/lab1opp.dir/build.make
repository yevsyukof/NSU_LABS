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
CMAKE_COMMAND = /var/lib/snapd/snap/clion/139/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /var/lib/snapd/snap/clion/139/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab1opp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab1opp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab1opp.dir/flags.make

CMakeFiles/lab1opp.dir/main.cpp.o: CMakeFiles/lab1opp.dir/flags.make
CMakeFiles/lab1opp.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab1opp.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab1opp.dir/main.cpp.o -c /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/main.cpp

CMakeFiles/lab1opp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab1opp.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/main.cpp > CMakeFiles/lab1opp.dir/main.cpp.i

CMakeFiles/lab1opp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab1opp.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/main.cpp -o CMakeFiles/lab1opp.dir/main.cpp.s

# Object files for target lab1opp
lab1opp_OBJECTS = \
"CMakeFiles/lab1opp.dir/main.cpp.o"

# External object files for target lab1opp
lab1opp_EXTERNAL_OBJECTS =

lab1opp: CMakeFiles/lab1opp.dir/main.cpp.o
lab1opp: CMakeFiles/lab1opp.dir/build.make
lab1opp: CMakeFiles/lab1opp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lab1opp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab1opp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab1opp.dir/build: lab1opp

.PHONY : CMakeFiles/lab1opp.dir/build

CMakeFiles/lab1opp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab1opp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab1opp.dir/clean

CMakeFiles/lab1opp.dir/depend:
	cd /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2 /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2 /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/cmake-build-debug /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/cmake-build-debug /home/yevsyukof/git/NSU_LABS/second-year/parallel/lab1/lab1Ver2/cmake-build-debug/CMakeFiles/lab1opp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab1opp.dir/depend

