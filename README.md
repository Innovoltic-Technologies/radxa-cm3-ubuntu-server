# Ubuntu Server 26.04.1 for Radxa CM3 IO

Ubuntu Server 26.04.1 LTS ARM64 reference image and board configuration for the **Radxa CM3 IO Board**.

This project provides a tested Ubuntu Server baseline for the Radxa CM3 IO platform, including board device-tree configuration, Linux kernel configuration, U-Boot/extlinux boot configuration, release image, and hardware validation information.

## Current Release

**v1.0.0**

| Component | Version |
|---|---|
| Operating System | Ubuntu 26.04.1 LTS |
| Architecture | ARM64 |
| Board | Radxa CM3 IO |
| Kernel | Linux 7.0.0-31-generic |
| Bootloader interface | U-Boot / extlinux |
| Release image | `ubuntu-server-26.04.1-radxa-cm3-io-arm64-k7.0.0-31-v1.0.0.img` |

## What Works

The v1.0.0 reference image has been tested on physical Radxa CM3 IO hardware.

- Ubuntu Server 26.04.1 LTS
- Linux 7.0.0-31-generic
- UART2 debug console
- 1.5 Mbaud serial console
- Early UART console
- PCIe
- HDMI
- USB 2.0
- USB 3.0
- Classic `sudo` configuration
- ARM64 userspace
- APT repositories for Ubuntu Resolute
## Device Tree

The release contains the exact device-tree binary used by the tested image:

`board/radxa-cm3-io/dts/rk3566-radxa-cm3-io.dtb`

A DTS representation generated from that DTB is also provided for inspection and development:

`board/radxa-cm3-io/dts/rk3566-radxa-cm3-io.dts`

The DT configuration includes the tested CM3 IO PCIe configuration and associated PHY, reset, power and pinctrl configuration.

## UART Console

The tested debug UART is:

- Linux device: `ttyS2`
- UART: UART2
- Baud rate: `1500000`
- Early console: `uart8250,mmio32,0xfe660000`

The active boot configuration is:

`board/radxa-cm3-io/boot/extlinux.conf`

## PCIe and Wi-Fi

PCIe is enabled in the CM3 IO device-tree configuration.

The PCIe interface has been physically tested on the CM3 IO Board.

The tested AX210 firmware is:

`iwlwifi-ty-a0-gf-a0-89.ucode`

Its SHA256 checksum is recorded in the release manifests.

## USB

USB 2.0 and USB 3.0 functionality has been tested on the target board, including USB storage operation.
## Release Image

The complete v1.0.0 image is provided under:

`release/`

The image is a raw disk image containing a GPT partition table and can be written directly to compatible CM3 IO storage.

SHA256 checksums are provided both as a per-image `.sha256` file and in `release/SHA256SUMS`.

## Flashing

The image can be written using a Linux imaging utility such as `dd` or a graphical disk-imaging application.

**Make absolutely certain that the target device is the intended eMMC/storage device before writing the image.**

Example:

```bash
sudo dd if=ubuntu-server-26.04.1-radxa-cm3-io-arm64-k7.0.0-31-v1.0.0.img \\
        of=/dev/<target-device> \\
        bs=16M status=progress conv=fsync
```

After writing the image, flush pending writes and safely disconnect the storage device.
## Customization

This repository is intended to be used as a starting point for further development.

The board-specific configuration is kept separately from the release image so that users can modify individual components without starting from scratch.

Relevant areas include:

- `board/radxa-cm3-io/dts/` — device-tree source and binary
- `board/radxa-cm3-io/boot/` — U-Boot/extlinux boot configuration
- `board/radxa-cm3-io/kernel/` — kernel configuration
- `configs/` — project configuration
- `patches/` — board and operating-system changes
- `scripts/` — development and validation utilities
- `docs/` — build, flashing, testing and troubleshooting documentation

The device-tree source can be modified to experiment with additional peripherals, GPIOs, buses or board-specific hardware.

## Reproducibility Status

v1.0.0 is a **tested reference image**, not yet a fully bit-for-bit reproducible image build.

The repository contains the important board configuration and reference artifacts used by the release, but the complete automated process that originally produced the binary image has not yet been reconstructed as a deterministic build system.

Therefore:

- the supplied image is the authoritative v1.0.0 binary artifact;
- the supplied DTB is the exact DTB used by the release;
- the supplied kernel configuration corresponds to the tested kernel;
- the supplied boot configuration corresponds to the tested image;
- future releases may introduce a fully automated image-generation workflow.

Contributions toward a reproducible build system are welcome.
## Repository Structure

```text
radxa-cm3-ubuntu-server/
├── board/
│   └── radxa-cm3-io/
│       ├── boot/
│       ├── dts/
│       └── kernel/
├── build/
├── configs/
├── docs/
├── manifests/
├── patches/
├── scripts/
├── tests/
├── vendor/
├── release/
├── CHANGELOG.md
├── CONTRIBUTING.md
├── README.md
├── SECURITY.md
└── VERSION
```

The `release/` directory contains artifacts for the corresponding project release. The large disk image is intended to be distributed as a GitHub Release asset rather than stored in normal Git history.

## Hardware

This release targets:

**Radxa CM3 IO Board with Radxa CM3 / RK3566**

The image is intended for the CM3 IO hardware configuration represented by the supplied device tree.

Hardware-specific configurations should be tested on real hardware before being considered stable.

## Known Limitations

The following areas are outside the scope of the v1.0.0 stable baseline or remain future work:

- MIPI CSI, MIPI DSI and eDP interfaces have not yet been tested.

- RK3566 NPU support (under development)
- Fully automated reproducible image generation
- Mainline/upstream integration of board-specific changes
- Broader hardware validation across all CM3 IO peripherals
- Additional kernel and device-tree optimization

The v1.0.0 release intentionally prioritizes a stable Ubuntu Server 26.04.1 ARM64 baseline.
## Future Development

Future work may include:

1. Automated image generation
2. More complete board hardware validation
3. RK3566 NPU support (under development)
4. Additional device-tree improvements
5. Kernel configuration refinement
6. Upstreaming applicable board changes
7. CI-based image and configuration validation

## Contributing

Contributions are welcome.

When submitting hardware-related changes, please include:

- the affected hardware interface;
- the device-tree or kernel change;
- the hardware configuration used for testing;
- relevant kernel logs;
- the exact test procedure;
- whether the change was tested on physical CM3 IO hardware.

Changes should preferably be isolated and reviewable rather than combining unrelated board modifications.

See `CONTRIBUTING.md` for additional information.

## Security

Please report security issues according to `SECURITY.md`.

Do not publicly disclose sensitive credentials, private keys, network credentials or other confidential information in issues or pull requests.

## License and Third-Party Components

This repository contains project-authored configuration, scripts and documentation as well as references to third-party software.

Ubuntu, Linux, U-Boot, Radxa software, firmware and other third-party components remain subject to their respective licenses and terms.

The project license applies only to material for which this repository is the copyright holder or otherwise has the right to license.

See `LICENSE` and the relevant upstream project documentation for details.

## Acknowledgements

This project builds upon the Linux, Ubuntu, U-Boot and Radxa software ecosystems.

Special thanks to the upstream communities and maintainers whose work makes the Radxa CM3 platform possible.
