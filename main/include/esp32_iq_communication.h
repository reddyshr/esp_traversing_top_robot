#ifndef ESP32_IQ_COMMUNICATION_H
#define ESP32_IQ_COMMUNICATION_H

#include "driver/uart.h"

#include "generic_interface.hpp"
#include "propeller_motor_control_client.hpp"
#include "brushless_drive_client.hpp"
#include "voltage_superposition_client.hpp"

#define ESP32_IQ_UART_PORT_NUM UART_NUM_1
#define ESP32_IQ_TX 4
#define ESP32_IQ_RX 2
#define ESP32_IQ_RTS 18
#define ESP32_IQ_CTS 19

class EspIQCommunication {
	private:

		//UART Port Parameters and Configuration
		uart_port_t uart_num;
		int tx_pin;
		int rx_pin;
		int rts_pin;
		int cts_pin;
		uart_config_t uart_config;

		
		QueueHandle_t uart_queue;
		int uart_buffer_size;

	public:

		EspIQCommunication() {
			uart_num = ESP32_IQ_UART_PORT_NUM;
			tx_pin = ESP32_IQ_TX;
			rx_pin = ESP32_IQ_RX;
			rts_pin = ESP32_IQ_RTS;
			cts_pin = ESP32_IQ_CTS;
		}

		void init() {

			uart_buffer_size = (1024 * 4);

		    uart_config_t uart_config = {
		        .baud_rate = 115200,
		        .data_bits = UART_DATA_8_BITS,
		        .parity = UART_PARITY_DISABLE,
		        .stop_bits = UART_STOP_BITS_1,
		        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
		        /* .flow_ctrl = UART_HW_FLOWCTRL_CTS_RTS, */
		        /* .rx_flow_ctrl_thresh = 122, */
		    };

		   // ESP_ERROR_CHECK(uart_param_config(uart_num, &uart_config));
		    uart_param_config(uart_num, &uart_config);

		    uart_set_pin(uart_num, tx_pin, rx_pin, rts_pin, cts_pin);

		    // Install UART driver using an event queue here
		    ESP_ERROR_CHECK(uart_driver_install(uart_num, uart_buffer_size, \
                                            uart_buffer_size, 20, &uart_queue, 0));
		}

		uart_port_t getUartPortNum() {
			return uart_num;
		}
};



#endif