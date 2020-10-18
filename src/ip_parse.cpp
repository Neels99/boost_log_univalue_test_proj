#include <iostream>
#include <string>
using namespace std;

int main(int argc, char **argv)
{
    for (int i = 1; i < argc; ++i)
    {
        string str(argv[i]);
        cout << str << "\n";

        size_t pos_dd = str.find(":");
        if (pos_dd != string::npos){
            string ip = str.substr(0, pos_dd);
            string port = str.substr(pos_dd+1, str.size());
        }
    }

    return 0;
}