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
include leveldb/CMakeFiles/leveldbutil.dir/depend.make

# Include the progress variables for this target.
include leveldb/CMakeFiles/leveldbutil.dir/progress.make

# Include the compile flags for this target's objects.
include leveldb/CMakeFiles/leveldbutil.dir/flags.make

leveldb/CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.obj: leveldb/CMakeFiles/leveldbutil.dir/flags.make
leveldb/CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.obj: leveldb/CMakeFiles/leveldbutil.dir/includes_CXX.rsp
leveldb/CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.obj: ../leveldb/db/leveldbutil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object leveldb/CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.obj"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\leveldbutil.dir\db\leveldbutil.cc.obj -c C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\db\leveldbutil.cc

leveldb/CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.i"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\db\leveldbutil.cc > CMakeFiles\leveldbutil.dir\db\leveldbutil.cc.i

leveldb/CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.s"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\db\leveldbutil.cc -o CMakeFiles\leveldbutil.dir\db\leveldbutil.cc.s

# Object files for target leveldbutil
leveldbutil_OBJECTS = \
"CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.obj"

# External object files for target leveldbutil
leveldbutil_EXTERNAL_OBJECTS =

leveldb/leveldbutil.exe: leveldb/CMakeFiles/leveldbutil.dir/db/leveldbutil.cc.obj
leveldb/leveldbutil.exe: leveldb/CMakeFiles/leveldbutil.dir/build.make
leveldb/leveldbutil.exe: leveldb/libleveldb.a
leveldb/leveldbutil.exe: leveldb/CMakeFiles/leveldbutil.dir/linklibs.rsp
leveldb/leveldbutil.exe: leveldb/CMakeFiles/leveldbutil.dir/objects1.rsp
leveldb/leveldbutil.exe: leveldb/CMakeFiles/leveldbutil.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable leveldbutil.exe"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\leveldbutil.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
leveldb/CMakeFiles/leveldbutil.dir/build: leveldb/leveldbutil.exe

.PHONY : leveldb/CMakeFiles/leveldbutil.dir/build

leveldb/CMakeFiles/leveldbutil.dir/clean:
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && $(CMAKE_COMMAND) -P CMakeFiles\leveldbutil.dir\cmake_clean.cmake
.PHONY : leveldb/CMakeFiles/leveldbutil.dir/clean

leveldb/CMakeFiles/leveldbutil.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb\CMakeFiles\leveldbutil.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : leveldb/CMakeFiles/leveldbutil.dir/depend

