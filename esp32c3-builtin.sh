openocd -f esp32c3-builtin.cfg -c "program build/esp32-c3/bin/mlkem512-test.bin verify reset exit"
pyserial-miniterm /dev/cu.usbmodem101 38400