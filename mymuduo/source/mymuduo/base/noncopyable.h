#ifndef NONCOPYABLE_H
#define NONCOPYABLE_H

namespace mymuduo
{

class noncopyable
{
 public:
  noncopyable(const noncopyable&) = delete;
  void operator=(const noncopyable&) = delete;

 protected:
  noncopyable() = default;
  ~noncopyable() = default;
};

}  // namespace mymuduo

#endif  // NONCOPYABLE_H
