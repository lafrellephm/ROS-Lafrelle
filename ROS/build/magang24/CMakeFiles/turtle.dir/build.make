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

# Include any dependencies generated for this target.
include magang24/CMakeFiles/turtle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include magang24/CMakeFiles/turtle.dir/compiler_depend.make

# Include the progress variables for this target.
include magang24/CMakeFiles/turtle.dir/progress.make

# Include the compile flags for this target's objects.
include magang24/CMakeFiles/turtle.dir/flags.make

magang24/CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o: magang24/CMakeFiles/turtle.dir/flags.make
magang24/CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o: /home/lafrelle/ROS/src/magang24/src/turtleRobotROS.cpp
magang24/CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o: magang24/CMakeFiles/turtle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/lafrelle/ROS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object magang24/CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o"
	cd /home/lafrelle/ROS/build/magang24 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT magang24/CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o -MF CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o.d -o CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o -c /home/lafrelle/ROS/src/magang24/src/turtleRobotROS.cpp

magang24/CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.i"
	cd /home/lafrelle/ROS/build/magang24 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lafrelle/ROS/src/magang24/src/turtleRobotROS.cpp > CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.i

magang24/CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.s"
	cd /home/lafrelle/ROS/build/magang24 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lafrelle/ROS/src/magang24/src/turtleRobotROS.cpp -o CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.s

# Object files for target turtle
turtle_OBJECTS = \
"CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o"

# External object files for target turtle
turtle_EXTERNAL_OBJECTS =

/home/lafrelle/ROS/devel/lib/magang24/turtle: magang24/CMakeFiles/turtle.dir/src/turtleRobotROS.cpp.o
/home/lafrelle/ROS/devel/lib/magang24/turtle: magang24/CMakeFiles/turtle.dir/build.make
/home/lafrelle/ROS/devel/lib/magang24/turtle: /opt/ros/noetic/lib/libroscpp.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/lafrelle/ROS/devel/lib/magang24/turtle: /opt/ros/noetic/lib/librosconsole.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/lafrelle/ROS/devel/lib/magang24/turtle: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /opt/ros/noetic/lib/librostime.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/lafrelle/ROS/devel/lib/magang24/turtle: /opt/ros/noetic/lib/libcpp_common.so
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/lafrelle/ROS/devel/lib/magang24/turtle: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/lafrelle/ROS/devel/lib/magang24/turtle: magang24/CMakeFiles/turtle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/lafrelle/ROS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/lafrelle/ROS/devel/lib/magang24/turtle"
	cd /home/lafrelle/ROS/build/magang24 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/turtle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
magang24/CMakeFiles/turtle.dir/build: /home/lafrelle/ROS/devel/lib/magang24/turtle
.PHONY : magang24/CMakeFiles/turtle.dir/build

magang24/CMakeFiles/turtle.dir/clean:
	cd /home/lafrelle/ROS/build/magang24 && $(CMAKE_COMMAND) -P CMakeFiles/turtle.dir/cmake_clean.cmake
.PHONY : magang24/CMakeFiles/turtle.dir/clean

magang24/CMakeFiles/turtle.dir/depend:
	cd /home/lafrelle/ROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lafrelle/ROS/src /home/lafrelle/ROS/src/magang24 /home/lafrelle/ROS/build /home/lafrelle/ROS/build/magang24 /home/lafrelle/ROS/build/magang24/CMakeFiles/turtle.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : magang24/CMakeFiles/turtle.dir/depend

