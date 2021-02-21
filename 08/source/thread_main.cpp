#include <iostream>
using namespace std;

#include "thread.h"

class TestThread: public Thread
{
public:
	TestThread(int count)
	{
		m_count = count;
	}

private:
	int m_count;
	
	void Run()
	{
		while(m_count--)
		{
			cout<<"This is Thread "<<m_count<<endl;
		}
	}
};

int main()
{
	TestThread* test_thread = new TestThread(5);
	test_thread->Start();
	test_thread->Join();

	return 0;
}