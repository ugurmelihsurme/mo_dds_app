project(mal VERSION 1.0.1 DESCRIPTION "mal description")

# - Try to find util
# Once done, this will define
#
#  util_FOUND - system has util
#  util_INCLUDE_DIRS - util include directories
#  util_LIBRARIES - link these to use util

#include(${CMAKE_UTIL_DIR}/LibFindMacros.cmake)
include(${CMAKE_UTIL_DIR}/SimpleFindPackage.cmake)

set(malutil_ROOT  "${CMAKE_INSTALL_PREFIX}")
message(STATUS "[THAT]:[${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE}] [MAL CMakelist.txt]${malutil_ROOT}")

simpleFind(malutil clog.h)


set(malattributes_ROOT  "${CMAKE_INSTALL_PREFIX}")
message(STATUS "[THAT]:[${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE}] [MAL CMakelist.txt]${malattributes_ROOT}")

simpleFind(malattributes malattributes.h
    mal_attribute.h
    mal_blob.h
    mal_identifier.h
    mal_string.h
    mal_uri.h)


# Set environment variables
include(${CMAKE_UTIL_DIR}/SetEnv.cmake)
# Set SOURCES variable
set(SOURCES
    src/mal_ctx.c
    src/mal_routing.c
    src/mal_endpoint.c
    src/mal_poller.c
    src/mal_integer_list.c
    src/mal_uinteger_list.c
    src/mal_double_list.c
    src/mal_float_list.c
    src/mal_long_list.c
    src/mal_ulong_list.c
    src/mal_short_list.c
    src/mal_ushort_list.c
    src/mal_octet_list.c
    src/mal_uoctet_list.c
    src/mal_boolean_list.c
    src/mal_string_list.c
    src/mal_blob_list.c
    src/mal_time_list.c
    src/mal_finetime_list.c
    src/mal_duration_list.c
    src/mal_uri_list.c
    src/mal_interactiontype_list.c
    src/mal_identifier_list.c
    src/mal_message.c
    src/mal_entitykey.c
    src/mal_entitykey_list.c
    src/mal_entityrequest.c
    src/mal_entityrequest_list.c
    src/mal_updateheader.c
    src/mal_updateheader_list.c
    src/mal_subscription.c
    src/mal_subscription_list.c
    src/mal_element_holder.c
    src/mal_file.c
    src/mal_file_list.c
    src/mal_idbooleanpair.c
    src/mal_idbooleanpair_list.c
    src/mal_namedvalue.c
    src/mal_namedvalue_list.c
    src/mal_pair.c
    src/mal_pair_list.c
    src/mal_sessiontype_list.c
    src/mal_updatetype_list.c
    src/mal_qoslevel_list.c
    src/mal_encoder.c
    src/mal_decoder.c
    src/mal.c
)

# Set HEADERS_PUBLIC variable (public headers, included in the library)
set(HEADERS_PUBLIC
    include/mal_ctx.h
    include/mal_routing.h
    include/mal_endpoint.h
    include/mal_poller.h
    include/mal_integer_list.h
    include/mal_uinteger_list.h
    include/mal_double_list.h
    include/mal_float_list.h
    include/mal_long_list.h
    include/mal_ulong_list.h
    include/mal_short_list.h
    include/mal_ushort_list.h
    include/mal_octet_list.h
    include/mal_uoctet_list.h
    include/mal_boolean_list.h
    include/mal_string_list.h
    include/mal_blob_list.h
    include/mal_time_list.h
    include/mal_finetime_list.h
    include/mal_duration_list.h
    include/mal_uri_list.h
    include/mal_interactiontype_list.h
    include/mal_identifier_list.h
    include/mal_message.h
    include/mal_entitykey.h
    include/mal_entitykey_list.h
    include/mal_entityrequest.h
    include/mal_entityrequest_list.h
    include/mal_updateheader.h
    include/mal_updateheader_list.h
    include/mal_subscription.h
    include/mal_subscription_list.h
    include/mal_element_holder.h
    include/mal_file.h
    include/mal_file_list.h
    include/mal_idbooleanpair.h
    include/mal_idbooleanpair_list.h
    include/mal_namedvalue.h
    include/mal_namedvalue_list.h
    include/mal_pair.h
    include/mal_pair_list.h
    include/mal_sessiontype_list.h
    include/mal_updatetype_list.h
    include/mal_qoslevel_list.h
    include/mal_encoder.h
    include/mal_decoder.h
    include/mal.h
    include/mal_library.h
)

# Set HEADERS_PRIVATE variable, if needed.
# (these private headers won't be included in the library)
# set(HEADERS_PRIVATE
#     foo_private.h
# )




include(${CMAKE_UTIL_DIR}/LibraryConfig.cmake)
##
target_link_libraries(mal PRIVATE
                       malutil
                       malattributes
)

# add the binary tree to the search path for include files
# so that we will find TutorialConfig.h
message("[${CMAKE_CURRENT_LIST_FILE} ${CMAKE_CURRENT_LIST_LINE} THAT]:${malutil_INCLUDE_DIR}")

target_include_directories(mal PUBLIC
                          "${malutil_INCLUDE_DIR}"
                          "${malattributes_INCLUDE_DIR}"
)













