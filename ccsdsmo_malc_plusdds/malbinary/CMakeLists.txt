project(malbinary VERSION 1.0.1 DESCRIPTION "malbinary description")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(${CMAKE_UTIL_DIR}/SimpleFindPackage.cmake)

set(mal_ROOT  "${CMAKE_INSTALL_PREFIX}")
message(STATUS "[THAT]:[${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE}] [MAL CMakelist.txt]${mal_ROOT}")

simpleFind(mal
    mal_ctx.h
    mal_routing.h
    mal_endpoint.h
    mal_poller.h
    mal_integer_list.h
    mal_uinteger_list.h
    mal_double_list.h
    mal_float_list.h
    mal_long_list.h
    mal_ulong_list.h
    mal_short_list.h
    mal_ushort_list.h
    mal_octet_list.h
    mal_uoctet_list.h
    mal_boolean_list.h
    mal_string_list.h
    mal_blob_list.h
    mal_time_list.h
    mal_finetime_list.h
    mal_duration_list.h
    mal_uri_list.h
    mal_interactiontype_list.h
    mal_identifier_list.h
    mal_message.h
    mal_entitykey.h
    mal_entitykey_list.h
    mal_entityrequest.hinclude
    mal_entityrequest_list.h
    mal_updateheader.h
    mal_updateheader_list.h
    mal_subscription.h
    mal_subscription_list.h
    mal_element_holder.h
    mal_file.h
    mal_file_list.h
    mal_idbooleanpair.h
    mal_idbooleanpair_list.h
    mal_namedvalue.h
    mal_namedvalue_list.h
    mal_pair.h
    mal_pair_list.h
    mal_sessiontype_list.h
    mal_updatetype_list.h
    mal_qoslevel_list.h
    mal_encoder.h
    mal_decoder.h
    mal.h
    mal_library.h
)


# Set environment variables
include(${CMAKE_UTIL_DIR}/SetEnv.cmake)
# Set SOURCES variable
set(SOURCES
  src/malbinary_decoder.c
  src/malbinary_encoder.c
  src/malbinary.c
)

# Set HEADERS_PUBLIC variable (public headers, included in the library)
set(HEADERS_PUBLIC
 include/malbinary_decoder.h
 include/malbinary_encoder.h
 include/malbinary.h
  
)

# Set HEADERS_PRIVATE variable, if needed.
# (these private headers won't be included in the library)
# set(HEADERS_PRIVATE
#     foo_private.h
# )

include(${CMAKE_UTIL_DIR}/LibraryConfig.cmake)

##
target_link_libraries(malbinary PRIVATE
                       mal

)

# add the binary tree to the search path for include files
# so that we will find TutorialConfig.h

target_include_directories(malbinary PUBLIC
                          "${mal_INCLUDE_DIR}"

)
