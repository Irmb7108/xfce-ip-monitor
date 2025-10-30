# XFCE IP Monitor Script

A simple Bash script to display your public IPv4 address, country flag, and VPN status in the XFCE panel. Perfect for Kali Linux users!

## Features
- Shows public IP (IPv4 only) from ifconfig.co
- Displays country flag emoji (supports all countries via ISO codes)
- VPN status indicator (🔒 for connected, e.g., OpenVPN tun0)
- Offline detection: Shows "🌐 offline" if no internet
- Updates every 30 seconds in XFCE Generic Monitor

## Demo
- With VPN: 🌐 64.31.27.55 - 🇺🇸 🔒
- Without VPN: 🌐 85.10.5.20 - 🇮🇷
- Offline: 🌐 offline

## Requirements
- Kali Linux (or any Debian-based with XFCE)
- `jq` and `curl` (install: `sudo apt install jq curl`)
- OpenVPN (for tun0 interface; change if using WireGuard wg0)

## Installation
1. Copy the script:
`‍mkdir -p ~/bin`
`curl -s https://raw.githubusercontent.com/YOUR_USERNAME/xfce-ip-monitor/main/ip-vpn-status.sh -o ~/bin/ip-vpn-status.sh`
`chmod +x ~/bin/ip-vpn-status.sh`

![Screenshot 1](/home/ir-mb/Pictures/IMG_20251029_174943.jpg)
