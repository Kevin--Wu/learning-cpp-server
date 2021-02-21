#include <mymuduo/net/inspect/Inspector.h>
#include <mymuduo/net/EventLoop.h>
#include <mymuduo/net/EventLoopThread.h>

using namespace mymuduo;
using namespace mymuduo::net;

int main()
{
  EventLoop loop;
  EventLoopThread t;	// 监控线程
  Inspector ins(t.startLoop(), InetAddress(12345), "test");
  loop.loop();
}

