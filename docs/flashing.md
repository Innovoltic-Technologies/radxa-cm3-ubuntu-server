# Flashing

## Requirements

- Radxa CM3 IO Board
- Compatible Radxa CM3 module
- Supported target storage
- Linux host recommended for flashing

## Verify the Image

From the release directory:

```bash
sha256sum ubuntu-server-26.04.1-radxa-cm3-io-arm64-k7.0.0-31-v1.0.0.img
```

Expected SHA256:

`a3d416d10df52ae4bcc14849c8ac9629ab8d88ce1a4cbfb8c039637132272084`

## Identify the Target

Use `lsblk` to identify the intended storage device before flashing.

```bash
lsblk
```

## Write the Image

The image must be written to the whole storage device, not an individual partition.

```bash
sudo dd if=ubuntu-server-26.04.1-radxa-cm3-io-arm64-k7.0.0-31-v1.0.0.img \\
    of=/dev/<target-device> \\
    bs=16M status=progress conv=fsync
```

Then:

```bash
sync
```

**Flashing destroys existing data on the target device. Verify the device name before running `dd`.**
