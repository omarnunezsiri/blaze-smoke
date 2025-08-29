#!/usr/bin/env bash
set -euo pipefail

{
  echo "DATE: $(date -Is)"
  echo "USER: $(whoami)"
  echo "HOST: $(hostname)"
  echo "KERNEL: $(uname -sr)"
  echo "ARCH: $(uname -m)"
  echo "CPU:"
  lscpu || true
  echo
  echo "MEMORY:"
  free -h || true
  echo
  echo "DISK:"
  df -h || true
  echo
  echo "DOCKER:"
  docker info 2>&1 || true
} > sysinfo.txt

echo "Wrote sysinfo.txt"
