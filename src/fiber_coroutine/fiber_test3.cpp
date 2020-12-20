#include <cstdlib>
#include <iostream>
#include <memory>
#include <string>
#include <thread>
#include <chrono>
#include <thread>

#include <boost/intrusive_ptr.hpp>

#include <boost/fiber/all.hpp>

void fn(int &value, int n)
{
    for (int i = 0; i < n; i++)
    {
        std::cout << "fn" << boost::this_fiber::get_id() << std::endl;
        value = i;
        boost::this_fiber::yield();
    }
}

void fn2(int &value, int &value2, int n)
{
    boost::fibers::fiber f2(fn, std::ref(value2), 5);
    f2.detach();
    for (int i = 0; i < 3; i++)
    {
        std::cout << "fn" << boost::this_fiber::get_id() << std::endl;
        value = i;
        boost::this_fiber::yield();
    }
}

int main()
{

    int value = 0;
    int value2 = 0;
    boost::fibers::fiber f1(fn2, std::ref(value), std::ref(value2), 5);
    
    
    f1.detach();
    for (int i = 0; i < 5; i++)
    {
        std::cout << "main" << boost::this_fiber::get_id() << std::endl;
        boost::this_fiber::yield();
        std::cout << value << "-" << value2 << std::endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    }
    //f2.join();
}