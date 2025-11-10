#!/bin/bash
set -e

echo "Installing Quarto..."

# Download and install Quarto
QUARTO_VERSION="${QUARTO_VERSION:-1.4.555}"
wget -q "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"
mkdir -p /opt/build/quarto
tar -xzf "quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" -C /opt/build/quarto
rm "quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"

# Add Quarto to PATH
export PATH="/opt/build/quarto/quarto-${QUARTO_VERSION}/bin:${PATH}"

# Verify installation
quarto --version

echo "Quarto installed successfully!"

# Render the site
echo "Rendering Quarto site..."
quarto render

echo "Build complete!"
