#include "mymuduo/base/ThreadLocal.h"
#include "mymuduo/base/CurrentThread.h"
#include "mymuduo/base/Thread.h"

#include <stdio.h>

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

mymuduo::ThreadLocal<Test> testObj1;
mymuduo::ThreadLocal<Test> testObj2;

void print()
{
  printf("tid=%d, obj1 %p name=%s\n",
         mymuduo::CurrentThread::tid(),
         &testObj1.value(),
         testObj1.value().name().c_str());
  printf("tid=%d, obj2 %p name=%s\n",
         mymuduo::CurrentThread::tid(),
         &testObj2.value(),
         testObj2.value().name().c_str());
}

void threadFunc()
{
  print();
  testObj1.value().setName("changed 1");
  testObj2.value().setName("changed 42");
  print();
}

int main()
{
  testObj1.value().setName("main one");
  print();
  mymuduo::Thread t1(threadFunc);
  t1.start();
  t1.join();
  testObj2.value().setName("main two");
  print();

  pthread_exit(0);
}
