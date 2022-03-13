@echo off

set SRC=%~dp0
set DEST=%HOMEPATH%

for %%F in (".gitconfig" ".gitmessage") do (
  if exist %DEST%\%%F (
    del /p %DEST%\%%F
  )
  mklink %DEST%\%%F %SRC%\%%F
)

set /P USER_NAME="user.name: "
git config --global user.name %USER_NAME%

set /P USER_EMAIL="user.email: "
git config --global user.email %USER_EMAIL%

pause
