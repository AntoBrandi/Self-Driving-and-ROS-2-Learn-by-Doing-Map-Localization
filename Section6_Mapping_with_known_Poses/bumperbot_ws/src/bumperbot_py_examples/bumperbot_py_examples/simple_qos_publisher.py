import rclpy
from rclpy.node import Node
from std_msgs.msg import String
from rclpy.qos import QoSProfile, QoSDurabilityPolicy, QoSReliabilityPolicy

class SimpleQosPublisher(Node):

    def __init__(self):
        super().__init__('simple_qos_publisher')
        self.qos_profile_pub = QoSProfile(depth=10)
        self.counter = 0

        self.declare_parameter('reliability', 'system_default')
        self.declare_parameter('durability', 'system_default')

        reliability = self.get_parameter('reliability').get_parameter_value().string_value
        durability = self.get_parameter('durability').get_parameter_value().string_value

        if reliability == 'best_effort':
            self.qos_profile_pub.reliability = QoSReliabilityPolicy.BEST_EFFORT
            self.get_logger().info('[Reliability] : Best Effort')
        elif reliability == 'reliable':
            self.qos_profile_pub.reliability = QoSReliabilityPolicy.RELIABLE
            self.get_logger().info('[Reliability] : Reliable')
        elif reliability == 'system_default':
            self.qos_profile_pub.reliability = QoSReliabilityPolicy.SYSTEM_DEFAULT
            self.get_logger().info('[Reliability] : System Default')
        else:
            self.get_logger().error('Selected Reliability QoS: %s doesn\'t exist!' % reliability)
            return

        if durability == 'volatile':
            self.qos_profile_pub.durability = QoSDurabilityPolicy.VOLATILE
            self.get_logger().info('[Durability] : Volatile')
        elif durability == 'transient_local':
            self.qos_profile_pub.durability = QoSDurabilityPolicy.TRANSIENT_LOCAL
            self.get_logger().info('[Durability] : Transient Local')
        elif durability == 'system_default':
            self.qos_profile_pub.durability = QoSDurabilityPolicy.SYSTEM_DEFAULT
            self.get_logger().info('[Durability] : System Default')
        else:
            self.get_logger().error('Selected Durability QoS: %s doesn\'t exist!' % durability)
            return

        self.pub = self.create_publisher(String, 'chatter', self.qos_profile_pub)
        self.timer = self.create_timer(1.0, self.timer_callback)
        self.get_logger().info('Publishing at 1 Hz')

    def timer_callback(self):
        message = String()
        message.data = 'Hello ROS 2 QoS - counter: %d' % self.counter
        self.pub.publish(message)
        self.counter += 1

def main(args=None):
    rclpy.init(args=args)
    node = SimpleQosPublisher()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
