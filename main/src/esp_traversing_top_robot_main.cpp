
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "esp_task_wdt.h"


#include "tcp_client.h"
#include "iq_subscriber.h"
#include "iq_publisher.h"
#include "driver/timer.h"

#include "global_robot_configuration.h"
#include <generic_interface.hpp>
#include <brushless_drive_client.hpp>

#define ROS_SUBSCRIBER_STACK_SIZE 6000
#define IQ_SUBSCRIBER_STACK_SIZE 6000
#define IQ_PUBLISHER_STACK_SIZE 6000

#define TIMER_DIVIDER         16  //  Hardware timer clock divider
#define TIMER_SCALE           (TIMER_BASE_CLK / TIMER_DIVIDER)

#define CONTROL_LOOP_HZ 100.0

extern EspIQCommunication esp_iq_com;

BrushlessDriveClient mot(0);
PropellerMotorControlClient prop(0);
VoltageSuperPositionClient vsp(0);
MultiTurnAngleControlClient acm(0);

bool send_msg = false;

extern "C" void app_main()
{

	//Initialize NVS
	esp_err_t ret = nvs_flash_init();
	if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
		ESP_ERROR_CHECK(nvs_flash_erase());
		ret = nvs_flash_init();
	}
	ESP_ERROR_CHECK(ret);

	float control_input_arr[0]; //ang vel, phase, amp
	
	//Initialize TCP Socket
	int esp_socket;
	init_sta_wifi();
	vTaskDelay(5000 / portTICK_PERIOD_MS);
	init_tcp_socket(esp_socket);

	esp_iq_com.init();

	timer_config_t config;
	config.divider = TIMER_DIVIDER;
	config.counter_dir = TIMER_COUNT_UP;

	timer_idx_t timer_id = (timer_idx_t) 1;
	timer_init(TIMER_GROUP_0, timer_id , &config);
	timer_start(TIMER_GROUP_0, timer_id );

	double time1 = 0.0;
	double time2 = 0.0;
	timer_get_counter_time_sec(TIMER_GROUP_0, timer_id , &time1);

	uint32_t tx_fifo_byte_cnt {0};


	while (1) {

		//timer_get_counter_time_sec(TIMER_GROUP_0, timer_id , &time1);
		receive_float_arr(esp_socket, control_input_arr, 1);
		//timer_get_counter_time_sec(TIMER_GROUP_0, timer_id , &time2);
		//printf("freq: %f\n", 1.0 / (time2 - time1));

		if (UART1.status.txfifo_cnt == 0) {
			sendVelocityCommand(acm, control_input_arr[0]);
		} else {
			printf("DON'T SEND MESSAGE\n");
		}

		vTaskDelay((1000.0 / CONTROL_LOOP_HZ) / portTICK_PERIOD_MS);
		
	}

}


