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
include mymuduo/net/http/CMakeFiles/mymuduo_http.dir/depend.make

# Include the progress variables for this target.
include mymuduo/net/http/CMakeFiles/mymuduo_http.dir/progress.make

# Include the compile flags for this target's objects.
include mymuduo/net/http/CMakeFiles/mymuduo_http.dir/flags.make

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/flags.make
mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o: /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/HttpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo_http.dir/HttpServer.cc.o -c /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/HttpServer.cc

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo_http.dir/HttpServer.cc.i"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/HttpServer.cc > CMakeFiles/mymuduo_http.dir/HttpServer.cc.i

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo_http.dir/HttpServer.cc.s"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/HttpServer.cc -o CMakeFiles/mymuduo_http.dir/HttpServer.cc.s

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o.requires:

.PHONY : mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o.requires

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o.provides: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o.requires
	$(MAKE) -f mymuduo/net/http/CMakeFiles/mymuduo_http.dir/build.make mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o.provides.build
.PHONY : mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o.provides

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o.provides.build: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o


mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/flags.make
mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o: /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/HttpResponse.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o -c /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/HttpResponse.cc

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo_http.dir/HttpResponse.cc.i"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/HttpResponse.cc > CMakeFiles/mymuduo_http.dir/HttpResponse.cc.i

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo_http.dir/HttpResponse.cc.s"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http/HttpResponse.cc -o CMakeFiles/mymuduo_http.dir/HttpResponse.cc.s

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o.requires:

.PHONY : mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o.requires

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o.provides: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o.requires
	$(MAKE) -f mymuduo/net/http/CMakeFiles/mymuduo_http.dir/build.make mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o.provides.build
.PHONY : mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o.provides

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o.provides.build: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o


# Object files for target mymuduo_http
mymuduo_http_OBJECTS = \
"CMakeFiles/mymuduo_http.dir/HttpServer.cc.o" \
"CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o"

# External object files for target mymuduo_http
mymuduo_http_EXTERNAL_OBJECTS =

lib/libmymuduo_http.a: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o
lib/libmymuduo_http.a: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o
lib/libmymuduo_http.a: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/build.make
lib/libmymuduo_http.a: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kevin/project/learning-cpp-server/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../../lib/libmymuduo_http.a"
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && $(CMAKE_COMMAND) -P CMakeFiles/mymuduo_http.dir/cmake_clean_target.cmake
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mymuduo_http.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mymuduo/net/http/CMakeFiles/mymuduo_http.dir/build: lib/libmymuduo_http.a

.PHONY : mymuduo/net/http/CMakeFiles/mymuduo_http.dir/build

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/requires: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpServer.cc.o.requires
mymuduo/net/http/CMakeFiles/mymuduo_http.dir/requires: mymuduo/net/http/CMakeFiles/mymuduo_http.dir/HttpResponse.cc.o.requires

.PHONY : mymuduo/net/http/CMakeFiles/mymuduo_http.dir/requires

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/clean:
	cd /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http && $(CMAKE_COMMAND) -P CMakeFiles/mymuduo_http.dir/cmake_clean.cmake
.PHONY : mymuduo/net/http/CMakeFiles/mymuduo_http.dir/clean

mymuduo/net/http/CMakeFiles/mymuduo_http.dir/depend:
	cd /home/kevin/project/learning-cpp-server/mymuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/project/learning-cpp-server/mymuduo/source /home/kevin/project/learning-cpp-server/mymuduo/source/mymuduo/net/http /home/kevin/project/learning-cpp-server/mymuduo/build /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http /home/kevin/project/learning-cpp-server/mymuduo/build/mymuduo/net/http/CMakeFiles/mymuduo_http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mymuduo/net/http/CMakeFiles/mymuduo_http.dir/depend
