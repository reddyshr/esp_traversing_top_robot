#ifndef _ROS_H_
#define _ROS_H_

#include "ros/node_handle.h"
#include "esp32Hardware.h"

namespace ros {

	typedef ros::NodeHandle_<Esp32Hardware, 25, 25, 100, 100 > NodeHandle;
}


#endif
