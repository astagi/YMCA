#_______________________________________________________________________________
#
#                            YMCA - You Make Cool Apps
#_______________________________________________________________________________
#                                                                    version 0.1
# Author: Andrea Stagi (4ndreaSt4gi)
# Makefile for building Android apps using Ant
# License: MIT
#
# Copyright (C) 2012 Andrea Stagi <stagi.andrea@gmail.com>.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#_______________________________________________________________________________
#
# Here is a complete list of configuration parameters:
#
# ANDROID_SDK  The path where the Android SDK is placed on your system.
#
# TARGET       The Android target. For a complete list, type Makefile targets.
#
# DEVICE       The device where you want to run your app on.
#
# ACTIVITY     The main activity you want to run.
#
# This makefile also defines the following goals for use on the command line
# when you run make:
#
# all          This is the default if no goal is specified.  It builds the apk.
#
# clean        Deletes files created during the build.
#
# upload       Uploads the last built target to an attached Android device.
#
# sign         Generate a signed package.
#
# restartadb   Restarts adb. Sometimes needed.
#
# devices      Prints the list of all available devices.
#
# targets      Prints the list of all available targets.
#_______________________________________________________________________________

ifneq ($(wildcard YMCA.conf),) 
	include YMCA.conf
endif

all:
    ifdef TARGET
		@echo "\nUpdating the project..."
		$(ANDROID_SDK)/tools/android update project --path ./ --target $(TARGET)
    else
        ifeq ($(wildcard build.xml),) 
			$(error "\nERROR! Use make TARGET=N. For a complete list, type 'Makefile targets'.")
        endif
    endif

	@echo "\nBuilding debug apk..."
	ant debug

upload:
    ifdef DEVICE
		DEVICE_CMD = " -s "$(DEVICE)
    endif
	@echo "\nUploading to device..."
	$(ANDROID_SDK)/platform-tools/adb $(DEVICE_CMD) install -r ./bin/*.apk
	@echo "\nLaunching the main activity..."
	$(ANDROID_SDK)/platform-tools/adb $(DEVICE_CMD) shell am start -n $(ACTIVITY)

clean:
	@echo "\nCleaning the project..."
	ant clean

sign:
	@echo "\nGenerating a signed apk..."
	@echo "\nTODO..."

restartadb:
	@echo "\nRestarting adb..."
	sudo $(ANDROID_SDK)/platform-tools/adb kill-server
	sudo $(ANDROID_SDK)/platform-tools/adb start-server

devices:
	@echo "\nLIST OF THE AVAILABLE DEVICES"
	@echo "\n-----------------------------"
	@echo "\nTODO..."

targets:
	@echo "\nLIST OF THE AVAILABLE TARGETS"
	@echo "\n-----------------------------"
	@echo "\nTODO..."
