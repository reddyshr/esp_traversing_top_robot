
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "esp_task_wdt.h"


#include "ros_subscriber.h"
#include "iq_subscriber.h"

#define ROS_SUBSCRIBER_STACK_SIZE 5000
#define IQ_SUBSCRIBER_STACK_SIZE 5000

extern EspIQCommunication esp_iq_com;

extern "C" void app_main()
{
	 
	 esp_iq_com.init();


	static uint8_t ucParameterToPass;
	TaskHandle_t xHandle = NULL;

	xTaskCreate( vRosSubscriberTask, "ROS_SUBSCRIBER", ROS_SUBSCRIBER_STACK_SIZE, &ucParameterToPass, tskIDLE_PRIORITY, &xHandle ); 

	xTaskCreate( vIQSubscriberTask, "IQ_SUBSCRIBER", IQ_SUBSCRIBER_STACK_SIZE, &ucParameterToPass, tskIDLE_PRIORITY, &xHandle ); 

	while (1) {
		vTaskDelay(100 / portTICK_PERIOD_MS);
		displayRobotConfiguration();
	}
	


}


