#!/usr/bin/env python3
import random
import time
from math import sin, cos, atan2, sqrt, fabs, pi

import rclpy
from rclpy.node import Node
from geometry_msgs.msg import Pose, PoseArray
from nav_msgs.msg import Odometry
from tf_transformations import quaternion_from_euler, euler_from_quaternion


def normalize(z):
    return atan2(sin(z), cos(z))


def angle_diff(a, b):
    a = normalize(a)
    b = normalize(b)
    d1 = a - b
    d2 = 2 * pi - fabs(d1)
    if d1 > 0:
        d2 *= -1.0
    if fabs(d1) < fabs(d2):
        return d1
    else:
        return d2


class OdometryMotionModel(Node):
    def __init__(self):
        super().__init__('odometry_motion_model')
        self.last_odom_x = 0.0
        self.last_odom_y = 0.0
        self.last_odom_theta = 0.0
        self.is_first_odom = True

        self.declare_parameter('alpha1', 0.1)
        self.declare_parameter('alpha2', 0.1)
        self.declare_parameter('alpha3', 0.1)
        self.declare_parameter('alpha4', 0.1)
        self.declare_parameter('nr_samples', 300)

        self.alpha1 = self.get_parameter('alpha1').get_parameter_value().double_value
        self.alpha2 = self.get_parameter('alpha2').get_parameter_value().double_value
        self.alpha3 = self.get_parameter('alpha3').get_parameter_value().double_value
        self.alpha4 = self.get_parameter('alpha4').get_parameter_value().double_value
        self.nr_samples = self.get_parameter('nr_samples').get_parameter_value().integer_value

        if self.nr_samples >= 0:
            self.samples = PoseArray()
            self.samples.poses = [Pose() for _ in range(self.nr_samples)]
        else:
            self.get_logger().fatal('Invalid Number of Samples requested: %d! Exit..', self.nr_samples)
            return

        self.odom_sub = self.create_subscription(
            Odometry, 'bumperbot_controller/odom', self.odom_callback, 10
        )
        self.pose_array_pub = self.create_publisher(
            PoseArray, 'odometry_motion_model/samples', 10
        )

    def odom_callback(self, odom):
        q = [odom.pose.pose.orientation.x, odom.pose.pose.orientation.y,
             odom.pose.pose.orientation.z, odom.pose.pose.orientation.w]
        roll, pitch, yaw = euler_from_quaternion(q)

        if self.is_first_odom:
            self.samples.header.frame_id = odom.header.frame_id
            self.last_odom_x = odom.pose.pose.position.x
            self.last_odom_y = odom.pose.pose.position.y
            self.last_odom_theta = yaw
            self.is_first_odom = False
            return

        # Odometry Increment
        odom_x_increment = odom.pose.pose.position.x - self.last_odom_x
        odom_y_increment = odom.pose.pose.position.y - self.last_odom_y
        odom_theta_increment = angle_diff(yaw, self.last_odom_theta)

        # Motion Model
        if sqrt(pow(odom_y_increment, 2) + pow(odom_x_increment, 2)) < 0.01:
            delta_rot1 = 0.0
        else:
            delta_rot1 = angle_diff(atan2(odom_y_increment, odom_x_increment), yaw)

        delta_trans = sqrt(pow(odom_x_increment, 2) + pow(odom_y_increment, 2))
        delta_rot2 = angle_diff(odom_theta_increment, delta_rot1)

        # Noise Model that affects the Motion Model
        rot1_variance = self.alpha1 * delta_rot1 + self.alpha2 * delta_trans
        trans_variance = self.alpha3 * delta_trans + self.alpha4 * (delta_rot1 + delta_rot2)
        rot2_variance = self.alpha1 * delta_rot2 + self.alpha2 * delta_trans
        
        random.seed(int(time.time()))

        for sample in self.samples.poses:
            rot1_noise = random.gauss(0.0, rot1_variance)
            trans_noise = random.gauss(0.0, trans_variance)
            rot2_noise = random.gauss(0.0, rot2_variance)
            delta_rot1_draw = angle_diff(delta_rot1, rot1_noise)
            delta_trans_draw = delta_trans - trans_noise
            delta_rot2_draw = angle_diff(delta_rot2, rot2_noise)

            sample_q = [sample.orientation.x, sample.orientation.y,
                        sample.orientation.z, sample.orientation.w]
            sample_roll, sample_pitch, sample_yaw = euler_from_quaternion(sample_q)
            sample.position.x += delta_trans_draw * cos(sample_yaw + delta_rot1_draw)
            sample.position.y += delta_trans_draw * sin(sample_yaw + delta_rot1_draw)
            q = quaternion_from_euler(0.0, 0.0, sample_yaw + delta_rot1_draw + delta_rot2_draw)
            sample.orientation.x, sample.orientation.y, sample.orientation.z, sample.orientation.w = q

        # Update for the next iteration
        self.last_odom_x = odom.pose.pose.position.x
        self.last_odom_y = odom.pose.pose.position.y
        self.last_odom_theta = yaw

        # Publish samples
        self.pose_array_pub.publish(self.samples)


def main():
    rclpy.init()
    node = OdometryMotionModel()
    rclpy.spin(node)
    rclpy.shutdown()


if __name__ == '__main__':
    main()
