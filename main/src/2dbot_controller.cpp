#include "2dbot_controller.h"


float calculateYawAngleFromQuaternion(std::array<double, 4> &ori) {

	 double siny_cosp = 2.0 * (ori[3] * ori[2] + ori[0] * ori[1]);
 	 double cosy_cosp = 1.0 - 2.0 * (ori[1] * ori[1] + ori[2] * ori[2]);  
     return atan2(siny_cosp, cosy_cosp);


}

void calculatePhaseAmplitudeCmd(std::array<double, 4> &orientation, float desGlobalForceDirection, float &phaseCmd, float &amplitudeCmd) {

	float yaw = calculateYawAngleFromQuaternion(orientation);

	//printf("yaw: %f\n", yaw);

	phaseCmd = (-PI/2.0) + (desGlobalForceDirection - yaw);

	//phaseCmd = 2.0;
	amplitudeCmd = 0.45;


}
