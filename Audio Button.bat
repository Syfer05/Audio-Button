@echo off
title Audio Button
REM 2020/05/26  Start or Stop Audio service Audiosrv
for /F "tokens=3 delims=: " %%H in ('sc query "Audiosrv" ^| findstr "STATE"') do (
  if /I "%%H" NEQ "RUNNING" (
   net start "Audiosrv"
  ) else (
   net stop "Audiosrv"
  )
)