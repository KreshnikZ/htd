# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kreshnik/Thesis/HTD/htd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kreshnik/Thesis/HTD/htd

# Include any dependencies generated for this target.
include test/htd/CMakeFiles/GraphTest.dir/depend.make

# Include the progress variables for this target.
include test/htd/CMakeFiles/GraphTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/htd/CMakeFiles/GraphTest.dir/flags.make

test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o: test/htd/CMakeFiles/GraphTest.dir/flags.make
test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o: test/htd/GraphTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/GraphTest.dir/GraphTest.cpp.o -c /home/kreshnik/Thesis/HTD/htd/test/htd/GraphTest.cpp

test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GraphTest.dir/GraphTest.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/test/htd/GraphTest.cpp > CMakeFiles/GraphTest.dir/GraphTest.cpp.i

test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GraphTest.dir/GraphTest.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/test/htd/GraphTest.cpp -o CMakeFiles/GraphTest.dir/GraphTest.cpp.s

test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o.requires:
.PHONY : test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o.requires

test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o.provides: test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o.requires
	$(MAKE) -f test/htd/CMakeFiles/GraphTest.dir/build.make test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o.provides.build
.PHONY : test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o.provides

test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o.provides.build: test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o

# Object files for target GraphTest
GraphTest_OBJECTS = \
"CMakeFiles/GraphTest.dir/GraphTest.cpp.o"

# External object files for target GraphTest
GraphTest_EXTERNAL_OBJECTS =

test/htd/GraphTest: test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o
test/htd/GraphTest: test/htd/CMakeFiles/GraphTest.dir/build.make
test/htd/GraphTest: lib/libhtd.so.0.0.0
test/htd/GraphTest: test/googletest/googletest-release-1.8.0/googlemock/gtest/libgtest_main.so
test/htd/GraphTest: test/googletest/googletest-release-1.8.0/googlemock/gtest/libgtest.so
test/htd/GraphTest: test/htd/CMakeFiles/GraphTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable GraphTest"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GraphTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/htd/CMakeFiles/GraphTest.dir/build: test/htd/GraphTest
.PHONY : test/htd/CMakeFiles/GraphTest.dir/build

test/htd/CMakeFiles/GraphTest.dir/requires: test/htd/CMakeFiles/GraphTest.dir/GraphTest.cpp.o.requires
.PHONY : test/htd/CMakeFiles/GraphTest.dir/requires

test/htd/CMakeFiles/GraphTest.dir/clean:
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && $(CMAKE_COMMAND) -P CMakeFiles/GraphTest.dir/cmake_clean.cmake
.PHONY : test/htd/CMakeFiles/GraphTest.dir/clean

test/htd/CMakeFiles/GraphTest.dir/depend:
	cd /home/kreshnik/Thesis/HTD/htd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/test/htd /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/test/htd /home/kreshnik/Thesis/HTD/htd/test/htd/CMakeFiles/GraphTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/htd/CMakeFiles/GraphTest.dir/depend
