project(11 CXX)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CXX_FLAGS -g -Wall)
set(CMAKE_CXX_COMPILER "g++")
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

set(base_SRCS Atomic_unittest.cc)
add_executable(atomic_test Atomic_unittest.cc)


