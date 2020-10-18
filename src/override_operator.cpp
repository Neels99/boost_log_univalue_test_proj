#include <iostream>
#include <sstream>
#include <memory>
using namespace std;

class A
{
public:
    shared_ptr<int> i;

    friend std::istream &operator>>(std::istream &is, A &value)
    {
        int buff;
        is >> buff;
        value.i = make_shared<int>(buff);
        // is >> value.i;
    }

    friend std::ostream &operator<<(std::ostream &os, const A &value)
    {
        os << *value.i;
    }
};

class B
{
public:
    shared_ptr<A> a;

    friend std::istream &operator>>(std::istream &is, B &value)
    {
        // A buff;
        // is >> buff;
        // value.a = make_shared<A>(buff);
        
        value.a = make_shared<A>();
        is >> *value.a;
        return is;
    }

    friend std::ostream &operator<<(std::ostream &os, const B &value)
    {
        os << *value.a;
        return os;
    }
};

int main()
{
    B b;
    stringstream ss;
    cout << "start" << endl;
    ss << 12;
    ss >> b;
    cout << b << endl;
    return 0;
}