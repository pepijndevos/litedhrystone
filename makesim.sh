set -e
litex_sim --integrated-main-ram-size=0x10000 --cpu-type=$1 --cpu-variant $2 --timer-uptime --integrated-sram-size 16384 --l2-size 16384 --no-compile-gateware

cd src
export BUILD_DIR=../build/sim/
make clean
make
cd ..
litex_sim --integrated-main-ram-size=0x10000 --cpu-type=$1 --cpu-variant $2 --timer-uptime --integrated-sram-size 16384 --l2-size 16384 --ram-init=src/demo.bin --trace --trace-fst