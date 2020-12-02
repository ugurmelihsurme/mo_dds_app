# Install script for directory: /home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/libccsdsmo_malc_plusddsd.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ccsdsmo_malc_plusdds" TYPE FILE FILES
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_blob_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_boolean_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_ctx.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_decoder.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_double_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_duration_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_element_holder.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_encoder.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_endpoint.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_entitykey.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_entitykey_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_entityrequest.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_entityrequest_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_file.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_file_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_finetime_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_float_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_idbooleanpair.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_idbooleanpair_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_identifier_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_integer_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_interactiontype_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_long_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_message.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_namedvalue.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_namedvalue_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_octet_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_pair.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_pair_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_poller.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_qoslevel_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_routing.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_sessiontype_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_short_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_string_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_subscription.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_subscription_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_time_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_uinteger_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_ulong_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_uoctet_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_updateheader.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_updateheader_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_updatetype_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_uri_list.h"
    "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/mal/include/mal_ushort_list.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ccsdsmo_malc_plusdds" TYPE FILE FILES "/home/ugur/projects/momal_dds_app/generated_headers/ccsdsmo_malc_plusdds/version.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/ccsdsmo_malc_plusdds" TYPE FILE FILES
    "/home/ugur/projects/momal_dds_app/generated/ccsdsmo_malc_plusddsConfig.cmake"
    "/home/ugur/projects/momal_dds_app/generated/ccsdsmo_malc_plusddsConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/ccsdsmo_malc_plusdds/ccsdsmo_malc_plusddsTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/ccsdsmo_malc_plusdds/ccsdsmo_malc_plusddsTargets.cmake"
         "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/CMakeFiles/Export/lib64/cmake/ccsdsmo_malc_plusdds/ccsdsmo_malc_plusddsTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/ccsdsmo_malc_plusdds/ccsdsmo_malc_plusddsTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/ccsdsmo_malc_plusdds/ccsdsmo_malc_plusddsTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/ccsdsmo_malc_plusdds" TYPE FILE FILES "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/CMakeFiles/Export/lib64/cmake/ccsdsmo_malc_plusdds/ccsdsmo_malc_plusddsTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/ccsdsmo_malc_plusdds" TYPE FILE FILES "/home/ugur/projects/momal_dds_app/ccsdsmo_malc_plusdds/CMakeFiles/Export/lib64/cmake/ccsdsmo_malc_plusdds/ccsdsmo_malc_plusddsTargets-debug.cmake")
  endif()
endif()

