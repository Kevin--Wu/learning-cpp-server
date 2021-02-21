set(
	inspect_SRCS 
	Inspector.cc
	ProcessInspector.cc
)

add_library(mymuduo_inspect ${inspect_SRCS}) 
target_link_libraries(mymuduo_inspect mymuduo_http)

if(NOT CMAKE_BUILD_NO_EXAMPLES)
	add_executable(Inspector_test test/Inspector_test.cc)
	target_link_libraries(Inspector_test mymuduo_inspect)
endif()