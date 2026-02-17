#!/bin/env bash

mkdir -p riscv-maix-tools/bin && mv src/hello/hello riscv-maix-tools/bin/hello
7z a riscv-maix-tools.7z riscv-maix-tools
