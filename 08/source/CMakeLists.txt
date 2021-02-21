cmake_minimum_required(VERSION 2.6)

project(08 CXX)

set(CXX_FLAGS -g -Wall)
set(CMAKE_CXX_COMPILER "g++")

set(EXECUTABLE_OUTPUT_PATH bin)

add_executable(thread_08 thread_main.cpp thread.cpp)
target_link_libraries(thread_08 pthread)