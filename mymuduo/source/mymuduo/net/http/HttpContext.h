// Copyright 2010, Shuo Chen.  All rights reserved.
// http://code.google.com/p/mymuduo/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.

// Author: Shuo Chen (chenshuo at chenshuo dot com)
//
// This is an internal header file, you should not include this.

#ifndef MYMUDUO_NET_HTTP_HTTPCONTEXT_H
#define MYMUDUO_NET_HTTP_HTTPCONTEXT_H

#include <mymuduo/base/copyable.h>

#include <mymuduo/net/http/HttpRequest.h>

namespace mymuduo
{
namespace net
{

class HttpContext : public mymuduo::copyable
{
 public:
  enum HttpRequestParseState
  {
    kExpectRequestLine,
    kExpectHeaders,
    kExpectBody,
    kGotAll,
  };

  HttpContext()
    : state_(kExpectRequestLine)
  {
  }

  // default copy-ctor, dtor and assignment are fine

  bool expectRequestLine() const
  { return state_ == kExpectRequestLine; }

  bool expectHeaders() const
  { return state_ == kExpectHeaders; }

  bool expectBody() const
  { return state_ == kExpectBody; }

  bool gotAll() const
  { return state_ == kGotAll; }

  void receiveRequestLine()
  { state_ = kExpectHeaders; }

  void receiveHeaders()
  { state_ = kGotAll; }  // FIXME

  // 重置HttpContext状态
  void reset()
  {
    state_ = kExpectRequestLine;
    HttpRequest dummy;
    request_.swap(dummy);
  }

  const HttpRequest& request() const
  { return request_; }

  HttpRequest& request()
  { return request_; }

 private:
  HttpRequestParseState state_;		// 请求解析状态
  HttpRequest request_;				// http请求
};

}
}

#endif  // MUDUO_NET_HTTP_HTTPCONTEXT_H
