#include <iostream>
#include <univalue.h>

#include <tuple>
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

    auto key = std::make_tuple("123", 23);
    dict[key] = {1, 2, 3};

    auto key2 = std::make_tuple("1488", 322);
    dict[key2] = {3, 2, 1};

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

    //_______load_________
    UniValue vRead(UniValue::VARR);

    vRead.read(json);
    for (int i = 0; i < vRead.size(); i++)
    {
        std::cout << vRead[i]["address"].get_str() << std::endl;
    }
}
