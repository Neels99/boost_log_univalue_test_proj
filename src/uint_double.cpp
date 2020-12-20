#include <iostream>
#include <uint256.h>
#include <arith_uint256.h>

int main()
{
    arith_uint256 num("ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff");
    //num /= 3;
    std::cout << num.GetHex() << "||||||||" << num.getdouble() << std::endl;
    return 0;
}