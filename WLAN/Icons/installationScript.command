#!/bin/bash

#APP_PATH="/Library/Application\ Support/WLAN"
#CP_PATH="/Library/Application\ Support/WLAN/StatusBarApp.app/icons/"
#RES_PATH="/Library/Application\ Support/WLAN/StatusBarApp/Contents/Resources/"
echo
echo "=========================================================================="
echo "Choosing Dark Mode or Light Mode will apply the black icon set!"
echo "=========================================================================="
echo "Do you wish to:"
echo "Install [D] for Dark Mode | Install [L] for Light Mode | [Q]uit"
read -p ": " answer
case ${answer:0:1} in
	d|D )
		cp /Library/Application\ Support/WLAN/StatusBarApp.app/icons/blackicns/* /Library/Application\ Support/WLAN/StatusBarApp.app/Contents/Resources/
		#Exiting the app
		killall StatusBarApp
		#Opening a new instance
		open /Library/Application\ Support/WLAN/StatusBarApp.app
	;;
	l|L )
		cp /Library/Application\ Support/WLAN/StatusBarApp.app/icons/whiteicns/* /Library/Application\ Support/WLAN/StatusBarApp.app/Contents/Resources/
		killall StatusBarApp
		open /Library/Application\ Support/WLAN/StatusBarApp.app
	;;
	q|Q )
		exit
	;;
esac
