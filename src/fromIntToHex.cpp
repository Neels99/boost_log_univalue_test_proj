#include <iostream>
#include <sstream>
#include <uint256.h>
#include <iomanip>
#include <string>
#include <algorithm>
#include "config.h"

#include <tuple>
#include <string>

using namespace std;

class TestNetwork : public c2pool::config::Network
{
public:
    TestNetwork() : Network()
    {
        BOOTSTRAP_ADDRS = {
            CREATE_ADDR("217.72.4.157", "5024")
            //"217.42.4.157:5025"
        };
        PREFIX_LENGTH = 8;
        PREFIX = new unsigned char[PREFIX_LENGTH]{0x83, 0xE6, 0x5D, 0x2C, 0x81, 0xBF, 0x6D, 0x68};
        IDENTIFIER = new unsigned char[8]{0x83, 0xE6, 0x5D, 0x2C, 0x81, 0xBF, 0x6D, 0x68};
        MINIMUM_PROTOCOL_VERSION = 1600;
        SEGWIT_ACTIVATION_VERSION = 17;
    }
};


void TestTuple(tuple<std::string, std::string> addr){
    cout << std::get<0>(addr) << ":" << std::get<1>(addr);
}

int main(){

    // uint256 uin;

    // stringstream ss;
    // ss << std::hex << 1234321;

    // std::string s;

    // ss >> s;

    // uin.SetHex(s);

    // cout << uin.ToString() << endl;

    auto test = make_tuple<std::string, std::string>("123.123.123.123", "321");

    TestTuple(test);


    return 0;
}