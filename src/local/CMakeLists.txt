include_directories(../graph ../tools)

add_library(cliqueLocal cliqueLocal.h cliqueLocal.cpp)
target_link_libraries(cliqueLocal Graph linearSet types)

add_library(sdcLocal sdcLocal.h sdcLocal.cpp)
target_link_libraries(sdcLocal Graph linearSet types)

add_library(plexLocal plexLocal.h plexLocal.cpp)
target_link_libraries(plexLocal Graph linearSet types)
