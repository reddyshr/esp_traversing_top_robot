#include "iq_publisher.h"

int sendIQMessages() {

	uint8_t communication_buffer[64];
	uint8_t communication_length;

	const uart_port_t uart_num = esp_iq_com.getUartPortNum();

	if (com.GetTxBytes(communication_buffer, communication_length)) {
		if (uart_write_bytes(uart_num, (const char*)communication_buffer, communication_length) != -1) {

		} else {
			printf("error in sending message over UART\n");
			return -1;
		}
	} else {
		//Error Handling
		printf("error in getting TX bytes from com\n");
		return -2;
	}

	return 1;

}

int sendVelocityCommand(PropellerMotorControlClient &prop) {

	float ang_vel_cmd = 0.0;
	getIQAngularVelocityCmd(ang_vel_cmd);

	prop.ctrl_velocity_.set(com, ang_vel_cmd);

	return sendIQMessages();

}

int sendVoltageSuperpositionCommand(VoltageSuperPositionClient &vsp) {
	
	float phase_cmd = 0.0;
	float amp_cmd = 0.0;
	getIQPhaseCmd(phase_cmd);
	getIQAmplitudeCmd(amp_cmd);

	vsp.phase_.set(com, phase_cmd);
	vsp.amplitude_.set(com, amp_cmd);

	return sendIQMessages();

}

void vIQPublisherTask(void* param) {

	PropellerMotorControlClient prop(0);
	VoltageSuperPositionClient vsp(0);

	while(1) {
		sendVelocityCommand(prop);
		sendVoltageSuperpositionCommand(vsp);
		vTaskDelay(100 / portTICK_PERIOD_MS);
	}

}