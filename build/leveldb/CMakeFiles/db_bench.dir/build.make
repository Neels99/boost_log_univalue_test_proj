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
include leveldb/CMakeFiles/db_bench.dir/depend.make

# Include the progress variables for this target.
include leveldb/CMakeFiles/db_bench.dir/progress.make

# Include the compile flags for this target's objects.
include leveldb/CMakeFiles/db_bench.dir/flags.make

leveldb/CMakeFiles/db_bench.dir/util/histogram.cc.obj: leveldb/CMakeFiles/db_bench.dir/flags.make
leveldb/CMakeFiles/db_bench.dir/util/histogram.cc.obj: leveldb/CMakeFiles/db_bench.dir/includes_CXX.rsp
leveldb/CMakeFiles/db_bench.dir/util/histogram.cc.obj: ../leveldb/util/histogram.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object leveldb/CMakeFiles/db_bench.dir/util/histogram.cc.obj"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\db_bench.dir\util\histogram.cc.obj -c C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\histogram.cc

leveldb/CMakeFiles/db_bench.dir/util/histogram.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/db_bench.dir/util/histogram.cc.i"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\histogram.cc > CMakeFiles\db_bench.dir\util\histogram.cc.i

leveldb/CMakeFiles/db_bench.dir/util/histogram.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/db_bench.dir/util/histogram.cc.s"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\histogram.cc -o CMakeFiles\db_bench.dir\util\histogram.cc.s

leveldb/CMakeFiles/db_bench.dir/util/testutil.cc.obj: leveldb/CMakeFiles/db_bench.dir/flags.make
leveldb/CMakeFiles/db_bench.dir/util/testutil.cc.obj: leveldb/CMakeFiles/db_bench.dir/includes_CXX.rsp
leveldb/CMakeFiles/db_bench.dir/util/testutil.cc.obj: ../leveldb/util/testutil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object leveldb/CMakeFiles/db_bench.dir/util/testutil.cc.obj"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\db_bench.dir\util\testutil.cc.obj -c C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\testutil.cc

leveldb/CMakeFiles/db_bench.dir/util/testutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/db_bench.dir/util/testutil.cc.i"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\testutil.cc > CMakeFiles\db_bench.dir\util\testutil.cc.i

leveldb/CMakeFiles/db_bench.dir/util/testutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/db_bench.dir/util/testutil.cc.s"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\util\testutil.cc -o CMakeFiles\db_bench.dir\util\testutil.cc.s

leveldb/CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.obj: leveldb/CMakeFiles/db_bench.dir/flags.make
leveldb/CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.obj: leveldb/CMakeFiles/db_bench.dir/includes_CXX.rsp
leveldb/CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.obj: ../leveldb/benchmarks/db_bench.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object leveldb/CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.obj"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\db_bench.dir\benchmarks\db_bench.cc.obj -c C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\benchmarks\db_bench.cc

leveldb/CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.i"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\benchmarks\db_bench.cc > CMakeFiles\db_bench.dir\benchmarks\db_bench.cc.i

leveldb/CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.s"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb\benchmarks\db_bench.cc -o CMakeFiles\db_bench.dir\benchmarks\db_bench.cc.s

# Object files for target db_bench
db_bench_OBJECTS = \
"CMakeFiles/db_bench.dir/util/histogram.cc.obj" \
"CMakeFiles/db_bench.dir/util/testutil.cc.obj" \
"CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.obj"

# External object files for target db_bench
db_bench_EXTERNAL_OBJECTS =

leveldb/db_bench.exe: leveldb/CMakeFiles/db_bench.dir/util/histogram.cc.obj
leveldb/db_bench.exe: leveldb/CMakeFiles/db_bench.dir/util/testutil.cc.obj
leveldb/db_bench.exe: leveldb/CMakeFiles/db_bench.dir/benchmarks/db_bench.cc.obj
leveldb/db_bench.exe: leveldb/CMakeFiles/db_bench.dir/build.make
leveldb/db_bench.exe: leveldb/libleveldb.a
leveldb/db_bench.exe: lib/libgmockd.a
leveldb/db_bench.exe: lib/libgtestd.a
leveldb/db_bench.exe: leveldb/CMakeFiles/db_bench.dir/linklibs.rsp
leveldb/db_bench.exe: leveldb/CMakeFiles/db_bench.dir/objects1.rsp
leveldb/db_bench.exe: leveldb/CMakeFiles/db_bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable db_bench.exe"
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\db_bench.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
leveldb/CMakeFiles/db_bench.dir/build: leveldb/db_bench.exe

.PHONY : leveldb/CMakeFiles/db_bench.dir/build

leveldb/CMakeFiles/db_bench.dir/clean:
	cd /d C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb && $(CMAKE_COMMAND) -P CMakeFiles\db_bench.dir\cmake_clean.cmake
.PHONY : leveldb/CMakeFiles/db_bench.dir/clean

leveldb/CMakeFiles/db_bench.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\leveldb C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb C:\Users\vasil\Desktop\boost_test\boost-log-example-master\boost_log_univalue_test_proj\build\leveldb\CMakeFiles\db_bench.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : leveldb/CMakeFiles/db_bench.dir/depend

