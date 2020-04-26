cmake_minimum_required(VERSION 3.16)
project(MapReduce)

find_package(Boost COMPONENTS system filesystem REQUIRED)
set(CMAKE_CXX_STANDARD 17)

add_executable(MapReduce main.cpp)
include_directories(${Boost_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} LINK_PUBLIC ${Boost_LIBRARIES})