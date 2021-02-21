#include "thread.h"

Thread::Thread(ThreadFunc func):
	m_func(func)
{

}

Thread::~Thread()
{
	
}

void Thread::Start()
{
	pthread_create(&m_threadId, NULL, ThreadRoutine, this);
}

void Thread::Join()
{
	pthread_join(m_threadId, NULL);
}

void* Thread::ThreadRoutine(void* args)
{
	Thread* thread_obj = (Thread*)args;
	thread_obj->Run();

	delete thread_obj;
}

void Thread::Run()
{
	m_func();
}