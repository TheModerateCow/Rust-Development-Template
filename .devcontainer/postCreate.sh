#!/bin/bash
set -e

echo "🚀 Starting Rust development environment setup..."

# Update package lists
echo "📦 Updating package lists..."
apt-get update

# Install build-essential (includes gcc, make, and other build tools)
echo "🔧 Installing build-essential..."
apt-get install -y build-essential

# Install protobuf compiler (needed for gRPC/tonic development)
echo "🛠️  Installing protobuf-compiler..."
apt-get install -y protobuf-compiler

# Install additional useful packages for Rust development
echo "📚 Installing additional development tools..."
apt-get install -y \
    pkg-config \
    libssl-dev \
    zlib1g-dev \
    curl \
    wget \
    git

# Install Rust
echo "🦀 Installing Rust toolchain..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Source cargo environment
. "$HOME/.cargo/env" 

# Set stable as default toolchain
echo "🎯 Setting stable toolchain as default..."
rustup default stable

# Install useful cargo extensions
echo "⚡ Installing useful cargo extensions..."
cargo install cargo-watch cargo-edit cargo-audit

# Verify installation
echo "✅ Verifying installation..."
if command -v rustup &> /dev/null && command -v rustc &> /dev/null && command -v cargo &> /dev/null; then
  echo "✅ Rust has been installed successfully!"
  echo "   Rustc version: $(rustc --version)"
  echo "   Cargo version: $(cargo --version)"
  echo "   Rustup version: $(rustup --version)"
else
  echo "❌ Rust installation failed!"
  exit 1
fi

# Test rust-analyzer requirements
# echo "🔍 Testing rust-analyzer requirements..."

# Test cargo locate-project
# echo "   Testing cargo locate-project..."
# if cargo locate-project --workspace &> /dev/null; then
#   echo "   ✅ cargo locate-project works"
# else
#   echo "   ❌ cargo locate-project failed"
# fi

# Test cargo metadata
# echo "   Testing cargo metadata..."
# if cargo metadata --format-version 1 &> /dev/null; then
#   echo "   ✅ cargo metadata works"
# else
#   echo "   ❌ cargo metadata failed"
# fi

# Test rustc target info
# echo "   Testing rustc target info..."
# if RUSTC_BOOTSTRAP="1" rustc -Z unstable-options --print target-spec-json &> /dev/null; then
#   echo "   ✅ rustc target info works"
# else
#   echo "   ❌ rustc target info failed"
# fi

echo "🎉 Rust development environment setup complete!"
echo "   Ready for rust-analyzer and gRPC/tonic development!"