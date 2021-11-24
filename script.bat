@echo off
netsh wlan show profiles
set /A tour=0
FOR /F "delims=: skip=9 tokens=1,2" %%i IN ('netsh wlan show profiles') DO (
    @rem echo %%j Avec un espace
	FOR /F "tokens=*" %%a IN ('echo%%j') DO (
	    @rem Sans l'espace (dans %%a)
	    echo %%a
	    netsh wlan show profiles "name=%%a" key=clear | findstr Contenu
        )
)
pause