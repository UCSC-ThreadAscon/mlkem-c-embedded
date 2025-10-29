make PLATFORM=esp32-c3
esptool.py -p /dev/cu.usbmodem11301 write_flash 0x0 build/esp32-c3/bin/mlkem512-nistkat.bin
# esptool -p /dev/cu.usbmodem11301 write-flash 0x0 build/esp32-c3/bin/mlkem512-nistkat.bin
cd ../*test
idf.py monitor --port /dev/cu.usbmodem11301 --baud 115200