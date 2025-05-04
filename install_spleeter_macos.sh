#!/bin/bash

# Spleeter installation script for macOS (Apple Silicon compatible)
# Author: William + ChatGPT, 2025

# === 1. Install Miniconda (ARM64) ===
echo "\n📦 Installing Miniconda (Apple Silicon)"
mkdir -p ~/miniconda3
curl -L https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

# === 2. Add Conda to shell ===
echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Initialize Conda for zsh
echo "\n🔧 Initializing Conda for zsh"
eval "$(~/miniconda3/bin/conda shell.zsh hook)"
conda init zsh
source ~/.zshrc

# === 3. Create Conda environment ===
echo "\n🎼 Creating Conda environment 'spleeter-env' with Python 3.8"
conda create -y -n spleeter-env python=3.8
conda activate spleeter-env

# === 4. Install Spleeter ===
echo "\n🎹 Installing Spleeter via conda-forge"
conda install -y -c conda-forge spleeter

# === 5. Test installation ===
echo "\n✅ Spleeter is installed! To use it:"
echo "   conda activate spleeter-env"
echo "   spleeter separate -p spleeter:2stems -o output/ yourfile.wav"

echo "\n🎉 Done. Go make some music!"
