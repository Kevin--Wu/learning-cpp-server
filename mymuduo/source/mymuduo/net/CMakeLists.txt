set(
	net_SRCS
	Acceptor.cc
	Buffer.cc
	Channel.cc
	Connector.cc
	EventLoop.cc
	EventLoopThread.cc
	EventLoopThreadPoll.cc
	InetAddress.cc
	Poller.cc
	poller/DefaultPoller.cc
	poller/EPollPoller.cc
	poller/PollPoller.cc
	Socket.cc
	SocketsOps.cc
	TcpClient.cc
	TcpConnection.cc
	TcpServer.cc
	Timer.cc
	TimerQueue.cc
)

add_library(mymuduo_net ${net_SRCS})
target_link_libraries(mymuduo_net mymuduo_base)

add_subdirectory(test)
add_subdirectory(http)
add_subdirectory(inspect)