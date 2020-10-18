#include <thread>
#include <chrono>
#include <cstring>
#include <iostream>

#include <uint256.h>
#include <arith_uint256.h>

// #include <streams.h>

#include <iomanip>
#include <sstream>
#include <string>



using namespace std;

void DoWork(int t){
    while (true)
    {
        cout << this_thread::get_id() << "\t DoWork " << endl;
        this_thread::sleep_for(chrono::milliseconds(t));
    }
}


std::string ArrayToString(const unsigned char A[], unsigned int width)
{
    std::stringstream Stream;
    Stream << std::hex;
    for (unsigned int i = 0; i < width; ++i)
    {
        Stream<<std::setw(2)<<std::setfill('0')<<(unsigned int)A[width-i-1];
    }
    return Stream.str();
}

inline uint160 uint160S(const char *str)
{
    uint160 rv;
    rv.SetHex(str);
    return rv;
}
inline uint160 uint160S(const std::string& str)
{
    uint160 rv;
    rv.SetHex(str);
    return rv;
}


int main()
{  
    // thread th(DoWork, 1000);
    // thread th2(DoWork, 1000);
    // thread th3(DoWork, 1000);
    // thread th4(DoWork, 1000);
    // thread th5(DoWork, 1000);
    // thread th6(DoWork, 1000);
    // thread th7(DoWork, 1000);
    // thread th8(DoWork, 1000);
    // thread th9(DoWork, 1000);
    // thread th10(DoWork, 1000);
    // thread th11(DoWork, 1000);
    // thread th12(DoWork, 1000);


    // //DoWork();
    // // for (size_t i = 0; i < 10; i++)
    // // {
    // //     cout << this_thread::get_id() << "\t main " << endl;
    // //     this_thread::sleep_for(chrono::milliseconds(500));
    // // }
    // th.join();
    // th2.join();
    // th3.join();
    // th4.join();
    // th5.join();
    // th6.join();
    // th7.join();
    // th8.join();
    // th9.join();
    // th10.join();
    // th11.join();
    // th12.join();

    const unsigned char R1Array[] =
    "\x9c\x52\x4a\xdb\xcf\x56\x11\x12\x2b\x29\x12\x5e\x5d\x35\xd2\xd2"
    "\x22\x81\xaa\xb5\x33\xf0\x08\x32\xd5\x56\xb1\xf9\xea\xe5\x1d\x7d";
const char R1ArrayHex[] = "56591931472623520581634001478840029381390639792584772503890130891759973716636";
const uint256 R1L = uint256(std::vector<unsigned char>(R1Array,R1Array+32));
uint256 R1Hex;
R1Hex.SetHex(R1ArrayHex);
const uint160 R1S = uint160(std::vector<unsigned char>(R1Array,R1Array+20));

const unsigned char R2Array[] =
    "\x70\x32\x1d\x7c\x47\xa5\x6b\x40\x26\x7e\x0a\xc3\xa6\x9c\xb6\xbf"
    "\x13\x30\x47\xa3\x19\x2d\xda\x71\x49\x13\x72\xf0\xb4\xca\x81\xd7";
const uint256 R2L = uint256(std::vector<unsigned char>(R2Array,R2Array+32));
const uint160 R2S = uint160(std::vector<unsigned char>(R2Array,R2Array+20));

const unsigned char ZeroArray[] =
    "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
    "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00";
const uint256 ZeroL = uint256(std::vector<unsigned char>(ZeroArray,ZeroArray+32));
const uint160 ZeroS = uint160(std::vector<unsigned char>(ZeroArray,ZeroArray+20));

const unsigned char OneArray[] =
    "\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
    "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00";
const uint256 OneL = uint256(std::vector<unsigned char>(OneArray,OneArray+32));
const uint160 OneS = uint160(std::vector<unsigned char>(OneArray,OneArray+20));

const unsigned char MaxArray[] =
    "\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"
    "\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff";
const uint256 MaxL = uint256(std::vector<unsigned char>(MaxArray,MaxArray+32));
const uint160 MaxS = uint160(std::vector<unsigned char>(MaxArray,MaxArray+20));

    if (R1Hex.ToString() == ArrayToString(R1Array,32)){
        std::cout << "YEP" << std::endl;
        std::cout << "Hex: " <<  R1Hex.ToString() <<std::endl;
        std::cout << "Arr: " <<  ArrayToString(R1Array,32) <<std::endl;
    }
    
    if (uint160S(R1S.ToString()) == R1S){
        std::cout << "YEP" << std::endl;
    }
    return 0;
}