add_subdirectory(test)

set(
	base_SRCS 
	CurrentThread.cc
	Condition.cc
	CountDownLatch.cc
	Date.cc
	Exception.cc
	FileUtil.cc
	LogFile.cc
	Logging.cc
	LogStream.cc
	ProcessInfo.cc
	Thread.cc
	ThreadPool.cc
	Timestamp.cc
	TimeZone.cc
)
add_library(mymuduo_base ${base_SRCS})
target_link_libraries(mymuduo_base pthread rt)


