
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_spi_flash.h"
#include "esp_task_wdt.h"


#include "ros_subscriber.h"
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

float ang_vel_cmd = 100.0;


extern "C" void app_main()
{
	 
	 esp_iq_com.init();


	static uint8_t ucParameterToPass;
	TaskHandle_t xHandle = NULL;


	timer_group_t timer_group_num = (timer_group_t) TIMER_GRP_NUM;
	timer_idx_t timer_num = (timer_idx_t) TIMER_NUM;

	//Initialize Timer
	timer_config_t timer_config = {

		.alarm_en = false,
		.counter_en = true,
		.intr_type = TIMER_INTR_MAX,
		.counter_dir = TIMER_COUNT_UP,
		.auto_reload = false,
		.divider = (uint32_t) DIVIDER //each timer count represents 0.0001 seconds. This means that there will be 10 timer counts in every millisecond. I think its good for the ms resolution required for esp32hardware time.
	};

	timer_init(timer_group_num, timer_num, &timer_config);

  	ros::NodeHandle nh; 
  	ros::Subscriber<geometry_msgs::TransformStamped> sub("vicon/tt_2d_rig/tt_2d_rig", &viconCallback);
 	nh.initNode();
 	nh.subscribe(sub);


	//xTaskCreate( vRosSubscriberTask, "ROS_SUBSCRIBER", ROS_SUBSCRIBER_STACK_SIZE, &ucParameterToPass, tskIDLE_PRIORITY, &xHandle ); 

	/*xTaskCreate( vIQSubscriberTask, "IQ_SUBSCRIBER", IQ_SUBSCRIBER_STACK_SIZE, &ucParameterToPass, tskIDLE_PRIORITY, &xHandle );

	//setIQAngularVelocityCmd(ang_vel_cmd);

	xTaskCreate( vIQPublisherTask, "IQ_PUBLISHER", IQ_PUBLISHER_STACK_SIZE, &ucParameterToPass, tskIDLE_PRIORITY, &xHandle );  */


	//xTaskCreate( vAttitudeControllerTask, "ATTITUDE_CONTROLLER", IQ_PUBLISHER_STACK_SIZE, &ucParameterToPass, tskIDLE_PRIORITY, &xHandle );  


	BrushlessDriveClient mot(0);
	PropellerMotorControlClient prop(0);
	VoltageSuperPositionClient vsp(0);

	double t1 = 0.0;
	double t2 = 0.0;
	double t3 = 0.0;
	double t4 = 0.0;
	double t5 = 0.0;



	float phaseCmd = 0.0;
	float ampCmd = 0.0;

	std::array<double,4> ori = {0.0, 0.0, 0.0, 0.0};


	while (1) {

		timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &t1);
		// Subscription
		printf("huiya\n");
		nh.spinOnce();

		printf("here\n");

		timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &t2);

		receiveIQMessages(mot);
		storeIQData(mot);
		getOrientation(ori);

		timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &t3);

		
		// Control Calculation
		//calculateDesAngVelCmd(des_ang_vel, dir);
		//setIQAngularVelocityCmd(des_ang_vel);
		//setIQAngularVelocityCmd(ang_vel_cmd);
		calculatePhaseAmplitudeCmd(ori, 0, phaseCmd, ampCmd);
		setIQPhaseCmd(phaseCmd);
		setIQAmplitudeCmd(ampCmd);

		timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &t4);
		//printf("here 2: %f\n", des_ang_vel);

		sendVelocityCommand(prop);
		sendVoltageSuperpositionCommand(vsp);


		timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &t5);

		printf("t1: %f\n", t1);
		//printf("t1: %f, t2: %f, t3: %f, t4: %f, t5: %f\n", t1, t2, t3, t4, t5);


	//	displayIQData();

		//vTaskDelay(30 / portTICK_PERIOD_MS);

	}

		//printf("here\n");
		//vTaskDelay(5000 / portTICK_PERIOD_MS);
		//displayRobotConfiguration();
	


}


