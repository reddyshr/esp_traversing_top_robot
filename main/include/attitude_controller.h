#ifndef TT_ATTITUDE_CONTROLLER_H
#define TT_ATTITUDE_CONTROLLER_H

#define PI 3.14159265359f
#define LOWER_BOUND_ANGLE (-PI / 12.0f)
#define UPPER_BOUND_ANGLE (PI / 12.0f)
#define IDLE_ANG_VEL 10.0f
#define PEAK  100.0f

#define SLOPE (PEAK - IDLE_ANG_VEL) / (0.0 - LOWER_BOUND_ANGLE)

enum Direction {pos, neg};



void calculateDesAngVelCmd(float &des_ang_vel, Direction &dir);

void vAttitudeControllerTask(void* param); 


#endif