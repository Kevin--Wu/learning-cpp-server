cmake_minimum_required(VERSION 2.6)

project(09 CXX)

set(CXX_FLAGS -g -Wall)
set(CMAKE_CXX_COMPILER "g++")

set(EXECUTABLE_OUTPUT_PATH bin)

add_executable(thread_09 thread_main.cpp thread.cpp)
target_link_libraries(thread_09 pthread)