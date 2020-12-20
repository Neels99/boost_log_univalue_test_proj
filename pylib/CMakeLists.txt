project(pylib)

set(HEADER_FILES pybase.h)
set(SOURCE_FILES pybase.cpp)

add_library(pylib STATIC ${HEADER_FILES} ${SOURCE_FILES} )

# find_package(Python3 REQUIRED Development) #cmake --help-module FindPython
# message("
#     PyLibs:
#     Python3_INCLUDE_DIRS=${Python3_INCLUDE_DIRS}
#     Python3_LIBRARIES=${Python3_LIBRARIES}
# ")

#target_link_libraries(pylib PRIVATE other)
# target_compile_definitions(pylib PRIVATE RESOURCES_DIR=\"${CMAKE_SOURCE_DIR}\")
# target_include_directories(pylib PUBLIC ${Python3_INCLUDE_DIRS})
# target_link_libraries(pylib ${Python3_LIBRARIES})