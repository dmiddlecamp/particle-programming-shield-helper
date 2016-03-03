#!/bin/bash

#
# Unload the Mac OS X drivers, make sure you did the thing to /System/Library/Extensions/IOUSBFamily.kext/Contents/PlugIns/AppleUSBFTDI.kext/Contents/Info.plist
#

sudo kextunload -bundle com.apple.driver.AppleUSBFTDI 
sudo kextload -bundle com.apple.driver.AppleUSBFTDI
