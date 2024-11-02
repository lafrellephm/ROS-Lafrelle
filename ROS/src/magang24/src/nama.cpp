#include <ros/ros.h>
#include <turtlesim/TeleportAbsolute.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>
#include <turtlesim/Kill.h>

void stopTurtle(ros::Publisher &pub);
void turtleMove(ros::Publisher &pub, double linear_x, double angular_z, double duration);
void buatHurufL(ros::Publisher &pub);
void buatHurufA(ros::Publisher &pub);
void killTurtle(ros::ServiceClient &client, const std::string &name);
void spawnTurtle(ros::ServiceClient &client, double x, double y, double theta, const std::string &name);


void turtleMove(ros::Publisher &pub, double linear_x, double angular_z, double duration) {
    geometry_msgs::Twist move;
    move.linear.x = linear_x;   // maju
    move.angular.z = angular_z;  // rotasi
    pub.publish(move);
    ros::Duration(duration).sleep(); // Tunggu selama durasi yang ditentukan
}
void buatHurufL(ros::Publisher &pub) {
    turtleMove(pub, 0.0, -3.14, 1.0);
    turtleMove(pub, 2.0, 0.0, 1.0);
    turtleMove(pub, 0.0, -1.57, 1.0);
    turtleMove(pub, 4.0, 0.0, 2.0);
    stopTurtle(pub);
}
void buatHurufA(ros::Publisher &pub) {
    geometry_msgs::Twist move;
    turtleMove(pub, 0.0, 1.3, 1.0);
    turtleMove(pub, 4.0, 0.0, 1.0);
    turtleMove(pub, 0.0, -2.6, 1.0);
    turtleMove(pub, 4.0, 0.0, 2.0);
    turtleMove(pub, 0.0, -3.14, 1.0);
    turtleMove(pub, 3.0, 0.0, 0.5);
    turtleMove(pub, 0.0, 1.57, 1.0);
    turtleMove(pub, 3.0, 0.0, 0.5);
    stopTurtle(pub);
}
void buatHurufF(ros::Publisher &pub, ros::ServiceClient &kill_client, ros::ServiceClient &spawn_client) {
    geometry_msgs::Twist move;
    turtleMove(pub, 0.0, 1.57, 1.0);
    turtleMove(pub, 4.0, 0.0, 1.0);
    turtleMove(pub, 0.0, -1.57, 1.0);
    turtleMove(pub, 4.0, 0.0, 0.5);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 5.5, 8.0, 0.0, "turtle1");
    stopTurtle(pub);
    turtleMove(pub, 4.0, 0.0, 0.5);
    stopTurtle(pub);
}
void buatHurufR(ros::Publisher &pub) {
    geometry_msgs::Twist move;
    turtleMove(pub, 0.0, 1.57, 1.0);
    turtleMove(pub, 4.0, 0.0, 1.0);
    turtleMove(pub, 0.0, -1.57, 1.0);
    turtleMove(pub, 2.2, -1.57, 1.0);
    turtleMove(pub, 2.2, -1.57, 1.0);
    turtleMove(pub, 0.0, 2.15, 1.0);
    turtleMove(pub, 2.8, 0.0, 0.5);
    stopTurtle(pub);
}
void buatHurufE(ros::Publisher &pub, ros::ServiceClient &kill_client, ros::ServiceClient &spawn_client, bool e2) {
    turtleMove(pub, 0.0, -3.14, 1.0);
    turtleMove(pub, 2.0, 0.0, 1.0);
    turtleMove(pub, 0.0, -3.0, 0.5);
    turtleMove(pub, 4.0, 0.0, 2.0);
    turtleMove(pub, 0.0, -1.61, 1.0);
    turtleMove(pub, 2.0, 0.0, 1.0);
    killTurtle(kill_client, "turtle1");
    if(e2){
        spawnTurtle(spawn_client, 8.0, 4.0, 0.0, "turtle1");
    }
    else {spawnTurtle(spawn_client, 0.5, 4.0, 0.0, "turtle1");}
    stopTurtle(pub);
    turtleMove(pub, 2.0, 0.0, 1.0);
    stopTurtle(pub);
}
void buatApalah(ros::Publisher &pub, ros::ServiceClient &kill_client, ros::ServiceClient &spawn_client, bool o1, bool o2) {
    turtleMove(pub, 0.0, 1.57, 1.0);
    turtleMove(pub, 4.0, -6.28, 1.0);
    killTurtle(kill_client, "turtle1");
    if(o1){
        spawnTurtle(spawn_client, 3.14, 0.6, 0.0, "turtle1");
        stopTurtle(pub);
    }
    else if(o2){spawnTurtle(spawn_client, 5.64, 0.6, 0.0, "turtle1");
    stopTurtle(pub);}
    else{spawnTurtle(spawn_client, 8.14, 0.6, 0.0, "turtle1");
    stopTurtle(pub);}
    turtleMove(pub, 0.0, 1.57, 1.0);
    turtleMove(pub, 0.8, 0, 1.0);
}
void stopTurtle(ros::Publisher &pub) {
    geometry_msgs::Twist stop;
    stop.linear.x = 0.0;   
    stop.angular.z = 0.0;  
    pub.publish(stop);
    ros::Duration(0.5).sleep(); 
}

void killTurtle(ros::ServiceClient &client, const std::string &name) {
    turtlesim::Kill srv;
    srv.request.name = name;
    if (!client.call(srv)) {
        ROS_ERROR("Failed to call service kill");
    }
}

void spawnTurtle(ros::ServiceClient &client, double x, double y, double theta, const std::string &name) {
    turtlesim::Spawn srv;
    srv.request.x = x;
    srv.request.y = y;
    srv.request.theta = theta;
    srv.request.name = name;
    if (!client.call(srv)) {
        ROS_ERROR("Failed to call service spawn");
    }
}
bool e2, o2 = false;
bool o1 = true;
int main(int argc, char **argv) {
    ros::init(argc, argv, "turtlesim_nama");
    ros::NodeHandle nh;
    
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);
    ros::ServiceClient teleport_client = nh.serviceClient<turtlesim::TeleportAbsolute>("/turtle1/teleport_absolute");
    ros::ServiceClient spawn_client = nh.serviceClient<turtlesim::Spawn>("/spawn");
    ros::ServiceClient kill_client = nh.serviceClient<turtlesim::Kill>("/kill");
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 2.5, 6.6, 0.0, "turtle1");
    stopTurtle(pub);
    buatHurufL(pub);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 3.0, 6.6, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    buatHurufA(pub);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 5.5, 6.6, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    buatHurufF(pub, kill_client, spawn_client);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 7.9, 6.6, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    buatHurufR(pub);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 2.5, 2.0, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    buatHurufE(pub, kill_client, spawn_client, e2);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 5.0, 2.0, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    buatHurufL(pub);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 7.5, 2.0, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    buatHurufL(pub);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 10.0, 2.0, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    e2 = true;
    buatHurufE(pub, kill_client, spawn_client, e2);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 2.5, 1.0, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    buatApalah(pub, kill_client, spawn_client, o1, o2);
    killTurtle(kill_client, "turtle1");
    spawnTurtle(spawn_client, 5.0, 1.0, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    o1=false; o2=true;
    buatApalah(pub, kill_client, spawn_client, o1, o2);
    killTurtle(kill_client, "turtle1"); 
    o2=false;
    spawnTurtle(spawn_client, 7.5, 1.0, 0.0, "turtle1");
    ros::Duration(0.5).sleep();
    buatApalah(pub, kill_client, spawn_client, o1, o2);
    killTurtle(kill_client, "turtle1");
    ros::spinOnce();
    return 0;
}



