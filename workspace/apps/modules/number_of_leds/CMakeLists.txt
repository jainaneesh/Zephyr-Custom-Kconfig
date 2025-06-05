# Check if LEDs count is set in Kconfig
if(CONFIG_PWM_LED_COUNT)

    # Add your include directory
    zephyr_include_directories(.)

    # Add the source file you want to compile
    zephyr_library_sources(number_of_leds.c)
endif()