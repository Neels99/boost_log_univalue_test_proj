#include <iostream>
#include <univalue.h>
#include <algorithm>

#include <tuple>

#include <ctime>
// #include "boost/log/trivial.hpp"
// #include "boost/log/utility/setup.hpp"

// static void init_log()
// {
//     static const std::string COMMON_FMT("[%TimeStamp%][%Severity%]:  %Message%");

//     boost::log::register_simple_formatter_factory< boost::log::trivial::severity_level, char >("Severity");

//     // Output message to console
//     boost::log::add_console_log(
//         std::cout,
//         boost::log::keywords::format = COMMON_FMT,
//         boost::log::keywords::auto_flush = true
//     );

//     // Output message to file, rotates when file reached 1mb or at midnight every day. Each log file
//     // is capped at 1mb and total is 20mb
//     boost::log::add_file_log (
//         boost::log::keywords::file_name = "sample_%3N.log",
//         boost::log::keywords::rotation_size = 1 * 1024 * 1024,
//         boost::log::keywords::max_size = 20 * 1024 * 1024,
//         boost::log::keywords::time_based_rotation = boost::log::sinks::file::rotation_at_time_point(0, 0, 0),
//         boost::log::keywords::format = COMMON_FMT,
//         boost::log::keywords::auto_flush = true
//     );

//     boost::log::add_common_attributes();

//     // Only output message with INFO or higher severity in Release
// #ifndef _DEBUG
//     boost::log::core::get()->set_filter(
//         boost::log::trivial::severity >= boost::log::trivial::info
//     );
// #endif

// }

// int main(int, char**)
// {
//     init_log();

//     // Output some simple log message
//     BOOST_LOG_TRIVIAL(trace) << "A trace severity message";
//     BOOST_LOG_TRIVIAL(debug) << "A debug severity message";
//     BOOST_LOG_TRIVIAL(info) << "An informational severity message";
//     BOOST_LOG_TRIVIAL(warning) << "A warning severity message";
//     BOOST_LOG_TRIVIAL(error) << "An error severity message";
//     BOOST_LOG_TRIVIAL(fatal) << "A fatal severity message";

//     return EXIT_SUCCESS;
// }
#include <tuple>
#include <map>
#include <string>
#include <fstream>
#include <vector>

class Network
{
public:
    const unsigned char *str;
    Network()
    {
        // str = new unsigned char[4];
        unsigned char str2[] = {0x01, 0x01, 0x01, 0x01};
        str = new unsigned char[4]{0x66, 0x66, 0x66, 0x66};
        //str = {0x01, 0x01, 0x01, 0x01};//new unsigned char[4]
    }
};

class Store
{
public:
    Store(int _a, std::string b, int c)
    {
        a = _a;
        store[b] = c;
    }

    int a;
    std::map<std::string, int> store;
};

class SStore
{
public:
    SStore(Store &store) : s(std::move(store))
    {
    }

    Store s;
};

void GetLen(const unsigned char *pref)
{
    std::cout << pref << std::endl;
    std::cout << strlen((char *)pref) << std::endl;
    std::cout << 1 << std::endl;
    char *pref_copy;
    const char ppref[2] = {0x1, 0x2};
    std::cout << 2 << std::endl;
    pref_copy = new char[2];
    memcpy(pref_copy, ppref, 3);
    std::cout << 3 << std::endl;
    std::cout << memcmp(ppref, pref_copy, 2) << std::endl;
}

void CheckStr(char *arr)
{
    std::cout << arr << std::endl;
}

void CheckStr2(const char arr[])
{
    std::cout << arr << std::endl;
}

#define ADDR std::tuple<std::string, int>
struct ADDR_VALUE
{
    // ADDR_VALUE(int s, float f, float l){
    //     services = s;
    //     first = f;
    //     last = l;
    // }
    int services;
    float first;
    float last;
};

int main(int, char **)
{
    UniValue val(UniValue::VOBJ);
    val.pushKV("test", 123);
    val.pushKV("tes2t", 123);
    val.pushKV("test", 1234);
    std::cout << val.write() << std::endl;
    //std::cout << val.getValStr() << std::endl;

    std::map<ADDR, ADDR_VALUE> dict;

    // auto key = std::make_tuple("123", 23);
    // dict[key] = {1, 2, 3};

    for (int i = 0; i < 15; i++)
    {
        auto key = std::make_tuple("123", i);
        dict[key] = {i + 1, i + 2.0, i + 3.0};
    }

    UniValue DictVal(UniValue::VARR);

    for (auto kv : dict)
    {
        UniValue V(UniValue::VOBJ);
        V.pushKV("address", std::get<0>(kv.first));
        V.pushKV("port", std::get<1>(kv.first));
        V.pushKV("services", kv.second.services); //dict[key].services);
        V.pushKV("first", kv.second.first);       //dict[key].first);
        V.pushKV("last", kv.second.last);         //);
        DictVal.push_back(V);
    }

    std::string json = DictVal.write();
    std::cout << json << std::endl;

    std::fstream FOUT("logs//log.log", std::ios_base::out);

    FOUT << json;
    FOUT.close();

    //_______load_________
    UniValue vRead(UniValue::VARR);
    std::string jsonFromFile;

    std::fstream FIN("logs//log.log", std::ios_base::in);

    FIN >> jsonFromFile;

    vRead.read(jsonFromFile);
    for (int i = 0; i < vRead.size(); i++)
    {
        std::cout << vRead[i]["port"].get_int() << std::endl;
    }
    //_______________________________

    Store store(1, "2", 3);
    SStore sstore(store);

    std::cout << sstore.s.store["2"] << std::endl;
    std::cout << store.store["2"] << std::endl;

    //_____________________________________

    const unsigned char prefix[8] = {0x83, 0xE6, 0x5D, 0x2C, 0x81, 0xBF, 0x6D, 0x68};

    std::cout << prefix << std::endl;

    // std::cout << strlen((char*)prefix) << std::endl;
    GetLen(prefix);
    //______________________________________

    std::cout << "_________________" << std::endl;
    //______________________________________
    const unsigned char v[] = {0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xED};

    std::cout << sizeof(v) / sizeof(v[0]) << std::endl;
    std::cout << v << std::endl;

    char *v2 = new char[sizeof(v) / sizeof(v[0])];
    strcpy(v2, (char *)v);
    std::cout << sizeof(v2) / sizeof(v2[0]) << std::endl;
    std::cout << v2 << std::endl;

    const char v3[] = {0x01};
    std::cout << strlen(v3) << " " << v3 << std::endl;

    CheckStr(v2);
    CheckStr2(v3);
    //_____________________________________

    Network net;
    std::cout << net.str << std::endl;
    //_________________________________

    std::vector<std::string> BOOTSTRAP;
    BOOTSTRAP = {"test"};
    //_________________
    std::cout << "timestamp: " << (double)std::time(nullptr) << std::endl;

    //_________________
    std::vector<int> vec = {1, 2, 3, 4, 5, 6, 7, 8, -1, 4, 100};

    std::sort(vec.begin(), vec.end(), [](int a, int b) { return a > b; });

    vec.resize(13);

    for (auto val : vec)
    {
        std::cout << val << std::endl;
    }
}