# Set minimum version of CMake.
cmake_minimum_required(VERSION 3.17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# Set project name and version
project(ccsdsmo_malc_plusdds VERSION 0.0.1)

# Set environment variables
include(${PROJECT_SOURCE_DIR}/cmake/SetEnv.cmake)

# Library sources
message(STATUS "Melih:${LIBRARY_FOLDER}")
add_subdirectory(${LIBRARY_FOLDER})

# Library examples
add_subdirectory(testapp)
