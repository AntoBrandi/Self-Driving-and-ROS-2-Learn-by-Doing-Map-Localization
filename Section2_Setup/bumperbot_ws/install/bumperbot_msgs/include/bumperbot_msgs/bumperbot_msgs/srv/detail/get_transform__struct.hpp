// generated from rosidl_generator_cpp/resource/idl__struct.hpp.em
// with input from bumperbot_msgs:srv/GetTransform.idl
// generated code does not contain a copyright notice

#ifndef BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__STRUCT_HPP_
#define BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__STRUCT_HPP_

#include <algorithm>
#include <array>
#include <memory>
#include <string>
#include <vector>

#include "rosidl_runtime_cpp/bounded_vector.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


#ifndef _WIN32
# define DEPRECATED__bumperbot_msgs__srv__GetTransform_Request __attribute__((deprecated))
#else
# define DEPRECATED__bumperbot_msgs__srv__GetTransform_Request __declspec(deprecated)
#endif

namespace bumperbot_msgs
{

namespace srv
{

// message struct
template<class ContainerAllocator>
struct GetTransform_Request_
{
  using Type = GetTransform_Request_<ContainerAllocator>;

  explicit GetTransform_Request_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->frame_id = "";
      this->child_frame_id = "";
    }
  }

  explicit GetTransform_Request_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : frame_id(_alloc),
    child_frame_id(_alloc)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->frame_id = "";
      this->child_frame_id = "";
    }
  }

  // field types and members
  using _frame_id_type =
    std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>;
  _frame_id_type frame_id;
  using _child_frame_id_type =
    std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>;
  _child_frame_id_type child_frame_id;

  // setters for named parameter idiom
  Type & set__frame_id(
    const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> & _arg)
  {
    this->frame_id = _arg;
    return *this;
  }
  Type & set__child_frame_id(
    const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> & _arg)
  {
    this->child_frame_id = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator> *;
  using ConstRawPtr =
    const bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__bumperbot_msgs__srv__GetTransform_Request
    std::shared_ptr<bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__bumperbot_msgs__srv__GetTransform_Request
    std::shared_ptr<bumperbot_msgs::srv::GetTransform_Request_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const GetTransform_Request_ & other) const
  {
    if (this->frame_id != other.frame_id) {
      return false;
    }
    if (this->child_frame_id != other.child_frame_id) {
      return false;
    }
    return true;
  }
  bool operator!=(const GetTransform_Request_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct GetTransform_Request_

// alias to use template instance with default allocator
using GetTransform_Request =
  bumperbot_msgs::srv::GetTransform_Request_<std::allocator<void>>;

// constant definitions

}  // namespace srv

}  // namespace bumperbot_msgs


// Include directives for member types
// Member 'transform'
#include "geometry_msgs/msg/detail/transform_stamped__struct.hpp"

#ifndef _WIN32
# define DEPRECATED__bumperbot_msgs__srv__GetTransform_Response __attribute__((deprecated))
#else
# define DEPRECATED__bumperbot_msgs__srv__GetTransform_Response __declspec(deprecated)
#endif

namespace bumperbot_msgs
{

namespace srv
{

// message struct
template<class ContainerAllocator>
struct GetTransform_Response_
{
  using Type = GetTransform_Response_<ContainerAllocator>;

  explicit GetTransform_Response_(rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : transform(_init)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->success = false;
    }
  }

  explicit GetTransform_Response_(const ContainerAllocator & _alloc, rosidl_runtime_cpp::MessageInitialization _init = rosidl_runtime_cpp::MessageInitialization::ALL)
  : transform(_alloc, _init)
  {
    if (rosidl_runtime_cpp::MessageInitialization::ALL == _init ||
      rosidl_runtime_cpp::MessageInitialization::ZERO == _init)
    {
      this->success = false;
    }
  }

  // field types and members
  using _transform_type =
    geometry_msgs::msg::TransformStamped_<ContainerAllocator>;
  _transform_type transform;
  using _success_type =
    bool;
  _success_type success;

  // setters for named parameter idiom
  Type & set__transform(
    const geometry_msgs::msg::TransformStamped_<ContainerAllocator> & _arg)
  {
    this->transform = _arg;
    return *this;
  }
  Type & set__success(
    const bool & _arg)
  {
    this->success = _arg;
    return *this;
  }

  // constant declarations

  // pointer types
  using RawPtr =
    bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator> *;
  using ConstRawPtr =
    const bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator> *;
  using SharedPtr =
    std::shared_ptr<bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator>>;
  using ConstSharedPtr =
    std::shared_ptr<bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator> const>;

  template<typename Deleter = std::default_delete<
      bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator>>>
  using UniquePtrWithDeleter =
    std::unique_ptr<bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator>, Deleter>;

  using UniquePtr = UniquePtrWithDeleter<>;

  template<typename Deleter = std::default_delete<
      bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator>>>
  using ConstUniquePtrWithDeleter =
    std::unique_ptr<bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator> const, Deleter>;
  using ConstUniquePtr = ConstUniquePtrWithDeleter<>;

  using WeakPtr =
    std::weak_ptr<bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator>>;
  using ConstWeakPtr =
    std::weak_ptr<bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator> const>;

  // pointer types similar to ROS 1, use SharedPtr / ConstSharedPtr instead
  // NOTE: Can't use 'using' here because GNU C++ can't parse attributes properly
  typedef DEPRECATED__bumperbot_msgs__srv__GetTransform_Response
    std::shared_ptr<bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator>>
    Ptr;
  typedef DEPRECATED__bumperbot_msgs__srv__GetTransform_Response
    std::shared_ptr<bumperbot_msgs::srv::GetTransform_Response_<ContainerAllocator> const>
    ConstPtr;

  // comparison operators
  bool operator==(const GetTransform_Response_ & other) const
  {
    if (this->transform != other.transform) {
      return false;
    }
    if (this->success != other.success) {
      return false;
    }
    return true;
  }
  bool operator!=(const GetTransform_Response_ & other) const
  {
    return !this->operator==(other);
  }
};  // struct GetTransform_Response_

// alias to use template instance with default allocator
using GetTransform_Response =
  bumperbot_msgs::srv::GetTransform_Response_<std::allocator<void>>;

// constant definitions

}  // namespace srv

}  // namespace bumperbot_msgs

namespace bumperbot_msgs
{

namespace srv
{

struct GetTransform
{
  using Request = bumperbot_msgs::srv::GetTransform_Request;
  using Response = bumperbot_msgs::srv::GetTransform_Response;
};

}  // namespace srv

}  // namespace bumperbot_msgs

#endif  // BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__STRUCT_HPP_
