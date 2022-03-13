@echo off

set SRC=%~dp0
set DEST=%APPDATA%\Code\User

mkdir %DEST%

for %%F in ("settings.json" "keybindings.json") do (
  if exist %DEST%\%%F (
    del /p %DEST%\%%F
  )
  mklink %DEST%\%%F %SRC%\%%F
)

for /f %%e in (%SRC%\extensions.txt) do (
  code --force --install-extension %%e
)

pause
