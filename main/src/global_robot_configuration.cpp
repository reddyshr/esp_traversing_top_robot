#include "global_robot_configuration.h"

// CONSIDER ADDING MUTEX/SEMAPHORE LOCKS


//Position and Orientation of Robot Body Frame wrt Vicon World Frame
static std::array<double, 3> position = {0.0, 0.0, 0.0};
static std::array<double, 4> orientation = {0.0, 0.0, 0.0, 0.0};

//Angle of drag plate wrt Body Frame
static double dp_angle = 0.0;

//Angular Velocity of drag plate wrt Body Frame
static double dp_angular_velocity = 0.0;

void getPosition(std::array<double, 3> &pos) {
	pos = position;
} 

void setPosition(const std::array<double, 3> &pos) {
	position = pos;
}

void getOrientation(std::array<double,4> &ori) {
	ori = orientation;
}


void setOrientation(const std::array<double,4> &ori) {
	orientation = ori;
}

void getDPAngle(double &ang) {
	ang = dp_angle;
}

void setDPAngle(double &ang) {
	dp_angle = ang;
}

void getDPAngularVelocity(double &ang_vel) {
	ang_vel = dp_angular_velocity;
}

void setDPAngularVelocity(double &ang_vel) {
	dp_angular_velocity = ang_vel;
}