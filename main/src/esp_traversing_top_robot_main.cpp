
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "esp_task_wdt.h"


#include "ros_subscriber.h"

#define ROS_SUBSCRIBER_STACK_SIZE 5000

extern "C" void app_main()
{
	 
	static uint8_t ucParameterToPass;
	TaskHandle_t xHandle = NULL;

	xTaskCreate( vRosSubscriberTask, "ROS_SUBSCRIBER", ROS_SUBSCRIBER_STACK_SIZE, &ucParameterToPass, tskIDLE_PRIORITY, &xHandle ); 

	while (1) {
		vTaskDelay(1000 / portTICK_PERIOD_MS);
	}
	


}


