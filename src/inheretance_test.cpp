#include <iostream>
#include <string>
#include <memory>
using namespace std;

class A
{
public:
    string str;
    A(string _str)
    {
        str = _str;
    }
    virtual ~A(){}
};

class B : public A
{
public:
    virtual string unpack(string t) = 0;
    virtual ~B(){}
};

class BA : public B
{
public:
    string unpack(string t) override
    {
        string temp = "a";
        return temp + str + t;
    }
    virtual ~BA(){}
};

class BB : public B
{
public:
    string unpack(string t) override
    {
        string temp = "a";
        return temp + str + t;
    }
    virtual ~BB(){}
};

template <typename TypeC>
TypeC *convert(A *_msg)
{
    auto msg = dynamic_cast<TypeC*>(_msg);
    return msg;
}

int main()
{
    A* a = new A("TEST_A");
    auto ba = convert<BA>(a);
    cout << ba->unpack("TEST_BA") << endl;
    return 0;
}