include_directories(../graph ../tools)

add_library(maximalSDC maximalSDC.h maximalSDC.cpp)
target_link_libraries(maximalSDC Graph linearSet types)

add_library(kDList kDList.h kDList.cpp)
target_link_libraries(kDList Graph types)