#include "rclcpp/rclcpp.hpp"
#include "geometry_msgs/msg/twist.hpp"
#include "geometry_msgs/msg/twist_stamped.hpp"


class TwistRelayNode : public rclcpp::Node {
public:
    TwistRelayNode() : Node("twist_relay")
    {
        controller_sub_ = this->create_subscription<geometry_msgs::msg::Twist>(
            "/bumperbot_controller/cmd_vel_unstamped",
            10,
            std::bind(&TwistRelayNode::controller_twist_callback, this, std::placeholders::_1)
        );
        controller_pub_ = this->create_publisher<geometry_msgs::msg::TwistStamped>(
            "/bumperbot_controller/cmd_vel", 10);
        joy_sub_ = this->create_subscription<geometry_msgs::msg::TwistStamped>(
            "/input_joy/cmd_vel_stamped",
            10,
            std::bind(&TwistRelayNode::joy_twist_callback, this, std::placeholders::_1)
        );
        joy_pub_ = this->create_publisher<geometry_msgs::msg::Twist>(
            "/input_joy/cmd_vel", 10);
    }

private:
    void controller_twist_callback(const geometry_msgs::msg::Twist::SharedPtr msg)
    {
        geometry_msgs::msg::TwistStamped twist_stamped;
        twist_stamped.header.stamp = get_clock()->now();
        twist_stamped.twist = *msg;
        controller_pub_->publish(twist_stamped);
    }

    void joy_twist_callback(const geometry_msgs::msg::TwistStamped::SharedPtr msg)
    {
        geometry_msgs::msg::Twist twist;
        twist = msg->twist;
        joy_pub_->publish(twist);
    }

    rclcpp::Subscription<geometry_msgs::msg::Twist>::SharedPtr controller_sub_;
    rclcpp::Publisher<geometry_msgs::msg::TwistStamped>::SharedPtr controller_pub_;
    rclcpp::Subscription<geometry_msgs::msg::TwistStamped>::SharedPtr joy_sub_;
    rclcpp::Publisher<geometry_msgs::msg::Twist>::SharedPtr joy_pub_;
};

int main(int argc, char * argv[])
{
    rclcpp::init(argc, argv);
    auto node = std::make_shared<TwistRelayNode>();
    rclcpp::spin(node);
    rclcpp::shutdown();
    return 0;
}