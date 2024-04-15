#!/bin/bash

# Set the necessary variables
BUILD_DIR="build"

# Create the build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# Clean the build directory
rm -rf "$BUILD_DIR"/*

# Change to the build directory
cd "$BUILD_DIR"

# Run the build command
cmake ..
make -j$nproc

# Print a success message
echo "Build completed successfully!"