#include "mymuduo/base/ThreadPool.h"
#include "mymuduo/base/CountDownLatch.h"
#include "mymuduo/base/CurrentThread.h"

#include <stdio.h>
#include <unistd.h>  // usleep

void print()
{
  printf("tid=%d\n", mymuduo::CurrentThread::tid());
}

void printString(const std::string& str)
{
	printf("print string %s\n", str.c_str());
  usleep(100*1000);
}

void test(int maxSize)
{
  mymuduo::ThreadPool pool("MainThreadPool");
  pool.setMaxQueueSize(maxSize);
  pool.start(5);

  pool.run(print);
  for (int i = 0; i < 100; ++i)
  {
    char buf[32];
    snprintf(buf, sizeof buf, "task %d", i);
    pool.run(std::bind(printString, std::string(buf)));
  }

  mymuduo::CountDownLatch latch(1);
  pool.run(std::bind(&mymuduo::CountDownLatch::countDown, &latch));
  latch.wait();
  pool.stop();
}

/*
 * Wish we could do this in the future.
void testMove()
{
  mymuduo::ThreadPool pool;
  pool.start(2);

  std::unique_ptr<int> x(new int(42));
  pool.run([y = std::move(x)]{ printf("%d: %d\n", mymuduo::CurrentThread::tid(), *y); });
  pool.stop();
}
*/

int main()
{
  test(0);
  test(1);
  test(5);
  test(10);
  test(50);
}
