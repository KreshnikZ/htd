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
include src/htd_cli/CMakeFiles/htd_cli.dir/depend.make

# Include the progress variables for this target.
include src/htd_cli/CMakeFiles/htd_cli.dir/progress.make

# Include the compile flags for this target's objects.
include src/htd_cli/CMakeFiles/htd_cli.dir/flags.make

src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o: src/htd_cli/CMakeFiles/htd_cli.dir/flags.make
src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o: src/htd_cli/SingleValueOption.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o -c /home/kreshnik/Thesis/HTD/htd/src/htd_cli/SingleValueOption.cpp

src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/htd_cli.dir/SingleValueOption.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/src/htd_cli/SingleValueOption.cpp > CMakeFiles/htd_cli.dir/SingleValueOption.cpp.i

src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/htd_cli.dir/SingleValueOption.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/src/htd_cli/SingleValueOption.cpp -o CMakeFiles/htd_cli.dir/SingleValueOption.cpp.s

src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o.requires:
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o.requires

src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o.provides: src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o.requires
	$(MAKE) -f src/htd_cli/CMakeFiles/htd_cli.dir/build.make src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o.provides.build
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o.provides

src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o.provides.build: src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o

src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o: src/htd_cli/CMakeFiles/htd_cli.dir/flags.make
src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o: src/htd_cli/Choice.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/htd_cli.dir/Choice.cpp.o -c /home/kreshnik/Thesis/HTD/htd/src/htd_cli/Choice.cpp

src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/htd_cli.dir/Choice.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/src/htd_cli/Choice.cpp > CMakeFiles/htd_cli.dir/Choice.cpp.i

src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/htd_cli.dir/Choice.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/src/htd_cli/Choice.cpp -o CMakeFiles/htd_cli.dir/Choice.cpp.s

src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o.requires:
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o.requires

src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o.provides: src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o.requires
	$(MAKE) -f src/htd_cli/CMakeFiles/htd_cli.dir/build.make src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o.provides.build
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o.provides

src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o.provides.build: src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o

src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o: src/htd_cli/CMakeFiles/htd_cli.dir/flags.make
src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o: src/htd_cli/ValueOption.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/htd_cli.dir/ValueOption.cpp.o -c /home/kreshnik/Thesis/HTD/htd/src/htd_cli/ValueOption.cpp

src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/htd_cli.dir/ValueOption.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/src/htd_cli/ValueOption.cpp > CMakeFiles/htd_cli.dir/ValueOption.cpp.i

src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/htd_cli.dir/ValueOption.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/src/htd_cli/ValueOption.cpp -o CMakeFiles/htd_cli.dir/ValueOption.cpp.s

src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o.requires:
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o.requires

src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o.provides: src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o.requires
	$(MAKE) -f src/htd_cli/CMakeFiles/htd_cli.dir/build.make src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o.provides.build
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o.provides

src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o.provides.build: src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o

src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o: src/htd_cli/CMakeFiles/htd_cli.dir/flags.make
src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o: src/htd_cli/MultiValueOption.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o -c /home/kreshnik/Thesis/HTD/htd/src/htd_cli/MultiValueOption.cpp

src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/htd_cli.dir/MultiValueOption.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/src/htd_cli/MultiValueOption.cpp > CMakeFiles/htd_cli.dir/MultiValueOption.cpp.i

src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/htd_cli.dir/MultiValueOption.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/src/htd_cli/MultiValueOption.cpp -o CMakeFiles/htd_cli.dir/MultiValueOption.cpp.s

src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o.requires:
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o.requires

src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o.provides: src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o.requires
	$(MAKE) -f src/htd_cli/CMakeFiles/htd_cli.dir/build.make src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o.provides.build
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o.provides

src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o.provides.build: src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o

src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o: src/htd_cli/CMakeFiles/htd_cli.dir/flags.make
src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o: src/htd_cli/Option.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/htd_cli.dir/Option.cpp.o -c /home/kreshnik/Thesis/HTD/htd/src/htd_cli/Option.cpp

src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/htd_cli.dir/Option.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/src/htd_cli/Option.cpp > CMakeFiles/htd_cli.dir/Option.cpp.i

src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/htd_cli.dir/Option.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/src/htd_cli/Option.cpp -o CMakeFiles/htd_cli.dir/Option.cpp.s

src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o.requires:
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o.requires

src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o.provides: src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o.requires
	$(MAKE) -f src/htd_cli/CMakeFiles/htd_cli.dir/build.make src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o.provides.build
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o.provides

src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o.provides.build: src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o

src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o: src/htd_cli/CMakeFiles/htd_cli.dir/flags.make
src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o: src/htd_cli/OptionManager.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kreshnik/Thesis/HTD/htd/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/htd_cli.dir/OptionManager.cpp.o -c /home/kreshnik/Thesis/HTD/htd/src/htd_cli/OptionManager.cpp

src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/htd_cli.dir/OptionManager.cpp.i"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kreshnik/Thesis/HTD/htd/src/htd_cli/OptionManager.cpp > CMakeFiles/htd_cli.dir/OptionManager.cpp.i

src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/htd_cli.dir/OptionManager.cpp.s"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kreshnik/Thesis/HTD/htd/src/htd_cli/OptionManager.cpp -o CMakeFiles/htd_cli.dir/OptionManager.cpp.s

src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o.requires:
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o.requires

src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o.provides: src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o.requires
	$(MAKE) -f src/htd_cli/CMakeFiles/htd_cli.dir/build.make src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o.provides.build
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o.provides

src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o.provides.build: src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o

# Object files for target htd_cli
htd_cli_OBJECTS = \
"CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o" \
"CMakeFiles/htd_cli.dir/Choice.cpp.o" \
"CMakeFiles/htd_cli.dir/ValueOption.cpp.o" \
"CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o" \
"CMakeFiles/htd_cli.dir/Option.cpp.o" \
"CMakeFiles/htd_cli.dir/OptionManager.cpp.o"

# External object files for target htd_cli
htd_cli_EXTERNAL_OBJECTS =

lib/libhtd_cli.so.0.0.0 lib/libhtd_cli.so.0 lib/libhtd_cli.so: src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o
lib/libhtd_cli.so.0.0.0 lib/libhtd_cli.so.0 lib/libhtd_cli.so: src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o
lib/libhtd_cli.so.0.0.0 lib/libhtd_cli.so.0 lib/libhtd_cli.so: src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o
lib/libhtd_cli.so.0.0.0 lib/libhtd_cli.so.0 lib/libhtd_cli.so: src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o
lib/libhtd_cli.so.0.0.0 lib/libhtd_cli.so.0 lib/libhtd_cli.so: src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o
lib/libhtd_cli.so.0.0.0 lib/libhtd_cli.so.0 lib/libhtd_cli.so: src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o
lib/libhtd_cli.so.0.0.0 lib/libhtd_cli.so.0 lib/libhtd_cli.so: src/htd_cli/CMakeFiles/htd_cli.dir/build.make
lib/libhtd_cli.so.0.0.0 lib/libhtd_cli.so.0 lib/libhtd_cli.so: src/htd_cli/CMakeFiles/htd_cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../lib/libhtd_cli.so"
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/htd_cli.dir/link.txt --verbose=$(VERBOSE)
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libhtd_cli.so.0.0.0 ../../lib/libhtd_cli.so.0 ../../lib/libhtd_cli.so

# Rule to build all files generated by this target.
src/htd_cli/CMakeFiles/htd_cli.dir/build: lib/libhtd_cli.so
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/build

src/htd_cli/CMakeFiles/htd_cli.dir/requires: src/htd_cli/CMakeFiles/htd_cli.dir/SingleValueOption.cpp.o.requires
src/htd_cli/CMakeFiles/htd_cli.dir/requires: src/htd_cli/CMakeFiles/htd_cli.dir/Choice.cpp.o.requires
src/htd_cli/CMakeFiles/htd_cli.dir/requires: src/htd_cli/CMakeFiles/htd_cli.dir/ValueOption.cpp.o.requires
src/htd_cli/CMakeFiles/htd_cli.dir/requires: src/htd_cli/CMakeFiles/htd_cli.dir/MultiValueOption.cpp.o.requires
src/htd_cli/CMakeFiles/htd_cli.dir/requires: src/htd_cli/CMakeFiles/htd_cli.dir/Option.cpp.o.requires
src/htd_cli/CMakeFiles/htd_cli.dir/requires: src/htd_cli/CMakeFiles/htd_cli.dir/OptionManager.cpp.o.requires
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/requires

src/htd_cli/CMakeFiles/htd_cli.dir/clean:
	cd /home/kreshnik/Thesis/HTD/htd/src/htd_cli && $(CMAKE_COMMAND) -P CMakeFiles/htd_cli.dir/cmake_clean.cmake
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/clean

src/htd_cli/CMakeFiles/htd_cli.dir/depend:
	cd /home/kreshnik/Thesis/HTD/htd && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/src/htd_cli /home/kreshnik/Thesis/HTD/htd /home/kreshnik/Thesis/HTD/htd/src/htd_cli /home/kreshnik/Thesis/HTD/htd/src/htd_cli/CMakeFiles/htd_cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/htd_cli/CMakeFiles/htd_cli.dir/depend

