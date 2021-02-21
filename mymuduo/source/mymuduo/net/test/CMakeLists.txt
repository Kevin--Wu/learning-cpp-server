add_executable(Acceptor_test Acceptor_test.cc)
target_link_libraries(Acceptor_test mymuduo_net)

add_executable(EventLoopThread_test EventLoopThread_test.cc)
target_link_libraries(EventLoopThread_test mymuduo_net)

add_executable(InetAddress_unittest InetAddress_unittest.cc)
target_link_libraries(InetAddress_unittest mymuduo_net boost_unit_test_framework)

add_executable(Reactor_test01 Reactor_test01.cc)
target_link_libraries(Reactor_test01 mymuduo_net)

add_executable(Reactor_test02 Reactor_test02.cc)
target_link_libraries(Reactor_test02 mymuduo_net)

add_executable(Reactor_test03 Reactor_test03.cc)
target_link_libraries(Reactor_test03 mymuduo_net)

add_executable(RunInLoop_test RunInLoop_test.cc)
target_link_libraries(RunInLoop_test mymuduo_net)

add_executable(TcpClient_test TcpClient_test.cc)
target_link_libraries(TcpClient_test mymuduo_net)

# NOTE: These test apps use old version of msg callback, can cause compile error
#add_executable(TcpServer_test TcpServer_test.cc)
#target_link_libraries(TcpServer_test mymuduo_net)
#
#add_executable(TcpServerWithPoll_test TcpServerWithPoll_test.cc)
#target_link_libraries(TcpServerWithPoll_test mymuduo_net)

add_executable(TcpServerSendBuffer_test TcpServerSendBuffer_test.cc)
target_link_libraries(TcpServerSendBuffer_test mymuduo_net)

add_executable(TcpServerShutdown_test TcpServerShutdown_test.cc)
target_link_libraries(TcpServerShutdown_test mymuduo_net)

add_executable(TcpServerCharGen_test TcpServerCharGen_test.cc)
target_link_libraries(TcpServerCharGen_test mymuduo_net)

add_executable(Timer_test Timer_test.cc)
target_link_libraries(Timer_test mymuduo_net)
