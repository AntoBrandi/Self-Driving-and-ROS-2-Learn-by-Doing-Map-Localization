// generated from rosidl_generator_c/resource/idl__struct.h.em
// with input from bumperbot_msgs:srv/GetTransform.idl
// generated code does not contain a copyright notice

#ifndef BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__STRUCT_H_
#define BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__STRUCT_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// Constants defined in the message

// Include directives for member types
// Member 'frame_id'
// Member 'child_frame_id'
#include "rosidl_runtime_c/string.h"

/// Struct defined in srv/GetTransform in the package bumperbot_msgs.
typedef struct bumperbot_msgs__srv__GetTransform_Request
{
  rosidl_runtime_c__String frame_id;
  rosidl_runtime_c__String child_frame_id;
} bumperbot_msgs__srv__GetTransform_Request;

// Struct for a sequence of bumperbot_msgs__srv__GetTransform_Request.
typedef struct bumperbot_msgs__srv__GetTransform_Request__Sequence
{
  bumperbot_msgs__srv__GetTransform_Request * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} bumperbot_msgs__srv__GetTransform_Request__Sequence;


// Constants defined in the message

// Include directives for member types
// Member 'transform'
#include "geometry_msgs/msg/detail/transform_stamped__struct.h"

/// Struct defined in srv/GetTransform in the package bumperbot_msgs.
typedef struct bumperbot_msgs__srv__GetTransform_Response
{
  geometry_msgs__msg__TransformStamped transform;
  bool success;
} bumperbot_msgs__srv__GetTransform_Response;

// Struct for a sequence of bumperbot_msgs__srv__GetTransform_Response.
typedef struct bumperbot_msgs__srv__GetTransform_Response__Sequence
{
  bumperbot_msgs__srv__GetTransform_Response * data;
  /// The number of valid items in data
  size_t size;
  /// The number of allocated items in data
  size_t capacity;
} bumperbot_msgs__srv__GetTransform_Response__Sequence;

#ifdef __cplusplus
}
#endif

#endif  // BUMPERBOT_MSGS__SRV__DETAIL__GET_TRANSFORM__STRUCT_H_
