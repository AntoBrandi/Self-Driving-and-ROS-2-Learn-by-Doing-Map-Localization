#include <memory>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"


using std::placeholders::_1;

class SimpleQosSubscriber : public rclcpp::Node
{
public:
  SimpleQosSubscriber() : Node("simple_qos_subscriber"), qos_profile_sub_(10)
  {
    declare_parameter<std::string>("reliability", "system_default");
    declare_parameter<std::string>("durability", "system_default");

    const auto reliability = get_parameter("reliability").as_string();
    const auto durability = get_parameter("durability").as_string();

    if(reliability == "best_effort")
    {
      qos_profile_sub_.reliability(RMW_QOS_POLICY_RELIABILITY_BEST_EFFORT);
      RCLCPP_INFO(get_logger(), "[Reliability] : Best Effort");
    }
    else if(reliability == "reliable")
    {
      qos_profile_sub_.reliability(RMW_QOS_POLICY_RELIABILITY_RELIABLE);
      RCLCPP_INFO(get_logger(), "[Reliability] : Reliable");
    }
    else if(reliability == "system_default")
    {
      qos_profile_sub_.reliability(RMW_QOS_POLICY_RELIABILITY_SYSTEM_DEFAULT);
      RCLCPP_INFO(get_logger(), "[Reliability] : System Default");
    }
    else
    {
      RCLCPP_ERROR_STREAM(get_logger(), "Selected Reliability QoS: " << reliability << " doesn't exists!");
      return;
    }

    if(durability == "volatile")
    {
      qos_profile_sub_.durability(RMW_QOS_POLICY_DURABILITY_VOLATILE);
      RCLCPP_INFO(get_logger(), "[Durability] : Volatile");
    }
    else if(durability == "transient_local")
    {
      qos_profile_sub_.durability(RMW_QOS_POLICY_DURABILITY_TRANSIENT_LOCAL);
      RCLCPP_INFO(get_logger(), "[Durability] : Transient Local");
    }
    else if(durability == "system_default")
    {
      qos_profile_sub_.durability(RMW_QOS_POLICY_DURABILITY_SYSTEM_DEFAULT);
      RCLCPP_INFO(get_logger(), "[Durability] : System Default");
    }
    else
    {
      RCLCPP_ERROR_STREAM(get_logger(), "Selected Durability QoS: " << durability << " doesn't exists!");
      return;
    }

    sub_ = create_subscription<std_msgs::msg::String>(
        "chatter", qos_profile_sub_, std::bind(&SimpleQosSubscriber::msgCallback, this, _1));
  }

private:
  rclcpp::Subscription<std_msgs::msg::String>::SharedPtr sub_;
  rclcpp::QoS qos_profile_sub_;

  void msgCallback(const std_msgs::msg::String &msg) const
  {
    RCLCPP_INFO_STREAM(this->get_logger(), "I heard: " << msg.data.c_str());
  }
};


int main(int argc, char * argv[])
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<SimpleQosSubscriber>());
  rclcpp::shutdown();
  return 0;
}