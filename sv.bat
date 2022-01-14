@rem CODE DE SAUVEGARDE après Windows Shift S
@rem Déplace les images dans les téléchargements (to download)
@echo off
cd C:\Users\%username%\AppData\Local\Packages\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TempState\ScreenClip
echo ---------------------------
for /f %%i in ('dir /b') do (
	echo %%i
	for /f "delims=. tokens=2" %%j in ('echo %%i') do (
		echo %%j
		if %%j == png (
			echo Deplacement Image
			mv %%i C:\Users\%username%\Download\
		) else (
			echo Supp JSON FILE
			del %%i
		)
		echo ---------------------------
	)
)
pause