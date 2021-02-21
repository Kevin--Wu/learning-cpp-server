// Copyright 2010, Shuo Chen.  All rights reserved.
// http://code.google.com/p/mymuduo/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.

// Author: Shuo Chen (chenshuo at chenshuo dot com)
//
// This is a public header file, it must only include public header files.

#ifndef MYMUDUO_NET_INSPECT_INSPECTOR_H
#define MYMUDUO_NET_INSPECT_INSPECTOR_H

#include <mymuduo/base/Mutex.h>
#include <mymuduo/net/http/HttpRequest.h>
#include <mymuduo/net/http/HttpServer.h>

#include <map>
#include <boost/function.hpp>
#include <boost/noncopyable.hpp>
#include <boost/scoped_ptr.hpp>

namespace mymuduo
{
namespace net
{

class ProcessInspector;

// A internal inspector of the running process, usually a singleton.
class Inspector : boost::noncopyable
{
 public:
  typedef std::vector<string> ArgList;
  typedef boost::function<string (HttpRequest::Method, const ArgList& args)> Callback;
  Inspector(EventLoop* loop,
            const InetAddress& httpAddr,
            const string& name);
  ~Inspector();

  // 如add("proc", "pid", ProcessInspector::pid, "print pid");
  // http://192.168.159.188:12345/proc/pid这个http请求就会相应的调用ProcessInspector::pid来处理
  void add(const string& module,
           const string& command,
           const Callback& cb,
           const string& help);

 private:
  typedef std::map<string, Callback> CommandList;
  typedef std::map<string, string> HelpList;

  void start();
  void onRequest(const HttpRequest& req, HttpResponse* resp);

  HttpServer server_;
  boost::scoped_ptr<ProcessInspector> processInspector_;
  MutexLock mutex_;
  std::map<string, CommandList> commands_;
  std::map<string, HelpList> helps_;
};

}
}

#endif  // MUDUO_NET_INSPECT_INSPECTOR_H
