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
include mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/depend.make

# Include the progress variables for this target.
include mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/progress.make

# Include the compile flags for this target's objects.
include mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/flags.make

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o: mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/flags.make
mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o: /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/test/HttpServer_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http/test && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o -c /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/test/HttpServer_test.cc

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.i"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http/test && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/test/HttpServer_test.cc > CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.i

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.s"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http/test && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/test/HttpServer_test.cc -o CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.s

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o.requires:

.PHONY : mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o.requires

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o.provides: mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o.requires
	$(MAKE) -f mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/build.make mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o.provides.build
.PHONY : mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o.provides

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o.provides.build: mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o


# Object files for target HttpServer_test
HttpServer_test_OBJECTS = \
"CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o"

# External object files for target HttpServer_test
HttpServer_test_EXTERNAL_OBJECTS =

bin/HttpServer_test: mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o
bin/HttpServer_test: mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/build.make
bin/HttpServer_test: lib/libmymuduo_http.a
bin/HttpServer_test: lib/libmymuduo_net.a
bin/HttpServer_test: lib/libmymuduo_base.a
bin/HttpServer_test: mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/HttpServer_test"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HttpServer_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/build: bin/HttpServer_test

.PHONY : mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/build

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/requires: mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/HttpServer_test.cc.o.requires

.PHONY : mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/requires

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/clean:
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http/test && $(CMAKE_COMMAND) -P CMakeFiles/HttpServer_test.dir/cmake_clean.cmake
.PHONY : mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/clean

mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/depend:
	cd /home/kevin/project/learning-cpp-server/mymuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/project/learning-cpp-server/mymuduo/source /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/test /home/kevin/project/learning-cpp-server/mymuduo/build /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http/test /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mymuduo/net/http/test/CMakeFiles/HttpServer_test.dir/depend

