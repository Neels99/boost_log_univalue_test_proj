#include <iostream>
#include <map>
#include <memory>
using namespace std;

class BaseShare
{
public:
    int a;
     
    virtual void Test() {};

    BaseShare()
    {
        a = 0;
    }
};

class FirstShare : public BaseShare
{
public:
    FirstShare() : BaseShare()
    {
        a = 1337;
    }

    void Test() override {
        cout << "test" << a << "\n";
    }
};

class SecondShare : public BaseShare
{
};

enum TestEnum{
    def,
    ok = 100,
    no_ok = 101
};

int main()
{
    // BaseShare* a = new FirstShare();
    // map<long long, shared_ptr<BaseShare>> dict;
    // dict[13377331] = make_shared<FirstShare>();
    // auto cpy = dict[13377331];
    // cout << cpy.use_count() << endl;
    // dict.erase(13377331);
    // cout << cpy.use_count() << endl;
    // cout << dict[13377331]->a;
    // dict[13377331]->Test();

    //-----------


    TestEnum te = (TestEnum)22;
    TestEnum te2 = no_ok;

    if (te < te2){
        cout << "OK!" << endl;
    }

    cout << te;

    switch (te2)
    {
    case ok:
    case no_ok:
        cout << "testSwitch";
        break;
    default:
        cout << "Default";
        break;
    }

    return 0;
}