#include <iostream>
#include "univalue.h"

using namespace std;

class Base
{
public:
    int _base;
    operator UniValue()
    {
        UniValue value;
        value.pushKV("_base", _base);
        return value;
    }

    Base operator=(UniValue value)
    {
        _base = value["_base"].get_int();
        return *this;
    }
};

class A : public Base
{
public:
    int _a;
    operator UniValue()
    {
        UniValue value;
        value.pushKV("_a", _a);
        return value;
    }

    A operator=(UniValue value)
    {
        _a = value["_a"].get_int();
        return *this;
    }
};

int main()
{
    UniValue testV(UniValue::VOBJ);
    testV.pushKV("_a", 1337);
    testV.pushKV("_base", 7331);

    Base _BASE;
    _BASE = testV;
    cout << _BASE._base << endl;

    A _A;
    _A = testV;
    cout << _A._a << endl;

    Base* _base_a = new A();
    _base_a.


    return 0;
}