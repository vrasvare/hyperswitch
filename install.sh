#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-hyperswitch:local}"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is required. Install Docker Desktop or Docker Engine first." >&2
  exit 1
fi

echo "Building ${IMAGE_NAME}..."
docker build --tag "${IMAGE_NAME}" .

echo "Build complete: ${IMAGE_NAME}"
echo "Run locally with:"
echo "  docker run --rm -p 8080:8080 ${IMAGE_NAME}"
