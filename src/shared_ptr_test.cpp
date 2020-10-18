#include <iostream>
#include <memory>
using namespace std;

void CheckNULL(shared_ptr<int> n)
{
    if (n == nullptr)
    {
        cout << "NULL" << endl;
    }
    else
    {
        cout << "IS NOT NULL" << endl;
    }
}

int main()
{

    shared_ptr<int> a = nullptr;

    CheckNULL(a);

    a = make_shared<int>(123);

    CheckNULL(a);
}
