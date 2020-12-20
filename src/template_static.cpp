#include <iostream>
using namespace std;

class A
{

public:
    static void Test()
    {
        cout << "Worked!" << endl;
    }
};

template <typename T>
class B
{
public:
    void Test()
    {
        T::Test();
    }
};

int main()
{

    B<A> b;
    b.Test();

    return 0;
}