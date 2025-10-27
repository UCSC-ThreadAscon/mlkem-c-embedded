openocd -f openocd-esp32/tcl/board/esp32c3-builtin.cfg -c "program build/esp32-c3/bin/mlkem512-test.bin verify reset exit"
pyserial-miniterm /dev/cu.usbmodem101 38400

python -m esptool -p /dev/cu.usbmodem101 -b 460800 --before default_reset --after hard_reset --chip esp32c3 write_flash --flash_mode dio --flash_size detect --flash_freq 40m 0x1000 ../mlkem-test/build/bootloader/bootloader.bin 0x8000 ../mlkem-test/build/partition_table/partition-table.bin 0x10000 build/esp32-c3/bin/mlkem512-test.bin

python -m esptool -p /dev/cu.usbmodem101 -b 460800 --before default_reset --after hard_reset --chip esp32c3 write_flash --flash_mode dio --flash_size detect --flash_freq 40m 0x1000 ../mlkem-test/build/bootloader/bootloader.bin 0x8000 ../mlkem-test/build/partition_table/partition-table.bin 0x10000 build/esp32-c3/bin/mlkem512-test.bin && pyserial-miniterm /dev/cu.usbmodem101 460800

python -m esptool -p /dev/cu.usbmodem101 -b 38400 --before default_reset --after hard_reset --chip esp32c3 write_flash --flash_mode dio --flash_size detect --flash_freq 40m 0x1000 ../mlkem-test/build/bootloader/bootloader.bin 0x8000 ../mlkem-test/build/partition_table/partition-table.bin 0x10000 build/esp32-c3/bin/mlkem512-test.bin && pyserial-miniterm /dev/cu.usbmodem101 38400