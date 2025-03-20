//! display.rs (uppdaterad version utan .degrade, med konkreta typer)
#![no_std]

use nrf52833_hal::{
    pac::SPIM0,
    gpio::{Output, PushPull, Level, Pin, p0::{P0_04, P0_05, P0_11, P0_31}, p1::P1_09},
    spim::{Spim, Frequency, MODE_0},
};
use embedded_graphics::{
    mono_font::{ascii::FONT_10X20, MonoTextStyle},
    pixelcolor::BinaryColor,
    prelude::*,
    text::Text,
    geometry::Point,
};
use ssd1306::{
    prelude::*,
    Ssd1306,
    size::DisplaySize128x32,
    mode::BufferedGraphicsMode,
    rotation::DisplayRotation,
};
use display_interface_spi::SPIInterface;
use heapless::String;
use embedded_hal::digital::v2::OutputPin;
use core::fmt::Write;

#[derive(Clone, Copy)]
pub enum MenuState {
    Clock,
    Temperature,
    Settings,
}

pub struct Display {
    display: Ssd1306<
        SPIInterface<Spim<SPIM0>, P1_09<Output<PushPull>>, P0_11<Output<PushPull>>>,
        DisplaySize128x32,
        BufferedGraphicsMode<DisplaySize128x32>,
    >,
    menu_state: MenuState,
}

impl Display {
    pub fn new(
        spim0: SPIM0,
        sck: P0_05<Output<PushPull>>,
        mosi: P0_04<Output<PushPull>>,
        dc: P1_09<Output<PushPull>>,
        rst: &mut P0_31<Output<PushPull>>,
        cs: P0_11<Output<PushPull>>,
    ) -> Self {
        let _ = rst.set_low();
        cortex_m::asm::delay(10_000);
        let _ = rst.set_high();

        let spim = Spim::new(
            spim0,
            nrf52833_hal::spim::Pins {
                sck: Some(sck.into()),
                mosi: Some(mosi.into()),
                miso: None,
            },
            Frequency::M4,
            MODE_0,
            0,
        );

        let interface = SPIInterface::new(spim, dc, cs);
        let mut display = Ssd1306::new(interface, DisplaySize128x32, DisplayRotation::Rotate0)
            .into_buffered_graphics_mode();

        let _ = display.init();
        let _ = display.flush();

        Self {
            display,
            menu_state: MenuState::Clock,
        }
    }

    pub fn update_menu(&mut self) {
        match self.menu_state {
            MenuState::Clock => self.show_time(12, 30, 45),
            MenuState::Temperature => self.show_temperature(25.3),
            MenuState::Settings => self.show_settings(),
        }
    }

    pub fn next_menu(&mut self) {
        self.menu_state = match self.menu_state {
            MenuState::Clock => MenuState::Temperature,
            MenuState::Temperature => MenuState::Settings,
            MenuState::Settings => MenuState::Clock,
        };
    }

    pub fn show_time(&mut self, hours: u32, minutes: u32, seconds: u32) {
        let mut buffer: String<16> = String::new();
        let _ = write!(buffer, "{:02}:{:02}:{:02}", hours, minutes, seconds);

        let _ = self.display.clear();
        let style = MonoTextStyle::new(&FONT_10X20, BinaryColor::On);
        let _ = Text::new(&buffer, Point::new(20, 20), style).draw(&mut self.display);
        let _ = self.display.flush();
    }

    pub fn show_temperature(&mut self, temp: f32) {
        let mut buffer: String<16> = String::new();
        let _ = write!(buffer, "Temp: {:.1}°C", temp);

        let _ = self.display.clear();
        let style = MonoTextStyle::new(&FONT_10X20, BinaryColor::On);
        let _ = Text::new(&buffer, Point::new(20, 20), style).draw(&mut self.display);
        let _ = self.display.flush();
    }

    pub fn show_settings(&mut self) {
        let buffer = "Settings";

        let _ = self.display.clear();
        let style = MonoTextStyle::new(&FONT_10X20, BinaryColor::On);
        let _ = Text::new(buffer, Point::new(30, 20), style).draw(&mut self.display);
        let _ = self.display.flush();
    }

    pub fn get_menu_state(&self) -> MenuState {
        self.menu_state
    }
}
