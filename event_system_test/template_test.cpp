#include <iostream>
#include "template_test.h"

template <typename T>
int TemplateClass<T>::TestDef(T item)
{
    return item.head;
}

class FirstItem
{
public:
    int head;
};

class SecondItem
{
public:
    int head;
    int tail;
};

class A : TemplateClass<FirstItem>
{
public:
    void Test()
    {
        FirstItem item;
        item.head = 322;
        std::cout << TestDef(item) << "\n";
    }
};

class B : TemplateClass<SecondItem>
{
public:
    void Test()
    {
        SecondItem item;
        item.head = 223;
        item.tail = 1337;
        std::cout << TestDef(item) << " " << item.tail << "\n";
    }
};
#include <map>
#include <set>
using std::map, std::set;
int main()
{
    A a;
    a.Test();
    B b;
    b.Test();

    map<int, set<int>> dict;

    dict[22].insert(1);
    dict[22].insert(1);

    for (auto item : dict[22]){
        std::cout << item << "\n";
    }

    return 0;
}