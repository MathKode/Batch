@echo off
::echo IP : %*
for /f "tokens=*" %%i in ('ping -n 1 %*') do echo %%i