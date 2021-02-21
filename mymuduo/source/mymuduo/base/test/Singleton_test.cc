#include "mymuduo/base/Singleton.h"
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

class TestNoDestroy : mymuduo::noncopyable
{
 public:
  // Tag member for Singleton<T>
  void no_destroy();

  TestNoDestroy()
  {
    printf("tid=%d, constructing TestNoDestroy %p\n", mymuduo::CurrentThread::tid(), this);
  }

  ~TestNoDestroy()
  {
    printf("tid=%d, destructing TestNoDestroy %p\n", mymuduo::CurrentThread::tid(), this);
  }
};

void threadFunc()
{
  printf("tid=%d, %p name=%s\n",
         mymuduo::CurrentThread::tid(),
         &mymuduo::Singleton<Test>::instance(),
         mymuduo::Singleton<Test>::instance().name().c_str());
  mymuduo::Singleton<Test>::instance().setName("only one, changed");
}

int main()
{
  mymuduo::Singleton<Test>::instance().setName("only one");
  mymuduo::Thread t1(threadFunc);
  t1.start();
  t1.join();
  printf("tid=%d, %p name=%s\n",
         mymuduo::CurrentThread::tid(),
         &mymuduo::Singleton<Test>::instance(),
         mymuduo::Singleton<Test>::instance().name().c_str());
  mymuduo::Singleton<TestNoDestroy>::instance();
  printf("with valgrind, you should see %zd-byte memory leak.\n", sizeof(TestNoDestroy));
}
