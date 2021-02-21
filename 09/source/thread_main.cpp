#include <iostream>
using namespace std;

#include <boost/bind.hpp>

#include "thread.h"

void TestThreadFunc(int count)
{
	cout<<count<<endl;
}

class Foo
{
public:
	void ObjTestThreadFunc(int count)
	{
		cout<<"obj "<<count<<endl;
	}

	static void ObjTest2(int count)
	{
		
	}
};

int main()
{
	Thread* t1 = new Thread(boost::bind(TestThreadFunc, 5));
	t1->Start();
	t1->Join();

	Foo f1;
	Thread* t2 = new Thread(boost::bind(Foo::ObjTest2, 3));
	t2->Start();
	t2->Join();

	return 0;
}