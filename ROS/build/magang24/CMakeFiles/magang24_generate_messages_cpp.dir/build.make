# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/lafrelle/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/lafrelle/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lafrelle/ROS/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lafrelle/ROS/build

# Utility rule file for magang24_generate_messages_cpp.

# Include any custom commands dependencies for this target.
include magang24/CMakeFiles/magang24_generate_messages_cpp.dir/compiler_depend.make

# Include the progress variables for this target.
include magang24/CMakeFiles/magang24_generate_messages_cpp.dir/progress.make

magang24/CMakeFiles/magang24_generate_messages_cpp: /home/lafrelle/ROS/devel/include/magang24/custom.h

/home/lafrelle/ROS/devel/include/magang24/custom.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/lafrelle/ROS/devel/include/magang24/custom.h: /home/lafrelle/ROS/src/magang24/msg/custom.msg
/home/lafrelle/ROS/devel/include/magang24/custom.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/lafrelle/ROS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from magang24/custom.msg"
	cd /home/lafrelle/ROS/src/magang24 && /home/lafrelle/ROS/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/lafrelle/ROS/src/magang24/msg/custom.msg -Imagang24:/home/lafrelle/ROS/src/magang24/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p magang24 -o /home/lafrelle/ROS/devel/include/magang24 -e /opt/ros/noetic/share/gencpp/cmake/..

magang24_generate_messages_cpp: magang24/CMakeFiles/magang24_generate_messages_cpp
magang24_generate_messages_cpp: /home/lafrelle/ROS/devel/include/magang24/custom.h
magang24_generate_messages_cpp: magang24/CMakeFiles/magang24_generate_messages_cpp.dir/build.make
.PHONY : magang24_generate_messages_cpp

# Rule to build all files generated by this target.
magang24/CMakeFiles/magang24_generate_messages_cpp.dir/build: magang24_generate_messages_cpp
.PHONY : magang24/CMakeFiles/magang24_generate_messages_cpp.dir/build

magang24/CMakeFiles/magang24_generate_messages_cpp.dir/clean:
	cd /home/lafrelle/ROS/build/magang24 && $(CMAKE_COMMAND) -P CMakeFiles/magang24_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : magang24/CMakeFiles/magang24_generate_messages_cpp.dir/clean

magang24/CMakeFiles/magang24_generate_messages_cpp.dir/depend:
	cd /home/lafrelle/ROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lafrelle/ROS/src /home/lafrelle/ROS/src/magang24 /home/lafrelle/ROS/build /home/lafrelle/ROS/build/magang24 /home/lafrelle/ROS/build/magang24/CMakeFiles/magang24_generate_messages_cpp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : magang24/CMakeFiles/magang24_generate_messages_cpp.dir/depend
