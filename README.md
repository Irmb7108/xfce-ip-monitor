#!/bin/bash

JSON=$(curl -4 -s ifconfig.co/json 2>/dev/null)

if [ -z "$JSON" ] || ! echo "$JSON" | jq -e '.ip' >/dev/null 2>&1; then
    echo ""         
    exit 0
fi

IP=$(echo "$JSON" | jq -r '.ip')
COUNTRY=$(echo "$JSON" | jq -r '.country_iso')

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

if ip link show tun0 >/dev/null 2>&1 && ip link show tun0 | grep -q "state UP"; then
    STATUS=" 🔒"
else
    STATUS=""
fi

echo "🔐 ${FLAG}${STATUS} ${IP} "
