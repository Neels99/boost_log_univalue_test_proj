#include <iostream>
#include <string>
#include <uint256.h>
#include <arith_uint256.h>
#include <sstream>

using namespace std;

int main(){

    string s = "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    uint256 first;
    first.SetHex(s);

    cout << first.ToString() << "\n";

    arith_uint256 a_first;

    a_first = UintToArith256(first);
    cout << a_first.ToString() << "\n";

    string s2 = "8000000000000000000000000000000000000000000000000000000000000000";
    arith_uint256 a_second(s2);

    a_first -= a_second;

    cout << a_first.ToString() << "\n";

    arith_uint256 a_third = a_first*2;
    cout << a_third.ToString() << "\n";

    uint256 compare_first;
    compare_first.SetHex("0");
    uint256 compare_second;
    compare_second.SetHex("1");

    cout << "First[0] > Second[1]: " << compare_first.Compare(compare_second) << "\n";
    cout << "Second[1] > First[0]: " << compare_second.Compare(compare_first) << "\n";





    return 0;
}