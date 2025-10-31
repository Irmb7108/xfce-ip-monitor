# IP & VPN Status Monitor

> **Real-time public IP + country flag + VPN status** for KDE/XFCE panels  
> *Lightweight • No output when offline • Always accurate*

![Shell Script](https://img.shields.io/badge/script-bash-orange) ![Panel](https://img.shields.io/badge/panel-KDE%20%7C%20XFCE-blue) ![Status](https://img.shields.io/badge/status-online-brightgreen)

---
![Preview](https://raw.githubusercontent.com/Irmb7108/xfce-ip-monitor/main/IMG_20251029_174943.jpg)
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


# Arch Linux / Manjaro
sudo pacman -S curl jq iproute2

# Optional: for flag & lock icons
sudo pacman -S ttf-nerd-fonts-symbols-common

Installation
bash
‍‍‍``curl -L -o ~/ip-vpn-status.sh https://raw.githubusercontent.com/Irmb7108/xfce-ip-monitor/main/ip-vpn-status.sh
chmod +x ~/ip-vpn-status.sh``
KDE Plasma Setup

Right-click panel → Enter Edit Mode
Add Widgets → Search: Command Output
Drag to panel
Configure:
``Command: /home/$USER/ip-vpn-status.sh
Interval: 10 seconds``
Place next to Wi-Fi icon


XFCE Panel Setup

Add New Item → Generic Monitor
Command:
``/home/$USER/ip-vpn-status.sh``
Update interval: 10 seconds
Font: JetBrains Mono Nerd Font (recommended)


Customization
Change VPN Interface
# Line ~35: change tun0 → wg0
if ip link show wg0 >/dev/null 2>&1 && ...

