# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild

# Include any dependencies generated for this target.
include CMakeFiles/io.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/io.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/io.dir/flags.make

CMakeFiles/io.dir/src/io.c.o: CMakeFiles/io.dir/flags.make
CMakeFiles/io.dir/src/io.c.o: ../src/io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/io.dir/src/io.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/io.dir/src/io.c.o   -c /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/src/io.c

CMakeFiles/io.dir/src/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/io.dir/src/io.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/src/io.c > CMakeFiles/io.dir/src/io.c.i

CMakeFiles/io.dir/src/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/io.dir/src/io.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/src/io.c -o CMakeFiles/io.dir/src/io.c.s

CMakeFiles/io.dir/src/io.c.o.requires:

.PHONY : CMakeFiles/io.dir/src/io.c.o.requires

CMakeFiles/io.dir/src/io.c.o.provides: CMakeFiles/io.dir/src/io.c.o.requires
	$(MAKE) -f CMakeFiles/io.dir/build.make CMakeFiles/io.dir/src/io.c.o.provides.build
.PHONY : CMakeFiles/io.dir/src/io.c.o.provides

CMakeFiles/io.dir/src/io.c.o.provides.build: CMakeFiles/io.dir/src/io.c.o


# Object files for target io
io_OBJECTS = \
"CMakeFiles/io.dir/src/io.c.o"

# External object files for target io
io_EXTERNAL_OBJECTS =

libio.a: CMakeFiles/io.dir/src/io.c.o
libio.a: CMakeFiles/io.dir/build.make
libio.a: CMakeFiles/io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libio.a"
	$(CMAKE_COMMAND) -P CMakeFiles/io.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/io.dir/build: libio.a

.PHONY : CMakeFiles/io.dir/build

CMakeFiles/io.dir/requires: CMakeFiles/io.dir/src/io.c.o.requires

.PHONY : CMakeFiles/io.dir/requires

CMakeFiles/io.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/io.dir/cmake_clean.cmake
.PHONY : CMakeFiles/io.dir/clean

CMakeFiles/io.dir/depend:
	cd /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild/CMakeFiles/io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/io.dir/depend
