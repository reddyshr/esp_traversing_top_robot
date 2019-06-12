#include "global_robot_configuration.h"

// CONSIDER ADDING MUTEX/SEMAPHORE LOCKS

//ESP to IQ Motor UART Communication Object

EspIQCommunication esp_iq_com = EspIQCommunication();
GenericInterface com;


//Position and Orientation of Robot Body Frame wrt Vicon World Frame
static std::array<double, 3> position = {0.0, 0.0, 0.0};
static std::array<double, 4> orientation = {0.0, 0.0, 0.0, 0.0};

//Angle of IQ Speed Module wrt Body Frame
static float iq_angle = 0.0;

//Angular Velocity of IQ Speed Module wrt Body Frame
static float iq_angular_velocity = 0.0;

//Angular Velocity Command of IQ Speed Module wrt Body Frame
static float iq_angular_velocity_cmd = 0.0;

//Phase and Amplitude Command of IQ Speed Module wrt Body Frame
static float iq_phase_cmd = 0.0;
static float iq_amplitude_cmd = 0.0;

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

void getIQAngle(float &ang) {
	ang = iq_angle;
}

void setIQAngle(float &ang) {
	iq_angle = ang;
}

void getIQAngularVelocity(float &ang_vel) {
	ang_vel = iq_angular_velocity;
}

void setIQAngularVelocity(float &ang_vel) {
	iq_angular_velocity = ang_vel;
}

void getIQAngularVelocityCmd(float &ang_vel_cmd) {
	ang_vel_cmd = iq_angular_velocity_cmd;
}

void setIQAngularVelocityCmd(float &ang_vel_cmd) {
	iq_angular_velocity_cmd = ang_vel_cmd;
}

void getIQPhaseCmd(float &phase_cmd) {
	phase_cmd = iq_phase_cmd;
}

void setIQPhaseCmd(float &phase_cmd) {
	iq_phase_cmd = phase_cmd;
}

void getIQAmplitudeCmd(float &amp_cmd) {
	amp_cmd = iq_amplitude_cmd;
}

void setIQAmplitudeCmd(float &amp_cmd) {
	iq_amplitude_cmd = amp_cmd;
}

void displayRobotConfiguration() {
	printf("--POSITION--\n");
	printf("X: %f\n", position[0]);
	printf("Y: %f\n", position[1]);
	printf("Z: %f\n", position[2]);
	printf("--ORIENTATION--\n");
	printf("X: %f\n", orientation[0]);
	printf("Y: %f\n", orientation[1]);
	printf("Z: %f\n", orientation[2]);
	printf("W: %f\n", orientation[3]);
	printf("--IQ MOTOR STATE--\n");
	printf("Angle: %f\n", iq_angle);
	printf("Angular Velocity: %f\n", iq_angular_velocity);
}
