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
include CMakeFiles/html.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/html.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/html.dir/flags.make

CMakeFiles/html.dir/src/html.c.o: CMakeFiles/html.dir/flags.make
CMakeFiles/html.dir/src/html.c.o: ../src/html.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/html.dir/src/html.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/html.dir/src/html.c.o   -c /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/src/html.c

CMakeFiles/html.dir/src/html.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/html.dir/src/html.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/src/html.c > CMakeFiles/html.dir/src/html.c.i

CMakeFiles/html.dir/src/html.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/html.dir/src/html.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/src/html.c -o CMakeFiles/html.dir/src/html.c.s

CMakeFiles/html.dir/src/html.c.o.requires:

.PHONY : CMakeFiles/html.dir/src/html.c.o.requires

CMakeFiles/html.dir/src/html.c.o.provides: CMakeFiles/html.dir/src/html.c.o.requires
	$(MAKE) -f CMakeFiles/html.dir/build.make CMakeFiles/html.dir/src/html.c.o.provides.build
.PHONY : CMakeFiles/html.dir/src/html.c.o.provides

CMakeFiles/html.dir/src/html.c.o.provides.build: CMakeFiles/html.dir/src/html.c.o


# Object files for target html
html_OBJECTS = \
"CMakeFiles/html.dir/src/html.c.o"

# External object files for target html
html_EXTERNAL_OBJECTS =

libhtml.a: CMakeFiles/html.dir/src/html.c.o
libhtml.a: CMakeFiles/html.dir/build.make
libhtml.a: CMakeFiles/html.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libhtml.a"
	$(CMAKE_COMMAND) -P CMakeFiles/html.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/html.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/html.dir/build: libhtml.a

.PHONY : CMakeFiles/html.dir/build

CMakeFiles/html.dir/requires: CMakeFiles/html.dir/src/html.c.o.requires

.PHONY : CMakeFiles/html.dir/requires

CMakeFiles/html.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/html.dir/cmake_clean.cmake
.PHONY : CMakeFiles/html.dir/clean

CMakeFiles/html.dir/depend:
	cd /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild /mnt/c/Users/Alexandr/Desktop/OOP/Lab1/c/ubuntuBuild/CMakeFiles/html.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/html.dir/depend

