# 🎵 Spleeter Installation on macOS (Apple Silicon) via Conda

This script helps you install [Spleeter](https://github.com/deezer/spleeter), Deezer’s source separation library, on macOS using Miniconda — with full support for Apple Silicon (M1/M2/M3).  
No more struggling with `pip`, `numba`, or compiler errors.

## ✅ Prerequisites
- macOS with zsh shell
- curl
- Terminal access
- Motivation to make music 🎧

---

## ❗ Why not pip?

Installing Spleeter with `pip` on macOS (especially Apple Silicon) is often painful due to:

- ❌ Incompatible `numba` compilation (fails with Python ≥ 3.10 SDKs)
- ❌ Deprecation of `numpy.distutils` (breaks build with recent `numpy`)
- ❌ Broken build isolation and wheel generation
- ❌ macOS ARM64 SDK incompatibilities (`use_tracing` C API errors)

We tried everything: fixing numpy/setuptools versions, disabling PEP517, forcing flags — and it still broke.

✅ The Conda approach just works. It uses precompiled binaries and resolves all dependencies reliably.

---

## 🔧 What the script does

1. Installs Miniconda (ARM64 version)
2. Initializes Conda with your shell
3. Creates an environment `spleeter-env` using Python 3.8
4. Installs Spleeter via the `conda-forge` channel
5. Prints usage instructions

---

## 🚀 How to use

### Step 1 — Run the script

```bash
curl -O https://raw.githubusercontent.com/<your-user>/spleeter-mac-install/main/install_spleeter_mac.sh
chmod +x install_spleeter_mac.sh
./install_spleeter_mac.sh

Hope it will help few people ;) 
