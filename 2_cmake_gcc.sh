#!/bin/sh

# Создаём проекты для GCC 13 в папке build_gcc, используя конфиг CMakeLists.txt из папки game
cmake game -B build_gcc -G "Unix Makefiles" \
    -D CMAKE_C_COMPILER=gcc-13 -D CMAKE_CXX_COMPILER=g++-13 \
    -D CMAKE_BUILD_TYPE=Debug
