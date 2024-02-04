@echo off

rem :: https://github.com/zquestz/ws-tcp-proxy
rem :: https://github.com/zquestz/ws-tcp-proxy/releases/download/v0.1.1/ws-tcp-proxy-windows_amd64.zip
set PATH=C:\PortableApps\ws-tcp-proxy\0.1.1;%PATH%

ws-tcp-proxy localhost:1080 --port 8080
