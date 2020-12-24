# Set minimum version of CMake.
cmake_minimum_required(VERSION 3.17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_MESSAGE_LOG_LEVEL DEBUG)
# Set project name and version
project(ccsdsmo_malc_plusdds)

set(CMAKE_UTIL_DIR ${PROJECT_SOURCE_DIR}/cmake)
# Library sources
add_subdirectory(ccsdsmo_malc_plusdds)

# Library examples
add_subdirectory(testapp)

