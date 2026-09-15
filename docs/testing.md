# Testing

v1.0.0 is a physical-hardware-tested reference release.

## Operating System

- Ubuntu 26.04.1 LTS
- ARM64
- Linux 7.0.0-31-generic

## UART

UART2 / `ttyS2` was validated at 1500000 baud, including early console output.

## PCIe

The CM3 IO PCIe interface was physically validated on the CM3 IO Board.

The tested PCIe link operated at Gen2 x1 and the endpoint was enumerated by Linux.

## Wi-Fi

Wi-Fi operation was validated using the included Intel wireless firmware.

## USB

USB 2.0 and USB 3.0 were validated, including USB storage operation.

## Scope

These are release validation results, not an exhaustive validation of every CM3 IO peripheral or operating mode.

## HDMI

HDMI output was physically tested and is working.

## Untested Interfaces

The following interfaces have not yet been tested for this release:

- MIPI CSI
- MIPI DSI
- eDP
