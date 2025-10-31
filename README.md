# IP & VPN Status Panel Script

A lightweight Bash script to display **public IP**, **country flag**, and **VPN status** in desktop panels (KDE Plasma, XFCE, etc.) using the `Command Output` widget.

## Features
- Shows public IPv4 address with country flag emoji
- Indicates VPN connection status (tun0 interface)
- **No output when offline** — completely blank if internet is down
- Fast & minimal — uses `curl`, `jq`, and `ip` commands
- Perfect for KDE Plasma `Command Output` widget

## Output Examples
VPN: 🇺🇸 123.45.67.89     → Connected to US server
VPN: 🇮🇷 85.9.12.34       → Connected to Iran (no VPN)
(Blank)                   → No internet
## Requirements
- `curl`
- `jq`
- `ip` (from `iproute2`)
- Nerd Fonts recommended for icons (optional)

```bash
sudo pacman -S curl jq iproute2
# Optional: for icons
sudo pacman -S ttf-nerd-fonts-symbols-common
Installation
curl -L -o ~/ip-vpn-status.sh https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/ip-vpn-status.sh
chmod +x ~/ip-vpn-status.sh
KDE Plasma Setup

Right-click panel → Enter Edit Mode
Add Widgets → Search: Command Output
Drag to panel
Configure:

Command: /home/$USER/ip-vpn-status.sh
Interval: 10 seconds


Position next to Wi-Fi icon

Customization

Change tun0 to your VPN interface (e.g., wg0)
Add more country flags in the case block
Click-to-toggle VPN (add nmcli or wg-quick commands)


Simple. Clean. Always up-to-date.
text
