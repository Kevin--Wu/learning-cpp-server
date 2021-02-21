// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#ifndef MYMUDUO_BASE_COUNTDOWNLATCH_H
#define MYMUDUO_BASE_COUNTDOWNLATCH_H

#include "mymuduo/base/Condition.h"
#include "mymuduo/base/Mutex.h"

namespace mymuduo
{

class CountDownLatch : noncopyable
{
 public:

  explicit CountDownLatch(int count);

  void wait();

  void countDown();

  int getCount() const;

 private:
  mutable MutexLock mutex_;
  Condition condition_ GUARDED_BY(mutex_);
  int count_ GUARDED_BY(mutex_);
};

}  // namespace mymuduo
#endif  // MUDUO_BASE_COUNTDOWNLATCH_H
