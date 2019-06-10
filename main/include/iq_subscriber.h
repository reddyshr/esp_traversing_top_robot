#ifndef ESP_32_IQ_SUBSCRIBER_H
#define ESP_32_IQ_SUBSCRIBER_H

#include "driver/uart.h"
#include "driver/timer.h"

#include "global_robot_configuration.h"
#include "esp32_iq_communication.h"


#define ESP32_IQ_UART_PORT_NUM UART_NUM_2
#define ESP32_IQ_TX 16
#define ESP32_IQ_RX 17
#define ESP32_IQ_RTS 18
#define ESP32_IQ_CTS 19

extern EspIQCommunication esp_iq_com;
extern GenericInterface com;

int receiveIQMessages(BrushlessDriveClient &mot);
void storeIQData(BrushlessDriveClient &mot);
void displayIQData();
void vIQSubscriberTask(void* param); 


#endif