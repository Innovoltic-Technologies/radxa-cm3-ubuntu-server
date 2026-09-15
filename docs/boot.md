# Boot Configuration

The v1.0.0 image uses U-Boot with an extlinux boot configuration.

Active configuration:

`board/radxa/cm3-io/boot/extlinux.conf`

Kernel:

`7.0.0-31-generic`

The tested debug console is UART2, exposed as Linux `ttyS2`.

Serial configuration:

- 1500000 baud
- 8 data bits
- no parity
- 1 stop bit

Kernel console:

`console=ttyS2,1500000n8`

Early console:

`earlycon=uart8250,mmio32,0xfe660000`

The extlinux configuration also provides a rescue-target boot entry.
