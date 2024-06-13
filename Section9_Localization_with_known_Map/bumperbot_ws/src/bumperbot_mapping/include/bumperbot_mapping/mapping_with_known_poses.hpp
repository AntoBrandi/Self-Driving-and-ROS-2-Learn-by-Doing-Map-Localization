#ifndef MAPPING_WITH_KNOWN_POSES_HPP
#define MAPPING_WITH_KNOWN_POSES_HPP

#include <vector>
#include <memory>

#include "rclcpp/rclcpp.hpp"
#include "sensor_msgs/msg/laser_scan.hpp"
#include "nav_msgs/msg/occupancy_grid.hpp"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"

namespace bumperbot_mapping
{
inline const double PRIOR_PROB = 0.5;
inline const double OCC_PROB = 0.9;
inline const double FREE_PROB = 0.35;

struct Pose
{
    Pose() = default;
    Pose(const int px, const int py) : x(px), y(py){}

    int x;
    int y;
};

double prob2logodds(double p);

double logodds2prob(double l);

unsigned int poseToCell(const Pose & pose, const nav_msgs::msg::MapMetaData & map_info);

Pose coordinatesToPose(const double px, const double py, const nav_msgs::msg::MapMetaData & map_info);
    
bool poseOnMap(const Pose & pose, const nav_msgs::msg::MapMetaData & map_info);

std::vector<Pose> bresenham(const Pose & start, const Pose & end);

std::vector<std::pair<Pose, double>> inverseSensorModel(const Pose & p_robot, const Pose & p_beam);

class MappingWithKnownPoses : public rclcpp::Node
{
public:
    MappingWithKnownPoses(const std::string& name);

private:

    void scanCallback(const sensor_msgs::msg::LaserScan & scan);

    void timerCallback();

    nav_msgs::msg::OccupancyGrid map_;
    std::vector<double> probability_map_;

    rclcpp::Subscription<sensor_msgs::msg::LaserScan>::SharedPtr scan_sub_;
    rclcpp::Publisher<nav_msgs::msg::OccupancyGrid>::SharedPtr map_pub_;
    rclcpp::TimerBase::SharedPtr timer_;
    std::unique_ptr<tf2_ros::Buffer> tf_buffer_;
    std::shared_ptr<tf2_ros::TransformListener> tf_listener_{nullptr};
};
}  // namespace bumperbot_mapping

#endif // MAPPING_WITH_KNOWN_POSES_HPP
