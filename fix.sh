#!/bin/bash
./Gimbal-Home/adb kill-server
echo "Uninstall buggy app...."
./Gimbal-Home/adb shell pm uninstall erlab.ucla.whi.gimbal_home
echo -n "done"
echo 
echo "Making space on watch...."
./Gimbal-Home/adb shell rm -rf /storage/emulated/legacy/Gimbal*
echo -n "done"
echo
echo "Installing new app...."
./Gimbal-Home/adb install Gimbal-Home/app-release.apk
echo "done"
echo
#echo "Rebooting...."
#./Gimbal-Home/adb shell reboot
echo -n "complete"
