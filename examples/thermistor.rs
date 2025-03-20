#![no_std]

use nrf52833_hal::{
    gpio::{p0::P0_03, Disconnected},
    saadc::{Saadc, SaadcConfig, Resolution, Oversample},
};
use libm::logf;

const THERMISTOR_BETA: f32 = 3950.0;
const REF_RESISTOR: f32 = 10000.0;
const TEMP_REF_K: f32 = 298.15;
const SYS_VOLTAGE: f32 = 2.8;
const ADC_MAX: f32 = 4095.0;

pub struct Thermistor {
    adc: Saadc,
    sensor_pin: P0_03<Disconnected>,
}

impl Thermistor {
    pub fn new(saadc: Saadc, sensor_pin: P0_03<Disconnected>) -> Self {
        Self { adc: saadc, sensor_pin }
    }

    pub fn read_temperature(&mut self) -> f32 {
        let reading = self.adc.read_channel(&mut self.sensor_pin).unwrap();
        Self::calculate_temperature(reading)
    }

    fn calculate_temperature(adc_val: i16) -> f32 {
        let voltage = (adc_val as f32) * SYS_VOLTAGE / ADC_MAX;
        let thermistor_r = REF_RESISTOR * (voltage / (SYS_VOLTAGE - voltage));
        let log_ratio = logf(thermistor_r / REF_RESISTOR);
        let inv_temp = (1.0 / TEMP_REF_K) + (log_ratio / THERMISTOR_BETA);
        (1.0 / inv_temp) - 273.15
    }
}
