#include <univalue.h>
#include <iostream>
#include <cstring>
#include <string>
#include <vector>

using namespace std;


int main()
{
    unsigned char *line = new unsigned char[6]{0x83, 0xE6, 0x5D, 0x2C, 0x0, 0x83};
    string str = "1234";
    cout << line << endl;
    UniValue value(UniValue::VOBJ);
    UniValue varr(UniValue::VARR);
    for (int i = 0; i < 6; i++)
    {
        varr.push_back(line[i]);
    }

    value.pushKV("str1", varr);
    value.pushKV("str2", str);
    cout << value.write() << endl;
    //--------
    UniValue value2(UniValue::VOBJ);
    value2.pushKV("str", string((char*)line));
    char* test = "t123";
    value2.pushKV("str2", test);
    cout << value2.write() << endl;


    return 0;
}