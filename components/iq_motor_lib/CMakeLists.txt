cmake_minimum_required(VERSION 3.5)

set (COMPONENT_SRCS "src/byte_queue.c" "src/crc_helper.c" "src/generic_interface.cpp" "src/packet_finder.c" "src/client_communication.cpp")
set (COMPONENT_ADD_INCLUDEDIRS "include")
register_component()
