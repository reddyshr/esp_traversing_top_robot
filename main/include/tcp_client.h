#ifndef TT_ESP_TCP_CLIENT_H
#define TT_ESP_TCP_CLIENT_H

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"

#include "esp_system.h"
#include "esp_wifi.h"
#include "esp_log.h"
#include "nvs_flash.h"
#include "esp_event_loop.h"
#include "esp_event.h"


#include "lwip/err.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include <lwip/netdb.h>
#include <netinet/in.h> 
#include <errno.h>

#include "stdio.h"
#include <string.h>

#define WIFI_BASESTATION_SSID "reddyshr-N56JN"
#define WIFI_BASESTATION_PASS "W0jZel8q"

//#define WIFI_BASESTATION_SSID "TRENDnet639"
//#define WIFI_BASESTATION_PASS ""

#define PORT "8080"
#define SERVER_IP_ADDR "10.42.0.1"
//#define SERVER_IP_ADDR "192.168.10.100"



static EventGroupHandle_t wifi_event_group;
const int WIFI_CONNECTED_BIT = BIT0;
static const char *TAG = "wifi station";
static int s_retry_num = 0;

static esp_err_t event_handler(void *ctx, system_event_t *event);

int receive_float_arr(int esp_socket, float* data, int data_len);

int send_float_arr(int esp_socket, float* data_arr, int data_arr_len);

int init_tcp_socket(int &esp_socket_out);

void init_sta_wifi();



#endif