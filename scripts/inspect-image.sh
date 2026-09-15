#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
IMAGE="$ROOT/release/ubuntu-server-26.04.1-radxa-cm3-io-arm64-k7.0.0-31-v1.0.0.img"

if [[ ! -f "$IMAGE" ]]; then
    echo "ERROR: release image not found:"
    echo "  $IMAGE"
    exit 1
fi

echo "Image:"
echo "  $IMAGE"
echo

echo "File information:"
file "$IMAGE"
echo

echo "Partition table:"
if command -v sgdisk >/dev/null 2>&1; then
    sgdisk --print "$IMAGE"
elif command -v fdisk >/dev/null 2>&1; then
    fdisk -l "$IMAGE"
else
    echo "Neither sgdisk nor fdisk is installed."
fi
