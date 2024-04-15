# Use the latest version of Ubuntu as the base image
FROM ubuntu:latest

# Define build arguments
ARG DOCKER_NAME=AutonomousDriving
ARG HOME=/home/${DOCKER_NAME}

# Install necessary packages
RUN apt-get update && apt-get install -y \
        cmake \
        vim \
        tar \
        xz-utils \
        clang \
        g++-10

# Set the default compiler to g++-10
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 --slave /usr/bin/g++ g++ /usr/bin/g++-10

# Copy the necessary files from the current directory to the container's home directory
COPY . ${HOME}/

# Set the working directory to the container's home directory
WORKDIR ${HOME}

# Define the default command to be executed when the container starts
CMD ["/bin/bash"]