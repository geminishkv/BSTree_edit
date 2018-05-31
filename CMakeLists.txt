cmake_minimum_required(VERSION 3.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(BUILD_EXAMPLES "Build examples" ON)
option(BUILD_TESTS "Build tests" ON)

include(cmake/HunterGate.cmake)

HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.22.0.tar.gz"
    SHA1 "f91a01c6e0eb53b1dc55a6442cd93580db91da07"
)

project(tree)

include_directories("${CMAKE_SOURCE_DIR}/include")

hunter_add_package(Catch)
find_package(Catch CONFIG REQUIRED)

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

if(BUILD_EXAMPLES)
  add_executable(tree-cli "${CMAKE_CURRENT_SOURCE_DIR}/examples/tree-cli.cpp")
  target_link_libraries(tree-cli tree)
  install(TARGETS tree-cli
    RUNTIME DESTINATION bin
  )
endif()

install(TARGETS tree 
    EXPORT tree-config
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
)

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION include)
install(EXPORT tree-config DESTINATION cmake)

if(BUILD_TESTS)
  enable_testing()
  file(GLOB ${PROJECT_NAME}_TEST_SOURCES tests/*.cpp)
  add_executable(check ${${PROJECT_NAME}_TEST_SOURCES})
  target_link_libraries(check tree Catch::Catch)
  add_test(NAME check COMMAND check "-s" "-r" "compact" "--use-colour" "yes")
endif()

include(CPackConfig.cmake)




