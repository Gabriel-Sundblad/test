#![no_std]

use nrf52833_hal as hal;
use hal::gpio::{Output, Pin, PushPull};
use embedded_hal::digital::v2::OutputPin;
use cortex_m::asm::delay;

pub struct Buzzer {
    buzzer_1: Pin<Output<PushPull>>,
    buzzer_2: Pin<Output<PushPull>>,
}

impl Buzzer {
    pub fn new(
        buzzer_1: Pin<Output<PushPull>>,
        buzzer_2: Pin<Output<PushPull>>,
    ) -> Self {
        Buzzer { buzzer_1, buzzer_2 }
    }

    pub fn beep(&mut self, duration: u32) {
        for _ in 0..duration {
            self.buzzer_1.set_high().ok();
            self.buzzer_2.set_low().ok();
            delay(500_000);

            self.buzzer_1.set_low().ok();
            self.buzzer_2.set_high().ok();
            delay(500_000);
        }
    }
}
