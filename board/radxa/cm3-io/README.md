# Radxa CM3 IO

Board-specific configuration for Ubuntu Server on the Radxa CM3 IO platform.

## Target

- Radxa CM3 IO
- Radxa CM3 module
- Rockchip RK3566
- ARM64

## Directory Layout

- `boot/` — U-Boot/extlinux configuration
- `dts/` — device-tree source and binary
- `kernel/` — tested kernel configuration
- `patches/` — board-specific development patches

## v1.0.0 Hardware Configuration

The supplied device tree contains the tested UART2 and PCIe configuration used by the reference image.

The PCIe configuration was physically validated with an Intel AX210 adapter.

## Development

Changes to board support should be made against the DTS source and documented with the corresponding hardware rationale.
