#!/bin/bash
set -e

echo "Setting up build environment..."

# Install R using conda (available on Netlify)
echo "Installing R via conda..."
if ! command -v conda &> /dev/null; then
    # Install miniconda if not available
    wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
    bash miniconda.sh -b -p $HOME/miniconda
    export PATH="$HOME/miniconda/bin:$PATH"
    rm miniconda.sh
fi

# Create conda environment with R
conda create -y -n r-env -c conda-forge r-base r-knitr r-rmarkdown r-reticulate

# Activate conda environment
source activate r-env

echo "R installed successfully!"

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
R --version

echo "Quarto and R installed successfully!"

# Render the site
echo "Rendering Quarto site..."
quarto render

echo "Build complete!"
