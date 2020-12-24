function (simpleFind PKG hlist)
    set(packageTobefind "${PKG}")
    SET(CMAKE_FIND_PACKAGE_SORT_ORDER NATURAL)
    SET(CMAKE_FIND_PACKAGE_SORT_DIRECTION DEC)

#    set(CMAKE_FIND_USE_SYSTEM_ENVIRONMENT_PATH "FALSE")
#    set(CMAKE_FIND_USE_CMAKE_PATH "FALSE")
#    set(CMAKE_FIND_USE_CMAKE_ENVIRONMENT_PATH "FALSE")
#    set(CMAKE_FIND_USE_SYSTEM_ENVIRONMENT_PATH "FALSE")
#    set(CMAKE_FIND_USE_CMAKE_SYSTEM_PATH "FALSE")

    message(STATUS "[THAT]:[${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE}] [simpleFind]:${packageTobefind}")
    find_package(${packageTobefind}
#                  NO_DEFAULT_PATH
#                  NO_PACKAGE_ROOT_PATH
#                  NO_CMAKE_PATH
#                  NO_CMAKE_ENVIRONMENT_PATH
#                  NO_SYSTEM_ENVIRONMENT_PATH
#                  NO_CMAKE_SYSTEM_PATH

     )

    #pkg_check_modules(PC_${packageTobefind} REQUIRED ${packageTobefind})

    find_path(${packageTobefind}_INCLUDE_DIR
      NAMES ${hlist}
      PATHS "${CMAKE_INSTALL_PREFIX}"
      PATH_SUFFIXES ${packageTobefind}
    )

    message(STATUS "[THAT]:[${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE}] [simpleFind]:[LIBRARY]:${PC_${packageTobefind}_LIBRARY_DIRS}")
    #d posix is add to NAMES list BUT it will be need to generalized FIXME(Release or Debug)
    find_library(${packageTobefind}_LIBRARY
      NAMES ${packageTobefind} ${packageTobefind}d
      PATHS "${CMAKE_INSTALL_PREFIX}"
      )
  #              NO_DEFAULT_PATH
  #              NO_PACKAGE_ROOT_PATH
  #              NO_CMAKE_PATH]
  #              NO_CMAKE_ENVIRONMENT_PATH
  #              NO_SYSTEM_ENVIRONMENT_PATH
  #              NO_CMAKE_SYSTEM_PATH

    set(${packageTobefind}_VERSION ${PC_${packageTobefind}_VERSION})
    message(STATUS "[THAT]:[${CMAKE_CURRENT_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE}] ${${packageTobefind}_VERSION}")

    include(FindPackageHandleStandardArgs)

    find_package_handle_standard_args(${packageTobefind}
      FOUND_VAR ${packageTobefind}_FOUND
      REQUIRED_VARS
        ${packageTobefind}_LIBRARY
        ${packageTobefind}_INCLUDE_DIR
      VERSION_VAR ${packageTobefind}_VERSION
    )

    if(${packageTobefind}_FOUND)
      set(${packageTobefind}_LIBRARIES ${${packageTobefind}_LIBRARY})
      set(${packageTobefind}_INCLUDE_DIRS ${${packageTobefind}_INCLUDE_DIR})
      set(${packageTobefind}_DEFINITIONS ${PC_${util_INCLUDE_DIRpackageTobefind}_CFLAGS_OTHER})
      message(STATUS "[THAT]:${${packageTobefind}_FOUND}:${packageTobefind}:${${packageTobefind}_LIBRARIES}")
      message(STATUS "[THAT]:${${packageTobefind}_FOUND}:${packageTobefind}:${${packageTobefind}_INCLUDE_DIR}")

     endif()




endfunction()
