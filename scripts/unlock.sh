openocd -f interface/ftdi/particle-ftdi.cfg -f target/stm32f2x.cfg -c "init; reset halt" -c "flash protect 0 0 11 off" -c "stm32f2x unlock 0 " -c "flash erase_sector 0 0 11"

