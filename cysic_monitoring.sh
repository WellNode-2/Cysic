#!/bin/bash

LOG_FILE="/root/verifier_monitor.log"

NAME="Cysic"
TELEGRAM_TOKEN=""
TELEGRAM_ID=""

send_telegram_message() {
    curl -sS "https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage" \
        -d chat_id="${TELEGRAM_ID}" -d parse_mode="Markdown" \
        -d text="$NAME \`$(hostname -I | sed 's/ .*//;')\`
$1"
}

while true; do
    # Перевіряє, чи не існує процес з назвою verifier
    if ! pgrep -f "verifier" > /dev/null; then
        echo "$(date): Verifier is not running. Restarting..."
        send_telegram_message "Verifier is not running. Restarting..."
        cd ~/cysic-verifier/ && LD_LIBRARY_PATH=. CHAIN_ID=534352 ./verifier > $LOG_FILE 2>&1
    fi
    sleep 60
done
