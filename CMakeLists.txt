cmake_minimum_required(VERSION 3.0.0)
project(rpc_c VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(rpc_c main.cpp work/work.cpp rpc_server/rpc_server.cpp network_manager/network_manager.cpp json_parser/json_parser/json_parser.cpp)

target_link_libraries(rpc_c -lpthread)
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
