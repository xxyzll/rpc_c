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
CMAKE_SOURCE_DIR = /home/xx/桌面/rpc_c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xx/桌面/rpc_c/build

# Include any dependencies generated for this target.
include CMakeFiles/rpc_c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rpc_c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rpc_c.dir/flags.make

CMakeFiles/rpc_c.dir/main.cpp.o: CMakeFiles/rpc_c.dir/flags.make
CMakeFiles/rpc_c.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xx/桌面/rpc_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rpc_c.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpc_c.dir/main.cpp.o -c /home/xx/桌面/rpc_c/main.cpp

CMakeFiles/rpc_c.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpc_c.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xx/桌面/rpc_c/main.cpp > CMakeFiles/rpc_c.dir/main.cpp.i

CMakeFiles/rpc_c.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpc_c.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xx/桌面/rpc_c/main.cpp -o CMakeFiles/rpc_c.dir/main.cpp.s

CMakeFiles/rpc_c.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/rpc_c.dir/main.cpp.o.requires

CMakeFiles/rpc_c.dir/main.cpp.o.provides: CMakeFiles/rpc_c.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/rpc_c.dir/build.make CMakeFiles/rpc_c.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/rpc_c.dir/main.cpp.o.provides

CMakeFiles/rpc_c.dir/main.cpp.o.provides.build: CMakeFiles/rpc_c.dir/main.cpp.o


CMakeFiles/rpc_c.dir/work/work.cpp.o: CMakeFiles/rpc_c.dir/flags.make
CMakeFiles/rpc_c.dir/work/work.cpp.o: ../work/work.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xx/桌面/rpc_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rpc_c.dir/work/work.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpc_c.dir/work/work.cpp.o -c /home/xx/桌面/rpc_c/work/work.cpp

CMakeFiles/rpc_c.dir/work/work.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpc_c.dir/work/work.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xx/桌面/rpc_c/work/work.cpp > CMakeFiles/rpc_c.dir/work/work.cpp.i

CMakeFiles/rpc_c.dir/work/work.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpc_c.dir/work/work.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xx/桌面/rpc_c/work/work.cpp -o CMakeFiles/rpc_c.dir/work/work.cpp.s

CMakeFiles/rpc_c.dir/work/work.cpp.o.requires:

.PHONY : CMakeFiles/rpc_c.dir/work/work.cpp.o.requires

CMakeFiles/rpc_c.dir/work/work.cpp.o.provides: CMakeFiles/rpc_c.dir/work/work.cpp.o.requires
	$(MAKE) -f CMakeFiles/rpc_c.dir/build.make CMakeFiles/rpc_c.dir/work/work.cpp.o.provides.build
.PHONY : CMakeFiles/rpc_c.dir/work/work.cpp.o.provides

CMakeFiles/rpc_c.dir/work/work.cpp.o.provides.build: CMakeFiles/rpc_c.dir/work/work.cpp.o


CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o: CMakeFiles/rpc_c.dir/flags.make
CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o: ../rpc_server/rpc_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xx/桌面/rpc_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o -c /home/xx/桌面/rpc_c/rpc_server/rpc_server.cpp

CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xx/桌面/rpc_c/rpc_server/rpc_server.cpp > CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.i

CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xx/桌面/rpc_c/rpc_server/rpc_server.cpp -o CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.s

CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o.requires:

.PHONY : CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o.requires

CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o.provides: CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o.requires
	$(MAKE) -f CMakeFiles/rpc_c.dir/build.make CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o.provides.build
.PHONY : CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o.provides

CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o.provides.build: CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o


CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o: CMakeFiles/rpc_c.dir/flags.make
CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o: ../network_manager/network_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xx/桌面/rpc_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o -c /home/xx/桌面/rpc_c/network_manager/network_manager.cpp

CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xx/桌面/rpc_c/network_manager/network_manager.cpp > CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.i

CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xx/桌面/rpc_c/network_manager/network_manager.cpp -o CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.s

CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o.requires:

.PHONY : CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o.requires

CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o.provides: CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o.requires
	$(MAKE) -f CMakeFiles/rpc_c.dir/build.make CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o.provides.build
.PHONY : CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o.provides

CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o.provides.build: CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o


CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o: CMakeFiles/rpc_c.dir/flags.make
CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o: ../json_parser/json_parser/json_parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xx/桌面/rpc_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o -c /home/xx/桌面/rpc_c/json_parser/json_parser/json_parser.cpp

CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xx/桌面/rpc_c/json_parser/json_parser/json_parser.cpp > CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.i

CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xx/桌面/rpc_c/json_parser/json_parser/json_parser.cpp -o CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.s

CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o.requires:

.PHONY : CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o.requires

CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o.provides: CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/rpc_c.dir/build.make CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o.provides.build
.PHONY : CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o.provides

CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o.provides.build: CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o


# Object files for target rpc_c
rpc_c_OBJECTS = \
"CMakeFiles/rpc_c.dir/main.cpp.o" \
"CMakeFiles/rpc_c.dir/work/work.cpp.o" \
"CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o" \
"CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o" \
"CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o"

# External object files for target rpc_c
rpc_c_EXTERNAL_OBJECTS =

rpc_c: CMakeFiles/rpc_c.dir/main.cpp.o
rpc_c: CMakeFiles/rpc_c.dir/work/work.cpp.o
rpc_c: CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o
rpc_c: CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o
rpc_c: CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o
rpc_c: CMakeFiles/rpc_c.dir/build.make
rpc_c: CMakeFiles/rpc_c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xx/桌面/rpc_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable rpc_c"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rpc_c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rpc_c.dir/build: rpc_c

.PHONY : CMakeFiles/rpc_c.dir/build

CMakeFiles/rpc_c.dir/requires: CMakeFiles/rpc_c.dir/main.cpp.o.requires
CMakeFiles/rpc_c.dir/requires: CMakeFiles/rpc_c.dir/work/work.cpp.o.requires
CMakeFiles/rpc_c.dir/requires: CMakeFiles/rpc_c.dir/rpc_server/rpc_server.cpp.o.requires
CMakeFiles/rpc_c.dir/requires: CMakeFiles/rpc_c.dir/network_manager/network_manager.cpp.o.requires
CMakeFiles/rpc_c.dir/requires: CMakeFiles/rpc_c.dir/json_parser/json_parser/json_parser.cpp.o.requires

.PHONY : CMakeFiles/rpc_c.dir/requires

CMakeFiles/rpc_c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rpc_c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rpc_c.dir/clean

CMakeFiles/rpc_c.dir/depend:
	cd /home/xx/桌面/rpc_c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xx/桌面/rpc_c /home/xx/桌面/rpc_c /home/xx/桌面/rpc_c/build /home/xx/桌面/rpc_c/build /home/xx/桌面/rpc_c/build/CMakeFiles/rpc_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rpc_c.dir/depend

