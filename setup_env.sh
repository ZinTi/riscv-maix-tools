#!/bin/env bash

# Install dependencies
sudo apt install libmpc-dev -y
sudo apt install cmake -y

# Download and extract riscv-gnu-toolchain
curl -L --retry 3 -O https://github.com/riscv-collab/riscv-gnu-toolchain/releases/download/2026.02.13/riscv64-glibc-ubuntu-24.04-gcc.tar.xz
mv riscv64-glibc-ubuntu-24.04-gcc.tar.xz /opt/
tar -xf /opt/riscv64-glibc-ubuntu-24.04-gcc.tar.xz -C /opt/
rm /opt/riscv64-glibc-ubuntu-24.04-gcc.tar.xz

# Set environment variables
echo 'export PATH="${PATH}:/opt/riscv/bin"' | sudo tee -a /etc/profile
source /etc/profile

# Print version information
riscv64-unknown-linux-gnu-g++ --version
cmake --version
