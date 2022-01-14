@echo off
set file="name.txt"
echo %file%
FOR /F "delims=, skip=3 eol=; tokens=1,2" %%i IN ('echo %file%') DO (
	echo Job Applicant Name : %%i 
	echo		       AGE : %%j
)