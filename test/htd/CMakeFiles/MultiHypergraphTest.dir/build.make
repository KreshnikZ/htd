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
include test/htd/CMakeFiles/MultiHypergraphTest.dir/depend.make

# Include the progress variables for this target.
include test/htd/CMakeFiles/MultiHypergraphTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/htd/CMakeFiles/MultiHypergraphTest.dir/flags.make

test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o: test/htd/CMakeFiles/MultiHypergraphTest.dir/flags.make
test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o: test/htd/MultiHypergraphTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o -c /home/kreshnik/Thesis/HTD/htd/test/htd/MultiHypergraphTest.cpp

test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/test/htd/MultiHypergraphTest.cpp > CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.i

test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/test/htd/MultiHypergraphTest.cpp -o CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.s

test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o.requires:
.PHONY : test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o.requires

test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o.provides: test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o.requires
	$(MAKE) -f test/htd/CMakeFiles/MultiHypergraphTest.dir/build.make test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o.provides.build
.PHONY : test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o.provides

test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o.provides.build: test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o

# Object files for target MultiHypergraphTest
MultiHypergraphTest_OBJECTS = \
"CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o"

# External object files for target MultiHypergraphTest
MultiHypergraphTest_EXTERNAL_OBJECTS =

test/htd/MultiHypergraphTest: test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o
test/htd/MultiHypergraphTest: test/htd/CMakeFiles/MultiHypergraphTest.dir/build.make
test/htd/MultiHypergraphTest: lib/libhtd.so.0.0.0
test/htd/MultiHypergraphTest: test/googletest/googletest-release-1.8.0/googlemock/gtest/libgtest_main.so
test/htd/MultiHypergraphTest: test/googletest/googletest-release-1.8.0/googlemock/gtest/libgtest.so
test/htd/MultiHypergraphTest: test/htd/CMakeFiles/MultiHypergraphTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable MultiHypergraphTest"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MultiHypergraphTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/htd/CMakeFiles/MultiHypergraphTest.dir/build: test/htd/MultiHypergraphTest
.PHONY : test/htd/CMakeFiles/MultiHypergraphTest.dir/build

test/htd/CMakeFiles/MultiHypergraphTest.dir/requires: test/htd/CMakeFiles/MultiHypergraphTest.dir/MultiHypergraphTest.cpp.o.requires
.PHONY : test/htd/CMakeFiles/MultiHypergraphTest.dir/requires

test/htd/CMakeFiles/MultiHypergraphTest.dir/clean:
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && $(CMAKE_COMMAND) -P CMakeFiles/MultiHypergraphTest.dir/cmake_clean.cmake
.PHONY : test/htd/CMakeFiles/MultiHypergraphTest.dir/clean

test/htd/CMakeFiles/MultiHypergraphTest.dir/depend:
	cd /home/kreshnik/Thesis/HTD/htd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/test/htd /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/test/htd /home/kreshnik/Thesis/HTD/htd/test/htd/CMakeFiles/MultiHypergraphTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/htd/CMakeFiles/MultiHypergraphTest.dir/depend
