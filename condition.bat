@echo off
set /p mp="Mot de passe : "

if %mp%==Admin (
	echo WELCOME
) if %mp%==math (
	echo Math :-)
)