# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Alexandr\Desktop\OOP\Lab1\c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Alexandr\Desktop\OOP\Lab1\c\build

# Include any dependencies generated for this target.
include CMakeFiles/io.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/io.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/io.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/io.dir/flags.make

CMakeFiles/io.dir/src/io.c.obj: CMakeFiles/io.dir/flags.make
CMakeFiles/io.dir/src/io.c.obj: C:/Users/Alexandr/Desktop/OOP/Lab1/c/src/io.c
CMakeFiles/io.dir/src/io.c.obj: CMakeFiles/io.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Alexandr\Desktop\OOP\Lab1\c\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/io.dir/src/io.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/io.dir/src/io.c.obj -MF CMakeFiles\io.dir\src\io.c.obj.d -o CMakeFiles\io.dir\src\io.c.obj -c C:\Users\Alexandr\Desktop\OOP\Lab1\c\src\io.c

CMakeFiles/io.dir/src/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/io.dir/src/io.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Alexandr\Desktop\OOP\Lab1\c\src\io.c > CMakeFiles\io.dir\src\io.c.i

CMakeFiles/io.dir/src/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/io.dir/src/io.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Alexandr\Desktop\OOP\Lab1\c\src\io.c -o CMakeFiles\io.dir\src\io.c.s

# Object files for target io
io_OBJECTS = \
"CMakeFiles/io.dir/src/io.c.obj"

# External object files for target io
io_EXTERNAL_OBJECTS =

libio.a: CMakeFiles/io.dir/src/io.c.obj
libio.a: CMakeFiles/io.dir/build.make
libio.a: CMakeFiles/io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Alexandr\Desktop\OOP\Lab1\c\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libio.a"
	$(CMAKE_COMMAND) -P CMakeFiles\io.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\io.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/io.dir/build: libio.a
.PHONY : CMakeFiles/io.dir/build

CMakeFiles/io.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\io.dir\cmake_clean.cmake
.PHONY : CMakeFiles/io.dir/clean

CMakeFiles/io.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Alexandr\Desktop\OOP\Lab1\c C:\Users\Alexandr\Desktop\OOP\Lab1\c C:\Users\Alexandr\Desktop\OOP\Lab1\c\build C:\Users\Alexandr\Desktop\OOP\Lab1\c\build C:\Users\Alexandr\Desktop\OOP\Lab1\c\build\CMakeFiles\io.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/io.dir/depend
