#ifndef GLOBAL_ROBOT_CONFIGURATION_H
#define GLOBAL_ROBOT_CONFIGURATION_H

#include <vector>
#include <array>
#include "esp32_iq_communication.h"


void getPosition(std::array<double, 3> &pos);
void setPosition(const std::array<double, 3> &pos);
void getOrientation(std::array<double,4> &ori);
void setOrientation(const std::array<double,4> &ori);

void getIQAngle(float &ang);
void setIQAngle(float &ang);

void getIQAngularVelocity(float &ang_vel);
void setIQAngularVelocity(float &ang_vel);

void getIQAngularVelocityCmd(float &ang_vel_cmd);
void setIQAngularVelocityCmd(float &ang_vel_cmd);
void getIQPhaseCmd(float &phase_cmd);
void setIQPhaseCmd(float &phase_cmd);
void getIQAmplitudeCmd(float &amp_cmd);
void setIQAmplitudeCmd(float &amp_cmd);

void displayRobotConfiguration();


#endif