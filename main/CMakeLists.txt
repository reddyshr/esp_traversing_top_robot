cmake_minimum_required(VERSION 3.5)

set(COMPONENT_SRCS "src/esp_traversing_top_robot_main.cpp" "src/global_robot_configuration.cpp"  "src/iq_subscriber.cpp" "src/iq_publisher.cpp"  "src/tcp_client.cpp" "src/attitude_controller.cpp" "src/2dbot_controller.cpp")
set(COMPONENT_ADD_INCLUDEDIRS "include")

register_component()
