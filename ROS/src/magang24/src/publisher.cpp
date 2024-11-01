#include <ros/ros.h>
#include "std_msgs/Float64.h"

int main(int argc, char** argv){
    ros::init(argc, argv, "publisher");
    ros::NodeHandle nh;
    ros::Publisher pub_data = nh.advertise<std_msgs::Float64>("/pengumuman", 1);

    // Log untuk memastikan node dimulai
    ROS_INFO("Publisher node has started.");

    ros::Rate loop_rate(1);
    while (ros::ok())
    {
        
        static float counter = 0;
        std_msgs::Float64 msg;
        msg.data = ++counter;

        pub_data.publish(msg);
        ROS_INFO("Published: %f", msg.data); // Log pesan yang dipublikasikan

        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
