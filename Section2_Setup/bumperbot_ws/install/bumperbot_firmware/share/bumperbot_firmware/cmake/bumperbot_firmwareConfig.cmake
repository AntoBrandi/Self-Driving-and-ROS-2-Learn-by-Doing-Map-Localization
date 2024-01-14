# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_bumperbot_firmware_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED bumperbot_firmware_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(bumperbot_firmware_FOUND FALSE)
  elseif(NOT bumperbot_firmware_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(bumperbot_firmware_FOUND FALSE)
  endif()
  return()
endif()
set(_bumperbot_firmware_CONFIG_INCLUDED TRUE)

# output package information
if(NOT bumperbot_firmware_FIND_QUIETLY)
  message(STATUS "Found bumperbot_firmware: 0.0.0 (${bumperbot_firmware_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'bumperbot_firmware' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${bumperbot_firmware_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(bumperbot_firmware_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "ament_cmake_export_include_directories-extras.cmake;ament_cmake_export_libraries-extras.cmake;ament_cmake_export_dependencies-extras.cmake")
foreach(_extra ${_extras})
  include("${bumperbot_firmware_DIR}/${_extra}")
endforeach()
