#ifndef _THREAD_H
#define _THREAD_H

#include <pthread.h>

class Thread
{
public:
	Thread();
	virtual ~Thread();

	void Start();
	void Join();

private:

	static void* ThreadRoutine(void* args);

	virtual void Run() = 0;
	pthread_t m_threadId;

};

#endif
