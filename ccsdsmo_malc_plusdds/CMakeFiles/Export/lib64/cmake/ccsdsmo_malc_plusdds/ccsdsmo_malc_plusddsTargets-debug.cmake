#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ccsdsmo_malc_plusdds::ccsdsmo_malc_plusdds" for configuration "Debug"
set_property(TARGET ccsdsmo_malc_plusdds::ccsdsmo_malc_plusdds APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ccsdsmo_malc_plusdds::ccsdsmo_malc_plusdds PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib64/libccsdsmo_malc_plusddsd.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ccsdsmo_malc_plusdds::ccsdsmo_malc_plusdds )
list(APPEND _IMPORT_CHECK_FILES_FOR_ccsdsmo_malc_plusdds::ccsdsmo_malc_plusdds "${_IMPORT_PREFIX}/lib64/libccsdsmo_malc_plusddsd.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
