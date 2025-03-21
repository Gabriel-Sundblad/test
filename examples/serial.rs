#![no_std]

use {
    nrf52833_hal as hal,
    hal::clocks::{Clocks, ExternalOscillator, Internal, LfOscStarted},
    hal::pac::{CLOCK, USBD},
    hal::usbd::{UsbPeripheral, Usbd},
    rtt_target::{rprintln, rtt_init_print},
    usb_device::{
        class_prelude::UsbBusAllocator,
        device::{UsbDevice, StringDescriptors, UsbDeviceBuilder, UsbVidPid},
    },
    usb_device::prelude::*,
    usbd_serial::{SerialPort, USB_CLASS_CDC},
};
pub static mut CLOCKS: Option<Clocks<ExternalOscillator, Internal, LfOscStarted>> = None;

static mut USB_BUS: Option<UsbBusAllocator<Usbd<UsbPeripheral<'static>>>> = None;

pub struct Serial {
    usb_dev: UsbDevice<'static, Usbd<UsbPeripheral<'static>>>,
    serial: SerialPort<'static, Usbd<UsbPeripheral<'static>>>,
}

impl Serial {
    pub fn new(clock: CLOCK, usbd: USBD) -> Self {
        rprintln!("Initializing USB Serial...");

        let clocks = Clocks::new(clock)
            .enable_ext_hfosc()
            .start_lfclk();
        unsafe {
            CLOCKS.replace(clocks);
        }

        let clocks_ref: &'static Clocks<ExternalOscillator, Internal, LfOscStarted> =
            unsafe { CLOCKS.as_ref().unwrap() };

        let usb_bus = UsbBusAllocator::new(Usbd::new(UsbPeripheral::new(usbd, clocks_ref)));
        unsafe {
            USB_BUS.replace(usb_bus);
        }

        let usb_bus_ref: &'static UsbBusAllocator<Usbd<UsbPeripheral<'static>>> =
            unsafe { USB_BUS.as_ref().unwrap() };

        let serial = SerialPort::new(usb_bus_ref);
        let usb_dev = UsbDeviceBuilder::new(usb_bus_ref, UsbVidPid(0x16c0, 0x27dd))
            .strings(
                &[
                    StringDescriptors::default()
                        .manufacturer("Fake company")
                        .product("Serial port")
                        .serial_number("TEST"),
                ],
            )
            .unwrap()
            .device_class(USB_CLASS_CDC)
            .max_packet_size_0(64)
            .unwrap()
            .build();

        Serial { usb_dev, serial }
    }

    pub fn poll(&mut self) {
        let mut buf = [0u8; 64];

        if self.usb_dev.poll(&mut [&mut self.serial]) {
            match self.serial.read(&mut buf) {
                Ok(count) if count > 0 => {
                    for &byte in &buf[..count] {
                        rprintln!("Received byte: {}", byte as char);
                        self.write(&[byte]);
                    }
                }
                _ => {}
            }
        }
    }

    pub fn write(&mut self, data: &[u8]) {
        match self.serial.write(data) {
            Ok(_) => {
                self.usb_dev.poll(&mut [&mut self.serial]);
            }
            Err(_) => {
                rprintln!("Error writing data");
            }
        }
    }
}
