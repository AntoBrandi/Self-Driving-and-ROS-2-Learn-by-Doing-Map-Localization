#include <chrono>
#include <string>
#include <memory>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"

using namespace std::chrono_literals;

class SimpleQosPublisher : public rclcpp::Node
{
public:
  SimpleQosPublisher() : Node("simple_qos_publisher"), qos_profile_pub_(10), counter_(0)
  {
    declare_parameter<std::string>("reliability", "system_default");
    declare_parameter<std::string>("durability", "system_default");

    const auto reliability = get_parameter("reliability").as_string();
    const auto durability = get_parameter("durability").as_string();

    if(reliability == "best_effort")
    {
      qos_profile_pub_.reliability(RMW_QOS_POLICY_RELIABILITY_BEST_EFFORT);
      RCLCPP_INFO(get_logger(), "[Reliability] : Best Effort");
    }
    else if(reliability == "reliable")
    {
      qos_profile_pub_.reliability(RMW_QOS_POLICY_RELIABILITY_RELIABLE);
      RCLCPP_INFO(get_logger(), "[Reliability] : Reliable");
    }
    else if(reliability == "system_default")
    {
      qos_profile_pub_.reliability(RMW_QOS_POLICY_RELIABILITY_SYSTEM_DEFAULT);
      RCLCPP_INFO(get_logger(), "[Reliability] : System Default");
    }
    else
    {
      RCLCPP_ERROR_STREAM(get_logger(), "Selected Reliability QoS: " << reliability << " doesn't exists!");
      return;
    }

    if(durability == "volatile")
    {
      qos_profile_pub_.durability(RMW_QOS_POLICY_DURABILITY_VOLATILE);
      RCLCPP_INFO(get_logger(), "[Durability] : Volatile");
    }
    else if(durability == "transient_local")
    {
      qos_profile_pub_.durability(RMW_QOS_POLICY_DURABILITY_TRANSIENT_LOCAL);
      RCLCPP_INFO(get_logger(), "[Durability] : Transient Local");
    }
    else if(durability == "system_default")
    {
      qos_profile_pub_.durability(RMW_QOS_POLICY_DURABILITY_SYSTEM_DEFAULT);
      RCLCPP_INFO(get_logger(), "[Durability] : System Default");
    }
    else
    {
      RCLCPP_ERROR_STREAM(get_logger(), "Selected Durability QoS: " << durability << " doesn't exists!");
      return;
    }

    pub_ = create_publisher<std_msgs::msg::String>("chatter", qos_profile_pub_);
    timer_ = create_wall_timer(1s, std::bind(&SimpleQosPublisher::timerCallback, this));
    RCLCPP_INFO(get_logger(), "Publishing at 1 Hz");
  }

  void timerCallback()
  {
    auto message = std_msgs::msg::String();
    message.data = "Hello ROS 2 QoS - counter:" + std::to_string(counter_++);
    pub_->publish(message);
  }

private:
  rclcpp::Publisher<std_msgs::msg::String>::SharedPtr pub_;
  rclcpp::QoS qos_profile_pub_;
  rclcpp::TimerBase::SharedPtr timer_;
  unsigned int counter_;
};

int main(int argc, char *argv[])
{
  rclcpp::init(argc, argv);
  auto node = std::make_shared<SimpleQosPublisher>();
  rclcpp::spin(node);
  rclcpp::shutdown();
  return 0;
}