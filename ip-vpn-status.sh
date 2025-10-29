#!/bin/bash

# JSON کامل بگیر (IPv4 اجباری)
JSON=$(curl -4 -s ifconfig.co/json 2>/dev/null)

# چک کن اگر JSON خالی یا ip وجود نداره (نت قطع)
if [ -z "$JSON" ] || ! echo "$JSON" | jq -e '.ip' >/dev/null 2>&1; then
    echo " offline"
    exit 0
fi

# IP و کد کشور با jq
IP=$(echo "$JSON" | jq -r '.ip')
COUNTRY=$(echo "$JSON" | jq -r '.country_iso')

# emoji پرچم بر اساس کد کشور (رایج‌ها)
case $COUNTRY in
    "IR") FLAG="🇮🇷" ;;
    "US") FLAG="🇺🇸" ;;
    "GB") FLAG="🇬🇧" ;;
    "FR") FLAG="🇫🇷" ;;
    "DE") FLAG="🇩🇪" ;;
    "CN") FLAG="🇨🇳" ;;
    "RU") FLAG="🇷🇺" ;;
    "BR") FLAG="🇧🇷" ;;
    "CA") FLAG="🇨🇦" ;;
    "AU") FLAG="🇦🇺" ;;
    "JP") FLAG="🇯🇵" ;;
    "IN") FLAG="🇮🇳" ;;
    "KR") FLAG="🇰🇷" ;;
    *) FLAG="🌍" ;;
esac

# چک status VPN
if ip link show tun0 >/dev/null 2>&1 && ip link show tun0 | grep -q "state UP"; then
    STATUS=" 🔒"
else
    STATUS=""
fi

# خروجی خوشگل: 🌐 64.31.27.55 - 🇺🇸 🔒
echo "🔐 ${FLAG}${STATUS} ${IP} "
