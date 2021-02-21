#include "mymuduo/base/Singleton.h"
#include "mymuduo/base/CurrentThread.h"
#include "mymuduo/base/ThreadLocal.h"
#include "mymuduo/base/Thread.h"

#include <stdio.h>
#include <unistd.h>

class Test : mymuduo::noncopyable
{
 public:
  Test()
  {
    printf("tid=%d, constructing %p\n", mymuduo::CurrentThread::tid(), this);
  }

  ~Test()
  {
    printf("tid=%d, destructing %p %s\n", mymuduo::CurrentThread::tid(), this, name_.c_str());
  }

  const mymuduo::string& name() const { return name_; }
  void setName(const mymuduo::string& n) { name_ = n; }

 private:
  mymuduo::string name_;
};

#define STL mymuduo::Singleton<mymuduo::ThreadLocal<Test> >::instance().value()

void print()
{
  printf("tid=%d, %p name=%s\n",
         mymuduo::CurrentThread::tid(),
         &STL,
         STL.name().c_str());
}

void threadFunc(const char* changeTo)
{
  print();
  STL.setName(changeTo);
  sleep(1);
  print();
}

int main()
{
  STL.setName("main one");
  mymuduo::Thread t1(std::bind(threadFunc, "thread1"));
  mymuduo::Thread t2(std::bind(threadFunc, "thread2"));
  t1.start();
  t2.start();
  t1.join();
  print();
  t2.join();
  pthread_exit(0);
}
