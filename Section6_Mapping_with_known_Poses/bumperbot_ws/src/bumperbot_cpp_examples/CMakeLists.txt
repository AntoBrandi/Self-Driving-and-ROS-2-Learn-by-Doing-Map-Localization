cmake_minimum_required(VERSION 3.8)
project(bumperbot_cpp_examples)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(rclcpp_action REQUIRED)
find_package(rclcpp_components REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rcl_interfaces REQUIRED)
find_package(turtlesim REQUIRED)
find_package(bumperbot_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(tf2 REQUIRED)
find_package(tf2_ros REQUIRED)
find_package(rclcpp_lifecycle REQUIRED)

include_directories(include)

add_executable(simple_publisher src/simple_publisher.cpp)
ament_target_dependencies(simple_publisher rclcpp std_msgs)

add_executable(simple_subscriber src/simple_subscriber.cpp)
ament_target_dependencies(simple_subscriber rclcpp std_msgs)

add_executable(simple_parameter src/simple_parameter.cpp)
ament_target_dependencies(simple_parameter rclcpp rcl_interfaces)

add_executable(simple_turtlesim_kinematics src/simple_turtlesim_kinematics.cpp)
ament_target_dependencies(simple_turtlesim_kinematics rclcpp turtlesim)

add_executable(simple_service_server src/simple_service_server.cpp)
ament_target_dependencies(simple_service_server rclcpp bumperbot_msgs)

add_executable(simple_service_client src/simple_service_client.cpp)
ament_target_dependencies(simple_service_client rclcpp bumperbot_msgs)

add_executable(simple_tf_kinematics src/simple_tf_kinematics.cpp)
ament_target_dependencies(simple_tf_kinematics rclcpp bumperbot_msgs geometry_msgs tf2 tf2_ros)

add_executable(simple_lifecycle_node src/simple_lifecycle_node.cpp)
ament_target_dependencies(simple_lifecycle_node rclcpp rclcpp_lifecycle std_msgs)

add_executable(simple_qos_publisher src/simple_qos_publisher.cpp)
ament_target_dependencies(simple_qos_publisher rclcpp std_msgs)

add_executable(simple_qos_subscriber src/simple_qos_subscriber.cpp)
ament_target_dependencies(simple_qos_subscriber rclcpp std_msgs)

add_library(simple_action_server SHARED src/simple_action_server.cpp)
target_include_directories(simple_action_server PRIVATE
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>)
target_compile_definitions(simple_action_server
  PRIVATE "SIMPLE_ACTION_SERVER_CPP_BUILDING_DLL")
ament_target_dependencies(simple_action_server
  "bumperbot_msgs"
  "rclcpp"
  "rclcpp_action"
  "rclcpp_components")
rclcpp_components_register_node(simple_action_server 
  PLUGIN "bumperbot_cpp_examples::SimpleActionServer" 
  EXECUTABLE simple_action_server_node
)

add_library(simple_action_client SHARED src/simple_action_client.cpp)
target_include_directories(simple_action_client PRIVATE
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>)
target_compile_definitions(simple_action_client
  PRIVATE "SIMPLE_ACTION_CLIENT_CPP_BUILDING_DLL")
ament_target_dependencies(simple_action_client
  "bumperbot_msgs"
  "rclcpp"
  "rclcpp_action"
  "rclcpp_components")
rclcpp_components_register_node(simple_action_client 
  PLUGIN "bumperbot_cpp_examples::SimpleActionClient" 
  EXECUTABLE simple_action_client_node
)

install(
  DIRECTORY include
  DESTINATION include
)

install(TARGETS
  simple_publisher
  simple_subscriber
  simple_parameter
  simple_turtlesim_kinematics
  simple_service_server
  simple_service_client
  simple_tf_kinematics
  simple_lifecycle_node
  simple_qos_publisher
  simple_qos_subscriber
  DESTINATION lib/${PROJECT_NAME}
)

install(TARGETS
  simple_action_server
  simple_action_client
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
)

ament_package()