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

# Utility rule file for idf_component_unity_sections_info.

# Include the progress variables for this target.
include esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/progress.make

esp-idf/unity/CMakeFiles/idf_component_unity_sections_info: esp-idf/unity/idf_component_unity.sections_info


esp-idf/unity/idf_component_unity.sections_info: esp-idf/unity/libunity.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating idf_component_unity.sections_info"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/unity && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-objdump /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/unity/libunity.a -h > /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/unity/idf_component_unity.sections_info

idf_component_unity_sections_info: esp-idf/unity/CMakeFiles/idf_component_unity_sections_info
idf_component_unity_sections_info: esp-idf/unity/idf_component_unity.sections_info
idf_component_unity_sections_info: esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/build.make

.PHONY : idf_component_unity_sections_info

# Rule to build all files generated by this target.
esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/build: idf_component_unity_sections_info

.PHONY : esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/build

esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/clean:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/unity && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_unity_sections_info.dir/cmake_clean.cmake
.PHONY : esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/clean

esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/depend:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reddyshr/esp/esp_traversing_top_robot /home/reddyshr/esp/esp-idf/components/unity /home/reddyshr/esp/esp_traversing_top_robot/build /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/unity /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/unity/CMakeFiles/idf_component_unity_sections_info.dir/depend
