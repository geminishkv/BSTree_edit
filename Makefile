# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/geminishkv_dev/geminishkv/workspace/projects/HomeWork/BSTree_edit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/geminishkv_dev/geminishkv/workspace/projects/HomeWork/BSTree_edit

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test

.PHONY : test/fast

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	/usr/bin/cpack --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package

.PHONY : package/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	/usr/bin/cpack --config ./CPackSourceConfig.cmake /home/geminishkv_dev/geminishkv/workspace/projects/HomeWork/BSTree_edit/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source

.PHONY : package_source/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: install/local

.PHONY : install/local/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: install/strip

.PHONY : install/strip/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/geminishkv_dev/geminishkv/workspace/projects/HomeWork/BSTree_edit/CMakeFiles /home/geminishkv_dev/geminishkv/workspace/projects/HomeWork/BSTree_edit/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/geminishkv_dev/geminishkv/workspace/projects/HomeWork/BSTree_edit/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named check

# Build rule for target.
check: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 check
.PHONY : check

# fast build rule for target.
check/fast:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/build
.PHONY : check/fast

#=============================================================================
# Target rules for targets named tree-cli

# Build rule for target.
tree-cli: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 tree-cli
.PHONY : tree-cli

# fast build rule for target.
tree-cli/fast:
	$(MAKE) -f CMakeFiles/tree-cli.dir/build.make CMakeFiles/tree-cli.dir/build
.PHONY : tree-cli/fast

#=============================================================================
# Target rules for targets named tree

# Build rule for target.
tree: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 tree
.PHONY : tree

# fast build rule for target.
tree/fast:
	$(MAKE) -f CMakeFiles/tree.dir/build.make CMakeFiles/tree.dir/build
.PHONY : tree/fast

#=============================================================================
# Target rules for targets named unit_tests_coverage

# Build rule for target.
unit_tests_coverage: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 unit_tests_coverage
.PHONY : unit_tests_coverage

# fast build rule for target.
unit_tests_coverage/fast:
	$(MAKE) -f CMakeFiles/unit_tests_coverage.dir/build.make CMakeFiles/unit_tests_coverage.dir/build
.PHONY : unit_tests_coverage/fast

#=============================================================================
# Target rules for targets named unit_tests

# Build rule for target.
unit_tests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 unit_tests
.PHONY : unit_tests

# fast build rule for target.
unit_tests/fast:
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/build
.PHONY : unit_tests/fast

examples/tree-cli.o: examples/tree-cli.cpp.o

.PHONY : examples/tree-cli.o

# target to build an object file
examples/tree-cli.cpp.o:
	$(MAKE) -f CMakeFiles/tree-cli.dir/build.make CMakeFiles/tree-cli.dir/examples/tree-cli.cpp.o
.PHONY : examples/tree-cli.cpp.o

examples/tree-cli.i: examples/tree-cli.cpp.i

.PHONY : examples/tree-cli.i

# target to preprocess a source file
examples/tree-cli.cpp.i:
	$(MAKE) -f CMakeFiles/tree-cli.dir/build.make CMakeFiles/tree-cli.dir/examples/tree-cli.cpp.i
.PHONY : examples/tree-cli.cpp.i

examples/tree-cli.s: examples/tree-cli.cpp.s

.PHONY : examples/tree-cli.s

# target to generate assembly for a file
examples/tree-cli.cpp.s:
	$(MAKE) -f CMakeFiles/tree-cli.dir/build.make CMakeFiles/tree-cli.dir/examples/tree-cli.cpp.s
.PHONY : examples/tree-cli.cpp.s

sources/tree.o: sources/tree.cpp.o

.PHONY : sources/tree.o

# target to build an object file
sources/tree.cpp.o:
	$(MAKE) -f CMakeFiles/tree.dir/build.make CMakeFiles/tree.dir/sources/tree.cpp.o
.PHONY : sources/tree.cpp.o

sources/tree.i: sources/tree.cpp.i

.PHONY : sources/tree.i

# target to preprocess a source file
sources/tree.cpp.i:
	$(MAKE) -f CMakeFiles/tree.dir/build.make CMakeFiles/tree.dir/sources/tree.cpp.i
.PHONY : sources/tree.cpp.i

sources/tree.s: sources/tree.cpp.s

.PHONY : sources/tree.s

# target to generate assembly for a file
sources/tree.cpp.s:
	$(MAKE) -f CMakeFiles/tree.dir/build.make CMakeFiles/tree.dir/sources/tree.cpp.s
.PHONY : sources/tree.cpp.s

tests/main.o: tests/main.cpp.o

.PHONY : tests/main.o

# target to build an object file
tests/main.cpp.o:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/main.cpp.o
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/main.cpp.o
.PHONY : tests/main.cpp.o

tests/main.i: tests/main.cpp.i

.PHONY : tests/main.i

# target to preprocess a source file
tests/main.cpp.i:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/main.cpp.i
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/main.cpp.i
.PHONY : tests/main.cpp.i

tests/main.s: tests/main.cpp.s

.PHONY : tests/main.s

# target to generate assembly for a file
tests/main.cpp.s:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/main.cpp.s
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/main.cpp.s
.PHONY : tests/main.cpp.s

tests/test1.o: tests/test1.cpp.o

.PHONY : tests/test1.o

# target to build an object file
tests/test1.cpp.o:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/test1.cpp.o
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/test1.cpp.o
.PHONY : tests/test1.cpp.o

tests/test1.i: tests/test1.cpp.i

.PHONY : tests/test1.i

# target to preprocess a source file
tests/test1.cpp.i:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/test1.cpp.i
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/test1.cpp.i
.PHONY : tests/test1.cpp.i

tests/test1.s: tests/test1.cpp.s

.PHONY : tests/test1.s

# target to generate assembly for a file
tests/test1.cpp.s:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/test1.cpp.s
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/test1.cpp.s
.PHONY : tests/test1.cpp.s

tests/test2.o: tests/test2.cpp.o

.PHONY : tests/test2.o

# target to build an object file
tests/test2.cpp.o:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/test2.cpp.o
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/test2.cpp.o
.PHONY : tests/test2.cpp.o

tests/test2.i: tests/test2.cpp.i

.PHONY : tests/test2.i

# target to preprocess a source file
tests/test2.cpp.i:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/test2.cpp.i
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/test2.cpp.i
.PHONY : tests/test2.cpp.i

tests/test2.s: tests/test2.cpp.s

.PHONY : tests/test2.s

# target to generate assembly for a file
tests/test2.cpp.s:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/test2.cpp.s
	$(MAKE) -f CMakeFiles/unit_tests.dir/build.make CMakeFiles/unit_tests.dir/tests/test2.cpp.s
.PHONY : tests/test2.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... test"
	@echo "... package"
	@echo "... edit_cache"
	@echo "... package_source"
	@echo "... check"
	@echo "... tree-cli"
	@echo "... tree"
	@echo "... unit_tests_coverage"
	@echo "... unit_tests"
	@echo "... install/local"
	@echo "... install"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... examples/tree-cli.o"
	@echo "... examples/tree-cli.i"
	@echo "... examples/tree-cli.s"
	@echo "... sources/tree.o"
	@echo "... sources/tree.i"
	@echo "... sources/tree.s"
	@echo "... tests/main.o"
	@echo "... tests/main.i"
	@echo "... tests/main.s"
	@echo "... tests/test1.o"
	@echo "... tests/test1.i"
	@echo "... tests/test1.s"
	@echo "... tests/test2.o"
	@echo "... tests/test2.i"
	@echo "... tests/test2.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

