// Multiple inheritance conversion using dynamic_cast

#include <iostream>

using namespace std;

// base class

class Base1
{
};

class Derived1 : public Base1
{
};

class Derived2 : public Base1
{
};

// derived class...

class Derived3 : public Derived1, public Derived2

{

public:
    virtual void funct1() {}
};

// dynamic_cast test function...

void funct2()

{
    Derived3 *Test1 = new Derived3;

    Derived1 *Test3 = dynamic_cast<Derived1*>(Test1);

    cout << "\nDerived1* Test3 = dynamic_cast<Derived1>(Test1);" << endl;

    if (!Test3)
        cout << "The conversion is fail..." << endl;
    else
        cout << "The conversion is successful..." << endl;

    // then cast to base1....

    Base1 *Test4 = dynamic_cast<Base1*>(Test3);

    cout << "\nBase1* Test4 = dynamic_cast<Base1>(Test3);" << endl;

    if (!Test4)
        cout << "The conversion is fail..." << endl;
    else
        cout << "The conversion is successful..." << endl;
}

int main(void)
{
    funct2();
    return 0;
}