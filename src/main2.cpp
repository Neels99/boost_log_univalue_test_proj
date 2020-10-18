#include <iostream>
#include <sstream>
#include <string>
#include <cstring>
using namespace std;


int compare(const void* a, const void* b, int len){
    return memcmp(a, b, len);
}


int main(){
    
    string str = "131 230 93 44 129 191 109 104 118 101 114 115 105 111 110 0 0 0 0 0 127 0 0 0 238 111 72 183 229 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 255 255 176 113 237 162 232 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 255 255 192 168 10 10 19 160 222 68 40 159 35 179 111 122 18 56 50 50 50 101 56 55 45 99 50 112 111 111 108 46 98 105 116 1 0 0 0 9 99 157 28 42 173 132 73 228 168 76 183 167 68 148 11 14 199 1 81 167 205 90 94 157 24 97 51 82 99 130 210";
    stringstream ss;

    ss << str;
    
    int buff;
    int i = 0;
    char* a = new char[155];
    unsigned char* b = new unsigned char[155];
    while (ss >> buff){
        // char* c_buff = new char[buff.length()];
        // memcpy(c_buff, buff.c_str(), buff.length())
        // a[i] = static_cast<char>(c_buff);
        a[i] = buff;
        b[i] = buff;
    }
    unsigned char* c = new unsigned char[155];
    c = static_cast<unsigned char*>(static_cast<void *>(a));
    unsigned char* d = new unsigned char[155];
    d = reinterpret_cast<unsigned char*>(a);
    char* e = new char[155];
    e = reinterpret_cast<char*>(c);

    cout << a << endl;
    cout << b << endl;
    cout << c << endl;
    cout << d << endl;
    cout << e << endl;
    cout << "_____" << endl;
    
    cout << compare(c, e, 155) << endl;
    

    return 0;
}