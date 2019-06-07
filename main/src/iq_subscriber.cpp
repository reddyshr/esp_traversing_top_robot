
#include "iq_subscriber.h"
#include <generic_interface.hpp>
#include <brushless_drive_client.hpp>

void receiveIQMessages(BrushlessDriveClient &mot) {
	
	uint8_t communication_buffer[64];
	uint32_t communication_length = 64;

	size_t available_data;

	uart_get_buffered_data_len(esp_iq_com.getUartPortNum(), &available_data);

	if (available_data < 64) {
		communication_length = static_cast<uint8_t> available_data;
	}

	int read_val = uart_read_bytes(esp_iq_com.getUartPortNum(), communication_buffer, communication_length, 100);

	if (read_val == -1) {
		printf("error in receiveIQMessages\n");
	} 

	com.SetRxBytes(communication_buffer,communication_length);
	uint8_t *rx_data; 
	uint8_t rx_length; 

	// while we have message packets to parse
	while(com.PeekPacket(&rx_data,&rx_length)) {
		// Share that packet with all client objects
		mot.ReadMsg(com,rx_data,rx_length);
		// Once were done with the message packet, drop it
		com.DropPacket();
	}


}

void storeIQData(BrushlessDriveClient &mot) {

	if (mot.obs_angle_.IsFresh()) {
		double ang = mot.obs_angle_.get_reply();
		setDPAngle(ang);
	}

	if (mot.obs_angle_.IsFresh()) {
		double ang_vel = mot.obs_velocity_.get_reply();
		setDPAngularVelocity(ang_vel);
	}

}


void vIQSubscriberTask(void* param) {

	BrushlessDriveClient mot(1);

	while(1) {
		receiveIQMessages(mot);
		storeIQData(mot);
		vTaskDelay(100 / portTICK_PERIOD_MS);
	}


}