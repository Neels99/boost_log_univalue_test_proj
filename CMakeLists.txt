cmake_minimum_required(VERSION 3.18.1)
project(boost_log CXX)

set(SRC_FILES src/main.cpp)

add_executable(boost_log ${SRC_FILES})
# target_link_libraries(boost_log ${Boost_LIBRARIES} Threads::Threads  Boost::log_setup Boost::log)


#include_directories(univalue)
add_subdirectory(univalue)

target_link_libraries(boost_log univalue)