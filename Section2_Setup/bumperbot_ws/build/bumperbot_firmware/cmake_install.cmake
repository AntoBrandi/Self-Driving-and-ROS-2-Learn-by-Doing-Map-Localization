# Install script for directory: /home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_firmware

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/install/bumperbot_firmware")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/pythonpath.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/pythonpath.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/bumperbot_firmware-0.0.0-py3.10.egg-info" TYPE DIRECTORY FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_python/bumperbot_firmware/bumperbot_firmware.egg-info/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/bumperbot_firmware" TYPE DIRECTORY FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_firmware/bumperbot_firmware/" REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "/usr/bin/python3.10" "-m" "compileall"
        "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/install/bumperbot_firmware/local/lib/python3.10/dist-packages/bumperbot_firmware"
      )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_firmware/bumperbot_interface.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbumperbot_firmware.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbumperbot_firmware.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbumperbot_firmware.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/libbumperbot_firmware.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbumperbot_firmware.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbumperbot_firmware.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbumperbot_firmware.so"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libbumperbot_firmware.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_firmware/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware" TYPE DIRECTORY FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_firmware/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware" TYPE PROGRAM FILES
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_firmware/bumperbot_firmware/simple_serial_transmitter.py"
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_firmware/bumperbot_firmware/simple_serial_receiver.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_receiver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_receiver")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_receiver"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware" TYPE EXECUTABLE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/simple_serial_receiver")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_receiver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_receiver")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_receiver"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_receiver")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_transmitter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_transmitter")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_transmitter"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware" TYPE EXECUTABLE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/simple_serial_transmitter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_transmitter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_transmitter")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_transmitter"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_firmware/simple_serial_transmitter")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/environment" TYPE FILE FILES "/opt/ros/humble/lib/python3.10/site-packages/ament_package/template/environment_hook/library_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/library_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/bumperbot_firmware")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/bumperbot_firmware")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_index/share/ament_index/resource_index/packages/bumperbot_firmware")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/hardware_interface__pluginlib__plugin" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_index/share/ament_index/resource_index/hardware_interface__pluginlib__plugin/bumperbot_firmware")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/cmake" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_export_include_directories/ament_cmake_export_include_directories-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/cmake" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_export_libraries/ament_cmake_export_libraries-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/cmake" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_export_dependencies/ament_cmake_export_dependencies-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware/cmake" TYPE FILE FILES
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_core/bumperbot_firmwareConfig.cmake"
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/ament_cmake_core/bumperbot_firmwareConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_firmware" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_firmware/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_firmware/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
