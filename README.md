YMCA (You Make Cool Apps)
=========================

Makefile for building and running Android apps using Ant.

Requirements
------------

- Ant (http://ant.apache.org/)

- Android SDK (http://developer.android.com/sdk/)


Configuration parameters
------------------------

- ANDROID_SDK  The path where the Android SDK is placed on your system.

- TARGET       The Android target. For a complete list, type Makefile targets.

- DEVICE       The device id where you want to run a command on. Set to ALL for uploading your app on all devices attached.

- ACTIVITY     The main activity you want to run.

Goals
-----

- all:          This is the default goal if no one is specified. It builds the apk.

- clean:        Deletes files created during the build.

- signed:       Generate a signed package.

- upload:       Uploads the last debug apk on an attached Android device. Set DEVICE to a specified target, or to ALL for every device attached.

- upload-release Uploads the last signed apk on an attached Android DEVICE. Set DEVICE to a specified target, ALL for every device attached.

- restartadb:   Restarts adb. Sometimes needed.

- devices:      Shows the list of all available DEVICEs.

- targets:      Shows the list of all available targets.

- log:          Shows the log of a specified DEVICE. Set DEVICE to a specified target.

Licence MIT
-----------

Copyright (C) 2012-2014 Andrea Stagi <stagi.andrea@gmail.com>.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

