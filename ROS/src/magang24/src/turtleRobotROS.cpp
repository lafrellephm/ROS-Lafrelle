#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/TeleportAbsolute.h>

void posisiCallback(const geometry_msgs::Twist::ConstPtr& msg) {
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<turtlesim::TeleportAbsolute>("/turtle1/teleport_absolute");
    turtlesim::TeleportAbsolute srv;
    
    // Set posisi turtle berdasarkan posisi bola, dalam skala Turtlesim (10 cm = 1 satuan)
    float posX = msg->linear.x + 5.5; // Offset ke tengah Turtlesim (0 ke 5.5)
    float posY = msg->linear.y + 5.5; // Offset ke tengah Turtlesim

    // Pastikan posisi tidak keluar dari batas Turtlesim (0.5 - 10.5)
    posX = std::max(0.5f, std::min(posX, 10.5f));
    posY = std::max(0.5f, std::min(posY, 10.5f));

    srv.request.x = posX;
    srv.request.y = posY;
    
    if (client.call(srv)) {
        ROS_INFO("Turtle moved to: x=%f, y=%f", srv.request.x, srv.request.y);
    } else {
        ROS_ERROR("Failed to move turtle.");
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "turtle_follow_bola");
    ros::NodeHandle nh;
    ros::Subscriber posisi_sub = nh.subscribe("/posisi_bola", 10, posisiCallback);
    
    ros::spin();
    return 0;
}
