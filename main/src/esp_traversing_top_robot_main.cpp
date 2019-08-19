
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "esp_task_wdt.h"


#include "tcp_client.h"
#include "iq_subscriber.h"
#include "iq_publisher.h"
#include "attitude_controller.h"
#include "2dbot_controller.h"

#include "global_robot_configuration.h"
#include <generic_interface.hpp>
#include <brushless_drive_client.hpp>

#define ROS_SUBSCRIBER_STACK_SIZE 6000
#define IQ_SUBSCRIBER_STACK_SIZE 6000
#define IQ_PUBLISHER_STACK_SIZE 6000


extern EspIQCommunication esp_iq_com;

BrushlessDriveClient mot(0);
PropellerMotorControlClient prop(0);
VoltageSuperPositionClient vsp(0);

extern "C" void app_main()
{

	//Initialize NVS
	esp_err_t ret = nvs_flash_init();
	if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
		ESP_ERROR_CHECK(nvs_flash_erase());
		ret = nvs_flash_init();
	}
	ESP_ERROR_CHECK(ret);

	int esp_socket = 0;
	float control_input_arr[3]; //ang vel, phase, amp

	init_sta_wifi();
	vTaskDelay(5000 / portTICK_PERIOD_MS);
	init_tcp_socket(esp_socket);

	esp_iq_com.init();

	while (1) {

		receive_float_arr(esp_socket, control_input_arr, 3);

		setIQAngularVelocityCmd(control_input_arr[0]);
		setIQPhaseCmd(control_input_arr[1]);
		setIQAmplitudeCmd(control_input_arr[2]);

		sendVelocityCommand(prop);
		sendVoltageSuperpositionCommand(vsp);

		vTaskDelay(10 / portTICK_PERIOD_MS);
	}

}


