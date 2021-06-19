#/bin/bash
CARGO_INSTALL_ROOT=/tmp/dotfile-binaries/ cargo install --target x86_64-unknown-linux-musl bat ripgrep dua-cli exa

# Move all the Rust binaries to the binaries directory
mv /tmp/dotfile-binaries/bin/* ./binaries

rm -rf /tmp/dotfile-binaries