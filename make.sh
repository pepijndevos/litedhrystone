set -e
python -m litex_boards.targets.radiona_ulx3s --cpu-type $1 --device LFE5U-85F --sdram-module AS4C32M16 --timer-uptime --integrated-sram-size 16384 --build
openFPGALoader -b ulx3s build/radiona_ulx3s/gateware/radiona_ulx3s.bit

cd src
make clean
make
litex_term --kernel demo.bin --safe /dev/ttyUSB0