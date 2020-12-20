#include <tuple>
#include <map>
#include <iostream>
#include <uint256.h>
using namespace std;

class A
{
public:
    A(){

    }

    A(int h, uint256 t)
    {
        height = h;
        tail = t;
    }
    uint256 tail;
    int height;
};

class B
{
public:
    B(int h, uint256 t)
    {
        height = h;
        tail = t;
        test = h;
    }
    uint256 tail;
    int height;
    int test;
};

template <typename T>
class All
{
public:
    

    tuple<int, uint256> get_height_tail()
    {
        uint256 ui;
        ui.SetHex("01");
        auto delta = get_T(1, ui);
        return make_tuple(delta.height, delta.tail);
    }

    T get_T(int h, uint256 t)
    {
        return T(h, t);
    }
};

int main()
{
    All<A> all1;
    All<B> all2;

    auto tupl = all1.get_height_tail();
    cout << get<0>(tupl) << endl;

    auto tup2 = all2.get_height_tail();
    cout << get<0>(tup2) << endl;

    map<uint256, tuple<uint256, A>> m;

    uint256 ui;
    ui.SetHex("1");

    m[ui] = make_tuple(ui, A(100, ui));

    cout << get<1>(m[ui]).height << endl;

    return 0;
}