#include "tcp_client.h"

static esp_err_t event_handler(void *ctx, system_event_t *event)
{
    switch(event->event_id) {
    case SYSTEM_EVENT_STA_START:
        esp_wifi_connect();
        break;
    case SYSTEM_EVENT_STA_GOT_IP:
        ESP_LOGI(TAG, "got ip:%s",
                 ip4addr_ntoa(&event->event_info.got_ip.ip_info.ip));
        s_retry_num = 0;
        xEventGroupSetBits(wifi_event_group, WIFI_CONNECTED_BIT);
        break;
    case SYSTEM_EVENT_STA_DISCONNECTED:
        {
            if (s_retry_num < 5) {
                esp_wifi_connect();
                xEventGroupClearBits(wifi_event_group, WIFI_CONNECTED_BIT);
                s_retry_num++;
                ESP_LOGI(TAG,"retry to connect to the AP");
            }
            ESP_LOGI(TAG,"connect to the AP fail\n");
            break;
        }
    default:
        break;
    }
    return ESP_OK;
}

int receive_float_arr(int esp_socket, float* data, int data_len) {

	int len = recv(esp_socket, data, 4*data_len, 0);

	if (len < 0) {
		perror("Failed to receive data\n");
		return -1;
	} else if (len == 0) {
		printf("Connection Closed\n");
		return -1;
	} 

	return 0;

}

int send_float_arr(int esp_socket, float* data_arr, int data_arr_len) {

	int send_status = send(esp_socket, data_arr, 4*data_arr_len, 0);
	if (send_status < 0) {
		perror("Failed to send: ");
		return(-1);
	}
	
	return 0;

}


int init_tcp_socket(int &esp_socket_out) {

	int status;
	struct addrinfo hints;
	struct addrinfo *res;

	memset(&hints, 0, sizeof(hints));

	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_STREAM;

	status = getaddrinfo(SERVER_IP_ADDR, PORT, &hints, &res);
	if (status != 0) {
		//fprintf(stderr, "getaddrinfo error: %s\n", gai_strerror(status));
		return(-1);
	}

	int espfd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (espfd < 0) {
		perror("Failed to create socket: ");
		return -1;
	}
	printf("Create Client Socket Success");

	int connect_val = -1;
	while (connect_val < 0) {
		perror("Failed to connect...trying again: ");
		connect_val = connect(espfd, res->ai_addr, res->ai_addrlen);
	}

	esp_socket_out = espfd;
   	printf("Successfully Connected Socket\n");
	return 0;	
}



void init_sta_wifi() {

    wifi_event_group = xEventGroupCreate();

    tcpip_adapter_init();
    ESP_ERROR_CHECK(esp_event_loop_init(event_handler, NULL) );

	wifi_init_config_t wifi_init_config = WIFI_INIT_CONFIG_DEFAULT();

	ESP_ERROR_CHECK(esp_wifi_init(&wifi_init_config));

	wifi_config_t wifi_config;

	uint8_t wifi_ssid[32] = WIFI_BASESTATION_SSID;
	uint8_t wifi_pass[32] = WIFI_BASESTATION_PASS;
	for (int i = 0; i < 32; i++) {
		wifi_config.sta.ssid[i] = wifi_ssid[i];
		wifi_config.sta.password[i] = wifi_pass[i];
	}

	ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config));
    ESP_ERROR_CHECK(esp_wifi_start());

    ESP_LOGI(TAG, "wifi_init_sta finished.");


}
