# Testing

v1.0.0 is a physical-hardware-tested reference release.

## Operating System

- Ubuntu 26.04.1 LTS
- ARM64
- Linux 7.0.0-31-generic

## UART

UART2 / `ttyS2` was validated at 1500000 baud, including early console output.

## PCIe

The CM3 IO PCIe interface was validated with an Intel AX210 adapter.

The tested PCIe link operated at Gen2 x1 and the endpoint was enumerated by Linux.

## Wi-Fi

The Intel AX210 was detected through the Linux wireless stack using the tested firmware.

## USB

USB 2.0 and USB 3.0 were validated, including USB storage operation.

## Scope

These are release validation results, not an exhaustive validation of every CM3 IO peripheral or operating mode.
