@echo off

@rem OS version 
@rem Microsoft Windows [version 10.0.19044.1348]
ver

@rem List what application open what extension
@rem .exe=exefile
assoc .exe
assoc

@rem Open a file
@rem This file con...
type name.txt

@rem Open a directory
cd

@rem Go out a directory
cd ..

@rem Find the current path
@rem D:\Ecole\Programation\Batch
echo %cd%

@rem Clear the screen
cls

@rem Copy a file
copy name.txt name1.txt

@rem md
@rem = mkdir
md ok

@rem Delete file
del name1.txt

@rem Delete repesitory
rd ok

@rem List the file
dir

@rem Move
move

::echo end








