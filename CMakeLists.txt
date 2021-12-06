cmake_minimum_required(VERSION 3.20)
project(AsioClientServer)

set(CMAKE_CXX_STANDARD 20)

add_executable(AsioClientServer main.cpp)

#target_include_directories(${PROJECT_NAME} PUBLIC "C:\\Projekty\\cpp-lib\\asio-1.20.0\\asio-1.20.0\\include")
#set(CMAKE_INCLUDE_PATH C:\\Projekty\\cpp-lib\\asio-1.20.0\\asio-1.20.0\\include)
include_directories(${PROJECT_NAME} C:/Projekty/cpp-lib/asio-1.20.0/asio-1.20.0/include)
