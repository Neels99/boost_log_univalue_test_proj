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
include leveldb/CMakeFiles/c_test.dir/depend.make

# Include the progress variables for this target.
include leveldb/CMakeFiles/c_test.dir/progress.make

# Include the compile flags for this target's objects.
include leveldb/CMakeFiles/c_test.dir/flags.make

leveldb/CMakeFiles/c_test.dir/util/testutil.cc.obj: leveldb/CMakeFiles/c_test.dir/flags.make
leveldb/CMakeFiles/c_test.dir/util/testutil.cc.obj: leveldb/CMakeFiles/c_test.dir/includes_CXX.rsp
leveldb/CMakeFiles/c_test.dir/util/testutil.cc.obj: ../leveldb/util/testutil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object leveldb/CMakeFiles/c_test.dir/util/testutil.cc.obj"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\c_test.dir\util\testutil.cc.obj -c C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\testutil.cc

leveldb/CMakeFiles/c_test.dir/util/testutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c_test.dir/util/testutil.cc.i"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\testutil.cc > CMakeFiles\c_test.dir\util\testutil.cc.i

leveldb/CMakeFiles/c_test.dir/util/testutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c_test.dir/util/testutil.cc.s"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\testutil.cc -o CMakeFiles\c_test.dir\util\testutil.cc.s

leveldb/CMakeFiles/c_test.dir/db/c_test.c.obj: leveldb/CMakeFiles/c_test.dir/flags.make
leveldb/CMakeFiles/c_test.dir/db/c_test.c.obj: leveldb/CMakeFiles/c_test.dir/includes_C.rsp
leveldb/CMakeFiles/c_test.dir/db/c_test.c.obj: ../leveldb/db/c_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object leveldb/CMakeFiles/c_test.dir/db/c_test.c.obj"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\c_test.dir\db\c_test.c.obj -c C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\db\c_test.c

leveldb/CMakeFiles/c_test.dir/db/c_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_test.dir/db/c_test.c.i"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\db\c_test.c > CMakeFiles\c_test.dir\db\c_test.c.i

leveldb/CMakeFiles/c_test.dir/db/c_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_test.dir/db/c_test.c.s"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\db\c_test.c -o CMakeFiles\c_test.dir\db\c_test.c.s

# Object files for target c_test
c_test_OBJECTS = \
"CMakeFiles/c_test.dir/util/testutil.cc.obj" \
"CMakeFiles/c_test.dir/db/c_test.c.obj"

# External object files for target c_test
c_test_EXTERNAL_OBJECTS =

leveldb/c_test.exe: leveldb/CMakeFiles/c_test.dir/util/testutil.cc.obj
leveldb/c_test.exe: leveldb/CMakeFiles/c_test.dir/db/c_test.c.obj
leveldb/c_test.exe: leveldb/CMakeFiles/c_test.dir/build.make
leveldb/c_test.exe: leveldb/libleveldb.a
leveldb/c_test.exe: lib/libgmockd.a
leveldb/c_test.exe: lib/libgtestd.a
leveldb/c_test.exe: leveldb/CMakeFiles/c_test.dir/linklibs.rsp
leveldb/c_test.exe: leveldb/CMakeFiles/c_test.dir/objects1.rsp
leveldb/c_test.exe: leveldb/CMakeFiles/c_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable c_test.exe"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\c_test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
leveldb/CMakeFiles/c_test.dir/build: leveldb/c_test.exe

.PHONY : leveldb/CMakeFiles/c_test.dir/build

leveldb/CMakeFiles/c_test.dir/clean:
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && $(CMAKE_COMMAND) -P CMakeFiles\c_test.dir\cmake_clean.cmake
.PHONY : leveldb/CMakeFiles/c_test.dir/clean

leveldb/CMakeFiles/c_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb\CMakeFiles\c_test.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : leveldb/CMakeFiles/c_test.dir/depend

