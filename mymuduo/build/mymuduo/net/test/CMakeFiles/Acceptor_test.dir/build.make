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
CMAKE_SOURCE_DIR = /home/kevin/project/learning-cpp-server/mymuduo/source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kevin/project/learning-cpp-server/mymuduo/build

# Include any dependencies generated for this target.
include mymuduo/net/test/CMakeFiles/Acceptor_test.dir/depend.make

# Include the progress variables for this target.
include mymuduo/net/test/CMakeFiles/Acceptor_test.dir/progress.make

# Include the compile flags for this target's objects.
include mymuduo/net/test/CMakeFiles/Acceptor_test.dir/flags.make

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o: mymuduo/net/test/CMakeFiles/Acceptor_test.dir/flags.make
mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o: /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/test/Acceptor_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/test && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o -c /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/test/Acceptor_test.cc

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.i"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/test && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/test/Acceptor_test.cc > CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.i

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.s"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/test && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/test/Acceptor_test.cc -o CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.s

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o.requires:

.PHONY : mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o.requires

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o.provides: mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o.requires
	$(MAKE) -f mymuduo/net/test/CMakeFiles/Acceptor_test.dir/build.make mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o.provides.build
.PHONY : mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o.provides

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o.provides.build: mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o


# Object files for target Acceptor_test
Acceptor_test_OBJECTS = \
"CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o"

# External object files for target Acceptor_test
Acceptor_test_EXTERNAL_OBJECTS =

bin/Acceptor_test: mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o
bin/Acceptor_test: mymuduo/net/test/CMakeFiles/Acceptor_test.dir/build.make
bin/Acceptor_test: lib/libmymuduo_net.a
bin/Acceptor_test: lib/libmymuduo_base.a
bin/Acceptor_test: mymuduo/net/test/CMakeFiles/Acceptor_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/Acceptor_test"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Acceptor_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mymuduo/net/test/CMakeFiles/Acceptor_test.dir/build: bin/Acceptor_test

.PHONY : mymuduo/net/test/CMakeFiles/Acceptor_test.dir/build

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/requires: mymuduo/net/test/CMakeFiles/Acceptor_test.dir/Acceptor_test.cc.o.requires

.PHONY : mymuduo/net/test/CMakeFiles/Acceptor_test.dir/requires

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/clean:
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/test && $(CMAKE_COMMAND) -P CMakeFiles/Acceptor_test.dir/cmake_clean.cmake
.PHONY : mymuduo/net/test/CMakeFiles/Acceptor_test.dir/clean

mymuduo/net/test/CMakeFiles/Acceptor_test.dir/depend:
	cd /home/kevin/project/learning-cpp-server/mymuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/project/learning-cpp-server/mymuduo/source /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/test /home/kevin/project/learning-cpp-server/mymuduo/build /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/test /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/test/CMakeFiles/Acceptor_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mymuduo/net/test/CMakeFiles/Acceptor_test.dir/depend

