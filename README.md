# IP & VPN Status Monitor

> **Real-time public IP + country flag + VPN status** for KDE/XFCE panels  
> *Lightweight • No output when offline • Always accurate*

![Shell Script](https://img.shields.io/badge/script-bash-orange) ![Panel](https://img.shields.io/badge/panel-KDE%20%7C%20XFCE-blue) ![Status](https://img.shields.io/badge/status-online-brightgreen)

---

## Features

| Feature | Description |
|--------|-------------|
| **Public IPv4** | Fetched via `ifconfig.co/json` |
| **Country Flag** | Emoji based on `country_iso` |
| **VPN Status** | Checks `tun0` interface (configurable) |
| **Offline Safe** | **Blank output** when no internet |
| **Fast & Minimal** | Uses only `curl`, `jq`, `ip` |

### Output Examples
VPN: US 123.45.67.89     → Connected via US server
VPN: IR 85.9.12.34       → Local connection (no VPN)
(blank)                  → No internet
text
---

## Requirements

```bash
# Arch Linux / Manjaro
sudo pacman -S curl jq iproute2

# Optional: for flag & lock icons
sudo pacman -S ttf-nerd-fonts-symbols-common

Installation
bash
