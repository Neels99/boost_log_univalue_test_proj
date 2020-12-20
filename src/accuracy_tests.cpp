#include <iostream>
#include <string>
#include "uint256.h"
#include "arith_uint256.h"
#include <sstream>


using namespace std;

int main()
{
    arith_uint256 N("0123566567");
    cout << N.GetHex() << endl;
    cout << N.GetCompact() << endl;
    cout << N.GetLow64() << endl;
    cout << N.bits() << endl;

    //----------------------
    cout << "---------" << endl;
    double a = 2.695953529101131e+67;
    stringstream ss;
    ss << a;
    string a_str;
    ss >> a_str;
    cout << a_str << endl;
    stringstream ss2;
    ss2 << a_str;
    double b;
    ss2 >> b;
    cout << b << endl;

}