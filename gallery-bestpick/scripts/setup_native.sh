#!/usr/bin/env bash
# Build the exact scoring backend from Xiaomi's original libiqa.so.
#
# Requirements: aarch64-linux-gnu-gcc/g++ and qemu-aarch64.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(dirname "$HERE")"
NATIVE="$ROOT/native"

URL="https://gallery.market.xiaomi.com/download/Gallery2/070722912a88b4cc5a15cb3b509d5bfa532673d6b"
SHA1="32673d6bdd62e80b3e6b1cd16048eeea1931321e"
ORIG="$NATIVE/libiqa.so.orig"

if [[ ! -f "$ORIG" ]]; then
  echo "downloading libiqa.so"
  curl -fsSL -o "$ORIG" "$URL"
fi
echo "$SHA1  $ORIG" | sha1sum -c -

python3 "$HERE/patch_lib.py" "$ORIG" "$NATIVE/libiqa.so"

SYSROOT="$(aarch64-linux-gnu-gcc -print-sysroot)"
[[ -z "$SYSROOT" ]] && SYSROOT=/usr/aarch64-linux-gnu
ln -sfn "$SYSROOT/lib/libm.so.6"  "$NATIVE/libm.so"
ln -sfn "$SYSROOT/lib/libdl.so.2" "$NATIVE/libdl.so"
ln -sfn "$SYSROOT/lib/libc.so.6"  "$NATIVE/libc.so"

for lib in liblog libandroid libjnigraphics; do
  aarch64-linux-gnu-gcc -shared -fPIC -o "$NATIVE/$lib.so" \
    "$NATIVE/stubs.c" "$NATIVE/stubs2.c"
done

aarch64-linux-gnu-g++ -O2 -o "$NATIVE/score_server" "$NATIVE/score_server.cpp" \
  -L"$NATIVE" -l:libiqa.so -Wl,-rpath,'$ORIGIN' \
  -Wl,--unresolved-symbols=ignore-in-shared-libs

echo "built $NATIVE/score_server"
echo "test: qemu-aarch64 -L $SYSROOT $NATIVE/score_server"
