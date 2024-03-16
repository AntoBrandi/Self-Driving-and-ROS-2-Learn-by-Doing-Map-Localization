cmake_minimum_required(VERSION 3.8)
project(bumperbot_mapping)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(tf2_ros REQUIRED)
find_package(tf2 REQUIRED)

include_directories(include)

add_executable(mapping_with_known_poses src/mapping_with_known_poses.cpp)
ament_target_dependencies(mapping_with_known_poses rclcpp sensor_msgs tf2_ros nav_msgs geometry_msgs tf2)

install(
  DIRECTORY include
  DESTINATION include
)

install(TARGETS
  mapping_with_known_poses
  DESTINATION lib/${PROJECT_NAME}
)

install(
  DIRECTORY maps
  DESTINATION share/${PROJECT_NAME}
)

ament_package()
