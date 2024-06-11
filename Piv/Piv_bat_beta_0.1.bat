@echo off

:Fiv
color a
echo #########   ##    ##          ##
echo ##    ##    ##     ##        ##
echo #######     ##      ##      ##
echo ##          ##       ##    ##
echo ##          ##        ##  ##
echo ##          ##         ####

:enter_user
echo Enter 'ping' to send a ping requet
echo Enter 'del cash' to delted cash 
echo Enter 'creat' to creat a file

set /p user=

if "%user%"=="ping" goto pinge
if "%user%"=="del cash" goto del_cash
if "%user%"=="creat" goto creat

:pinge
cls
color a
echo Enter a url :
set /p url=
ping %url%
pause
exit

:del_cash
cls
color a
echo Deletion of files is in progress ...
del /s /q "C:\Windows\Prefetch"
echo Do you delted all cash ? (answer yes or no)
set /p cash=
if "%cash%"=="yes" (
    del /s /q "C:\Windows\Temp"
) else (
    goto enter_user
)
pause
exit

:creat
cls
color a
echo Enter content
set /p content=
echo Enter the file name
set /p file_name=
echo Enter the extention (without the ".") :
set /p ext=

echo %content% > %file_name%.%ext%
pause
exit