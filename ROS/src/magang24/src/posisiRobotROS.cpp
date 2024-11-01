#include <opencv2/opencv.hpp>
#include <ros/ros.h>
#include "std_msgs/Float64.h"
#include <geometry_msgs/Twist.h>
#include <turtlesim/TeleportAbsolute.h>

using namespace cv;
using namespace std;

int main(int argc, char** argv){
    ros::init(argc, argv, "posisiRobotROS");
    ros::NodeHandle nh;
    ros::Publisher posisi_pub = nh.advertise<geometry_msgs::Twist>("/posisi_bola", 10);
    cv::VideoCapture cap("/home/lafrelle/ROS/src/magang24/src/vidROS.mp4");

    //teleport turtle ke pojok bwh
    ros::ServiceClient teleport_client = nh.serviceClient<turtlesim::TeleportAbsolute>("/turtle1/teleport_absolute");
    turtlesim::TeleportAbsolute teleport_srv;

    //set posisi awal
    teleport_srv.request.x = 0.1;  //tidak nabrak tembok
    teleport_srv.request.y = 0.1;
    teleport_srv.request.theta = 0.0;

    if (teleport_client.call(teleport_srv)) {
        ROS_INFO("Turtle dipindahkan ke pojok kiri bawah.");
    } else {
        ROS_ERROR("Gagal memindahkan turtle.");
    }

    if (!cap.isOpened()) {
        cout << "Video tidak dapat dibuka." << endl;
        return -1;
    }

    Mat video, hsvVideo, maskBola;

    while(ros::ok()){
        bool berhasil = cap.read(video);
        if (!berhasil) {
            cout << "Selesai membaca video." << endl;
            break;
        }

        int frameWidth = video.cols;
        int frameHeight = video.rows;
        Point center(frameWidth / 2, frameHeight / 2); 

        int boxSize = 10; 
        rectangle(video, Point(center.x - boxSize / 2, center.y - boxSize / 2),
                  Point(center.x + boxSize / 2, center.y + boxSize / 2),
                  Scalar(255, 255, 255), 2); 


        cvtColor(video, hsvVideo, COLOR_BGR2HSV);
        Scalar minWarnaBola(0, 144, 153);
        Scalar maxWarnaBola(15, 255, 255);
        inRange(hsvVideo, minWarnaBola, maxWarnaBola, maskBola);

        erode(maskBola, maskBola, getStructuringElement(MORPH_RECT, Size(3, 3)));
        dilate(maskBola, maskBola, getStructuringElement(MORPH_RECT, Size(3, 3)));

        vector<vector<Point>> konturBola;
        findContours(maskBola, konturBola, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);

        Point2f posisiBola;
        float radiusBola = 0.0;
        bool bolaTerdeteksi = false;

        for (const auto& kontur : konturBola) {
            double area = contourArea(kontur);
            if (area > 10) {
                minEnclosingCircle(kontur, posisiBola, radiusBola);
                bolaTerdeteksi = true;
                break;
            }
        }

        if (bolaTerdeteksi) {
            //posisi bola
            float jarakX = (posisiBola.x - center.x) / 10.0 + 50; //x 0-100
            float jarakY = (posisiBola.y - center.y) / 10.0 + 50; //y 0-100

            //pembatas
            jarakX = max(0.1f, min(99.9f, jarakX));
            jarakY = max(0.1f, min(99.9f, jarakY));

            //msg turtle
            geometry_msgs::Twist msg;
            msg.linear.x = jarakX;
            msg.linear.y = jarakY;
            posisi_pub.publish(msg);

            circle(video, posisiBola, static_cast<int>(radiusBola), Scalar(0, 0, 255), 2);
            circle(video, posisiBola, 5, Scalar(255, 0, 0), -1);

            string teksPosisi = "Robot Position: (" + to_string(static_cast<int>(jarakX)) + ", " + to_string(static_cast<int>(jarakY)) + ")";
            putText(video, teksPosisi, Point(10, 30), FONT_HERSHEY_SIMPLEX, 0.6, Scalar(0, 0, 255), 2);
        }

        imshow("Deteksi Bola", video);

        if (waitKey(30) == 'q') {
            break;
        }
        ros::spinOnce();
    }
    return 0;
}
