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

# Include any dependencies generated for this target.
include esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/depend.make

# Include the progress variables for this target.
include esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/locks.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/locks.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/locks.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/locks.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/locks.c > CMakeFiles/idf_component_newlib.dir/locks.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/locks.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/locks.c -o CMakeFiles/idf_component_newlib.dir/locks.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/pthread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/pthread.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/pthread.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/pthread.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/pthread.c > CMakeFiles/idf_component_newlib.dir/pthread.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/pthread.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/pthread.c -o CMakeFiles/idf_component_newlib.dir/pthread.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/random.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/random.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/random.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/random.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/random.c > CMakeFiles/idf_component_newlib.dir/random.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/random.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/random.c -o CMakeFiles/idf_component_newlib.dir/random.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/reent_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/reent_init.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/reent_init.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/reent_init.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/reent_init.c > CMakeFiles/idf_component_newlib.dir/reent_init.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/reent_init.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/reent_init.c -o CMakeFiles/idf_component_newlib.dir/reent_init.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/select.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/select.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/select.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/select.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/select.c > CMakeFiles/idf_component_newlib.dir/select.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/select.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/select.c -o CMakeFiles/idf_component_newlib.dir/select.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/syscall_table.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/syscall_table.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/syscall_table.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/syscall_table.c > CMakeFiles/idf_component_newlib.dir/syscall_table.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/syscall_table.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/syscall_table.c -o CMakeFiles/idf_component_newlib.dir/syscall_table.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/syscalls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-builtin -o CMakeFiles/idf_component_newlib.dir/syscalls.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/syscalls.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/syscalls.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-builtin -E /home/reddyshr/esp/esp-idf/components/newlib/syscalls.c > CMakeFiles/idf_component_newlib.dir/syscalls.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/syscalls.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-builtin -S /home/reddyshr/esp/esp-idf/components/newlib/syscalls.c -o CMakeFiles/idf_component_newlib.dir/syscalls.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/termios.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/termios.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/termios.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/termios.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/termios.c > CMakeFiles/idf_component_newlib.dir/termios.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/termios.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/termios.c -o CMakeFiles/idf_component_newlib.dir/termios.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/utime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/utime.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/utime.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/utime.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/utime.c > CMakeFiles/idf_component_newlib.dir/utime.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/utime.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/utime.c -o CMakeFiles/idf_component_newlib.dir/utime.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj


esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj: /home/reddyshr/esp/esp-idf/components/newlib/time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idf_component_newlib.dir/time.c.obj   -c /home/reddyshr/esp/esp-idf/components/newlib/time.c

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idf_component_newlib.dir/time.c.i"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/reddyshr/esp/esp-idf/components/newlib/time.c > CMakeFiles/idf_component_newlib.dir/time.c.i

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idf_component_newlib.dir/time.c.s"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && /home/reddyshr/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/reddyshr/esp/esp-idf/components/newlib/time.c -o CMakeFiles/idf_component_newlib.dir/time.c.s

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj.requires:

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj.requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj.provides: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj.requires
	$(MAKE) -f esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj.provides.build
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj.provides

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj.provides.build: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj


# Object files for target idf_component_newlib
idf_component_newlib_OBJECTS = \
"CMakeFiles/idf_component_newlib.dir/locks.c.obj" \
"CMakeFiles/idf_component_newlib.dir/pthread.c.obj" \
"CMakeFiles/idf_component_newlib.dir/random.c.obj" \
"CMakeFiles/idf_component_newlib.dir/reent_init.c.obj" \
"CMakeFiles/idf_component_newlib.dir/select.c.obj" \
"CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj" \
"CMakeFiles/idf_component_newlib.dir/syscalls.c.obj" \
"CMakeFiles/idf_component_newlib.dir/termios.c.obj" \
"CMakeFiles/idf_component_newlib.dir/utime.c.obj" \
"CMakeFiles/idf_component_newlib.dir/time.c.obj"

# External object files for target idf_component_newlib
idf_component_newlib_EXTERNAL_OBJECTS =

esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build.make
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/reddyshr/esp/esp_traversing_top_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library libnewlib.a"
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_newlib.dir/cmake_clean_target.cmake
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/idf_component_newlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build: esp-idf/newlib/libnewlib.a

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/build

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/locks.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/pthread.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/random.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/reent_init.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/select.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscall_table.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/syscalls.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/termios.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/utime.c.obj.requires
esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires: esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/time.c.obj.requires

.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/requires

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/clean:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib && $(CMAKE_COMMAND) -P CMakeFiles/idf_component_newlib.dir/cmake_clean.cmake
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/clean

esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/depend:
	cd /home/reddyshr/esp/esp_traversing_top_robot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reddyshr/esp/esp_traversing_top_robot /home/reddyshr/esp/esp-idf/components/newlib /home/reddyshr/esp/esp_traversing_top_robot/build /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib /home/reddyshr/esp/esp_traversing_top_robot/build/esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/newlib/CMakeFiles/idf_component_newlib.dir/depend

