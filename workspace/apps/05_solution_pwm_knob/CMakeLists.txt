cmake_minimum_required(VERSION 3.22.0)

set(ZEPHYR_EXTRA_MODULES "${CMAKE_SOURCE_DIR}/../../modules/display_brightness")
find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(adc_demo)

target_sources(app PRIVATE src/main.c)