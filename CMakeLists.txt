cmake_minimum_required(VERSION 3.10)
project(2d_game)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(SFML 2.5 COMPONENTS graphics audio REQUIRED)

add_subdirectory(src)
