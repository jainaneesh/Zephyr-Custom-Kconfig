
# Consider dependencies only in project.
set(CMAKE_DEPENDS_IN_PROJECT_ONLY OFF)

# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_ASM
  "/opt/toolchains/zephyr/arch/xtensa/core/window_vectors.S" "/workspace/apps/05_solution_pwm_knob/build/zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/window_vectors.S.obj"
  "/opt/toolchains/zephyr/arch/xtensa/core/xtensa_asm2_util.S" "/workspace/apps/05_solution_pwm_knob/build/zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/xtensa_asm2_util.S.obj"
  )
set(CMAKE_ASM_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_ASM
  "CONFIG_APP_BUILD_USE_FLASH_SECTIONS"
  "ESP_PLATFORM"
  "KERNEL"
  "K_HEAP_MEM_POOL_SIZE=4096"
  "PICOLIBC_LONG_LONG_PRINTF_SCANF"
  "__LINUX_ERRNO_EXTENSIONS__"
  "__ZEPHYR_SUPERVISOR__"
  "__ZEPHYR__=1"
  )

# The include file search paths:
set(CMAKE_ASM_TARGET_INCLUDE_PATH
  "/opt/toolchains/zephyr/kernel/include"
  "/opt/toolchains/zephyr/arch/xtensa/include"
  "zephyr/include/generated/zephyr"
  "/opt/toolchains/zephyr/include"
  "zephyr/include/generated"
  "/opt/toolchains/zephyr/soc/espressif"
  "/opt/toolchains/zephyr/soc/espressif/common/include"
  "/opt/toolchains/zephyr/soc/espressif/esp32s3/."
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/include/bt"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../esp_shared/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../esp_shared/components/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../port/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/efuse/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/efuse/private_include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/efuse/esp32s3/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/efuse/esp32s3/private_include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_adc/deprecated/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_common/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_hw_support/dma"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_hw_support/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_hw_support/include/esp_private"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_hw_support/include/hal"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_hw_support/include/soc"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_hw_support/include/soc/esp32s3"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_hw_support/port/esp32s3"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_hw_support/port/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_rom/esp32s3"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_rom/esp32s3/ld"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_rom/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_rom/include/esp32s3"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_system/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_system/include/esp_private"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_system/port/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_system/port/include/private"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/hal/esp32s3/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/hal/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/hal/include/hal"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/hal/platform_port/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/log/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/soc/esp32s3/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/soc/esp32s3/ld"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/soc/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/xtensa/esp32s3/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/xtensa/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/xtensa/include/esp_private"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/xtensa/include/xtensa"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_timer/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_timer/private_include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/driver/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/driver/deprecated"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/driver/gpio/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/driver/uart/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/driver/touch_sensor/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/driver/touch_sensor/esp32s3/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/driver/spi/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/spi_flash/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/spi_flash/include/spi_flash"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_pm/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/bootloader_support/bootloader_flash/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/bootloader_support/private_include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/bootloader_support/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/heap/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_psram/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_mm/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_netif/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_coex/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_phy/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_phy/include/esp_private"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_phy/esp32s3/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_wifi/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/esp_event/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/esp_supplicant/src"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/esp_supplicant/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/include/esp_supplicant"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/port/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/src"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/src/crypto"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/src/utils"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/wpa_supplicant/src/eap_peer"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../../components/mbedtls/port/include"
  "/opt/toolchains/modules/hal/espressif/zephyr/esp32s3/../port/include/boot"
  "/workspace/modules/display_brightness/."
  "/opt/toolchains/zephyr/lib/libc/common/include"
  )

# The set of dependency files which are needed:
set(CMAKE_DEPENDS_DEPENDENCY_FILES
  "/opt/toolchains/zephyr/arch/xtensa/core/cpu_idle.c" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/cpu_idle.c.obj" "gcc" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/cpu_idle.c.obj.d"
  "/opt/toolchains/zephyr/arch/xtensa/core/fatal.c" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/fatal.c.obj" "gcc" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/fatal.c.obj.d"
  "/opt/toolchains/zephyr/arch/xtensa/core/irq_manage.c" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/irq_manage.c.obj" "gcc" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/irq_manage.c.obj.d"
  "/opt/toolchains/zephyr/arch/xtensa/core/prep_c.c" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/prep_c.c.obj" "gcc" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/prep_c.c.obj.d"
  "/opt/toolchains/zephyr/arch/xtensa/core/thread.c" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/thread.c.obj" "gcc" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/thread.c.obj.d"
  "/opt/toolchains/zephyr/arch/xtensa/core/vector_handlers.c" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/vector_handlers.c.obj" "gcc" "zephyr/arch/arch/xtensa/core/CMakeFiles/arch__xtensa__core.dir/vector_handlers.c.obj.d"
  )

# Targets to which this target links.
set(CMAKE_TARGET_LINKED_INFO_FILES
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")
