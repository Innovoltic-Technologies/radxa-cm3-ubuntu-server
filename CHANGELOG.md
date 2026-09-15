# Changelog

## v1.0.0 — Documentation Correction

- Document HDMI as physically tested and working.
- Mark MIPI CSI, MIPI DSI and eDP as not yet tested.
- Clarify that RK3566 NPU support remains under development.
- Use PCIe interface validation rather than an AX210-specific PCIe claim in general hardware documentation.

## v1.0.0 — Initial Release

Initial public release of the Ubuntu Server 26.04.1 ARM64 port for the Radxa CM3 IO Board.

### Included

- Ubuntu 26.04.1 LTS (Resolute Raccoon)
- Linux kernel 7.0.0-31-generic
- Radxa CM3 IO device-tree configuration
- UART2 debug console on ttyS2
- PCIe support tested on the CM3 IO Board
- Intel AX210 PCIe Wi-Fi tested
- USB 2.0 and USB 3.0 tested
- Working classic sudo configuration
- ARM64 userspace

### Status

This release is a tested reference image and development baseline.

The image is intended to provide a stable Ubuntu Server 26.04.1 starting point for the Radxa CM3 IO Board.

Kernel, device-tree and system configuration files are included in the repository to facilitate inspection and further development.
