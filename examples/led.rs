#![no_std]

use nrf52833_hal as hal;
use hal::gpio::{Level, Output, Pin, PushPull};
use hal::pwm::*;
use hal::pac::PWM0;
use embedded_hal::digital::v2::InputPin;

pub struct Led {
    pwm: Pwm<PWM0>,
    duty: u16,
}

const MAX_DUTY: u16 = 1000;
const DUTY_STEP: u16 = 100;

impl Led {
    pub fn new(pwm: PWM0, led_pin: Pin<Output<PushPull>>) -> Self {
        let mut pwm = Pwm::new(pwm);
        pwm.set_prescaler(Prescaler::Div16);
        pwm.set_output_pin(Channel::C0, led_pin);
        pwm.set_max_duty(MAX_DUTY);
        pwm.set_duty_off(Channel::C0, 0);
        pwm.enable();

        Led { pwm, duty: MAX_DUTY / 2 }
    }

    pub fn toggle(&mut self) {
        if self.duty > 0 {
            self.pwm.set_duty_off(Channel::C0, 0);
            self.duty = 0;
        } else {
            self.pwm.set_duty_off(Channel::C0, MAX_DUTY / 2);
            self.duty = MAX_DUTY / 2;
        }
    }

    pub fn brighten(&mut self) {
        if self.duty + DUTY_STEP <= MAX_DUTY {
            self.duty += DUTY_STEP;
        } else {
            self.duty = MAX_DUTY;
        }
        self.pwm.set_duty_off(Channel::C0, self.duty);
    }

    pub fn dim(&mut self) {
        if self.duty >= DUTY_STEP {
            self.duty -= DUTY_STEP;
        } else {
            self.duty = 0;
        }
        self.pwm.set_duty_off(Channel::C0, self.duty);
    }
}