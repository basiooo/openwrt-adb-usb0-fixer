#!/bin/bash

if [ -e /etc/usb-mode.json ]; then
    mv /etc/usb-mode.json /etc/usb-mode.json.backup
    echo "backup file: /etc/usb-mode.json.backup"
    echo "Reboot to apply changes"
else
    echo "/etc/usb-mode.json not found in the system"
fi
