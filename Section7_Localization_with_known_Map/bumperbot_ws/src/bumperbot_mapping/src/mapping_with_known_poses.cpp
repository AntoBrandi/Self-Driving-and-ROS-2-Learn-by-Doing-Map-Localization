#include <chrono>
#include <algorithm>

#include "bumperbot_mapping/mapping_with_known_poses.hpp"
#include "geometry_msgs/msg/transform_stamped.hpp"
#include "tf2/utils.h"

using std::placeholders::_1;
using namespace std::chrono_literals;

namespace bumperbot_mapping
{
double prob2logodds(double p)
{
    return std::log(p / (1 - p));
}

double logodds2prob(double l)
{
    return 1 - (1 / (1 + std::exp(l)));
}

unsigned int poseToCell(const Pose & pose, const nav_msgs::msg::MapMetaData & map_info)
{
    return map_info.width * pose.y + pose.x;
}

Pose coordinatesToPose(const double px, const double py, const nav_msgs::msg::MapMetaData & map_info)
{
    Pose pose;
    pose.x = std::round((px - map_info.origin.position.x) / map_info.resolution);
    pose.y = std::round((py - map_info.origin.position.y) / map_info.resolution);
    return pose;
}

bool poseOnMap(const Pose & pose, const nav_msgs::msg::MapMetaData & map_info)
{
    
    return pose.x < static_cast<int>(map_info.width)  && pose.x >= 0 &&
           pose.y < static_cast<int>(map_info.height) && pose.y >= 0;
}

std::vector<Pose> bresenham(const Pose & start, const Pose & end)
{
    // Implementation of Bresenham's line drawing algorithm
    // See en.wikipedia.org/wiki/Bresenham's_line_algorithm
    std::vector<Pose> line;

    int dx = end.x - start.x;
    int dy = end.y - start.y;

    int xsign = dx > 0 ? 1 : -1;
    int ysign = dy > 0 ? 1 : -1;

    dx = std::abs(dx);
    dy = std::abs(dy);

    int xx, xy, yx, yy;
    if(dx > dy)
    {
        xx = xsign;
        xy = 0;
        yx = 0;
        yy = ysign;
    }
    else
    {
        int tmp = dx;
        dx = dy;
        dy = tmp;
        xx = 0;
        xy = ysign;
        yx = xsign;
        yy = 0;
    }

    int D = 2 * dy - dx;
    int y = 0;

    line.reserve(dx + 1);
    for (int i = 0; i < dx + 1; i++)
    {
        line.emplace_back(Pose(start.x + i * xx + y * yx, start.y + i * xy + y * yy));
        if(D >= 0)
        {
            y++;
            D -= 2 * dx;
        }
        D += 2 * dy;
    }

    return line;
}

std::vector<std::pair<Pose, double>> inverseSensorModel(const Pose & p_robot, const Pose & p_beam)
{
    std::vector<std::pair<Pose, double>> occ_values;
    std::vector<Pose> line = bresenham(p_robot, p_beam);
    occ_values.reserve(line.size());

    for (size_t i = 0; i < line.size() - 1u; i++)
    {
        occ_values.emplace_back(std::pair<Pose, double>(line.at(i), FREE_PROB));  // FREE
    }

    occ_values.emplace_back(std::pair<Pose, double>(line.back(), OCC_PROB));  // OCCUPIED
    return occ_values;
}

MappingWithKnownPoses::MappingWithKnownPoses(const std::string &name)
    : Node(name)
{
    declare_parameter<double>("width", 50.0);
    declare_parameter<double>("height", 50.0);
    declare_parameter<double>("resolution", 0.1);

    double width = get_parameter("width").as_double();
    double height = get_parameter("height").as_double();
    map_.info.resolution = get_parameter("resolution").as_double();
    map_.info.width = std::round(width / map_.info.resolution);
    map_.info.height = std::round(height / map_.info.resolution);
    map_.info.origin.position.x = - std::round(width / 2.0);
    map_.info.origin.position.y = - std::round(height / 2.0);
    map_.header.frame_id = "odom";

    // Init map with prior probability
    map_.data = std::vector<int8_t>(map_.info.height * map_.info.width, -1);
    probability_map_ = std::vector<double>(map_.info.height * map_.info.width, prob2logodds(PRIOR_PROB));

    tf_buffer_ = std::make_unique<tf2_ros::Buffer>(this->get_clock());
    tf_listener_ = std::make_shared<tf2_ros::TransformListener>(*tf_buffer_);
    scan_sub_ = create_subscription<sensor_msgs::msg::LaserScan>(
        "scan", 10, std::bind(&MappingWithKnownPoses::scanCallback, this, _1));
    map_pub_ = create_publisher<nav_msgs::msg::OccupancyGrid>("map", 1);
    timer_ = create_wall_timer(1s, std::bind(&MappingWithKnownPoses::timerCallback, this));
}

void MappingWithKnownPoses::scanCallback(const sensor_msgs::msg::LaserScan &scan)
{
    geometry_msgs::msg::TransformStamped t;
    try
    {
        t = tf_buffer_->lookupTransform(map_.header.frame_id, scan.header.frame_id, tf2::TimePointZero);
    }
    catch (const tf2::TransformException &ex)
    {
        RCLCPP_ERROR(get_logger(), "Unable to transform between /odom and /base_footprint");
        return;
    }

    // Check if pose is on the map
    Pose robot_p = coordinatesToPose(t.transform.translation.x, t.transform.translation.y, map_.info);
    if(!poseOnMap(robot_p, map_.info))
    {
        RCLCPP_ERROR(get_logger(), "The robot is out of the Map!");
        return;
    }

    tf2::Quaternion q(t.transform.rotation.x,
        t.transform.rotation.y,
        t.transform.rotation.z,
        t.transform.rotation.w);
    tf2::Matrix3x3 m(q);
    double roll, pitch, yaw;
    m.getRPY(roll, pitch, yaw);

    for (size_t i = 0; i < scan.ranges.size(); i++)
    {
      // Polar to cartesian coordinates
      double angle = scan.angle_min + (i * scan.angle_increment) + yaw;
      double px = scan.ranges.at(i) * std::cos(angle);
      double py = scan.ranges.at(i) * std::sin(angle);
      px += t.transform.translation.x;
      py += t.transform.translation.y;

      Pose beam_p = coordinatesToPose(px, py, map_.info);
      if(!poseOnMap(beam_p, map_.info))
      {
        continue;
      }
      std::vector<std::pair<Pose, double>> poses = inverseSensorModel(robot_p, beam_p);

      for(const auto & pose : poses)
      {
        if(poseOnMap(pose.first, map_.info))
        {
            unsigned int cell = poseToCell(pose.first, map_.info);
            probability_map_.at(cell) += prob2logodds(pose.second) - prob2logodds(PRIOR_PROB);
        }
      }
    }
}

void MappingWithKnownPoses::timerCallback()
{
    // Convert to occupancy grid and publish
    std::transform(probability_map_.begin(), probability_map_.end(), map_.data.begin(), [](double value){
        return logodds2prob(value) * 100;
    });
    map_.header.stamp = get_clock()->now();
    map_pub_->publish(map_);
}
}  // namespace bumperbot_mapping

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    auto node = std::make_shared<bumperbot_mapping::MappingWithKnownPoses>("mapping_with_known_poses");
    rclcpp::spin(node);
    rclcpp::shutdown();
    return 0;
}
