# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\jstol\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5457.51\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\jstol\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5457.51\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\jstol\CLionProjects\AsioClientServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\jstol\CLionProjects\AsioClientServer\cmake-build-debug-mingw

# Include any dependencies generated for this target.
include CMakeFiles/AsioClientServer.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/AsioClientServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AsioClientServer.dir/flags.make

CMakeFiles/AsioClientServer.dir/main.cpp.obj: CMakeFiles/AsioClientServer.dir/flags.make
CMakeFiles/AsioClientServer.dir/main.cpp.obj: CMakeFiles/AsioClientServer.dir/includes_CXX.rsp
CMakeFiles/AsioClientServer.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\jstol\CLionProjects\AsioClientServer\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AsioClientServer.dir/main.cpp.obj"
	C:\cpp-compilers\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\AsioClientServer.dir\main.cpp.obj -c C:\Users\jstol\CLionProjects\AsioClientServer\main.cpp

CMakeFiles/AsioClientServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AsioClientServer.dir/main.cpp.i"
	C:\cpp-compilers\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\jstol\CLionProjects\AsioClientServer\main.cpp > CMakeFiles\AsioClientServer.dir\main.cpp.i

CMakeFiles/AsioClientServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AsioClientServer.dir/main.cpp.s"
	C:\cpp-compilers\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\jstol\CLionProjects\AsioClientServer\main.cpp -o CMakeFiles\AsioClientServer.dir\main.cpp.s

# Object files for target AsioClientServer
AsioClientServer_OBJECTS = \
"CMakeFiles/AsioClientServer.dir/main.cpp.obj"

# External object files for target AsioClientServer
AsioClientServer_EXTERNAL_OBJECTS =

AsioClientServer.exe: CMakeFiles/AsioClientServer.dir/main.cpp.obj
AsioClientServer.exe: CMakeFiles/AsioClientServer.dir/build.make
AsioClientServer.exe: CMakeFiles/AsioClientServer.dir/linklibs.rsp
AsioClientServer.exe: CMakeFiles/AsioClientServer.dir/objects1.rsp
AsioClientServer.exe: CMakeFiles/AsioClientServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\jstol\CLionProjects\AsioClientServer\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AsioClientServer.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\AsioClientServer.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AsioClientServer.dir/build: AsioClientServer.exe
.PHONY : CMakeFiles/AsioClientServer.dir/build

CMakeFiles/AsioClientServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\AsioClientServer.dir\cmake_clean.cmake
.PHONY : CMakeFiles/AsioClientServer.dir/clean

CMakeFiles/AsioClientServer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\jstol\CLionProjects\AsioClientServer C:\Users\jstol\CLionProjects\AsioClientServer C:\Users\jstol\CLionProjects\AsioClientServer\cmake-build-debug-mingw C:\Users\jstol\CLionProjects\AsioClientServer\cmake-build-debug-mingw C:\Users\jstol\CLionProjects\AsioClientServer\cmake-build-debug-mingw\CMakeFiles\AsioClientServer.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AsioClientServer.dir/depend

