# litedhrystone

Run the Dhrystone benchmark on LiteX. Set up to use a ULX3S board.

Code adapted from https://github.com/SpinalHDL/NaxSoftware/tree/main/baremetal/dhrystone and https://github.com/enjoy-digital/litex/tree/master/litex/soc/software/demo

## Results

SERV:
```
Microseconds for one run through Dhrystone: 1081
Dhrystones per Second:                      7
User_Time : 270353130
Number_Of_Runs : 5000
HZ : 50000000
DMIPS per Mhz:                              0.01
```

PicoRV32:
```
Microseconds for one run through Dhrystone: 92
Dhrystones per Second:                      92
User_Time : 23201214
Number_Of_Runs : 5000
HZ : 50000000
DMIPS per Mhz:                              0.12
```

Vexriscv:
```
Microseconds for one run through Dhrystone: 27
Dhrystones per Second:                      313
User_Time : 6856499
Number_Of_Runs : 5000
HZ : 50000000
DMIPS per Mhz:                              0.41
```