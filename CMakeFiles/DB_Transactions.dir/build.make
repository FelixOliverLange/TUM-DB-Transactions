# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/d064500/CLionProjects/DB-Transactions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/d064500/CLionProjects/DB-Transactions

# Include any dependencies generated for this target.
include CMakeFiles/DB_Transactions.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DB_Transactions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DB_Transactions.dir/flags.make

CMakeFiles/DB_Transactions.dir/main.cpp.o: CMakeFiles/DB_Transactions.dir/flags.make
CMakeFiles/DB_Transactions.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/d064500/CLionProjects/DB-Transactions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DB_Transactions.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DB_Transactions.dir/main.cpp.o -c /Users/d064500/CLionProjects/DB-Transactions/main.cpp

CMakeFiles/DB_Transactions.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DB_Transactions.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/d064500/CLionProjects/DB-Transactions/main.cpp > CMakeFiles/DB_Transactions.dir/main.cpp.i

CMakeFiles/DB_Transactions.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DB_Transactions.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/d064500/CLionProjects/DB-Transactions/main.cpp -o CMakeFiles/DB_Transactions.dir/main.cpp.s

# Object files for target DB_Transactions
DB_Transactions_OBJECTS = \
"CMakeFiles/DB_Transactions.dir/main.cpp.o"

# External object files for target DB_Transactions
DB_Transactions_EXTERNAL_OBJECTS =

DB_Transactions: CMakeFiles/DB_Transactions.dir/main.cpp.o
DB_Transactions: CMakeFiles/DB_Transactions.dir/build.make
DB_Transactions: CMakeFiles/DB_Transactions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/d064500/CLionProjects/DB-Transactions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DB_Transactions"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DB_Transactions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DB_Transactions.dir/build: DB_Transactions

.PHONY : CMakeFiles/DB_Transactions.dir/build

CMakeFiles/DB_Transactions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DB_Transactions.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DB_Transactions.dir/clean

CMakeFiles/DB_Transactions.dir/depend:
	cd /Users/d064500/CLionProjects/DB-Transactions && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/d064500/CLionProjects/DB-Transactions /Users/d064500/CLionProjects/DB-Transactions /Users/d064500/CLionProjects/DB-Transactions /Users/d064500/CLionProjects/DB-Transactions /Users/d064500/CLionProjects/DB-Transactions/CMakeFiles/DB_Transactions.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DB_Transactions.dir/depend

