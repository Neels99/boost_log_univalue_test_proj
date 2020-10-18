#include <iostream>
#include <cstring>
#include <sstream>
using namespace std;

class Main
{
public:
    int a;
    char *b;

    Main(int _a, char *_b)
    {
        a = _a;
        b = new char[a];
        strcpy(b, _b);
    }
};

class A : public Main
{
public:
    int c;

    void TestA()
    {
        cout << "OK A! " << endl;
        cout << a << endl;
        cout << b << endl;
        c = a+100;
        cout << c << endl;
    }
};

class AA : public A
{
public:
    int c;

    void TestAA()
    {
        cout << "OK AA! " << endl;
        cout << a << endl;
        cout << b << endl;
        c = a+100;
        cout << c << endl;
        cout << "n1ce AA! " << endl;
    }
};

class B : public Main
{
public:
    const int len = 12;
    char bb[len];
    void TestB()
    {
        cout << "OK B!" << endl;
    }
};

int main()
{
    Main* m = new Main(4, "asd-");

    A* a;
    a = static_cast<A*>(m);

    a->TestA();

    B* b;
    b = static_cast<B*>(m);
    strcpy(b->bb, "asd-");
    
    stringstream ss;

    ss << b->bb << " ";
    ss << 12 << " ";
    ss << 1337 << " ";
    char* s = new char[12];
    ss >> s;
    cout << s << "." << endl;

    b->TestB();

    AA* aa = static_cast<AA*>(m);
    aa->TestAA();
    return 0;
}