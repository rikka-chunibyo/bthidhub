#!/bin/bash

BLUEUTIL_ALLOW_ROOT=1
DEVICE_MAC="e4-5f-01-2a-fb-23"
DELAY=5

while true; do
    if [[ $(blueutil --is-connected "$DEVICE_MAC") -eq 0 ]]; then
        echo "Device not connected. Reconnecting..."
        blueutil --connect "$DEVICE_MAC"
    else
        echo "Device is already connected."
    fi
    sleep $DELAY
done
