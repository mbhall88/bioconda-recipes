#!/usr/bin/env bash

set -euo pipefail

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml

RUST_BACKTRACE=full RUSTFLAGS="-C linker=$CC" cargo install -v --locked --no-track --root "$PREFIX" --path lrge