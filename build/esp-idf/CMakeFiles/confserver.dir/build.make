# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/reddyshr/esp/esp_traversing_top_robot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/reddyshr/esp/esp_traversing_top_robot/build

# Utility rule file for confserver.

# Include the progress variables for this target.
include esp-idf/CMakeFiles/confserver.dir/progress.make

esp-idf/CMakeFiles/confserver:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf && /usr/bin/cmake -E env "COMPONENT_KCONFIGS= /home/reddyshr/esp/esp-idf/components/log/Kconfig /home/reddyshr/esp/esp-idf/components/heap/Kconfig /home/reddyshr/esp/esp-idf/components/app_trace/Kconfig /home/reddyshr/esp/esp-idf/components/freertos/Kconfig /home/reddyshr/esp/esp-idf/components/vfs/Kconfig /home/reddyshr/esp/esp-idf/components/driver/Kconfig /home/reddyshr/esp/esp-idf/components/esp_event/Kconfig /home/reddyshr/esp/esp-idf/components/ethernet/Kconfig /home/reddyshr/esp/esp-idf/components/lwip/Kconfig /home/reddyshr/esp/esp-idf/components/tcpip_adapter/Kconfig /home/reddyshr/esp/esp-idf/components/mbedtls/Kconfig /home/reddyshr/esp/esp-idf/components/spi_flash/Kconfig /home/reddyshr/esp/esp-idf/components/nvs_flash/Kconfig /home/reddyshr/esp/esp-idf/components/pthread/Kconfig /home/reddyshr/esp/esp-idf/components/esp32/Kconfig /home/reddyshr/esp/esp-idf/components/aws_iot/Kconfig /home/reddyshr/esp/esp-idf/components/bt/Kconfig /home/reddyshr/esp/esp-idf/components/esp_adc_cal/Kconfig /home/reddyshr/esp/esp-idf/components/esp_http_client/Kconfig /home/reddyshr/esp/esp-idf/components/esp_http_server/Kconfig /home/reddyshr/esp/esp-idf/components/openssl/Kconfig /home/reddyshr/esp/esp-idf/components/wear_levelling/Kconfig /home/reddyshr/esp/esp-idf/components/fatfs/Kconfig /home/reddyshr/esp/esp-idf/components/freemodbus/Kconfig /home/reddyshr/esp/esp-idf/components/libsodium/Kconfig /home/reddyshr/esp/esp-idf/components/mdns/Kconfig /home/reddyshr/esp/esp-idf/components/mqtt/Kconfig /home/reddyshr/esp/esp-idf/components/spiffs/Kconfig /home/reddyshr/esp/esp-idf/components/unity/Kconfig" "COMPONENT_KCONFIGS_PROJBUILD= /home/reddyshr/esp/esp-idf/components/partition_table/Kconfig.projbuild /home/reddyshr/esp/esp-idf/components/app_update/Kconfig.projbuild /home/reddyshr/esp/esp-idf/components/bootloader/Kconfig.projbuild /home/reddyshr/esp/esp-idf/components/esptool_py/Kconfig.projbuild" /home/reddyshr/esp/esp-idf/tools/kconfig_new/confserver.py --kconfig /home/reddyshr/esp/esp-idf/Kconfig --config /home/reddyshr/esp/esp_traversing_top_robot/sdkconfig

confserver: esp-idf/CMakeFiles/confserver
confserver: esp-idf/CMakeFiles/confserver.dir/build.make

.PHONY : confserver

# Rule to build all files generated by this target.
esp-idf/CMakeFiles/confserver.dir/build: confserver

.PHONY : esp-idf/CMakeFiles/confserver.dir/build

esp-idf/CMakeFiles/confserver.dir/clean:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf && $(CMAKE_COMMAND) -P CMakeFiles/confserver.dir/cmake_clean.cmake
.PHONY : esp-idf/CMakeFiles/confserver.dir/clean

esp-idf/CMakeFiles/confserver.dir/depend:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reddyshr/esp/esp_traversing_top_robot /home/reddyshr/esp/esp-idf /home/reddyshr/esp/esp_traversing_top_robot/build /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/CMakeFiles/confserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/CMakeFiles/confserver.dir/depend

