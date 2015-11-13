#!/bin/bash
./adb kill-server
./adb shell pm uninstall erlab.ucla.whi.gimbal_home
#./adb install app-release.apk