#!/bin/bash

openocd -f interface/ftdi/particle-ftdi.cfg -f target/stm32f2x.cfg -c "$1"
