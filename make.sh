set -e
python -m litex_boards.targets.radiona_ulx3s --cpu-type $1 --cpu-variant $2 --device LFE5U-85F --sdram-module AS4C32M16 --timer-uptime --integrated-sram-size 16384 --l2-size 16384 --sdram-rate 1:2 --build
openFPGALoader -b ulx3s build/radiona_ulx3s/gateware/radiona_ulx3s.bit

# litex_sim --integrated-main-ram-size=0x10000 --cpu-type=$1 --cpu-variant $2 --timer-uptime --integrated-sram-size 16384 --l2-size 16384 --no-compile-gateware

cd src
export BUILD_DIR=../build/radiona_ulx3s/
make clean
make
litex_term --kernel demo.bin --safe /dev/ttyUSB0
# cd ..
# litex_sim --integrated-main-ram-size=0x10000 --cpu-type=$1 --cpu-variant $2 --timer-uptime --integrated-sram-size 16384 --l2-size 16384 --ram-init=src/demo.bin