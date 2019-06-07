#ifndef ROS_ESP_32_HARDWARE_H
#define ROS_ESP_32_HARDWARE_H

#include "driver/uart.h"
#include "driver/timer.h"

#define TIMER_GRP_NUM TIMER_GROUP_0
#define TIMER_NUM TIMER_0
#define DIVIDER 8000

#define ESP32_UART_PORT_NUM UART_NUM_2
#define ESP32_TX 17
#define ESP32_RX 16
#define ESP32_RTS 18
#define ESP32_CTS 19

class Esp32Hardware {


	private:

		//UART Port Parameters and Configuration
		uart_port_t uart_num;
		int tx_pin;
		int rx_pin;
		int rts_pin;
		int cts_pin;
		uart_config_t uart_config;

		//
		QueueHandle_t uart_queue;
		int uart_buffer_size;

		//Timer 
		timer_group_t timer_group_num;
		timer_idx_t timer_num;

	public:

		Esp32Hardware() {
			
			uart_num = ESP32_UART_PORT_NUM;
			tx_pin = ESP32_TX;
			rx_pin = ESP32_RX;
			rts_pin = ESP32_RTS;
			cts_pin = ESP32_CTS;
			timer_group_num = (timer_group_t) TIMER_GRP_NUM;
			timer_num = (timer_idx_t) TIMER_NUM;

		}

		void init() {

			uart_buffer_size = (1024 * 2);

			uart_config = {
		        .baud_rate = 115200,
		        .data_bits = UART_DATA_8_BITS,
		        .parity = UART_PARITY_DISABLE,
		        .stop_bits = UART_STOP_BITS_1,
		       // .flow_ctrl = UART_HW_FLOWCTRL_CTS_RTS,
		       // .rx_flow_ctrl_thresh = 122,
		       // .use_ref_tick = false //SHOULD THIS BE TRUE???
		        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
		    };

		    // ESP_ERROR_CHECK(uart_param_config(uart_num, &uart_config));
		    uart_param_config(uart_num, &uart_config);

		    uart_set_pin(uart_num, tx_pin, rx_pin, rts_pin, cts_pin);

		    // Install UART driver using an event queue here
    		ESP_ERROR_CHECK(uart_driver_install(uart_num, uart_buffer_size, \
                                            uart_buffer_size, 10, &uart_queue, 0));

		}

		int read() {

			uint8_t buf = 0;
			uint8_t val = 0;
			int numOfBytes = uart_read_bytes(uart_num, &buf, 1, 100);
			if (numOfBytes == -1) {
				val = -1;
			} else {
				val = buf;
			}

			return val;

		}

		void write(uint8_t* data, int length) {

			uart_write_bytes(uart_num, (const char*) data, length);

		};


		// returns milliseconds since start of program
		unsigned long time() {

			double sec;

			timer_get_counter_time_sec(timer_group_num, timer_num, &sec);

		//	printf("time: %f\n", sec);

			return (unsigned long) ((sec) * 1000.0);

		}

};


#endif