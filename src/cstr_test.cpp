#include <iostream>
#include <sstream>
using namespace std;

int main()
{
    int len_a = 4;
    char a[len_a] = {'a', 'b', '\0', 'd'};
    int len_b = 10;
    int real_len_b = 6;
    char b[10] = "123435";
    char *c = new char[4 + 6+1];

    stringstream ss;

    // ss << "%." << 4 << "s" << "%." << 5 << "s";
    // char* format = new char[ ss.str().length()];
    // ss >> format;
    // sprintf(c, "%s%s", a, b);
    memcpy(c, a, 4);
    memcpy(c+4, b, 6);
    cout << c+3 << endl;

}
