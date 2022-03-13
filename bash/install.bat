@echo off

set SRC=%~dp0
set DEST=%HOMEPATH%

for %%F in (".bashrc") do (
  if exist %DEST%\%%F (
    del /p %DEST%\%%F
  )
  mklink %DEST%\%%F %SRC%\%%F
)

pause
