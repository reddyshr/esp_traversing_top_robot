#ifndef ESP_32_IQ_PUBLISHER_H
#define ESP_32_IQ_PUBLISHER_H

#include "driver/uart.h"
#include "driver/timer.h"

#include "global_robot_configuration.h"
#include "esp32_iq_communication.h"

extern EspIQCommunication esp_iq_com;
extern GenericInterface com;

int sendIQMessages();
int sendVelocityCommand(PropellerMotorControlClient &prop);
int sendVoltageSuperpositionCommand(VoltageSuperPositionClient &vsp);
int sendAngleCommand(MultiTurnAngleControlClient &acm, float angle_cmd);
int sendVelocityCommand(MultiTurnAngleControlClient &acm, float ang_vel_cmd);
void vIQPublisherTask(void* param);

#endif