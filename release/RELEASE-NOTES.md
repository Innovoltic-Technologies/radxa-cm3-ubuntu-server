# Ubuntu Server 26.04.1 for Radxa CM3 IO
## Release v1.0.0

### Release Artifact

**Image:**

`ubuntu-server-26.04.1-radxa-cm3-io-arm64-k7.0.0-31-v1.0.0.img`

**Architecture:** ARM64

**Target:** Radxa CM3 IO Board

**Kernel:** Linux 7.0.0-31-generic

**Ubuntu:** 26.04.1 LTS

### Image

The release image is a complete bootable Ubuntu Server image intended for installation to compatible CM3 IO storage.

The image uses U-Boot/extlinux boot configuration and provides both a normal and rescue boot entry.

### Serial Console

The tested debug console uses:

- UART: UART2
- Linux device: `ttyS2`
- Baud rate: `1500000`
- Early console: `uart8250,mmio32,0xfe660000`

### PCIe

PCIe support is enabled in the CM3 IO device-tree configuration.

The configuration has been physically tested with an Intel AX210 PCIe adapter.

### Wi-Fi

The release contains the Intel AX210 firmware required by the tested adapter.

Firmware:

`iwlwifi-ty-a0-gf-a0-89.ucode`

### USB

USB 2.0 and USB 3.0 functionality has been tested on the target board.

### Sudo

The image uses the classic `sudo.ws` implementation and has been configured with the expected setuid-root permissions.

The default `admin` account is a member of the `sudo` group.

### Development Status

v1.0.0 is intended as a stable development baseline.

The image is not presented as a bit-for-bit reproducible build from the repository. The repository contains the verified board configuration, kernel configuration, boot configuration and documentation required for further development and customization.

### Future Work

Potential future development includes:

- RK3566 NPU support
- Additional hardware validation
- Kernel/device-tree upstreaming
- Further reduction and cleanup of the base image
- Automated image generation
