// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from bumperbot_msgs:srv/AddTwoInts.idl
// generated code does not contain a copyright notice

#ifndef BUMPERBOT_MSGS__SRV__DETAIL__ADD_TWO_INTS__BUILDER_HPP_
#define BUMPERBOT_MSGS__SRV__DETAIL__ADD_TWO_INTS__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "bumperbot_msgs/srv/detail/add_two_ints__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace bumperbot_msgs
{

namespace srv
{

namespace builder
{

class Init_AddTwoInts_Request_b
{
public:
  explicit Init_AddTwoInts_Request_b(::bumperbot_msgs::srv::AddTwoInts_Request & msg)
  : msg_(msg)
  {}
  ::bumperbot_msgs::srv::AddTwoInts_Request b(::bumperbot_msgs::srv::AddTwoInts_Request::_b_type arg)
  {
    msg_.b = std::move(arg);
    return std::move(msg_);
  }

private:
  ::bumperbot_msgs::srv::AddTwoInts_Request msg_;
};

class Init_AddTwoInts_Request_a
{
public:
  Init_AddTwoInts_Request_a()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_AddTwoInts_Request_b a(::bumperbot_msgs::srv::AddTwoInts_Request::_a_type arg)
  {
    msg_.a = std::move(arg);
    return Init_AddTwoInts_Request_b(msg_);
  }

private:
  ::bumperbot_msgs::srv::AddTwoInts_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::bumperbot_msgs::srv::AddTwoInts_Request>()
{
  return bumperbot_msgs::srv::builder::Init_AddTwoInts_Request_a();
}

}  // namespace bumperbot_msgs


namespace bumperbot_msgs
{

namespace srv
{

namespace builder
{

class Init_AddTwoInts_Response_sum
{
public:
  Init_AddTwoInts_Response_sum()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::bumperbot_msgs::srv::AddTwoInts_Response sum(::bumperbot_msgs::srv::AddTwoInts_Response::_sum_type arg)
  {
    msg_.sum = std::move(arg);
    return std::move(msg_);
  }

private:
  ::bumperbot_msgs::srv::AddTwoInts_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::bumperbot_msgs::srv::AddTwoInts_Response>()
{
  return bumperbot_msgs::srv::builder::Init_AddTwoInts_Response_sum();
}

}  // namespace bumperbot_msgs

#endif  // BUMPERBOT_MSGS__SRV__DETAIL__ADD_TWO_INTS__BUILDER_HPP_
