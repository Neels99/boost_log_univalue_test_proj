#include <cstdlib>
#include <iostream>
#include <memory>
#include <string>
#include <thread>

#include <boost/intrusive_ptr.hpp>

#include <boost/fiber/all.hpp>

void fn(int &value, int n)
{
    for (int i = 0; i < n; ++i)
    {
        value = i;
        boost::this_fiber::yield();
    }
}

void fn2(boost::fibers::fiber &f, int &value)
{
    for (int i = 0; i < 5; i++)
    {
        std::cout << value << std::endl;
        boost::this_fiber::yield();
    }
}

int main()
{
    try
    {
        int value = 0;
        boost::fibers::fiber f1(fn, std::ref(value), 5);
        boost::fibers::fiber f2(fn2, std::ref(f1), std::ref(value));
        std::cerr << "f1 : " << f1.get_id() << std::endl;
        std::cerr << "f2 : " << f2.get_id() << std::endl;
        // f1.detach();
        // f2.detach();
        f2.join();
        std::cout << "done." << std::endl;

        return EXIT_SUCCESS;
    }
    catch (std::exception const &e)
    {
        std::cerr << "exception: " << e.what() << std::endl;
    }
    catch (...)
    {
        std::cerr << "unhandled exception" << std::endl;
    }
    return EXIT_FAILURE;
}