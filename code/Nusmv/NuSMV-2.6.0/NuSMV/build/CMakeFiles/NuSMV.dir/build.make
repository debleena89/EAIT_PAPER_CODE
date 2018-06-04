# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build

# Include any dependencies generated for this target.
include CMakeFiles/NuSMV.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NuSMV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NuSMV.dir/flags.make

CMakeFiles/NuSMV.dir/code/nusmv/main.c.o: CMakeFiles/NuSMV.dir/flags.make
CMakeFiles/NuSMV.dir/code/nusmv/main.c.o: ../code/nusmv/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/NuSMV.dir/code/nusmv/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/NuSMV.dir/code/nusmv/main.c.o   -c /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/code/nusmv/main.c

CMakeFiles/NuSMV.dir/code/nusmv/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NuSMV.dir/code/nusmv/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/code/nusmv/main.c > CMakeFiles/NuSMV.dir/code/nusmv/main.c.i

CMakeFiles/NuSMV.dir/code/nusmv/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NuSMV.dir/code/nusmv/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/code/nusmv/main.c -o CMakeFiles/NuSMV.dir/code/nusmv/main.c.s

CMakeFiles/NuSMV.dir/code/nusmv/main.c.o.requires:
.PHONY : CMakeFiles/NuSMV.dir/code/nusmv/main.c.o.requires

CMakeFiles/NuSMV.dir/code/nusmv/main.c.o.provides: CMakeFiles/NuSMV.dir/code/nusmv/main.c.o.requires
	$(MAKE) -f CMakeFiles/NuSMV.dir/build.make CMakeFiles/NuSMV.dir/code/nusmv/main.c.o.provides.build
.PHONY : CMakeFiles/NuSMV.dir/code/nusmv/main.c.o.provides

CMakeFiles/NuSMV.dir/code/nusmv/main.c.o.provides.build: CMakeFiles/NuSMV.dir/code/nusmv/main.c.o

# Object files for target NuSMV
NuSMV_OBJECTS = \
"CMakeFiles/NuSMV.dir/code/nusmv/main.c.o"

# External object files for target NuSMV
NuSMV_EXTERNAL_OBJECTS =

bin/NuSMV: CMakeFiles/NuSMV.dir/code/nusmv/main.c.o
bin/NuSMV: CMakeFiles/NuSMV.dir/build.make
bin/NuSMV: lib/libnusmvshell.a
bin/NuSMV: lib/libnusmvaddonscore.a
bin/NuSMV: lib/libnusmvcore.a
bin/NuSMV: lib/libnusmvrbc.a
bin/NuSMV: lib/libnusmvgrammar.a
bin/NuSMV: lib/libnusmvshell.a
bin/NuSMV: /usr/lib/x86_64-linux-gnu/libm.so
bin/NuSMV: build-cudd/lib/libcudd.a
bin/NuSMV: build-cudd/lib/libepd.a
bin/NuSMV: build-cudd/lib/libmtr.a
bin/NuSMV: build-cudd/lib/libst.a
bin/NuSMV: build-cudd/lib/libutil.a
bin/NuSMV: build-zchaff/zchaff64/libsat.a
bin/NuSMV: build-MiniSat/minisat-37dc6c67e2af26379d88ce349eb9c4c6160e8543/libMiniSat.a
bin/NuSMV: /usr/lib/x86_64-linux-gnu/libreadline.so
bin/NuSMV: /usr/lib/x86_64-linux-gnu/libtermcap.so
bin/NuSMV: CMakeFiles/NuSMV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/NuSMV"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NuSMV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NuSMV.dir/build: bin/NuSMV
.PHONY : CMakeFiles/NuSMV.dir/build

CMakeFiles/NuSMV.dir/requires: CMakeFiles/NuSMV.dir/code/nusmv/main.c.o.requires
.PHONY : CMakeFiles/NuSMV.dir/requires

CMakeFiles/NuSMV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NuSMV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NuSMV.dir/clean

CMakeFiles/NuSMV.dir/depend:
	cd /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/CMakeFiles/NuSMV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NuSMV.dir/depend

