# e7020e Project Name: <Never fall assleep again>

<short selling description, we are making the perfect clock that will be so annoying so that you will never be able to use the snooze button again. Witch in turn will make you want to, NO. Need to wake up. >

## Members

- Gabriel Sundblad (gabsun-1@student.ltu.se)
- Isak Sandegren (isksan-1@student.ltu.se)

## Hardware Features


• Real-time clock (RTC) based on 32kHz crystal
• (3) buttons for navigation
• PWM modulated LED with transistor driver
• Sound on alarm, e.g., buzzer
• Analog input, e.g., temperature/supply voltage
• Serial communication interface using dev-kit, Virtulal Com Port (VCP)
• Command Line Interface (CLI) for simple host interaction
• Display that shows current time
• LED



and mandatory components for:

- Analog sensing <e.g., photo resistor>
- Serial communication interface to host, <e.g. over dev-kit VCP>
- LED
- Buzzer

## Functionality and SW features

Besides mandatory functionality the Final Countdown features:

<e.g.>

- Automatic RTC update by UTC network time and Time Zone alignment
- Alarm off functionality requiring the user to guess a random number between 0 and 20 using 2 attempts at most. Feedback given as "too low", "too high" or "you got it!" which turns off the alarm. Fail creates a new random number for the user to guess until correct number is guessed.
- Ability to read and set a new alarm from device using the (4) navigation buttons.

## Individual grading goals and contributions
- Gabriel Sundblad 3) Contribute to the mandatory goals 4) TBD 5) TBD
- Isak Sandegren 3) Contribute to the mandatory goals 4) TBD 5) TBD


## HW References

<e.g.>

- [oled display](https://en.odroid.se/products/0-96-tum-oled-spi-i2c-granssnitt-vinklad-horisontell-pinheader?pr_prod_strat=e5_desc&pr_rec_id=b23563853&pr_rec_pid=6585308020814&pr_ref_pid=6585303924814&pr_seq=uniform/)

## SW References

<e.g.>

- [Chrono] (https://crates.io/crates/chrono)
- [ssd1306] (https://docs.rs/ssd1306/latest/ssd1306/)
- [Embedded Graphics] (https://docs.rs/embedded-graphics/latest/embedded_graphics/)
