// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from bumperbot_msgs:srv/GetTransform.idl
// generated code does not contain a copyright notice

#ifndef BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__BUILDER_HPP_
#define BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "bumperbot_msgs/srv/detail/get_transform__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace bumperbot_msgs
{

namespace srv
{

namespace builder
{

class Init_GetTransform_Request_child_frame_id
{
public:
  explicit Init_GetTransform_Request_child_frame_id(::bumperbot_msgs::srv::GetTransform_Request & msg)
  : msg_(msg)
  {}
  ::bumperbot_msgs::srv::GetTransform_Request child_frame_id(::bumperbot_msgs::srv::GetTransform_Request::_child_frame_id_type arg)
  {
    msg_.child_frame_id = std::move(arg);
    return std::move(msg_);
  }

private:
  ::bumperbot_msgs::srv::GetTransform_Request msg_;
};

class Init_GetTransform_Request_frame_id
{
public:
  Init_GetTransform_Request_frame_id()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_GetTransform_Request_child_frame_id frame_id(::bumperbot_msgs::srv::GetTransform_Request::_frame_id_type arg)
  {
    msg_.frame_id = std::move(arg);
    return Init_GetTransform_Request_child_frame_id(msg_);
  }

private:
  ::bumperbot_msgs::srv::GetTransform_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::bumperbot_msgs::srv::GetTransform_Request>()
{
  return bumperbot_msgs::srv::builder::Init_GetTransform_Request_frame_id();
}

}  // namespace bumperbot_msgs


namespace bumperbot_msgs
{

namespace srv
{

namespace builder
{

class Init_GetTransform_Response_success
{
public:
  explicit Init_GetTransform_Response_success(::bumperbot_msgs::srv::GetTransform_Response & msg)
  : msg_(msg)
  {}
  ::bumperbot_msgs::srv::GetTransform_Response success(::bumperbot_msgs::srv::GetTransform_Response::_success_type arg)
  {
    msg_.success = std::move(arg);
    return std::move(msg_);
  }

private:
  ::bumperbot_msgs::srv::GetTransform_Response msg_;
};

class Init_GetTransform_Response_transform
{
public:
  Init_GetTransform_Response_transform()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_GetTransform_Response_success transform(::bumperbot_msgs::srv::GetTransform_Response::_transform_type arg)
  {
    msg_.transform = std::move(arg);
    return Init_GetTransform_Response_success(msg_);
  }

private:
  ::bumperbot_msgs::srv::GetTransform_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::bumperbot_msgs::srv::GetTransform_Response>()
{
  return bumperbot_msgs::srv::builder::Init_GetTransform_Response_transform();
}

}  // namespace bumperbot_msgs

#endif  // BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__BUILDER_HPP_
