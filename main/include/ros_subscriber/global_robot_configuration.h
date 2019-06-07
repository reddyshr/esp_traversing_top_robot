#ifndef GLOBAL_ROBOT_CONFIGURATION_H
#define GLOBAL_ROBOT_CONFIGURATION_H

//LOOK AT CPP FOR MORE INFO

#include <vector>
#include <array>
#include "esp32_iq_communication.h"

//ESP to IQ Motor UART Communication Object

EspIQCommunication esp_iq_com = EspIQCommunication();
GenericInterface com;


void getPosition(std::array<double, 3> &pos);
void setPosition(const std::array<double, 3> &pos);
void getOrientation(std::array<double,4> &ori);
void setOrientation(const std::array<double,4> &ori);

void getDPAngle(double &ang);
void setDPAngle(double &ang);

void getDPAngularVelocity(double &ang_vel);
void setDPAngularVelocity(double &ang_vel);


#endif