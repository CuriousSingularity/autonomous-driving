cmake_minimum_required(VERSION 3.12)
project(AutonomousDriving)

# Add your source files here
set(SOURCES
    src/main.cpp
)

# Add any additional include directories here
include_directories(
    include
)

# Add any additional library directories here
link_directories(
    lib
)

# Set the output directory for the compiled binaries
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Add your executable target
add_executable(${PROJECT_NAME} ${SOURCES})

# Link any libraries to your executable
target_link_libraries(${PROJECT_NAME} ${LIBRARIES})
