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
include test/htd/CMakeFiles/FactoryTest.dir/depend.make

# Include the progress variables for this target.
include test/htd/CMakeFiles/FactoryTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/htd/CMakeFiles/FactoryTest.dir/flags.make

test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o: test/htd/CMakeFiles/FactoryTest.dir/flags.make
test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o: test/htd/FactoryTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o -c /home/kreshnik/Thesis/HTD/htd/test/htd/FactoryTest.cpp

test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FactoryTest.dir/FactoryTest.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/test/htd/FactoryTest.cpp > CMakeFiles/FactoryTest.dir/FactoryTest.cpp.i

test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FactoryTest.dir/FactoryTest.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/test/htd/FactoryTest.cpp -o CMakeFiles/FactoryTest.dir/FactoryTest.cpp.s

test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o.requires:
.PHONY : test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o.requires

test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o.provides: test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o.requires
	$(MAKE) -f test/htd/CMakeFiles/FactoryTest.dir/build.make test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o.provides.build
.PHONY : test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o.provides

test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o.provides.build: test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o

# Object files for target FactoryTest
FactoryTest_OBJECTS = \
"CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o"

# External object files for target FactoryTest
FactoryTest_EXTERNAL_OBJECTS =

test/htd/FactoryTest: test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o
test/htd/FactoryTest: test/htd/CMakeFiles/FactoryTest.dir/build.make
test/htd/FactoryTest: lib/libhtd.so.0.0.0
test/htd/FactoryTest: test/googletest/googletest-release-1.8.0/googlemock/gtest/libgtest_main.so
test/htd/FactoryTest: test/googletest/googletest-release-1.8.0/googlemock/gtest/libgtest.so
test/htd/FactoryTest: test/htd/CMakeFiles/FactoryTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable FactoryTest"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FactoryTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/htd/CMakeFiles/FactoryTest.dir/build: test/htd/FactoryTest
.PHONY : test/htd/CMakeFiles/FactoryTest.dir/build

test/htd/CMakeFiles/FactoryTest.dir/requires: test/htd/CMakeFiles/FactoryTest.dir/FactoryTest.cpp.o.requires
.PHONY : test/htd/CMakeFiles/FactoryTest.dir/requires

test/htd/CMakeFiles/FactoryTest.dir/clean:
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && $(CMAKE_COMMAND) -P CMakeFiles/FactoryTest.dir/cmake_clean.cmake
.PHONY : test/htd/CMakeFiles/FactoryTest.dir/clean

test/htd/CMakeFiles/FactoryTest.dir/depend:
	cd /home/kreshnik/Thesis/HTD/htd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/test/htd /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/test/htd /home/kreshnik/Thesis/HTD/htd/test/htd/CMakeFiles/FactoryTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/htd/CMakeFiles/FactoryTest.dir/depend

