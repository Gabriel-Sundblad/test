#![no_main]
#![no_std]

use {
    nrf52833_hal as hal,
    panic_rtt_target as _,
    embedded_hal::digital::v2::OutputPin,
    hal::gpio::{Level, Output, Pin, PushPull},
}

app