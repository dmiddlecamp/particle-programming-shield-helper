@jvanier's example debug command:

openocd -f interface/ftdi/particle-ftdi.cfg -f target/stm32f2x.cfg -c "gdb_port 3333" -c "\$_TARGETNAME configure -rtos FreeRTOS"


@bryce's notes:

openocd -f interface/ftdi/particle-ftdi.cfg -f target/stm32f2x.cfg \
  -c "init" \
  -c "reset init" \
  -c "flash protect 0 0 last off" \
  -c "flash erase_sector 0 0 last" \
  -c "flash write_image /Users/bwkahle/firmware/photon/rc4/combined_BM-09.bin 0x08000000" \
  -c "flash fillh 0x08005D88 0xAAAA 1" \
  -c "flash fillh 0x08009D88 0xAAAA 1" \
  -c "reset run" \
  -c "shutdown"


