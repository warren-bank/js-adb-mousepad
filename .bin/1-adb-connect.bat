@echo off

set PATH=C:\PortableApps\adb\30.0.4;%PATH%

set android_ip=192.168.0.3

call adb connect %android_ip%:5555

call adb shell monkey --port 1080
call adb forward tcp:1080 tcp:1080
