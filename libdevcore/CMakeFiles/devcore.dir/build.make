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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/maceo/gnosis/retesteth

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/maceo/gnosis/retesteth

# Include any dependencies generated for this target.
include libdevcore/CMakeFiles/devcore.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libdevcore/CMakeFiles/devcore.dir/compiler_depend.make

# Include the progress variables for this target.
include libdevcore/CMakeFiles/devcore.dir/progress.make

# Include the compile flags for this target's objects.
include libdevcore/CMakeFiles/devcore.dir/flags.make

libdevcore/CMakeFiles/devcore.dir/Address.cpp.o: libdevcore/CMakeFiles/devcore.dir/flags.make
libdevcore/CMakeFiles/devcore.dir/Address.cpp.o: libdevcore/Address.cpp
libdevcore/CMakeFiles/devcore.dir/Address.cpp.o: libdevcore/CMakeFiles/devcore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libdevcore/CMakeFiles/devcore.dir/Address.cpp.o"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libdevcore/CMakeFiles/devcore.dir/Address.cpp.o -MF CMakeFiles/devcore.dir/Address.cpp.o.d -o CMakeFiles/devcore.dir/Address.cpp.o -c /Users/maceo/gnosis/retesteth/libdevcore/Address.cpp

libdevcore/CMakeFiles/devcore.dir/Address.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/devcore.dir/Address.cpp.i"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maceo/gnosis/retesteth/libdevcore/Address.cpp > CMakeFiles/devcore.dir/Address.cpp.i

libdevcore/CMakeFiles/devcore.dir/Address.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/devcore.dir/Address.cpp.s"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maceo/gnosis/retesteth/libdevcore/Address.cpp -o CMakeFiles/devcore.dir/Address.cpp.s

libdevcore/CMakeFiles/devcore.dir/CommonData.cpp.o: libdevcore/CMakeFiles/devcore.dir/flags.make
libdevcore/CMakeFiles/devcore.dir/CommonData.cpp.o: libdevcore/CommonData.cpp
libdevcore/CMakeFiles/devcore.dir/CommonData.cpp.o: libdevcore/CMakeFiles/devcore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libdevcore/CMakeFiles/devcore.dir/CommonData.cpp.o"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libdevcore/CMakeFiles/devcore.dir/CommonData.cpp.o -MF CMakeFiles/devcore.dir/CommonData.cpp.o.d -o CMakeFiles/devcore.dir/CommonData.cpp.o -c /Users/maceo/gnosis/retesteth/libdevcore/CommonData.cpp

libdevcore/CMakeFiles/devcore.dir/CommonData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/devcore.dir/CommonData.cpp.i"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maceo/gnosis/retesteth/libdevcore/CommonData.cpp > CMakeFiles/devcore.dir/CommonData.cpp.i

libdevcore/CMakeFiles/devcore.dir/CommonData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/devcore.dir/CommonData.cpp.s"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maceo/gnosis/retesteth/libdevcore/CommonData.cpp -o CMakeFiles/devcore.dir/CommonData.cpp.s

libdevcore/CMakeFiles/devcore.dir/CommonIO.cpp.o: libdevcore/CMakeFiles/devcore.dir/flags.make
libdevcore/CMakeFiles/devcore.dir/CommonIO.cpp.o: libdevcore/CommonIO.cpp
libdevcore/CMakeFiles/devcore.dir/CommonIO.cpp.o: libdevcore/CMakeFiles/devcore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object libdevcore/CMakeFiles/devcore.dir/CommonIO.cpp.o"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libdevcore/CMakeFiles/devcore.dir/CommonIO.cpp.o -MF CMakeFiles/devcore.dir/CommonIO.cpp.o.d -o CMakeFiles/devcore.dir/CommonIO.cpp.o -c /Users/maceo/gnosis/retesteth/libdevcore/CommonIO.cpp

libdevcore/CMakeFiles/devcore.dir/CommonIO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/devcore.dir/CommonIO.cpp.i"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maceo/gnosis/retesteth/libdevcore/CommonIO.cpp > CMakeFiles/devcore.dir/CommonIO.cpp.i

libdevcore/CMakeFiles/devcore.dir/CommonIO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/devcore.dir/CommonIO.cpp.s"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maceo/gnosis/retesteth/libdevcore/CommonIO.cpp -o CMakeFiles/devcore.dir/CommonIO.cpp.s

libdevcore/CMakeFiles/devcore.dir/FileSystem.cpp.o: libdevcore/CMakeFiles/devcore.dir/flags.make
libdevcore/CMakeFiles/devcore.dir/FileSystem.cpp.o: libdevcore/FileSystem.cpp
libdevcore/CMakeFiles/devcore.dir/FileSystem.cpp.o: libdevcore/CMakeFiles/devcore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object libdevcore/CMakeFiles/devcore.dir/FileSystem.cpp.o"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libdevcore/CMakeFiles/devcore.dir/FileSystem.cpp.o -MF CMakeFiles/devcore.dir/FileSystem.cpp.o.d -o CMakeFiles/devcore.dir/FileSystem.cpp.o -c /Users/maceo/gnosis/retesteth/libdevcore/FileSystem.cpp

libdevcore/CMakeFiles/devcore.dir/FileSystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/devcore.dir/FileSystem.cpp.i"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maceo/gnosis/retesteth/libdevcore/FileSystem.cpp > CMakeFiles/devcore.dir/FileSystem.cpp.i

libdevcore/CMakeFiles/devcore.dir/FileSystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/devcore.dir/FileSystem.cpp.s"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maceo/gnosis/retesteth/libdevcore/FileSystem.cpp -o CMakeFiles/devcore.dir/FileSystem.cpp.s

libdevcore/CMakeFiles/devcore.dir/FixedHash.cpp.o: libdevcore/CMakeFiles/devcore.dir/flags.make
libdevcore/CMakeFiles/devcore.dir/FixedHash.cpp.o: libdevcore/FixedHash.cpp
libdevcore/CMakeFiles/devcore.dir/FixedHash.cpp.o: libdevcore/CMakeFiles/devcore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object libdevcore/CMakeFiles/devcore.dir/FixedHash.cpp.o"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libdevcore/CMakeFiles/devcore.dir/FixedHash.cpp.o -MF CMakeFiles/devcore.dir/FixedHash.cpp.o.d -o CMakeFiles/devcore.dir/FixedHash.cpp.o -c /Users/maceo/gnosis/retesteth/libdevcore/FixedHash.cpp

libdevcore/CMakeFiles/devcore.dir/FixedHash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/devcore.dir/FixedHash.cpp.i"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maceo/gnosis/retesteth/libdevcore/FixedHash.cpp > CMakeFiles/devcore.dir/FixedHash.cpp.i

libdevcore/CMakeFiles/devcore.dir/FixedHash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/devcore.dir/FixedHash.cpp.s"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maceo/gnosis/retesteth/libdevcore/FixedHash.cpp -o CMakeFiles/devcore.dir/FixedHash.cpp.s

libdevcore/CMakeFiles/devcore.dir/Guards.cpp.o: libdevcore/CMakeFiles/devcore.dir/flags.make
libdevcore/CMakeFiles/devcore.dir/Guards.cpp.o: libdevcore/Guards.cpp
libdevcore/CMakeFiles/devcore.dir/Guards.cpp.o: libdevcore/CMakeFiles/devcore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object libdevcore/CMakeFiles/devcore.dir/Guards.cpp.o"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libdevcore/CMakeFiles/devcore.dir/Guards.cpp.o -MF CMakeFiles/devcore.dir/Guards.cpp.o.d -o CMakeFiles/devcore.dir/Guards.cpp.o -c /Users/maceo/gnosis/retesteth/libdevcore/Guards.cpp

libdevcore/CMakeFiles/devcore.dir/Guards.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/devcore.dir/Guards.cpp.i"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maceo/gnosis/retesteth/libdevcore/Guards.cpp > CMakeFiles/devcore.dir/Guards.cpp.i

libdevcore/CMakeFiles/devcore.dir/Guards.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/devcore.dir/Guards.cpp.s"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maceo/gnosis/retesteth/libdevcore/Guards.cpp -o CMakeFiles/devcore.dir/Guards.cpp.s

libdevcore/CMakeFiles/devcore.dir/RLP.cpp.o: libdevcore/CMakeFiles/devcore.dir/flags.make
libdevcore/CMakeFiles/devcore.dir/RLP.cpp.o: libdevcore/RLP.cpp
libdevcore/CMakeFiles/devcore.dir/RLP.cpp.o: libdevcore/CMakeFiles/devcore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object libdevcore/CMakeFiles/devcore.dir/RLP.cpp.o"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libdevcore/CMakeFiles/devcore.dir/RLP.cpp.o -MF CMakeFiles/devcore.dir/RLP.cpp.o.d -o CMakeFiles/devcore.dir/RLP.cpp.o -c /Users/maceo/gnosis/retesteth/libdevcore/RLP.cpp

libdevcore/CMakeFiles/devcore.dir/RLP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/devcore.dir/RLP.cpp.i"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maceo/gnosis/retesteth/libdevcore/RLP.cpp > CMakeFiles/devcore.dir/RLP.cpp.i

libdevcore/CMakeFiles/devcore.dir/RLP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/devcore.dir/RLP.cpp.s"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maceo/gnosis/retesteth/libdevcore/RLP.cpp -o CMakeFiles/devcore.dir/RLP.cpp.s

libdevcore/CMakeFiles/devcore.dir/SHA3.cpp.o: libdevcore/CMakeFiles/devcore.dir/flags.make
libdevcore/CMakeFiles/devcore.dir/SHA3.cpp.o: libdevcore/SHA3.cpp
libdevcore/CMakeFiles/devcore.dir/SHA3.cpp.o: libdevcore/CMakeFiles/devcore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object libdevcore/CMakeFiles/devcore.dir/SHA3.cpp.o"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libdevcore/CMakeFiles/devcore.dir/SHA3.cpp.o -MF CMakeFiles/devcore.dir/SHA3.cpp.o.d -o CMakeFiles/devcore.dir/SHA3.cpp.o -c /Users/maceo/gnosis/retesteth/libdevcore/SHA3.cpp

libdevcore/CMakeFiles/devcore.dir/SHA3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/devcore.dir/SHA3.cpp.i"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maceo/gnosis/retesteth/libdevcore/SHA3.cpp > CMakeFiles/devcore.dir/SHA3.cpp.i

libdevcore/CMakeFiles/devcore.dir/SHA3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/devcore.dir/SHA3.cpp.s"
	cd /Users/maceo/gnosis/retesteth/libdevcore && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maceo/gnosis/retesteth/libdevcore/SHA3.cpp -o CMakeFiles/devcore.dir/SHA3.cpp.s

# Object files for target devcore
devcore_OBJECTS = \
"CMakeFiles/devcore.dir/Address.cpp.o" \
"CMakeFiles/devcore.dir/CommonData.cpp.o" \
"CMakeFiles/devcore.dir/CommonIO.cpp.o" \
"CMakeFiles/devcore.dir/FileSystem.cpp.o" \
"CMakeFiles/devcore.dir/FixedHash.cpp.o" \
"CMakeFiles/devcore.dir/Guards.cpp.o" \
"CMakeFiles/devcore.dir/RLP.cpp.o" \
"CMakeFiles/devcore.dir/SHA3.cpp.o"

# External object files for target devcore
devcore_EXTERNAL_OBJECTS =

libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/Address.cpp.o
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/CommonData.cpp.o
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/CommonIO.cpp.o
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/FileSystem.cpp.o
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/FixedHash.cpp.o
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/Guards.cpp.o
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/RLP.cpp.o
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/SHA3.cpp.o
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/build.make
libdevcore/libdevcore.a: libdevcore/CMakeFiles/devcore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/maceo/gnosis/retesteth/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libdevcore.a"
	cd /Users/maceo/gnosis/retesteth/libdevcore && $(CMAKE_COMMAND) -P CMakeFiles/devcore.dir/cmake_clean_target.cmake
	cd /Users/maceo/gnosis/retesteth/libdevcore && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/devcore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libdevcore/CMakeFiles/devcore.dir/build: libdevcore/libdevcore.a
.PHONY : libdevcore/CMakeFiles/devcore.dir/build

libdevcore/CMakeFiles/devcore.dir/clean:
	cd /Users/maceo/gnosis/retesteth/libdevcore && $(CMAKE_COMMAND) -P CMakeFiles/devcore.dir/cmake_clean.cmake
.PHONY : libdevcore/CMakeFiles/devcore.dir/clean

libdevcore/CMakeFiles/devcore.dir/depend:
	cd /Users/maceo/gnosis/retesteth && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/maceo/gnosis/retesteth /Users/maceo/gnosis/retesteth/libdevcore /Users/maceo/gnosis/retesteth /Users/maceo/gnosis/retesteth/libdevcore /Users/maceo/gnosis/retesteth/libdevcore/CMakeFiles/devcore.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libdevcore/CMakeFiles/devcore.dir/depend

