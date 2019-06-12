
#include "iq_subscriber.h"
#include <generic_interface.hpp>
#include <brushless_drive_client.hpp>

int receiveIQMessages(BrushlessDriveClient &mot) {
	
	const uart_port_t iq_uart_num = esp_iq_com.getUartPortNum();

	//note: communication_buffer and communication_length get reused in the function
	uint8_t communication_buffer[64];
	uint8_t communication_length;

	//SEND GET DATA REQUEST TO ESP 

	mot.obs_angle_.get(com);
	mot.obs_velocity_.get(com);

	if (com.GetTxBytes(communication_buffer, communication_length)) {
		if (uart_write_bytes(iq_uart_num, (const char*)communication_buffer, communication_length) == -1) {

			printf("error in sending velocity message over UART\n");
			return -1;
		}
	} else {
		//Error Handling
		printf("error in getting TX bytes from com\n");
		return -2;
	}

	//DETERMINE HOW MANY BYTES HAVE BEEN RECEIVED FROM ESP
	size_t num_of_rec_bytes;;
	uart_get_buffered_data_len(iq_uart_num, &num_of_rec_bytes);
	communication_length = static_cast<uint8_t> (num_of_rec_bytes);

	//READ AND PARSE RECEIVED BYTES

	if (uart_read_bytes(iq_uart_num, communication_buffer, communication_length, 1000) == -1) {
		printf("error in receiveIQMessages\n");
		return -3;
	} 

	com.SetRxBytes(communication_buffer,communication_length);
	uint8_t *rx_data; 
	uint8_t rx_length; 

	// while we have message packets to parse
	while(com.PeekPacket(&rx_data,&rx_length)) {
		// Share that packet with all client objects
		mot.ReadMsg(rx_data,rx_length);
		// Once were done with the message packet, drop it
		com.DropPacket();
	}

	return 0;


}

void storeIQData(BrushlessDriveClient &mot) {

	if (mot.obs_angle_.IsFresh()) {
		float ang = mot.obs_angle_.get_reply();
		setIQAngle(ang);
	}

	if (mot.obs_velocity_.IsFresh()) {
		float ang_vel = mot.obs_velocity_.get_reply();
		setIQAngularVelocity(ang_vel);
	}	

}

void displayIQData() {

	float ang;
	float ang_vel;

	getIQAngle(ang);
	getIQAngularVelocity(ang_vel);

	printf("Angle: %f\n", ang);
	printf("Angular Velocity: %f\n", ang_vel);
}


void vIQSubscriberTask(void* param) {

	BrushlessDriveClient mot(0);

	while(1) {
		receiveIQMessages(mot);
		storeIQData(mot);
		//displayIQData();
		vTaskDelay(100 / portTICK_PERIOD_MS);
	}


}