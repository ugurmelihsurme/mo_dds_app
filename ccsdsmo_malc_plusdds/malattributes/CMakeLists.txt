project(malattributes VERSION 0.0.2 DESCRIPTION "malattributes description")

# Set environment variables
message(STATUS "[THAT]:[${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE}] [CMAKE_UTIL_DIR] -> ${CMAKE_UTIL_DIR}")
include(${CMAKE_UTIL_DIR}/SetEnv.cmake)
# Set SOURCES variable
set(SOURCES
    src/mal_attribute.c
    src/mal_blob.c
    src/mal_identifier.c
    src/mal_string.c
    src/mal_uri.c
)

# Set HEADERS_PUBLIC variable (public headers, included in the library)
set(HEADERS_PUBLIC
    include/malattributes.h
    include/mal_attribute.h
    include/mal_blob.h
    include/mal_identifier.h
    include/mal_string.h
    include/mal_uri.h
)

# Set HEADERS_PRIVATE variable, if needed.
# (these private headers won't be included in the library)
# set(HEADERS_PRIVATE
#     foo_private.h
# )

include(${CMAKE_UTIL_DIR}/LibraryConfig.cmake)
