#include "ros_subscriber.h"

int hz = 0;

double start = 0.0;
double end = 0.0;

int first_seq = 0;
int second_seq = 0;


bool startSet = false;
bool endSet = false;

std::array<double, 3> newPos = {0.0, 0.0, 0.0};
std::array<double, 4> newOri = {0.0, 0.0, 0.0, 0.0};

void viconCallback( const geometry_msgs::TransformStamped& msg){

  newPos[0] = msg.transform.translation.x;
  newPos[1] = msg.transform.translation.y;
  newPos[2] = msg.transform.translation.z;

  newOri[0] = msg.transform.rotation.x;
  newOri[1] = msg.transform.rotation.y;
  newOri[2] = msg.transform.rotation.z;
  newOri[3] = msg.transform.rotation.w;

  setPosition(newPos);
  setOrientation(newOri);

  //printf("SUB TIME: start: %f, end: %f\n", start, end);
  //printf("seq: %d\n", msg.header.seq);
}

void vRosSubscriberTask(void* param) {

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

 	while(1) {
 		nh.spinOnce();
 		vTaskDelay(1000 / portTICK_PERIOD_MS);
 	}

}