#!/usr/bin/env bash
set -e

PKG_NAME="simeioseis"
PKG_VERSION="1.0.0"
NAMESPACE="local"

SRC_DIR="$(cd "$(dirname "$0")" && pwd)"
DEST_DIR="$HOME/Library/Application Support/typst/packages/$NAMESPACE/$PKG_NAME/$PKG_VERSION"

mkdir -p "$DEST_DIR"

# Copy package contents
cp -r "$SRC_DIR"/{lib.typ,template,typst.toml,README.md} "$DEST_DIR" 2>/dev/null || true

echo "Installed $PKG_NAME:$PKG_VERSION"