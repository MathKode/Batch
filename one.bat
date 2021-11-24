@rem Script batch
@rem <- Permet de commenter

@rem Affiche les commandes :
@echo on

echo Commande non cachee
pause

@rem Cache les commandes :
@echo off

echo Commande cachee
pause

@rem declarer une variable (egal colle OBLIGATOIRE)
set firstvariable=Hello World in Batch !

@rem recuperer la valeur d'une variable
echo %firstvariable%

@rem declarer une varibale en temps que nombre
set /A price=10

echo The price was of %price% $ 

echo IT IS THE BLACK FRIDAY

pause

@rem somme
set /A new_price=price-3
echo %new_price% $

pause

@rem To get the arguments (one.bat arg1 arg2 arg3 ...)
echo The first argument is %1
echo The second argument is %2

@rem the local block is a mini script inside a script
@rem all affectation in local block don't affect ori-
@rem ginal script

setlocal
set vr=Je suis une variable locale
echo %vr%
endlocal
echo Vr :%vr%

pause

@rem Boucle FOR
@rem the standar delimiters are : space, comma (,), semi colon (;) and TAB
@rem Files seperated by standad delemites
@rem the parameter name 'variable' must be 1 character

@rem FOR /R : iterate over list of file
@rem FOR /R [path] %%variable IN (set_og_file_filyers) DO command
@rem set_of_file_filters : *.txt,*.log,*.bat... and . mean all folder
FOR /R "D:\Ecole\Programation\Batch" %%f IN (*.txt;.) DO (
echo %%f
)

pause

@rem FOR /L use to itarate range number
@rem the virgule can be replace by another delimiters
@rem FOR /L %%variable IN (start,step,end) DO command
FOR /L %%i IN (1 2 10) DO (
	echo %%i
)

@rem FOR /F is use read file or line
@rem /F ["options"] %%variable IN (set_of_filesnames) DO command
@rem Options choice :
@rem 		-delims=xxx : delimiter character(s). default space
@rem		-skip=n : nnumber skipped line
@rem		-eol= : caracter signal a comment (to be ignore)
@rem		-tokens=1,2... : define the position on the created array of use value
@rem		-tokens=2-7 : 2 to 7
@rem		-tokens=3,* : 3 and over
@rem		-tokens=* : all
FOR /F "delims=, skip=3 eol=; tokens=1,2" %%i IN (name.txt) DO (
echo Job Applicant Name : %%i 
echo		       AGE : %%j
)

@rem more info on o7planning.org

@rem ARRAY in batch
@rem dynamic size

set array[0]=Bonjour
set array[1]=J'ai
set /A array[2]=15
set array[3]=ans
echo %array[0]%

@rem Asign new value
set /A array[2]=16

set Arr[0]=1000
set Arr[1]=5000
set Arr[2]=3000

if not defined Arr[5] (
   echo Element at 5 does not exists!
)
if defined Arr[1] (
   echo Element at 1 exists!
)
pause

set persons[0].firstName=Bill
set persons[0].lastName=Gates

set persons[1].firstName=Steve
set persons[1].lastName=Jobs

set persons[2].firstName=Mark
set persons[2].lastName=Zuckerberg 

set persons[3].firstName=Sundar
set persons[3].lastName=Pichai

FOR /L %%i IN (0 1 3) DO  (
   call echo Person At %%i = %%persons[%%i].firstName%% %%persons[%%i].lastName%%
)
pause
pause
echo end
pause