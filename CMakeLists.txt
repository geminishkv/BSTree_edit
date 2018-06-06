cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(BUILD_EXAMPLES "Build examples" ON)
option(BUILD_TESTS "Build tests" ON)

include(cmake/HunterGate.cmake)

HunterGate(
    URL "https://github.com/geminishkv/hunter/archive/v0.19.137.1.tar.gz"
    SHA1 "116a39be623b7cf2e85a3d229babcec07506406a"
)

project(tree)

hunter_add_package(Catch)
find_package(Catch CONFIG REQUIRED)

include_directories("${CMAKE_SOURCE_DIR}/include")

set(TREE_VERSION_MAJOR 0)
set(TREE_VERSION_MINOR 1)
set(TREE_VERSION_PATCH 0)
set(TREE_VERSION_TWEAK 0)

set(TREE_VERSION 
${TREE_VERSION_MAJOR}.${TREE_VERSION_MINOR}.${TREE_VERSION_PATCH}.${TREE_VERSION_TWEAK})
set(TREE_VERSION_STRING "v${TREE_VERSION}")

add_library(tree STATIC ${CMAKE_CURRENT_SOURCE_DIR}/sources/tree.cpp)

target_include_directories(tree PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>
)

install(TARGETS tree 
    EXPORT tree-config
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
)

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION include)
install(EXPORT tree-config DESTINATION cmake)

if(BUILD_EXAMPLES)
  add_executable(tree-cli "${CMAKE_CURRENT_SOURCE_DIR}/examples/tree-cli.cpp")
 #file(GLOB EXAMPLE_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/examples/*.cpp")
  target_link_libraries(tree-cli tree)
  install(TARGETS tree-cli
    RUNTIME DESTINATION bin
  )
endif()

if(BUILD_TESTS)
  enable_testing()
  file(GLOB ${PROJECT_NAME}_TEST_SOURCES tests/*.cpp)
 #message(STATUS "PROJECT_NAME: [${PROJECT_NAME}]")
  add_executable(check ${${PROJECT_NAME}_TEST_SOURCES})
 #message(STATUS "PROJECT_NAME_TEST_SOURCES: [${${PROJECT_NAME}_TEST_SOURCES}]")
  target_link_libraries(check tree Catch::Catch)
 #message(STATUS "DEPENDS LIBS: [${DEPENDS_LIBRARIES}]") // if usage next type:
 #target_link_libraries(check tree tui ${DEPENDS_LIBRARIES})
  add_test(NAME check COMMAND check "-s" "-r" "compact" "--use-colour" "yes")
    if (${CMAKE_BUILD_TYPE} MATCHES "Coverage")
    set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}")
    include(CodeCoverage)
    set(CMAKE_CXX_FLAGS "-g -O0 -Wall -fprofile-arcs -ftest-coverage")
    set(LCOV_REMOVE_EXTRA "${CMAKE_CURRENT_SOURCE_DIR}/tests/*" "${CMAKE_CURRENT_SOURCE_DIR}/sources/*.cpp" "/Library/Developer/CommandLineTools/usr/include/c++/v1/*")
    add_executable(unit_tests ${${PROJECT_NAME}_SOURCES} ${${PROJECT_NAME}_TEST_SOURCES})
    target_link_libraries(unit_tests tree Catch::Catch)
    setup_target_for_coverage(unit_tests_coverage unit_tests coverage)
    else()
    add_test(NAME unit_tests COMMAND unit_tests "-s" "-r" "compact" "--use-colour" "yes")
    endif()
endif()

include(CPackConfig.cmake)
