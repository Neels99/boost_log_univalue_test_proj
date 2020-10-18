cmake_minimum_required(VERSION 3.18.1)
project(boost_log CXX)

#set(SRC_FILES src/shared_ptr_test.cpp)
# set(SRC_FILES test_leveldb/main.cpp)
set(SRC_FILES test_leveldb/from_github.cpp)
set(Boost_USE_STATIC_LIBS ON)
add_executable(boost_log ${SRC_FILES})

find_package(Boost 1.74.0 COMPONENTS log log_setup filesystem REQUIRED)
target_link_libraries(boost_log ${Boost_LIBRARIES} Threads::Threads  Boost::log_setup Boost::log Boost::filesystem)


# include_directories(bna)
include_directories(dbshell)
include_directories(btclibs)
add_subdirectory(univalue)
add_subdirectory(btclibs)
add_subdirectory(leveldb)
add_subdirectory(dbshell)
# add_subdirectory(bna)

target_link_libraries(boost_log univalue btclibs leveldb dbshell)#bna)