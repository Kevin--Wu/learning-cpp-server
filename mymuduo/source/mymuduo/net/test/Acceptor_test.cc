#include <mymuduo/net/Acceptor.h>
#include <mymuduo/net/EventLoop.h>
#include <mymuduo/net/InetAddress.h>
#include <mymuduo/net/SocketsOps.h>

#include <stdio.h>

using namespace mymuduo;
using namespace mymuduo::net;

void newConnection(int sockfd, const InetAddress& peerAddr)
{
  printf("newConnection(): accepted a new connection from %s\n",
         peerAddr.toIpPort().c_str());
  ::write(sockfd, "How are you?\n", 13);
  sockets::close(sockfd);
}

int main()
{
  printf("main(): pid = %d\n", getpid());

  InetAddress listenAddr("255.255.255.255", 8888);
  EventLoop loop;

  printf("IP: %s\n", listenAddr.toIp().c_str());

  Acceptor acceptor(&loop, listenAddr);
  acceptor.setNewConnectionCallback(newConnection);
  acceptor.listen();

  loop.loop();
}

