cmake_minimum_required(VERSION 3.4)
set(CMAKE_CXX_STANDARD 14)
project(cs-ssa)

# Set LLVM_HOME in order not to automatically set LLVM_DIR
set(ENV{LLVM_DIR} /usr/lib/llvm-14/lib/cmake/llvm)

# Option to run print statements
option(PRINT "To run the print statements" OFF)

if (PRINT)
    add_definitions(-DPRINT=1)
endif()

# Find LLVM package
find_package(LLVM REQUIRED CONFIG)
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

# Include directories
include_directories(/usr/local/include/slim)
include_directories("./include")

# Import the slim library
add_library(slim SHARED IMPORTED)
set_target_properties(slim PROPERTIES IMPORTED_LOCATION "/usr/local/lib/libslim.so")

# Map LLVM components to library names
llvm_map_components_to_libnames(llvm_libs ${LLVM_TARGETS_TO_BUILD} all)

# Create the executable
add_executable(${PROJECT_NAME} main.cpp)

# Link slim and LLVM libraries to the executable
target_link_libraries(${PROJECT_NAME} slim LLVM)

