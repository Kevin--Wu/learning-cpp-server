#include "mymuduo/base/ThreadLocalSingleton.h"
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

void threadFunc(const char* changeTo)
{
  printf("tid=%d, %p name=%s\n",
         mymuduo::CurrentThread::tid(),
         &mymuduo::ThreadLocalSingleton<Test>::instance(),
         mymuduo::ThreadLocalSingleton<Test>::instance().name().c_str());
  mymuduo::ThreadLocalSingleton<Test>::instance().setName(changeTo);
  printf("tid=%d, %p name=%s\n",
         mymuduo::CurrentThread::tid(),
         &mymuduo::ThreadLocalSingleton<Test>::instance(),
         mymuduo::ThreadLocalSingleton<Test>::instance().name().c_str());

  // no need to manually delete it
  // mymuduo::ThreadLocalSingleton<Test>::destroy();
}

int main()
{
  mymuduo::ThreadLocalSingleton<Test>::instance().setName("main one");
  mymuduo::Thread t1(std::bind(threadFunc, "thread1"));
  mymuduo::Thread t2(std::bind(threadFunc, "thread2"));
  t1.start();
  t2.start();
  t1.join();
  printf("tid=%d, %p name=%s\n",
         mymuduo::CurrentThread::tid(),
         &mymuduo::ThreadLocalSingleton<Test>::instance(),
         mymuduo::ThreadLocalSingleton<Test>::instance().name().c_str());
  t2.join();

  pthread_exit(0);
}
