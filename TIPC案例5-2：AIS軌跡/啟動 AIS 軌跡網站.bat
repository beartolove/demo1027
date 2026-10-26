@echo off
chcp 65001 >nul
cd /d "%~dp0"
start "" /b python -m http.server 8765 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" "http://localhost:8765/"
exit
