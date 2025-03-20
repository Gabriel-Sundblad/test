#![no_main]
#![no_std]

use {
    nrf52833_hal as hal,
    panic_rtt_target as _,
    hal::gpio::{Level, Output, Pin, PushPull},
    cortex_m::asm,
    rtt_target::{rprintln, rtt_init_print},
}

type BuzzerPin = Pin<Output<PushPull>>;


mod app {
    use super::*;

    #[shared]
    struct Shared {}

    #[local]
    struct Local {
        buzzer_1: BuzzerPin,
        buzzer_2: BuzzerPin,
    }
    #[init]
    fn init(cx: init::Context) -> (Shared, Local) {

        let p0 = hal::gpio::p0::Parts::new(cx.device.P0);

        let mut buzzer_1: BuzzerPin = p0.p0_28.into_push_pull_output(Level::Low).degrade();
        let mut buzzer_2: BuzzerPin = p0.p0_02.into_push_pull_output(Level::High).degrade();

        // Test loop — generate square wave manually
        loop {
            buzzer_1.set_high().unwrap();
            buzzer_2.set_low().unwrap();
            delay(1_000_000); // adjust for tone frequency

            buzzer_1.set_low().unwrap();
            buzzer_2.set_high().unwrap();
            delay(1_000_000);
        }
    }
}