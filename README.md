# Rust-Development-Template

A ready-to-use development environment for Rust projects with pre-configured tools and examples.

## Features

- Pre-installed Rust toolchain and common utilities
- VS Code dev container configuration for consistent development environment
- Example projects to get you started quickly
- Pre-configured gitignore for Rust projects

## Included Projects

### helloworld-tonic
A gRPC example using the Tonic framework with protocol buffers.

### rustdns
A DNS client implementation example.

## Getting Started

1. Clone this repository
2. Open in VS Code with Remote Containers extension
3. Start developing!

## Prerequisites

- VS Code with Remote Containers extension
- Docker

## Dev Container

This template includes a pre-configured development container with:
- Latest Rust toolchain
- Common Rust utilities (cargo, rustfmt, clippy)
- Git
- Basic build tools

## Usage

After opening in the dev container, you can:

1. Build all projects:
   ```bash
   cargo build
   ```

2. Run individual examples:
   ```bash
   cargo run --bin helloworld-server
   cargo run --bin helloworld-client
   ```

## Contributing

Feel free to fork this template and customize it for your own needs.

## License

MIT
---

**Happy coding! 🦀**
