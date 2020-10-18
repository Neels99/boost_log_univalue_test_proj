#include <iostream>
#include <memory>

class Base
{
public:
    int a;
    virtual void f() { std::cout << "I am base!\n"; }
};

class Derived : public Base
{
public:
    // virtual void v() {}

    void f() override
    {
        std::cout << "I am derived!\n";
    }
};

class Derived2 : public Derived
{
public:
    void f() override
    {
        std::cout << "I am derived2!\n";
    }

    // void v() override
    // {
    //     std::cout << "I am derived2 FUCK!\n";
    // }
};

int main()
{
    auto basePtr = std::make_shared<Base>();
    std::cout << "Base pointer says: ";
    basePtr->f();

    // auto derivedPtr = std::make_shared<Derived>();
    // std::cout << "Derived pointer says: ";
    // derivedPtr->f();

    auto derived2Ptr = std::make_shared<Derived2>();
    std::cout << "Derived2 pointer says: ";
    derived2Ptr->f();

    // // static_pointer_cast to go up class hierarchy
    // basePtr = std::static_pointer_cast<Base>(derivedPtr);
    // std::cout << "Base pointer to derived says: ";
    // basePtr->f();

    // // static_pointer_cast to go up class hierarchy
    // basePtr = std::static_pointer_cast<Base>(derived2Ptr);
    // std::cout << "Base pointer to derived says: ";
    // basePtr->f();

    // dynamic_pointer_cast to go down/across class hierarchy
    auto downcastedPtr = std::dynamic_pointer_cast<Derived>(basePtr);
    if (downcastedPtr)
    {
        std::cout << "Downcasted pointer says: ";
        downcastedPtr->f();
    } else {
        std::cout << "MDA-MDA-MDA";
    }

    // // All pointers to derived share ownership
    // std::cout << "Pointers to underlying derived: "
    //           << derivedPtr.use_count()
    //           << "\n";
}