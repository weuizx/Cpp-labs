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
include CMakeFiles/dialog.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dialog.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dialog.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dialog.dir/flags.make

CMakeFiles/dialog.dir/src/dialog.c.obj: CMakeFiles/dialog.dir/flags.make
CMakeFiles/dialog.dir/src/dialog.c.obj: C:/Users/Alexandr/Desktop/OOP/Lab1/c/src/dialog.c
CMakeFiles/dialog.dir/src/dialog.c.obj: CMakeFiles/dialog.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Alexandr\Desktop\OOP\Lab1\c\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/dialog.dir/src/dialog.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/dialog.dir/src/dialog.c.obj -MF CMakeFiles\dialog.dir\src\dialog.c.obj.d -o CMakeFiles\dialog.dir\src\dialog.c.obj -c C:\Users\Alexandr\Desktop\OOP\Lab1\c\src\dialog.c

CMakeFiles/dialog.dir/src/dialog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/dialog.dir/src/dialog.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Alexandr\Desktop\OOP\Lab1\c\src\dialog.c > CMakeFiles\dialog.dir\src\dialog.c.i

CMakeFiles/dialog.dir/src/dialog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/dialog.dir/src/dialog.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Alexandr\Desktop\OOP\Lab1\c\src\dialog.c -o CMakeFiles\dialog.dir\src\dialog.c.s

# Object files for target dialog
dialog_OBJECTS = \
"CMakeFiles/dialog.dir/src/dialog.c.obj"

# External object files for target dialog
dialog_EXTERNAL_OBJECTS =

libdialog.a: CMakeFiles/dialog.dir/src/dialog.c.obj
libdialog.a: CMakeFiles/dialog.dir/build.make
libdialog.a: CMakeFiles/dialog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Alexandr\Desktop\OOP\Lab1\c\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libdialog.a"
	$(CMAKE_COMMAND) -P CMakeFiles\dialog.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\dialog.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dialog.dir/build: libdialog.a
.PHONY : CMakeFiles/dialog.dir/build

CMakeFiles/dialog.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\dialog.dir\cmake_clean.cmake
.PHONY : CMakeFiles/dialog.dir/clean

CMakeFiles/dialog.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Alexandr\Desktop\OOP\Lab1\c C:\Users\Alexandr\Desktop\OOP\Lab1\c C:\Users\Alexandr\Desktop\OOP\Lab1\c\build C:\Users\Alexandr\Desktop\OOP\Lab1\c\build C:\Users\Alexandr\Desktop\OOP\Lab1\c\build\CMakeFiles\dialog.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/dialog.dir/depend

