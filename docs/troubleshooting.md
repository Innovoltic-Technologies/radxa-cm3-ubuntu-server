# Troubleshooting

## No UART Output

Confirm that the serial adapter is connected to the CM3 IO debug UART and that the terminal is configured for 1500000 baud, 8-N-1.

The expected Linux console device is `ttyS2`.

The active extlinux configuration is available at `board/radxa/cm3-io/boot/extlinux.conf`.

## PCIe Device Not Detected

Check that the PCIe hardware is correctly seated and powered.

After boot, inspect:

```bash
lspci
dmesg | grep -i -E "pcie|pci|iwlwifi"
```

For the validated AX210 configuration, an Intel AX210 network controller should appear on the PCIe bus.

## Wi-Fi Firmware

The v1.0.0 image contains the firmware used during AX210 validation. Other wireless devices may require additional firmware packages.

Ubuntu firmware packages can be installed separately when required.

## USB Problems

Check USB enumeration with:

```bash
lsusb
dmesg | grep -i usb
```

## Boot Problems

Verify the image checksum before flashing and confirm that the image was written to the whole target storage device rather than an individual partition.
