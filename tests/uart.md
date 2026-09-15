# UART2 Validation

## Hardware

Radxa CM3 IO Board.

## Configuration

- Linux device: `ttyS2`
- Baud rate: `1500000`
- Format: 8-N-1
- Early console: `uart8250,mmio32,0xfe660000`

## Result

UART2 console operation was validated on physical hardware.
