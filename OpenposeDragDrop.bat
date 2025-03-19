@echo off
:: Get the full path of the dropped video file
set "video=%~1"

:: Change directory to OpenPose root
cd /d %~dp0

:: Create output folder if it doesn't exist
if not exist OutputJson mkdir OutputJson

:: Run OpenPose
bin\OpenPoseDemo.exe --video "%video%" --write_json "OutputJson" --display 1 --render_pose 1

pause
