#ifndef TT_2D_BOT_CONTROLLER_H
#define TT_2D_BOT_CONTROLLER_H

#include <array>
#include <cmath>
#include <stdio.h>

#define PI 3.14159265359f


float calculateYawAngleFromQuaternion(std::array<double, 4> &ori);

void calculatePhaseAmplitudeCmd(std::array<double, 4> &orientation, float desGlobalForceDirection, float &phaseCmd, float &amplitudeCmd);



#endif