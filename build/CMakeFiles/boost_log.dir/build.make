# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = "C:\Program Files (x86)\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build

# Include any dependencies generated for this target.
include CMakeFiles/boost_log.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/boost_log.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/boost_log.dir/flags.make

CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.obj: CMakeFiles/boost_log.dir/flags.make
CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.obj: CMakeFiles/boost_log.dir/includes_CXX.rsp
CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.obj: ../test_leveldb/from_github.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\boost_log.dir\test_leveldb\from_github.cpp.obj -c C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\test_leveldb\from_github.cpp

CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\test_leveldb\from_github.cpp > CMakeFiles\boost_log.dir\test_leveldb\from_github.cpp.i

CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\test_leveldb\from_github.cpp -o CMakeFiles\boost_log.dir\test_leveldb\from_github.cpp.s

# Object files for target boost_log
boost_log_OBJECTS = \
"CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.obj"

# External object files for target boost_log
boost_log_EXTERNAL_OBJECTS =

boost_log.exe: CMakeFiles/boost_log.dir/test_leveldb/from_github.cpp.obj
boost_log.exe: CMakeFiles/boost_log.dir/build.make
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_log-mgw8-mt-d-x64-1_74.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_log_setup-mgw8-mt-d-x64-1_74.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_filesystem-mgw8-mt-d-x64-1_74.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_log_setup-mgw8-mt-d-x64-1_74.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_log-mgw8-mt-d-x64-1_74.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_filesystem-mgw8-mt-d-x64-1_74.a
boost_log.exe: univalue/libunivalue.a
boost_log.exe: btclibs/libbtclibs.a
boost_log.exe: leveldb/libleveldb.a
boost_log.exe: dbshell/libdbshell.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_atomic-mgw8-mt-d-x64-1_74.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_regex-mgw8-mt-d-x64-1_74.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_thread-mgw8-mt-d-x64-1_74.a
boost_log.exe: C:/Program\ Files/boost/boost_1_74_0/boost-build/lib/libboost_chrono-mgw8-mt-d-x64-1_74.a
boost_log.exe: univalue/libunivalue.a
boost_log.exe: leveldb/libleveldb.a
boost_log.exe: CMakeFiles/boost_log.dir/linklibs.rsp
boost_log.exe: CMakeFiles/boost_log.dir/objects1.rsp
boost_log.exe: CMakeFiles/boost_log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable boost_log.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\boost_log.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/boost_log.dir/build: boost_log.exe

.PHONY : CMakeFiles/boost_log.dir/build

CMakeFiles/boost_log.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\boost_log.dir\cmake_clean.cmake
.PHONY : CMakeFiles/boost_log.dir/clean

CMakeFiles/boost_log.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles\boost_log.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/boost_log.dir/depend

