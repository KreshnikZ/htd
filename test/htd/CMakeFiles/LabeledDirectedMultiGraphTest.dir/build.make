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
include test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/depend.make

# Include the progress variables for this target.
include test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/progress.make

# Include the compile flags for this target's objects.
include test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/flags.make

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o: test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/flags.make
test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o: test/htd/LabeledDirectedMultiGraphTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o -c /home/kreshnik/Thesis/HTD/htd/test/htd/LabeledDirectedMultiGraphTest.cpp

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/test/htd/LabeledDirectedMultiGraphTest.cpp > CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.i

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/test/htd/LabeledDirectedMultiGraphTest.cpp -o CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.s

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o.requires:
.PHONY : test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o.requires

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o.provides: test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o.requires
	$(MAKE) -f test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/build.make test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o.provides.build
.PHONY : test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o.provides

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o.provides.build: test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o

# Object files for target LabeledDirectedMultiGraphTest
LabeledDirectedMultiGraphTest_OBJECTS = \
"CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o"

# External object files for target LabeledDirectedMultiGraphTest
LabeledDirectedMultiGraphTest_EXTERNAL_OBJECTS =

test/htd/LabeledDirectedMultiGraphTest: test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o
test/htd/LabeledDirectedMultiGraphTest: test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/build.make
test/htd/LabeledDirectedMultiGraphTest: lib/libhtd.so.0.0.0
test/htd/LabeledDirectedMultiGraphTest: test/googletest/googletest-release-1.8.0/googlemock/gtest/libgtest_main.so
test/htd/LabeledDirectedMultiGraphTest: test/googletest/googletest-release-1.8.0/googlemock/gtest/libgtest.so
test/htd/LabeledDirectedMultiGraphTest: test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable LabeledDirectedMultiGraphTest"
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LabeledDirectedMultiGraphTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/build: test/htd/LabeledDirectedMultiGraphTest
.PHONY : test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/build

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/requires: test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/LabeledDirectedMultiGraphTest.cpp.o.requires
.PHONY : test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/requires

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/clean:
	cd /home/kreshnik/Thesis/HTD/htd/test/htd && $(CMAKE_COMMAND) -P CMakeFiles/LabeledDirectedMultiGraphTest.dir/cmake_clean.cmake
.PHONY : test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/clean

test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/depend:
	cd /home/kreshnik/Thesis/HTD/htd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/test/htd /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/test/htd /home/kreshnik/Thesis/HTD/htd/test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/htd/CMakeFiles/LabeledDirectedMultiGraphTest.dir/depend

