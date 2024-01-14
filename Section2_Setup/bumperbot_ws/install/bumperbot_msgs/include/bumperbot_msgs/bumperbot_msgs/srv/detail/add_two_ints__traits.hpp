// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from bumperbot_msgs:srv/AddTwoInts.idl
// generated code does not contain a copyright notice

#ifndef BUMPERBOT_MSGS__SRV__DETAIL__ADD_TWO_INTS__TRAITS_HPP_
#define BUMPERBOT_MSGS__SRV__DETAIL__ADD_TWO_INTS__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "bumperbot_msgs/srv/detail/add_two_ints__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

namespace bumperbot_msgs
{

namespace srv
{

inline void to_flow_style_yaml(
  const AddTwoInts_Request & msg,
  std::ostream & out)
{
  out << "{";
  // member: a
  {
    out << "a: ";
    rosidl_generator_traits::value_to_yaml(msg.a, out);
    out << ", ";
  }

  // member: b
  {
    out << "b: ";
    rosidl_generator_traits::value_to_yaml(msg.b, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const AddTwoInts_Request & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: a
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "a: ";
    rosidl_generator_traits::value_to_yaml(msg.a, out);
    out << "\n";
  }

  // member: b
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "b: ";
    rosidl_generator_traits::value_to_yaml(msg.b, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const AddTwoInts_Request & msg, bool use_flow_style = false)
{
  std::ostringstream out;
  if (use_flow_style) {
    to_flow_style_yaml(msg, out);
  } else {
    to_block_style_yaml(msg, out);
  }
  return out.str();
}

}  // namespace srv

}  // namespace bumperbot_msgs

namespace rosidl_generator_traits
{

[[deprecated("use bumperbot_msgs::srv::to_block_style_yaml() instead")]]
inline void to_yaml(
  const bumperbot_msgs::srv::AddTwoInts_Request & msg,
  std::ostream & out, size_t indentation = 0)
{
  bumperbot_msgs::srv::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use bumperbot_msgs::srv::to_yaml() instead")]]
inline std::string to_yaml(const bumperbot_msgs::srv::AddTwoInts_Request & msg)
{
  return bumperbot_msgs::srv::to_yaml(msg);
}

template<>
inline const char * data_type<bumperbot_msgs::srv::AddTwoInts_Request>()
{
  return "bumperbot_msgs::srv::AddTwoInts_Request";
}

template<>
inline const char * name<bumperbot_msgs::srv::AddTwoInts_Request>()
{
  return "bumperbot_msgs/srv/AddTwoInts_Request";
}

template<>
struct has_fixed_size<bumperbot_msgs::srv::AddTwoInts_Request>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<bumperbot_msgs::srv::AddTwoInts_Request>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<bumperbot_msgs::srv::AddTwoInts_Request>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace bumperbot_msgs
{

namespace srv
{

inline void to_flow_style_yaml(
  const AddTwoInts_Response & msg,
  std::ostream & out)
{
  out << "{";
  // member: sum
  {
    out << "sum: ";
    rosidl_generator_traits::value_to_yaml(msg.sum, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const AddTwoInts_Response & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: sum
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "sum: ";
    rosidl_generator_traits::value_to_yaml(msg.sum, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const AddTwoInts_Response & msg, bool use_flow_style = false)
{
  std::ostringstream out;
  if (use_flow_style) {
    to_flow_style_yaml(msg, out);
  } else {
    to_block_style_yaml(msg, out);
  }
  return out.str();
}

}  // namespace srv

}  // namespace bumperbot_msgs

namespace rosidl_generator_traits
{

[[deprecated("use bumperbot_msgs::srv::to_block_style_yaml() instead")]]
inline void to_yaml(
  const bumperbot_msgs::srv::AddTwoInts_Response & msg,
  std::ostream & out, size_t indentation = 0)
{
  bumperbot_msgs::srv::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use bumperbot_msgs::srv::to_yaml() instead")]]
inline std::string to_yaml(const bumperbot_msgs::srv::AddTwoInts_Response & msg)
{
  return bumperbot_msgs::srv::to_yaml(msg);
}

template<>
inline const char * data_type<bumperbot_msgs::srv::AddTwoInts_Response>()
{
  return "bumperbot_msgs::srv::AddTwoInts_Response";
}

template<>
inline const char * name<bumperbot_msgs::srv::AddTwoInts_Response>()
{
  return "bumperbot_msgs/srv/AddTwoInts_Response";
}

template<>
struct has_fixed_size<bumperbot_msgs::srv::AddTwoInts_Response>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<bumperbot_msgs::srv::AddTwoInts_Response>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<bumperbot_msgs::srv::AddTwoInts_Response>
  : std::true_type {};

}  // namespace rosidl_generator_traits

namespace rosidl_generator_traits
{

template<>
inline const char * data_type<bumperbot_msgs::srv::AddTwoInts>()
{
  return "bumperbot_msgs::srv::AddTwoInts";
}

template<>
inline const char * name<bumperbot_msgs::srv::AddTwoInts>()
{
  return "bumperbot_msgs/srv/AddTwoInts";
}

template<>
struct has_fixed_size<bumperbot_msgs::srv::AddTwoInts>
  : std::integral_constant<
    bool,
    has_fixed_size<bumperbot_msgs::srv::AddTwoInts_Request>::value &&
    has_fixed_size<bumperbot_msgs::srv::AddTwoInts_Response>::value
  >
{
};

template<>
struct has_bounded_size<bumperbot_msgs::srv::AddTwoInts>
  : std::integral_constant<
    bool,
    has_bounded_size<bumperbot_msgs::srv::AddTwoInts_Request>::value &&
    has_bounded_size<bumperbot_msgs::srv::AddTwoInts_Response>::value
  >
{
};

template<>
struct is_service<bumperbot_msgs::srv::AddTwoInts>
  : std::true_type
{
};

template<>
struct is_service_request<bumperbot_msgs::srv::AddTwoInts_Request>
  : std::true_type
{
};

template<>
struct is_service_response<bumperbot_msgs::srv::AddTwoInts_Response>
  : std::true_type
{
};

}  // namespace rosidl_generator_traits

#endif  // BUMPERBOT_MSGS__SRV__DETAIL__ADD_TWO_INTS__TRAITS_HPP_
