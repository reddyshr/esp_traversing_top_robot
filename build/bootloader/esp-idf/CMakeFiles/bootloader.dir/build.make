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
CMAKE_SOURCE_DIR = /home/reddyshr/esp/esp-idf/components/bootloader/subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/reddyshr/esp/esp_traversing_top_robot/build/bootloader

# Utility rule file for bootloader.

# Include the progress variables for this target.
include esp-idf/CMakeFiles/bootloader.dir/progress.make

esp-idf/CMakeFiles/bootloader: bootloader.bin


bootloader.bin: bootloader.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/bootloader/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../bootloader.bin"
	/home/reddyshr/esp/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 elf2image --flash_mode dio --flash_freq 40m --flash_size 2MB -o /home/reddyshr/esp/esp_traversing_top_robot/build/bootloader/bootloader.bin bootloader.elf

bootloader: esp-idf/CMakeFiles/bootloader
bootloader: bootloader.bin
bootloader: esp-idf/CMakeFiles/bootloader.dir/build.make

.PHONY : bootloader

# Rule to build all files generated by this target.
esp-idf/CMakeFiles/bootloader.dir/build: bootloader

.PHONY : esp-idf/CMakeFiles/bootloader.dir/build

esp-idf/CMakeFiles/bootloader.dir/clean:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/bootloader/esp-idf && $(CMAKE_COMMAND) -P CMakeFiles/bootloader.dir/cmake_clean.cmake
.PHONY : esp-idf/CMakeFiles/bootloader.dir/clean

esp-idf/CMakeFiles/bootloader.dir/depend:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reddyshr/esp/esp-idf/components/bootloader/subproject /home/reddyshr/esp/esp-idf /home/reddyshr/esp/esp_traversing_top_robot/build/bootloader /home/reddyshr/esp/esp_traversing_top_robot/build/bootloader/esp-idf /home/reddyshr/esp/esp_traversing_top_robot/build/bootloader/esp-idf/CMakeFiles/bootloader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/CMakeFiles/bootloader.dir/depend
