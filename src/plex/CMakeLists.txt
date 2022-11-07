include_directories(../graph ../tools)

add_library(plexEnumerator plexEnumerator.h plexEnumerator4.cpp candidate.hpp)
target_link_libraries(plexEnumerator Graph linearSet types)


add_library(d2k d2k.h d2ksginC.cpp)
target_link_libraries(d2k Graph linearSet types)