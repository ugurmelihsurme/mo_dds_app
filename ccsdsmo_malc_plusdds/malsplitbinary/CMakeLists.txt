project(malsplitbinary VERSION 1.0.1 DESCRIPTION "malsplitbinary description")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(${CMAKE_UTIL_DIR}/SimpleFindPackage.cmake)

set(malbinary_ROOT  "${CMAKE_INSTALL_PREFIX}")
message(STATUS "[THAT]:[${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE}] [MAL CMakelist.txt]${malbinary_ROOT}")

simpleFind(mal
    malbinary_decoder.h
    malbinary_encoder.h
    malbinary.h
)

# Set environment variables
include(${CMAKE_UTIL_DIR}/SetEnv.cmake)
# Set SOURCES variable
set(SOURCES
  src/malsplitbinary_decoder.c
  src/malsplitbinary_encoder.c
  src/malsplitbinary.c
)

# Set HEADERS_PUBLIC variable (public headers, included in the library)
set(HEADERS_PUBLIC
 include/malsplitbinary_decoder.h
 include/malsplitbinary_encoder.h
 include/malsplitbinary.h
  
)

# Set HEADERS_PRIVATE variable, if needed.
# (these private headers won't be included in the library)
# set(HEADERS_PRIVATE
#     foo_private.h
# )

include(${CMAKE_UTIL_DIR}/LibraryConfig.cmake)

##
target_link_libraries(malsplitbinary PRIVATE
                       malbinary

)

# add the binary tree to the search path for include files

target_include_directories(malsplitbinary PUBLIC
                          "${malbinary_INCLUDE_DIR}"

)
