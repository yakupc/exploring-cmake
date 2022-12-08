# Disable in-source builds to prevent source tree corruption.
if(" ${CMAKE_SOURCE_DIR}" STREQUAL " ${CMAKE_BINARY_DIR}")
  message(FATAL_ERROR "
FATAL: In-source builds are not allowed.
       You should create a separate directory for build files.
")
endif()

cmake_minimum_required(VERSION 3.1...3.25)

project(
  CMakeExample
  VERSION 1.0
  LANGUAGES CXX)
  
set( CMAKE_DEBUG_POSTFIX  "d" )

add_library(MyLib myLib.cpp myLib.hpp)

add_executable(MyApp myApp.cpp)

target_link_libraries(MyApp PRIVATE MyLib)

enable_testing()
add_test(NAME MyApp COMMAND MyApp)