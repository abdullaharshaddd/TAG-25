@echo off
cd /d %~dp0

echo 🔁 Activating virtual environment...
call sadtalker-env\Scripts\activate

:: Set your input files (edit if needed)
set AUDIO=output.mp3
set IMAGE=avatar.jpg

echo 🚀 Running SadTalker...
python inference.py ^
  --driven_audio %AUDIO% ^
  --source_image %IMAGE% ^
  --result_dir results ^
  --preprocess full ^
  --enhancer gfpgan ^
  --still ^
  --use_enhancer

echo ✅ Done! Opening results folder...
start "" "%cd%\results"
pause
