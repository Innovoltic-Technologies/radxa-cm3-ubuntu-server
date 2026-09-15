#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required=(
    README.md
    LICENSE
    VERSION
    CHANGELOG.md
    CONTRIBUTING.md
    SECURITY.md
    board/radxa/cm3-io/boot/extlinux.conf
    board/radxa/cm3-io/dts/rk3566-radxa-cm3-io.dts
    board/radxa/cm3-io/dts/rk3566-radxa-cm3-io.dtb
    board/radxa/cm3-io/kernel/config-7.0.0-31-generic
    manifests/SHA256SUMS
    manifests/kernel.txt
    manifests/packages.txt
    manifests/firmware.txt
    release/MANIFEST.txt
    release/RELEASE-NOTES.md
)

for file in "${required[@]}"; do
    if [[ ! -f "$ROOT/$file" ]]; then
        echo "ERROR: missing $file"
        exit 1
    fi
done

echo "Repository structure validation successful."
