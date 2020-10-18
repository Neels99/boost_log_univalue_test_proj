# Install script for directory: C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/boost_log")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Program Files/mingw-w64/x86_64-8.1.0-posix-seh-rt_v6-rev0/mingw64/bin/objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/build/leveldb/libleveldb.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/leveldb" TYPE FILE FILES
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/c.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/cache.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/comparator.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/db.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/dumpfile.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/env.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/export.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/filter_policy.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/iterator.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/options.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/slice.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/status.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/table_builder.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/table.h"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/leveldb/include/leveldb/write_batch.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb/leveldbTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb/leveldbTargets.cmake"
         "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/build/leveldb/CMakeFiles/Export/lib/cmake/leveldb/leveldbTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb/leveldbTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb/leveldbTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb" TYPE FILE FILES "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/build/leveldb/CMakeFiles/Export/lib/cmake/leveldb/leveldbTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb" TYPE FILE FILES "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/build/leveldb/CMakeFiles/Export/lib/cmake/leveldb/leveldbTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb" TYPE FILE FILES
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/build/leveldb/cmake/leveldbConfig.cmake"
    "C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/build/leveldb/cmake/leveldbConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/vasil/Desktop/boost_test/boost-log-example-master/boost_log_univalue_test_proj/build/leveldb/third_party/googletest/cmake_install.cmake")

endif()

