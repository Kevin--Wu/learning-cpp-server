#ifndef _THREAD_H
#define _THREAD_H

#include <pthread.h>
#include <boost/function.hpp>

class Thread
{
public:
	typedef boost::function<void ()> ThreadFunc;

	Thread(ThreadFunc func);
	virtual ~Thread();

	void Start();
	void Join();
private:
	static void* ThreadRoutine(void* args);

	void Run();

	pthread_t m_threadId;
	ThreadFunc m_func;
};

#endif
