#include <iostream>
using namespace std;

template <typename T>
class A
{
public:
    T a;

    A(){

    }

    A(T _a)
    {
        a = _a;
    }

    void Write()
    {
        std::cout << "first: " << a << std::endl;
    }

    template <typename T1>
    friend A<T1> operator+ (A<T1> first, A<T1> second);
};

template <typename TT>
A<TT> operator+ (A<TT> first, A<TT> second){
    A<TT> res;
    res.a = first.a;
    res.a += second.a;
    return res;
}

template <typename T>
class B
{
public:
    T a;

    B(T _a)
    {
        a = _a;
    }

    void Write()
    {
        std::cout << "second: " << a << std::endl;
    }
};

template<typename T1, template<typename> typename T2>
class C
{
public:

    C(T1 _a, T1 _b){
        T2<T1> obj(_a);
        T2<T1> obj2(_b);
        T2<T1> res = obj + obj2;
        res.Write();
    }
};

int main()
{  
    C<int, A> first(123,512);
    //C<float, B> second(123.123);

    return 0;
}