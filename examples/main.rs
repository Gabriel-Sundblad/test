#![no_main]
#![no_std]

use cortex_m::asm;
use panic_rtt_target as _;
use rtt_target::{rprintln, rtt_init_print};

// Import modules
mod led;
mod serial;
mod thermistor;
mod buzzer;
mod display;
mod rtc;

#[rtic::app(device = nrf52833_hal::pac, dispatchers = [TIMER0])]
mod app {
    use super::*;
    use systick_monotonic::{fugit, Systick};
    use nrf52833_hal::{pac, gpio::p0::Parts as P0Parts};
    use nrf52833_hal::gpio::p1::Parts as P1Parts;
    use nrf52833_hal::gpio::Level;
    use fugit::ExtU32;
    use embedded_hal::digital::v2::InputPin;

    const TIMER_HZ: u32 = 1000; // 1ms precision

    #[monotonic(binds = SysTick, default = true)]
    type MyMono = Systick<TIMER_HZ>;

    #[shared]
    struct Shared {
        serial: serial::Serial,
        rtc: rtc::RTC,
        display: display::Display
    }

    #[local]
    struct Local {
        led: led::Led,
        buzzer: buzzer::Buzzer,
        thermistor: thermistor::Thermistor,
        button_toggle: nrf52833_hal::gpio::Pin<nrf52833_hal::gpio::Input<nrf52833_hal::gpio::PullUp>>,
        button_brighten: nrf52833_hal::gpio::Pin<nrf52833_hal::gpio::Input<nrf52833_hal::gpio::PullUp>>,
        button_dimmer: nrf52833_hal::gpio::Pin<nrf52833_hal::gpio::Input<nrf52833_hal::gpio::PullUp>>,
        prev_toggle: bool,
        prev_brighten: bool,
        prev_dimmer: bool,
    }

    #[init]
    fn init(cx: init::Context) -> (Shared, Local, init::Monotonics) {
        rtt_init_print!();
        rprintln!("Alarm Clock Booting...");
        
        // Hämta core och device
        let mut cp = cx.core;

        let mono = Systick::new(cp.SYST, 64_000_000);
        // Destrukturera periferierna
        let pac::Peripherals {
            SAADC,
            RTC0,
            PWM0,
            SPIM0,
            P0,
            P1,
            CLOCK,
            USBD,
            ..
        } = cx.device;
        
        // Initiera P0 och P1 delar
        let port0 = P0Parts::new(P0);
        let port1 = P1Parts::new(P1);
        
        // --- Display --- \n
        // Hämta de nödvändiga pinnarna från portarna
        let sck  = port0.p0_05.into_push_pull_output(Level::Low);
        let mosi = port0.p0_04.into_push_pull_output(Level::Low);
        let mut rst = port0.p0_31.into_push_pull_output(Level::Low);
        let cs   = port0.p0_11.into_push_pull_output(Level::Low);
        let dc   = port1.p1_09.into_push_pull_output(Level::Low);
        
        // Anropa den uppdaterade display::Display::new() med konkreta typer (inga degrade)
        let display = display::Display::new(
            SPIM0,
            sck,   // typ: P0_05<Output<PushPull>>
            mosi,  // typ: P0_04<Output<PushPull>>
            dc,    // typ: P1_09<Output<PushPull>>
            &mut rst, // typ: &mut P0_31<Output<PushPull>>
            cs,    // typ: P0_11<Output<PushPull>>
        );
        
        // --- LED --- 
        let led_pin = port0.p0_09.into_push_pull_output(Level::Low);
        let led = led::Led::new(PWM0, led_pin.into());
        
        // --- Serial via USB ---
        let serial = serial::Serial::new(CLOCK, USBD);
        
        // --- SAADC och Thermistor ---
        let saadc_config = nrf52833_hal::saadc::SaadcConfig {
            resolution: nrf52833_hal::saadc::Resolution::_12BIT,
            oversample: nrf52833_hal::saadc::Oversample::OVER8X,
            ..Default::default()
        };
        let saadc = nrf52833_hal::saadc::Saadc::new(SAADC, saadc_config);
        let sensor_pin = port0.p0_03; // använder standard 'Disconnected' mode
        let thermistor = thermistor::Thermistor::new(saadc, sensor_pin);
        
        // --- Buzzer ---
        let buzzer = buzzer::Buzzer::new(
            port0.p0_28.into_push_pull_output(Level::Low).into(),
            port0.p0_02.into_push_pull_output(Level::High).into(),
        );
        
        
        // --- RTC --- 
        // Här har vi ändrat RTC::new så att den bara tar RTC0 (och nödvändiga fält) istället för hela Peripherals.
        let rtc = rtc::RTC::new(RTC0, unsafe { serial::CLOCKS.as_ref().unwrap() }, &mut cp.NVIC);

        
        // --- Buttons --- 
        let button_toggle = port0.p0_20.into_pullup_input().into();
        let button_brighten = port0.p0_29.into_pullup_input().into();
        let button_dimmer  = port0.p0_30.into_pullup_input().into();
        
        // --- Starta periodiska tasks ---
        read_temperature::spawn_after(1000_u32.millis().into()).unwrap();
        poll_serial::spawn_after(10_u32.millis().into()).unwrap();
        button_poll::spawn_after(50_u32.millis().into()).unwrap();
        beep_task::spawn_after(5000_u32.millis().into()).unwrap();
        
        (
            Shared { serial, rtc, display },
            Local {
                led,
                buzzer,
                thermistor,
                button_toggle,
                button_brighten,
                button_dimmer,
                prev_toggle: true,
                prev_brighten: true,
                prev_dimmer: true,
            },
            init::Monotonics(mono),
        )
    }

    // Periodic temperature measurement
    #[task(shared = [display], local = [thermistor])]
    fn read_temperature(mut cx: read_temperature::Context) {
        let temp = cx.local.thermistor.read_temperature();
        rprintln!("Temperature: {:.2} °C", temp);

        cx.shared.display.lock(|display| {
            if let display::MenuState::Temperature = display.get_menu_state() {
                display.show_temperature(temp);
            }
    });

    read_temperature::spawn_after(1000_u32.millis().into()).unwrap();
}

    // Handle serial input
    #[task(shared = [serial])]
    fn poll_serial(mut cx: poll_serial::Context) {
        cx.shared.serial.lock(|serial| serial.poll());
        poll_serial::spawn_after(10_u32.millis().into()).unwrap();
    }

    // RTC Interrupt Handler
    #[task(binds = RTC0, shared = [rtc, display])]
    fn rtc_handler(mut cx: rtc_handler::Context) {
        cx.shared.rtc.lock(|rtc| rtc.handle_interrupt());

        let (hours, minutes, seconds) = cx.shared.rtc.lock(|rtc| rtc.get_time());

        cx.shared.display.lock(|display| {
            if let display::MenuState::Clock = display.get_menu_state() {
                display.show_time(hours, minutes, seconds);
            }
        });
    }

    // Button polling task for menu navigation and LED control
    #[task(shared = [display], local = [button_toggle, button_brighten, button_dimmer, prev_toggle, prev_brighten, prev_dimmer, led])]
    fn button_poll(mut cx: button_poll::Context) {
        let toggle_state = cx.local.button_toggle.is_high().unwrap();
        let brighten_state = cx.local.button_brighten.is_high().unwrap();
        let dimmer_state = cx.local.button_dimmer.is_high().unwrap();

        if *cx.local.prev_toggle && !toggle_state {
            cx.shared.display.lock(|display| {
                display.next_menu();
                display.update_menu();
            });
        }
        if *cx.local.prev_brighten && !brighten_state {
            cx.local.led.brighten();
        }
        if *cx.local.prev_dimmer && !dimmer_state {
            cx.local.led.dim();
        }

        *cx.local.prev_toggle = toggle_state;
        *cx.local.prev_brighten = brighten_state;
        *cx.local.prev_dimmer = dimmer_state;

        button_poll::spawn_after(50_u32.millis().into()).unwrap();
    }

    // Buzzer beep task
    #[task(local = [buzzer])]
    fn beep_task(cx: beep_task::Context) {
        cx.local.buzzer.beep(2);
        beep_task::spawn_after(5000_u32.millis().into()).unwrap();
    }

    // Idle loop for low power mode
    #[idle]
    fn idle(_cx: idle::Context) -> ! {
        loop {
            asm::wfi();
        }
    }
}
