#!/bin/bash

#pkill -a StatusBar
WLAN="/Library/Application Support/WLAN/Icons"
BIN="/usr/local/bin/WifiStatusBar"
sudo rm -rf "$WLAN"
sudo rm -rf "$BIN"

exit