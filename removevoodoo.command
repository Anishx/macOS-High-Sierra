#!/bin/bash

//VoodooHDAremover.bash

echo "Removing VoodooHDA from your system..."

echo "Removing kexts..."
sudo rm -r /System/Library/Extensions/AppleHDADisabler.kext
sudo rm -r /System/Library/Extensions/VoodooHDA.kext

echo "Removing Preference Pane..."
sudo rm -r /System/Library/PreferencePanes/VoodooHDA.prefPane

echo "Removing from applications..."
sudo rm -r /Applications/VoodooHdaSettingsLoader.app

echo "Preparing to reboot - when I first play my opening boot tone, please perform cmd+f to ignore kernel cache."
echo "Once you do that, run kextstat to see if VoodooHDA is gone. If it is, run kcrebuild.bash when you login."
echo "Rebooting in one minute - see you on the other side!"
sudo shutdown -r 1
 