# Repository Guidelines

This repository contains the board configuration, documentation, validation tooling and release metadata for Ubuntu Server on the Radxa CM3 IO platform.

Changes should be focused, reviewable and documented.

Hardware changes should identify the affected interface and include physical-hardware test information when available.

Device-tree changes should include source changes and explain the hardware requirement.

Do not commit release disk images to normal Git history. Large images are distributed through GitHub Releases.

The v1.0.0 image is a tested reference artifact and is not yet bit-for-bit reproducible from this repository.
