cmake_minimum_required(VERSION 3.6)

project(multiPivot)

SET(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -march=native -mavx -O3")

set(exName1 "run")
set(exName2 "d2kRun")
set(exName3 "saveAsBin")
set(exName4 "pc")
set(exName5 "pl")
set(exName6 "msdc")
set(exName7 "pd")
set(exName8 "pivoterRun")
set(exName9 "kpivoterRun")
set(exName10 "kcc") #kCListClique

add_subdirectory(src/graph)
add_subdirectory(src/plex)
add_subdirectory(src/sdc)
add_subdirectory(src/clique)
add_subdirectory(src/tools)

add_executable(${exName1} src/run/run.cpp)
add_executable(${exName2} src/run/d2kRun.cpp)
add_executable(${exName3} src/run/saveAsBin.cpp)
add_executable(${exName4} src/run/runPlexCounting.cpp)
add_executable(${exName5} src/run/runKPList.cpp)
add_executable(${exName6} src/run/msdcRunner.cpp)
add_executable(${exName7} src/run/kDListRunner.cpp)
add_executable(${exName8} src/run/pivoterRunner.cpp)
add_executable(${exName9} src/run/kpivoterRunner.cpp)
add_executable(${exName10} src/run/kclistCliqueRunner.cpp)

target_link_libraries(${exName1} getArgs)
target_link_libraries(${exName1} Graph)
target_link_libraries(${exName1} plexEnumerator)

target_link_libraries(${exName2} getArgs)
target_link_libraries(${exName2} Graph)
target_link_libraries(${exName2} d2k)

target_link_libraries(${exName3} getArgs)
target_link_libraries(${exName3} Graph)

target_link_libraries(${exName4} getArgs)
target_link_libraries(${exName4} Graph)
target_link_libraries(${exName4} plexCounting)

target_link_libraries(${exName5} getArgs)
target_link_libraries(${exName5} Graph)
target_link_libraries(${exName5} kPList)

target_link_libraries(${exName6} getArgs)
target_link_libraries(${exName6} Graph)
target_link_libraries(${exName6} maximalSDC)

target_link_libraries(${exName7} getArgs)
target_link_libraries(${exName7} Graph)
target_link_libraries(${exName7} kDList)

target_link_libraries(${exName8} getArgs)
target_link_libraries(${exName8} Graph)
target_link_libraries(${exName8} pivoter)

target_link_libraries(${exName9} getArgs)
target_link_libraries(${exName9} Graph)
target_link_libraries(${exName9} kpivoter)

target_link_libraries(${exName10} getArgs)
target_link_libraries(${exName10} Graph)
target_link_libraries(${exName10} kCListClique)

set(binPath "bin")
ADD_CUSTOM_COMMAND(TARGET ${exName1} ${exName2} ${exName3} ${exName4} ${exName5} ${exName6} ${exName7} ${exName8} ${exName9} ${exName10}
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy ${exName1} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName1}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName2} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName2}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName3} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName3}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName4} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName4}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName5} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName5}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName6} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName6}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName7} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName7}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName8} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName8}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName9} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName9}
    COMMAND ${CMAKE_COMMAND} -E copy ${exName10} ${binPath}/.
    COMMAND ${CMAKE_COMMAND} -E remove ${exName10}
)
