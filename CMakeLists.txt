cmake_minimum_required(VERSION 3.14)
project(labtask)

# Set C++ standard to 14
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Include FetchContent for GoogleTest
include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/release-1.12.1.zip # Correctly declare Googletest
)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Enable testing
enable_testing()

# Add test executable
add_executable(labtask_test labtask.cpp)

# Link GoogleTest
target_link_libraries(labtask_test gtest gtest_main)

# Register the test with CTest
add_test(NAME LabTaskTest COMMAND labtask_test)
