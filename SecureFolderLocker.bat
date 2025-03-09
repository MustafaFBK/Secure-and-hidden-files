@ECHO OFF
TITLE SecureFolderLocker
COLOR 0A

:: Set your password here
SET PASSWORD=YourSecurePassword123

:: Check if the folder is already locked
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDPrivate

:CONFIRM
echo Are you sure you want to lock this folder? (Y/N)
set/p "cho=>"
if /I "%cho%"=="Y" goto LOCK
if /I "%cho%"=="N" goto END
echo Invalid choice. Please enter Y or N.
goto CONFIRM

:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked successfully.
goto END

:UNLOCK
echo Enter password to unlock your secure folder:
set/p "pass=>"
if NOT "%pass%"=="%PASSWORD%" goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder unlocked successfully.
goto END

:FAIL
echo Invalid password. Access denied.
goto END

:MDPrivate
md Private
echo Private folder created successfully.
goto END

:END
pause
