@echo off

tasklist /v /fo csv | findstr /i "bata"
if %errorlevel%==1 (goto starta) else (goto skipa)
:starta
start a.bat 
goto skipa
:skipa
tasklist /v /fo csv | findstr /i "batb"
if %errorlevel%==1 (goto startb) else (goto skipb)
:startb
start b.bat 
goto skipb
:skipb
java -Dfile.encoding=utf-8 -jar Record.jar
