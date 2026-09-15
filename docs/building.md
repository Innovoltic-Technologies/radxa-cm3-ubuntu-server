# Building and Development

## Current Status

The v1.0.0 project is currently distributed as a validated reference image together with its board configuration and development artifacts.

A complete deterministic image-generation pipeline is not yet part of this release.

Therefore, v1.0.0 should not be described as a reproducible source-to-image build.

## Available Development Inputs

The repository provides:

- board device-tree source;
- tested device-tree binary;
- Linux kernel configuration;
- U-Boot/extlinux configuration;
- release manifests;
- validation documentation.

These files provide a foundation for developing a future automated build system.

## Future Build System

A future release may add deterministic root filesystem generation, kernel package selection, device-tree compilation, image creation and automated validation.

Until then, the v1.0.0 binary release image remains the authoritative reference artifact.
