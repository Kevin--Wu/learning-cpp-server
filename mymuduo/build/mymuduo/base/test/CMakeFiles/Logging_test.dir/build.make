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
include mymuduo/base/test/CMakeFiles/Logging_test.dir/depend.make

# Include the progress variables for this target.
include mymuduo/base/test/CMakeFiles/Logging_test.dir/progress.make

# Include the compile flags for this target's objects.
include mymuduo/base/test/CMakeFiles/Logging_test.dir/flags.make

mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o: mymuduo/base/test/CMakeFiles/Logging_test.dir/flags.make
mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o: /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/base/test/Logging_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/base/test && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Logging_test.dir/Logging_test.cc.o -c /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/base/test/Logging_test.cc

mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Logging_test.dir/Logging_test.cc.i"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/base/test && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/base/test/Logging_test.cc > CMakeFiles/Logging_test.dir/Logging_test.cc.i

mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Logging_test.dir/Logging_test.cc.s"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/base/test && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/base/test/Logging_test.cc -o CMakeFiles/Logging_test.dir/Logging_test.cc.s

mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o.requires:

.PHONY : mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o.requires

mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o.provides: mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o.requires
	$(MAKE) -f mymuduo/base/test/CMakeFiles/Logging_test.dir/build.make mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o.provides.build
.PHONY : mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o.provides

mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o.provides.build: mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o


# Object files for target Logging_test
Logging_test_OBJECTS = \
"CMakeFiles/Logging_test.dir/Logging_test.cc.o"

# External object files for target Logging_test
Logging_test_EXTERNAL_OBJECTS =

bin/Logging_test: mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o
bin/Logging_test: mymuduo/base/test/CMakeFiles/Logging_test.dir/build.make
bin/Logging_test: lib/libmymuduo_base.a
bin/Logging_test: mymuduo/base/test/CMakeFiles/Logging_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/Logging_test"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/base/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Logging_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mymuduo/base/test/CMakeFiles/Logging_test.dir/build: bin/Logging_test

.PHONY : mymuduo/base/test/CMakeFiles/Logging_test.dir/build

mymuduo/base/test/CMakeFiles/Logging_test.dir/requires: mymuduo/base/test/CMakeFiles/Logging_test.dir/Logging_test.cc.o.requires

.PHONY : mymuduo/base/test/CMakeFiles/Logging_test.dir/requires

mymuduo/base/test/CMakeFiles/Logging_test.dir/clean:
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/base/test && $(CMAKE_COMMAND) -P CMakeFiles/Logging_test.dir/cmake_clean.cmake
.PHONY : mymuduo/base/test/CMakeFiles/Logging_test.dir/clean

mymuduo/base/test/CMakeFiles/Logging_test.dir/depend:
	cd /home/kevin/project/learning-cpp-server/mymuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/project/learning-cpp-server/mymuduo/source /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/base/test /home/kevin/project/learning-cpp-server/mymuduo/build /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/base/test /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/base/test/CMakeFiles/Logging_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mymuduo/base/test/CMakeFiles/Logging_test.dir/depend

