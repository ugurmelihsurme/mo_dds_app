#cmake_minimum_required(VERSION 3.17)

project(malutil VERSION 1.0.1 DESCRIPTION "util description")


# Set environment variables



include(${CMAKE_UTIL_DIR}/SetEnv.cmake)
# Set SOURCES variable
set(SOURCES
  src/clog.c
)

# Set HEADERS_PUBLIC variable (public headers, included in the library)
set(HEADERS_PUBLIC
  include/clog.h
)

# Set HEADERS_PRIVATE variable, if needed.
# (these private headers won't be included in the library)
# set(HEADERS_PRIVATE
#     foo_private.h
# )

include(${CMAKE_UTIL_DIR}/LibraryConfig.cmake)

