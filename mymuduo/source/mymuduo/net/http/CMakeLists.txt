set(http_SRCS 
	HttpServer.cc
	HttpResponse.cc
)
 
add_library(mymuduo_http ${http_SRCS}) 
target_link_libraries(mymuduo_http mymuduo_net)

add_subdirectory(test)