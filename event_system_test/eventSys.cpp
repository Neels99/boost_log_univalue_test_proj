#include <boost/signals2.hpp>
#include <iostream>

class Test
{
public:
    int i = 1488;
};

struct View
{
    void OnUpdate(Test i) { std::cout << "Updating in View = " << i.i << "\n"; }
};

class View2
{
public:
    virtual void TTst() {};
    void OnUpd(Test i, int ii) { std::cout << "UPD in View2 = " << i.i << " " << ii << "\n"; }
};

template <typename... Args>
class Controller3
{
    boost::signals2::signal<void(Args...)> sig;

public:
    Controller3() {}

    template <typename _Func, typename... _BoundArgs>
    void subscribe(_Func &&__f, _BoundArgs &&... __args)
    {
        sig.connect(std::bind(__f, __args...));
    }
    void DoWork(Args... args) const { sig(args...); }
    void Update();
};

template <typename T>
class TestParent{

};

template <typename T>
class Controller2 : TestParent<int>
{
    boost::signals2::signal<void(T)> sig;

public:
    Controller2() {}

    template <typename _Func, typename... _BoundArgs>
    void subscribe(_Func &&__f, _BoundArgs &&... __args)
    {
        sig.connect(std::bind(__f, __args...));
    }
    void DoWork(T i) const { sig(i); }
    void Update();
};

class Controller
{
    using UpdateHandler = boost::signals2::signal<void(Test)>;
    UpdateHandler sig;

public:
    Controller() {}

    void subscribe(UpdateHandler::slot_type handler) { sig.connect(handler); }
    void DoWork(Test i) const { sig(i); }
    void Update();
};

int main()
{
    using namespace std::placeholders;
    View l1;
    View2 l2;
    //Controller c;
    //Controller2<Test> c;
    Controller3<Test, int> c;
    Test test;
    int b = 322;
    c.subscribe(&View2::OnUpd, &l2, _1, _2);
    // c.subscribe(std::bind(&View2::OnUpd, &l2, _1));
    // c.subscribe([](Test i) { std::cout << "Or we can attach a random action\n"; });

    c.DoWork(test, b);
}