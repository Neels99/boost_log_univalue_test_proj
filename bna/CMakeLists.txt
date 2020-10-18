project(bna)

set(HEADER 
    uint256.h
    strencodings.h
    str.h
    attributes.h
    tinyformat.h
)
set(SOURCE 
    uint256.cpp
    strencodings.cpp
    str.cpp
)

add_library(bna STATIC ${SOURCE} ${HEADER})

target_include_directories(bna PUBLIC)

# target_include_directories(bna PUBLIC STATIC)
# target_include_directories(bna PUBLIC include PRIVATE lib)