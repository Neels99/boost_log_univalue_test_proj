#include <iostream>
#include <map>
#include <string>
#include <memory>
#include <tuple>

using namespace std;

template <typename T1, typename T2>
T2 random_choice(map<T1, T2> dict)
{
    int pos = 3;
    auto item = dict.begin();
    std::advance(item, pos);
    return item->second;
}

class A
{
public:
    string a;

    A(string _a)
    {
        a = _a;
    }
};

class k
{
public:
    int a;

    k(int _a)
    {
        a = _a;
    }
};

int main()
{

    map<shared_ptr<k>, shared_ptr<A>> dict;
    auto a = make_shared<A>("1");
    dict[make_shared<k>(0)] = a;
    a = make_shared<A>("2");
    dict[make_shared<k>(7)] = a;
    a = make_shared<A>("3");
    dict[make_shared<k>(2)] = a;
    a = make_shared<A>("4");
    dict[make_shared<k>(11)] = a;

    cout << random_choice(dict)->a << endl;

    return 0;
}