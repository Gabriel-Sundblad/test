#![no_std]

use nrf52833_hal as hal;
use hal::pac::{self, RTC0};
use hal::rtc::{Rtc, RtcInterrupt};
use cortex_m::asm;
use cortex_m::peripheral::NVIC;
use rtt_target::{rprintln, rtt_init_print};
use hal::clocks::{Clocks, ExternalOscillator, Internal, LfOscStarted};

pub struct RTC {
    rtc: Rtc<RTC0>,
    next_compare: u32,
    seconds: u32,
}

impl RTC {
    pub fn new(
        rtc0: pac::RTC0,
        clocks: &'static Clocks<ExternalOscillator, Internal, LfOscStarted>,
        nvic: &mut NVIC,
    ) -> Self {
        rprintln!("--- RTC time display start ---");

        let mut rtc = Rtc::new(rtc0, 4095).unwrap();
        rtc.enable_event(RtcInterrupt::Compare0);
        rtc.enable_interrupt(RtcInterrupt::Compare0, Some(nvic));

        unsafe {
            (*RTC0::ptr()).cc[0].write(|w| w.bits(8));
            (*RTC0::ptr()).tasks_start.write(|w| w.bits(1));
        }

        rprintln!("RTC started");

        Self {
            rtc,
            next_compare: 8,
            seconds: 86380,
        }
    }

    pub fn handle_interrupt(&mut self) {
        unsafe {
            (*RTC0::ptr()).events_compare[0].write(|w| w.bits(0));

            self.seconds = self.seconds.wrapping_add(1);
            let hrs = (self.seconds / 3600) % 24;
            let mins = (self.seconds / 60) % 60;
            let secs = self.seconds % 60;

            rprintln!("Time: {:02}:{:02}:{:02}", hrs, mins, secs);

            self.next_compare += 8;
            (*RTC0::ptr()).cc[0].write(|w| w.bits(self.next_compare));
        }
    }

    pub fn get_time(&self) -> (u32, u32, u32) {
        let hrs = (self.seconds / 3600) % 24;
        let mins = (self.seconds / 60) % 60;
        let secs = self.seconds % 60;
        (hrs, mins, secs)
    }
}
