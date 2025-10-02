@echo off
echo Choose download type:
echo [1] Video (best quality)
echo [2] Music (mp3)

set /p choice=Enter choice: 
set /p url=Enter YouTube URL: 

if "%choice%"=="1" (
    .\yt-dlp.exe "%url%"
) else if "%choice%"=="2" (
    .\yt-dlp.exe --config-location music.conf "%url%"
) else (
    echo Invalid choice. Please run again.
)

pause