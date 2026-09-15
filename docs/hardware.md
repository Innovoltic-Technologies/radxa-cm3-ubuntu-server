# Hardware

## Target Platform

- Radxa CM3 IO Board
- Radxa CM3 module
- Rockchip RK3566
- ARM64

## Interfaces Covered by v1.0.0

### UART

The tested debug console uses UART2 exposed as Linux `ttyS2`.

Configuration:

- Baud: 1500000
- Data: 8 bits
- Parity: none
- Stop bits: 1
- Early console: `uart8250,mmio32,0xfe660000`

### PCIe

The CM3 IO PCIe interface is enabled in the supplied device tree.

The PCIe interface was physically validated on the CM3 IO Board. The tested link operated at Gen2 x1.

### HDMI

HDMI output was physically tested and is working with the v1.0.0 image.

### USB

USB 2.0 and USB 3.0 functionality were physically tested, including USB storage.

## Device Tree

The board-specific device tree is located under `board/radxa/cm3-io/dts/`.

The supplied DTB is the exact DTB used by the v1.0.0 reference image.

## Hardware Validation

Only interfaces explicitly documented as tested should be considered validated for this release. The absence of a component from the validation list does not imply that the component is unsupported.

### Untested Interfaces

The following interfaces have not yet been tested for this release:

- MIPI CSI
- MIPI DSI
- eDP
