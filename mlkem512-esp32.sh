make PLATFORM=esp32-c3
esptool -p /dev/cu.usbmodem11301 write-flash 0x0 build/esp32-c3/bin/mlkem512-test.bin
cd ../*test
idf.py monitor --port /dev/cu.usbmodem11301 --monitor-baud 115200

# esptool.py -p /dev/cu.usbmodem11301 write_flash 0x0 build/esp32-c3/bin/mlkem512-test.bin
# pyserial-miniterm /dev/cu.usbmodem11301 115200