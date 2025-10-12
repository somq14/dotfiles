@echo off

set SRC=%~dp0
set DEST="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

for %%F in ("hotkey.ahk") do (
  if exist %DEST%\%%F (
    del /p %DEST%\%%F
  )
  mklink %DEST%\%%F %SRC%\%%F
)

pause
