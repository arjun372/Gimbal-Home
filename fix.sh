#!/bin/bash
./adb kill-server
echo "Uninstall buggy app...."
./adb shell pm uninstall erlab.ucla.whi.gimbal_home
echo -n "done"
echo 
echo "Making space on watch...."
./adb shell rm -rf /storage/emulated/legacy/Gimbal*
echo -n "done"
echo
echo "Installing new app...."
./adb install app-release.apk
echo "done"
echo
echo "Rebooting...."
./adb shell reboot
echo -n "complete"