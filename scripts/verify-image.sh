#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
IMAGE="$ROOT/release/ubuntu-server-26.04.1-radxa-cm3-io-arm64-k7.0.0-31-v1.0.0.img"
CHECKSUM="$IMAGE.sha256"

if [[ ! -f "$IMAGE" ]]; then
    echo "ERROR: release image not found:"
    echo "  $IMAGE"
    exit 1
fi

if [[ ! -f "$CHECKSUM" ]]; then
    echo "ERROR: image checksum not found:"
    echo "  $CHECKSUM"
    exit 1
fi

echo "Verifying release image..."
sha256sum -c "$CHECKSUM"

echo "Image verification successful."
