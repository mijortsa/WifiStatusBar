#!/bin/bash

APP_PATH="/usr/local/bin/"
ICONS_PATH="WLAN/Icons"
WIFI_PATH="WifiStatusBar"
RES_PATH="/Library/Application Support/WLAN"
START="/Library/Application Support/WLAN/StatusBarApp.app"

#sudo mkdir "$RES_PATH"
sudo cp -rf "$ICONS_PATH" "$RES_PATH"
sudo cp -rf "$WIFI_PATH" "$APP_PATH"
sleep 5
open "$START"
