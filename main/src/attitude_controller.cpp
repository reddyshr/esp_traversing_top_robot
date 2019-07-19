#include "attitude_controller.h"
#include "global_robot_configuration.h"
#include "iq_publisher.h"
#include "iq_subscriber.h"
#include <generic_interface.hpp>
#include <brushless_drive_client.hpp>


void calculateDesAngVelCmd(float &des_ang_vel, Direction &dir) {

	float curr_ang = 0.0;
	getIQAngle(curr_ang);
	//printf("curr_ang: %f\n", curr_ang);



	if (dir == pos) {

		/*if ((curr_ang < LOWER_BOUND_ANGLE) || (curr_ang > UPPER_BOUND_ANGLE)) {

			des_ang_vel = IDLE_ANG_VEL;

		} else if ( curr_ang >= LOWER_BOUND_ANGLE && curr_ang < 0) {

			des_ang_vel = (curr_ang - LOWER_BOUND_ANGLE) * SLOPE + IDLE_ANG_VEL;

		} else if (curr_ang >= 0 && curr_ang <= UPPER_BOUND_ANGLE) {

			des_ang_vel = (UPPER_BOUND_ANGLE - curr_ang) * (-SLOPE) + IDLE_ANG_VEL;

		}*/

		if (curr_ang > UPPER_BOUND_ANGLE) {
			dir = neg;
			des_ang_vel = -PEAK;

		} else {
			des_ang_vel = PEAK;

		}


	} else if (dir == neg) {

		/*if ((curr_ang < LOWER_BOUND_ANGLE) || (curr_ang > UPPER_BOUND_ANGLE)) {

			des_ang_vel = -IDLE_ANG_VEL;

		} else if ( curr_ang >= LOWER_BOUND_ANGLE && curr_ang < 0) {

			des_ang_vel = (curr_ang - LOWER_BOUND_ANGLE) * (-SLOPE) - IDLE_ANG_VEL;

		} else if (curr_ang >= 0 && curr_ang <= UPPER_BOUND_ANGLE) {

			des_ang_vel = (UPPER_BOUND_ANGLE - curr_ang) * SLOPE - IDLE_ANG_VEL;

		}*/

		if (curr_ang < LOWER_BOUND_ANGLE) {
			dir = pos;
			des_ang_vel = PEAK;
		} else {
			des_ang_vel = -PEAK;

		}


	}



}


void vAttitudeControllerTask(void *param) {

	BrushlessDriveClient mot(0);
	PropellerMotorControlClient prop(0);
	VoltageSuperPositionClient vsp(0);

	Direction dir = pos;
	float des_ang_vel = 0.0;
	double start = 0.0;
	double end = 0.0;

	while (1) {

		timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &start);
		// Subscription
		receiveIQMessages(mot);
		storeIQData(mot);

		// Control Calculation
		calculateDesAngVelCmd(des_ang_vel, dir);
		setIQAngularVelocityCmd(des_ang_vel);

		//printf("here 2: %f\n", des_ang_vel);

		sendVelocityCommand(prop);

		timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &end);

		printf("ATT RUNTIME: Start: %f End: %f \n", start, end);


		vTaskDelay(5 / portTICK_PERIOD_MS);

	}

}