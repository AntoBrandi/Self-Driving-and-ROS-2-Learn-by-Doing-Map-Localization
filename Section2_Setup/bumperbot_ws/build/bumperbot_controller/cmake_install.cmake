# Install script for directory: /home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_controller

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/install/bumperbot_controller")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/pythonpath.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/pythonpath.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/bumperbot_controller-0.0.0-py3.10.egg-info" TYPE DIRECTORY FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_python/bumperbot_controller/bumperbot_controller.egg-info/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/bumperbot_controller" TYPE DIRECTORY FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_controller/bumperbot_controller/" REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "/usr/bin/python3.10" "-m" "compileall"
        "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/install/bumperbot_controller/local/lib/python3.10/dist-packages/bumperbot_controller"
      )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_controller/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/simple_controller" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/simple_controller")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/simple_controller"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller" TYPE EXECUTABLE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/simple_controller")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/simple_controller" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/simple_controller")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/simple_controller"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/simple_controller")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/noisy_controller" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/noisy_controller")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/noisy_controller"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller" TYPE EXECUTABLE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/noisy_controller")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/noisy_controller" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/noisy_controller")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/noisy_controller"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller/noisy_controller")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller" TYPE DIRECTORY FILES
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_controller/launch"
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_controller/config"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bumperbot_controller" TYPE PROGRAM FILES
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_controller/bumperbot_controller/simple_controller.py"
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_controller/bumperbot_controller/noisy_controller.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/bumperbot_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/bumperbot_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller/environment" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_index/share/ament_index/resource_index/packages/bumperbot_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller/cmake" TYPE FILE FILES
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_core/bumperbot_controllerConfig.cmake"
    "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/ament_cmake_core/bumperbot_controllerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bumperbot_controller" TYPE FILE FILES "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/src/bumperbot_controller/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/alien/Self-Driving-and-ROS-2-Learn-by-Doing-Map-Localization/Section2_Setup/bumperbot_ws/build/bumperbot_controller/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
