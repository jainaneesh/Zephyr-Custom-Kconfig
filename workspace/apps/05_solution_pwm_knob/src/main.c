#include <stdio.h>
#include <zephyr/kernel.h>
#include <zephyr/drivers/pwm.h>
#include <zephyr/drivers/adc.h>

#ifdef CONFIG_DISPLAY_BRIGHTNESS
#include "display_brightness.h"
#endif

#ifdef CONFIG_PWM_LED_COUNT
#include "number_of_leds.h"
#endif

// Settings
static const int32_t sleep_time_ms = 500;

// Get Devicetree configurations
#define MY_ADC_CH DT_ALIAS(my_adc_channel)
static const struct device *adc = DEVICE_DT_GET(DT_ALIAS(my_adc));
static const struct adc_channel_cfg adc_ch = ADC_CHANNEL_CFG_DT(MY_ADC_CH);

#if CONFIG_PWM_LED_COUNT == 3
	static const struct pwm_dt_spec pwm_led_0 = PWM_DT_SPEC_GET(DT_ALIAS(led_0));
	static const struct pwm_dt_spec pwm_led_1 = PWM_DT_SPEC_GET(DT_ALIAS(led_1));
	static const struct pwm_dt_spec pwm_led_2 = PWM_DT_SPEC_GET(DT_ALIAS(led_2));
#endif

#if CONFIG_PWM_LED_COUNT == 2
	static const struct pwm_dt_spec pwm_led_0 = PWM_DT_SPEC_GET(DT_ALIAS(led_0));
	static const struct pwm_dt_spec pwm_led_1 = PWM_DT_SPEC_GET(DT_ALIAS(led_1));
#endif

#if CONFIG_PWM_LED_COUNT == 1
	static const struct pwm_dt_spec pwm_led_0 = PWM_DT_SPEC_GET(DT_ALIAS(led_0));
#endif

int main(void)
{
	int ret0;
	int ret1;
	int ret2;
	uint16_t buf;
	int32_t vref_mv;
	uint32_t pulse_ns_0;
	uint32_t pulse_ns_1;
	uint32_t pulse_ns_2;

	// Get Vref (mV) from Devicetree property
	vref_mv = DT_PROP(MY_ADC_CH, zephyr_vref_mv);

	// Buffer and options for ADC (defined in adc.h)
	struct adc_sequence seq = {
		.channels = BIT(adc_ch.channel_id),
		.buffer = &buf,
		.buffer_size = sizeof(buf),
		.resolution = DT_PROP(MY_ADC_CH, zephyr_resolution)
	};

	// Make sure that the ADC was initialized
	if (!device_is_ready(adc)) {
		printk("ADC peripheral is not ready\r\n");
		return 0;
	}

	// Make sure that the PWM LED was initialized
	if (!pwm_is_ready_dt(&pwm_led_0)) {
		printk("PWM is not ready\r\n");
		return 0;
	}

	// Configure ADC channel
	ret0 = adc_channel_setup(adc, &adc_ch);
	if (ret0 < 0) {
		printk("Could not set up ADC\r\n");
		return 0;
	}
	//printk("PWM_0 ready: %d\n", pwm_is_ready_dt(&pwm_led_0));
	//printk("PWM_1 ready: %d\n", pwm_is_ready_dt(&pwm_led_1));
	//printk("PWM_2 ready: %d\n", pwm_is_ready_dt(&pwm_led_2));
	// Do forever
	while (1) {

		// Sample ADC
		ret0 = adc_read(adc, &seq);
		// ret1 = adc_read(adc, &seq);
		// ret2 = adc_read(adc, &seq);
		if (ret0 < 0) {
			printk("Could not read ADC %d\r\n",ret0);
			continue;
		}

		// Calculate pulse width
		#if CONFIG_PWM_LED_COUNT == 1
			pulse_ns_0 = pwm_led_0.period / ((1 << seq.resolution) / (float)buf);
			ret0 = pwm_set_dt(&pwm_led_0, pwm_led_0.period, pulse_ns_0);
			printk("Buffer Value: %4d\t Pulse 1: %4d\r\n", buf, pulse_ns_0);
		#endif

		#if CONFIG_PWM_LED_COUNT == 2
			pulse_ns_0 = pwm_led_0.period / ((1 << seq.resolution) / (float)buf);
			pulse_ns_1 = pwm_led_1.period / ((1 << seq.resolution) / (float)buf);
			ret0 = pwm_set_dt(&pwm_led_0, pwm_led_0.period, pulse_ns_0);
			ret1 = pwm_set_dt(&pwm_led_1, pwm_led_1.period, pulse_ns_1);
			printk("Buffer Value: %4d\t Pulse 1: %4d\t, Pulse 2: %4d\t\r\n", buf, pulse_ns_0, pulse_ns_1);
		#endif

		#if CONFIG_PWM_LED_COUNT == 3
			pulse_ns_0 = pwm_led_0.period / ((1 << seq.resolution) / (float)buf);
			pulse_ns_1 = pwm_led_1.period / ((1 << seq.resolution) / (float)buf);
			pulse_ns_2 = pwm_led_2.period / ((1 << seq.resolution) / (float)buf);
			ret0 = pwm_set_dt(&pwm_led_0, pwm_led_0.period, pulse_ns_0);
			ret1 = pwm_set_dt(&pwm_led_1, pwm_led_1.period, pulse_ns_1);
			ret2 = pwm_set_dt(&pwm_led_2, pwm_led_2.period, pulse_ns_2);
			printk("Buffer Value: %4d\t Pulse 1: %4d\t Pulse 2: %4d\t Pulse 3: %4d\r\n", buf, pulse_ns_0, pulse_ns_1, pulse_ns_2);
		#endif

		#ifdef CONFIG_DISPLAY_BRIGHTNESS
		display_brightness();
		printk("Pulse: %u ns\r\n", pulse_ns);
		#endif

		// Set LED PWM pulse width
		// ret0 = pwm_set_dt(&pwm_led_0, pwm_led_0.period, pulse_ns_0);
		//printk("%d Period 0\n", pwm_led_0.period);
		//printk("%d set to pulse width\n", ret0);
		// ret1 = pwm_set_dt(&pwm_led_1, pwm_led_1.period, pulse_ns_0);
		// ret1 = pwm_set_dt(&pwm_led_1, 1000, 500); // GPIO6 (CH1)
		//printk("%d Period 1\n", pwm_led_1.period);
		//printk("%d set to pulse width\n", pwm_led_1.period);
		// ret2 = pwm_set_dt(&pwm_led_2, pwm_led_2.period, pulse_ns_0);
		// ret2 = pwm_set_dt(&pwm_led_2, 1000, 500); // GPIO7 (CH2)
		//printk("%d Period 2\n", pwm_led_2.period);
		//printk("%d set to pulse width\n", ret2);
		if (ret0 || ret1 || ret2) {
			printk("Error %d %d %d: failed to set pulse width\n", ret0, ret1, ret2);
			return 0;
		}

		// Sleep
		k_msleep(sleep_time_ms);
	}

	return 0;
}
