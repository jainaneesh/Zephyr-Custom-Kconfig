#include <zephyr/kernel.h>
#include "number_of_leds.h"

void number_of_leds(void){
    printk("Number of LEDs configured is: %d\r\n",CONFIG_PWM_LED_COUNT);
}