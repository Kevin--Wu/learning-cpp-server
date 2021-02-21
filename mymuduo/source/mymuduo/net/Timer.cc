// Copyright 2010, Shuo Chen.  All rights reserved.
// http://code.google.com/p/mymuduo/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.

// Author: Shuo Chen (chenshuo at chenshuo dot com)

#include <mymuduo/net/Timer.h>

using namespace mymuduo;
using namespace mymuduo::net;

AtomicInt64 Timer::s_numCreated_;

void Timer::restart(Timestamp now)
{
  if (repeat_)
  {
    // 重新计算下一个超时时刻
    expiration_ = addTime(now, interval_);
  }
  else
  {
    expiration_ = Timestamp::invalid();
  }
}
